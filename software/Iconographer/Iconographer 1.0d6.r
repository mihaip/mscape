/* Resource fork of software/Iconographer/Iconographer 1.0d6 */
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
		"Similar", noIcon, "S", noMark, plain,
		/* [3] */
		"Deselect", noIcon, "D", noMark, plain,
		/* [4] */
		"Inverse", noIcon, "I", noMark, plain
	}
};

resource 'MENU' (134) {
	134,
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

resource 'MENU' (130) {
	130,
	textMenuProc,
	0x7FFFFDFB,
	enabled,
	"Edit",
	{	/* array: 11 elements */
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
		"Paste", noIcon, hierarchicalMenu, "Ö", plain,
		/* [7] */
		"Clear", noIcon, noKey, noMark, plain,
		/* [8] */
		"Select", noIcon, hierarchicalMenu, "É", plain,
		/* [9] */
		"Transform", noIcon, hierarchicalMenu, "Ñ", plain,
		/* [10] */
		"-", noIcon, noKey, noMark, plain,
		/* [11] */
		"Preferences…", noIcon, noKey, noMark, plain
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

resource 'MENU' (133) {
	133,
	textMenuProc,
	allEnabled,
	enabled,
	"Paste",
	{	/* array: 3 elements */
		/* [1] */
		"Normally", noIcon, "V", noMark, plain,
		/* [2] */
		"As Icon and Mask", noIcon, "V", noMark, plain,
		/* [3] */
		"Into Current Selection", noIcon, "V", noMark, plain
	}
};

resource 'MENU' (129) {
	129,
	textMenuProc,
	0x7FFFFFB7,
	enabled,
	"File",
	{	/* array: 8 elements */
		/* [1] */
		"New Icon", noIcon, "N", noMark, plain,
		/* [2] */
		"Open Icon…", noIcon, "O", noMark, plain,
		/* [3] */
		"Close", noIcon, "W", noMark, plain,
		/* [4] */
		"-", noIcon, noKey, noMark, plain,
		/* [5] */
		"Save", noIcon, "S", noMark, plain,
		/* [6] */
		"Save As…", noIcon, noKey, noMark, plain,
		/* [7] */
		"-", noIcon, noKey, noMark, plain,
		/* [8] */
		"Quit", noIcon, "Q", noMark, plain
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

resource 'MENU' (1410) {
	1410,
	textMenuProc,
	allEnabled,
	enabled,
	"Font",
	{	/* array: 0 elements */
	}
};

resource 'MENU' (1412) {
	1412,
	textMenuProc,
	allEnabled,
	enabled,
	"Style",
	{	/* array: 7 elements */
		/* [1] */
		"Plain", noIcon, noKey, noMark, plain,
		/* [2] */
		"Bold", noIcon, noKey, noMark, 1,
		/* [3] */
		"Italic", noIcon, noKey, noMark, 2,
		/* [4] */
		"Underline", noIcon, noKey, noMark, 4,
		/* [5] */
		"Shadow", noIcon, noKey, noMark, 16,
		/* [6] */
		"Condensed", noIcon, noKey, noMark, 32,
		/* [7] */
		"Extended", noIcon, noKey, noMark, 64
	}
};

resource 'MENU' (1411) {
	1411,
	textMenuProc,
	0x7FFFFDFF,
	enabled,
	"Size",
	{	/* array: 11 elements */
		/* [1] */
		"9", noIcon, noKey, noMark, plain,
		/* [2] */
		"10", noIcon, noKey, noMark, plain,
		/* [3] */
		"12", noIcon, noKey, noMark, plain,
		/* [4] */
		"14", noIcon, noKey, noMark, plain,
		/* [5] */
		"18", noIcon, noKey, noMark, plain,
		/* [6] */
		"24", noIcon, noKey, noMark, plain,
		/* [7] */
		"36", noIcon, noKey, noMark, plain,
		/* [8] */
		"48", noIcon, noKey, noMark, plain,
		/* [9] */
		"72", noIcon, noKey, noMark, plain,
		/* [10] */
		"-", noIcon, noKey, noMark, plain,
		/* [11] */
		"Other", noIcon, noKey, noMark, 2
	}
};

resource 'DLOG' (128, "About") {
	{88, 131, 287, 437},
	1043,
	invisible,
	noGoAway,
	0x0,
	128,
	"About…",
	alertPositionMainScreen
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

data 'DLOG' (3001, "Select Object", purgeable) {
	$"0000 0000 00D7 0158 0001 0000 0000 0000"            /* .....◊.X........ */
	$"0000 0BB9 00"                                       /* ...π. */
};

resource 'DLOG' (1410, purgeable) {
	{389, 44, 622, 250},
	1043,
	invisible,
	goAway,
	0x0,
	1410,
	"Text Tool",
	centerParentWindow
};

resource 'DLOG' (9999, purgeable) {
	{259, 337, 484, 720},
	documentProc,
	visible,
	goAway,
	0x0,
	9999,
	"Untitled Icon",
	noAutoCenter
};

resource 'DLOG' (1000, purgeable) {
	{255, 255, 511, 619},
	1043,
	invisible,
	goAway,
	0x0,
	1000,
	"Preferences",
	centerMainScreen
};

resource 'DLOG' (1001, purgeable) {
	{192, 540, 385, 806},
	1043,
	invisible,
	goAway,
	0x0,
	1001,
	"Icon Info…",
	centerParentWindow
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

resource 'icl4' (128) {
	$"FFFF FFFF FFFF FFFF FFFA EEEE FFFA FFFF"
	$"FFFF FFFF FFFF FFFF FFFF FFFF FADD FFFF"
	$"FFFA FFDB FFFA EEAB DDEF FFFF A1E3 FFFF"
	$"FFFD BDDD BFDE DDDD DDDD DBFA 1BFF FFFF"
	$"FFFD DDDD DDDD DDDD DDBB BFA1 BFFF FFFF"
	$"EFFB DDDB AAAA EEAB DEFA FA1B FFFF FFFA"
	$"EFFA DDDA EEAA BABB AACB A1BF FFFF FFF0"
	$"0FFE DDBB BBBB BADE ACDA 1BFF FFFF FF00"
	$"0FFE DDBB BDBB AEBA CDA1 BFFD DFFF FF00"
	$"0FFE DDBB BBDE AEEC DA1B FFDD CCAF FFF0"
	$"0FFE DDBD BDBE AACD A1BF FFDD CCCA FFF0"
	$"0FFA DDBB DBDA AABA BBFF BADC CCCC FFFF"
	$"0FFE DDBB BEEA AEA1 AAFF ECCC CCCD FFFF"
	$"0FFD DBDB AAAA AA1A DCCC CCCC CCCD FFFF"
	$"FFED DDDE BBBA AFBF FEDD DDCC CCCD FFFF"
	$"FADD DDBD BDDB FFFA FFFF FDDD DCCD FFFF"
	$"FADD DDDD DDDB FFEE FAEE EFFF FDDD FFFF"
	$"FFFE DDBB BBDD AAEB AAEB BAFF FFFF FFFF"
	$"FFFF EBBB DDBB AABD AABB BEFF FFFF FFFF"
	$"FFFF EDBD DDBB AEDD EABB AFFF FFFF FFFF"
	$"EFFF DDBB EAAA BDDB EABE FFFF FFFF FFFF"
	$"0FFE DDBA AAAA BBDD ABDB FFFF FAFF FFFF"
	$"0FFD DBEB BBEA AEBA BBDD EFFF FE0E EEE0"
	$"EFED DBBD BBBB BBBD DDDB DFFF F000 0000"
	$"AFED DBBD BBDB DBBB DBDB DAFF FE00 0000"
	$"AFFD BBBD BBBB BDBD BDDB DEFF FE00 0000"
	$"EFFB DBBB BBBB BEEB BBBB BBFF FF00 0000"
	$"EFFA FFFF FFFF FFFF EAFF FFFF FF00 0000"
	$"EFFA FFFF FFFF FFFF FFFF FAFF FFE0 0000"
	$"AFFF FFFF FFFF FFFF FFFF FFFF FFE0 0000"
	$"EFFF FFFF FFFF FFFF FFFF FFFF FF00 0000"
	$"EFFF FFFF FFFF FFFF FFFF FFFF FA"
};

resource 'icl4' (-16455, "Item Icon ") {
	$"FFFF FFFF FFFF FFFF FFFA EEEE FFFA FFFF"
	$"FFFF FFFF FFFF FFFF FFFF FFFF FADD FFFF"
	$"FFFA FFDB FFFA BBAB DDEF FFFF A1E3 FFFF"
	$"FFFD BDDD BFDD DDDD DDDD DBFA 1BFF FFFF"
	$"FFFD DDDD DDDD DDDD DDBB BFA1 BFFF FFFF"
	$"EFFB DDDB AAAA EEAB DEFA FA1B FFFF FFFA"
	$"EFFA DDDA EEAA BABB AACB A1BF FFFF FFFE"
	$"0FFB DDBB BBBD BADE ACDA 1BFF FFFF FFE0"
	$"0FFB DDBB BDDB AEBA CDA1 BFFD DFFF FFE0"
	$"0FFB DDBB BDDE AEEC DA1B FFDD 1CAF FFFF"
	$"0FFB DDBD DDBE AACD A1BF FFDD CCCA FFFF"
	$"0FFA DDBB DDDA AABA BBFF BADC CCCC FFFF"
	$"0FFE DDBB BEEA AEA1 AAFF ECCC CCCD FFFF"
	$"0FFD DBDB AAAA AA1A DCCC CCCC CCCD FFFF"
	$"FFED DDDE BBBA AFBF FEDD DDCC CCCD FFFF"
	$"FADD DDBD BDDB FFFA FFFF FBDD DCCD FFFF"
	$"FADD DDDD DDDB FFEE FAEE EFFF FDDD FFFF"
	$"FFFB DDBB BBDD AAEB AAEB BAFF FFFF FFFF"
	$"FFFF BBBB DDBB AABD AABB BEFF FFFF FFFF"
	$"FFFF EDBD DDBB AEDD EABB AFFF FFFF FFFF"
	$"EFFF DDBB EAAA BDDB EABE FFFF FFFF FFFF"
	$"0FFB DDBA AAAA BBDD ABDB FFFF FAFF FFFF"
	$"0FFD DBEB BBEA AEBA BBDD EFFF FE0E EEE0"
	$"EFED DBBD BBBB BBBD DDDB DFFF F000 0000"
	$"AFED DBBD BBDB DBBB DBDB DAFF FE00 0000"
	$"AFFD BBBD BBBB BDBD BDDB DEFF FE00 0000"
	$"EFFB DBBB BBBB BEEB BBBB BBFF FF00 0000"
	$"EFFA FFFF FFFF FFFF EAFF FFFF FF00 0000"
	$"EFFA FFFF FFFF FFFF FFFF FAFF FFE0 0000"
	$"AFFF FFFF FFFF FFFF FFFF FFFF FFE0 0000"
	$"EFFF FFFF FFFF FFFF FFFF FFFF FF00 0000"
	$"EFFF FFFF FFFF FFFF FFFF FFFF FA"
};

resource 'icl8' (128) {
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFD FBFB FBFB FFFF B2FD FFFF FFFF"
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
	$"E0FF FFFF FFFF FFFF FFAD 3838 DFFF FFFF"
	$"FFFE E0FD FFFF 575D FFFF FFFD FBFB AD82"
	$"3357 88FF FFE0 FFFF AD2F 886A DFFF FFFF"
	$"FFFF FE33 5D33 3333 5EFE 33FB 3333 3333"
	$"3333 3357 575E FFAD 2F34 E0FF FFFF FFFF"
	$"FFFF FE33 3333 3333 3333 3333 3333 3357"
	$"3333 5E5E 82FE AD2F 34FE FFFF FFFF FFFF"
	$"FBE0 E082 3333 335E 8FDD 8F8E 8888 8F64"
	$"3388 FEFD FFAD 2F34 FEFF FFFF FFFF FFFD"
	$"FBFF FFAD 3333 578F 8888 8F8F 648F 645E"
	$"89FD 2C5D AD2F 34FE FFFF FFFF FFFF FF00"
	$"00FF FFFB 3333 5E5D 5D5D 5D5D 648F 5788"
	$"AD2C 33AD 2F34 FEE0 E0FF FFFF FFFF 0000"
	$"00FF FFFB 3333 5D5D 5D33 5D5D DD88 5EFD"
	$"2C33 AD2F 34FE FE33 33FE FFFF FFFF 0000"
	$"00FF FFFB 3333 5E5D 5E5D 3388 DD88 AC2C"
	$"33AD 2F34 FEFF 3333 0808 FDFF FFFF FF00"
	$"00FF FFFB 3333 5D33 5D33 5D88 DEAD 2C33"
	$"AD2F 34FE FFE0 3333 0808 08AD FFFF FF00"
	$"00FF E0FD 3333 5D5D 335D 338F DEAD 5D89"
	$"5334 E0FF 82AD 3308 0808 0808 FEFF FFFF"
	$"00FF FFAC 5733 5D5E 5E88 88DD DD88 AD2F"
	$"83FD FEFE AC08 0808 0808 0833 E0FF FFFF"
	$"00FF FF57 335E 335E DD8F DDDD DEAD 2F89"
	$"5708 0808 0808 0808 0808 0833 E0FF FFFF"
	$"FFFF AC33 3333 5788 5E5E 5E8F DEDF 58FE"
	$"FEAC 3333 3333 0808 0808 0833 E0FF FFFF"
	$"FFAD 3333 3333 5E57 3433 335E FFFF FEAD"
	$"DFDF E0E0 FE33 3333 3308 0833 E0FF FFFF"
	$"FFAD 3333 3333 3333 3357 575E E0DF 8888"
	$"B3DE 8888 ACE0 E0E0 FE33 3333 E0FF FFFF"
	$"FFFF FEFB 3333 345E 5E5D 3357 DEDE 885E"
	$"DDDD 885E 82FD FFFF FFE0 E0E0 FFFF FFFF"
	$"FFFF FEFF FB34 345E 3333 5D5D DDDD 5E57"
	$"8EDD 5E5D 5E88 FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF AC33 3A33 3333 5D5E DD88 5757"
	$"88DD 5E5E ADFE FFFF FFFF FFFF FFFF FFFF"
	$"FBFF FFFF 5733 585E 888F 8F8F 8257 3358"
	$"888F 5E88 FFE0 FFFF FFFF FFFF FFFF FFFF"
	$"00FF FFFB 3333 64DD DDDD DDDD 645E 3333"
	$"8F5E 575E FFFF FFFF FFFD FFFF FFFF FFFF"
	$"00FF FE33 335E 885E 5E5E 88DD DD88 648E"
	$"5E5E 3333 ACFF FFFF FFFB 00FB FBFB FB00"
	$"FBFF AC33 335E 5E33 5D5E 5E5E 5E64 5E33"
	$"3333 3358 57E0 FFFF FF00 0000 0000 0000"
	$"FDFF FC33 335E 5E57 5E5E 335E 335E 3A5E"
	$"3334 3358 57AD FFFF FFFB 0000 0000 0000"
	$"FDFF FF57 5D5E 5E57 5E5E 5E5E 5857 5E33"
	$"5E33 575E 5788 FFFF FFFB 0000 0000 0000"
	$"FBFF FF5D 575D 5E5E 5E82 825E 5E88 885E"
	$"585E 5E5E 5E5E E0FF FFFF 0000 0000 0000"
	$"FBFF FFAD FFE0 DFE0 E0FF E0FF FFFF FFFE"
	$"ACFD E0E0 E0FE E0FF FFFF 0000 0000 0000"
	$"FBFF E0FD FEE0 E0E0 E0FF FFFF DFFF E0E0"
	$"E0E0 E0E0 DFAD E0FF FFFF FB00 0000 0000"
	$"FDFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF FFFF FFFF FB00 0000 0000"
	$"FBFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF FFFF FFFF 0000 0000 0000"
	$"FBFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF FFFF FFFD"
};

resource 'icl8' (-16455, "Item Icon ") {
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFD FBFB FBFB FFFF B2FD FFFF FFFF"
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
	$"E0FF FFFF FFFF FFFF FFAD 3838 DFFF FFFF"
	$"FFFE E0FD FFFF 575D FFFF FFFD 8282 AD82"
	$"3357 88FF FFE0 FFFF AD2F 886A DFFF FFFF"
	$"FFFF FE33 5D33 3333 5EFE 3357 3333 3333"
	$"3333 3357 575E FFAD 2F34 E0FF FFFF FFFF"
	$"FFFF FE33 3333 3333 3333 3333 3333 3357"
	$"3333 5E5E 82FE AD2F 34FE FFFF FFFF FFFF"
	$"FBE0 E082 3333 335E 8FDD 8F8E 8888 8F64"
	$"3388 FEFD FFAD 2F34 FEFF FFFF FFFF FFFD"
	$"FBFF FFAD 3333 578F 8888 8F8F 648F 645E"
	$"89FD 2C5D AD2F 34FE FFFF FFFF FFFF FFFB"
	$"00FF FF82 3333 5E5D 5D5D 5D57 648F 5788"
	$"AD2C 33AD 2F34 FEE0 E0FF FFFF FFFF FB00"
	$"00FF FF82 3333 5D5D 5D33 575D DD88 5EFD"
	$"2C33 AD2F 34FE FE33 33FE FFFF FFFF FB00"
	$"00FF FF82 3333 5E5D 5E57 5788 DD88 AC2C"
	$"33AD 2F34 FEFF 5733 0932 FDFF FFFF FFFF"
	$"00FF FF82 3333 5D33 5757 5D88 DEAD 2C33"
	$"AD2F 34FE FFE0 3333 0808 2CAD FFFF FFFF"
	$"00FF E0FD 3333 5D5D 5757 578F DEAD 5D89"
	$"5334 E0FF 82AD 3308 0808 0832 FEFF FFFF"
	$"00FF FFAC 5733 5D5E 5E88 88DD DD88 AD2F"
	$"83FD FEFE AC2C 0808 0808 0833 E0FF FFFF"
	$"00FF FF57 335E 335E DD8F DDDD DEAD 2F89"
	$"5732 0808 0808 0808 0808 0833 E0FF FFFF"
	$"FFFF AC33 3333 5788 5E5E 5E8F DEDF 58FE"
	$"FEAC 3333 3333 0808 0808 0833 E0FF FFFF"
	$"FFAD 3333 3333 5E57 3433 335E FFFF FEAD"
	$"DFDF E0E0 FE5D 3333 3308 0833 E0FF FFFF"
	$"FFAD 3333 3333 3333 3357 575E E0DF 8888"
	$"B3DE 8888 ACE0 E0E0 FE57 3357 E0FF FFFF"
	$"FFFF FE82 3333 345E 5E5D 3357 DEDE 885E"
	$"DDDD 885E 82FD FFFF FFE0 E0E0 FFFF FFFF"
	$"FFFF FEFF 8234 345E 3333 5D5D DDDD 5E57"
	$"8EDD 5E5D 5E88 FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF AC33 3A33 3333 5D5E DD88 5757"
	$"88DD 5E5E ADFE FFFF FFFF FFFF FFFF FFFF"
	$"FBFF FFFF 5733 585E 888F 8F8F 8257 3358"
	$"888F 5E88 FFE0 FFFF FFFF FFFF FFFF FFFF"
	$"00FF FF82 3333 64DD DDDD DDDD 645E 3333"
	$"8F5E 575E FFFF FFFF FFFD FFFF FFFF FFFF"
	$"00FF FE33 335E 885E 5E5E 88DD DD88 648E"
	$"5E5E 3333 ACFF FFFF FFFB 00FB FBFB FB00"
	$"FBFF AC33 335E 5E33 5D5E 5E5E 5E64 5E33"
	$"3333 3358 57E0 FFFF FF00 0000 0000 0000"
	$"FDFF FC33 335E 5E57 5E5E 335E 335E 3A5E"
	$"3334 3358 57AD FFFF FFFB 0000 0000 0000"
	$"FDFF FF57 5D5E 5E57 5E5E 5E5E 5857 5E33"
	$"5E33 575E 5788 FFFF FFFB 0000 0000 0000"
	$"FBFF FF5D 575D 5E5E 5E82 825E 5E88 885E"
	$"585E 5E5E 5E5E E0FF FFFF 0000 0000 0000"
	$"FBFF FFAD FFE0 DFE0 E0FF E0FF FFFF FFFE"
	$"ACFD E0E0 E0FE E0FF FFFF 0000 0000 0000"
	$"FBFF E0FD FEE0 E0E0 E0FF FFFF DFFF E0E0"
	$"E0E0 E0E0 DFAD E0FF FFFF FB00 0000 0000"
	$"FDFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF FFFF FFFF FB00 0000 0000"
	$"FBFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF FFFF FFFF 0000 0000 0000"
	$"FBFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF FFFF FFFD"
};

resource 'ICN#' (128) {
	{	/* array: 2 elements */
		/* [1] */
		$"FFFF FFFF FFFF FFCF FCFF 3FBF E0C0 073F"
		$"E000 3E7F F1FF 7CFF F1FE D9FF 730D 93FE"
		$"720F 267E 709E 4C3F 701C 9C1F 721F 3C0F"
		$"71FE F80F 65FD 000F E1FD C00F C01F F80F"
		$"C01F FF8F F08F FFFF F80E EFFF F81C FFFF"
		$"F1F8 DFFF 73F8 DFFF 67FF 8FDE E64E 0780"
		$"E250 07C0 EA10 07C0 E1FF 7BC0 FFFF FFC0"
		$"FFFF FFE0 FFFF FFE0 FFFF FFC0 FFFF FFC0",
		/* [2] */
		$"4001 8038 77BF F478 7FBF FEFC 7FFF FFF8"
		$"7FFF FFF0 3FFF FFE0 3FFF FFC0 3FFF FFC0"
		$"3FFF FFC0 3FFF FFE0 3FFF FFF0 3FFF FFFC"
		$"3FFF FFFC 3FFF FFFC 7FFF FFFC FFFF FFFC"
		$"FFFF FFFC 7FFF FFFC 3FFF FF3C 1FFF FE00"
		$"1FFF FE00 3FFF FC00 3FFF FE00 7FFF FE00"
		$"7FFF FE00 3FFF FE00 3FFF FF00 7FFF FF00"
		$"7FF3 FE00 08"
	}
};

resource 'ICN#' (-16455, "Item Icon ") {
	{	/* array: 2 elements */
		/* [1] */
		$"FFFF FFFF FFFF FFEF FDFF 3FBF EAE4 A7BF"
		$"E916 BE7F FBFF 7CFF F5FF DBFF 73ED 93FE"
		$"7BDF 6E7E 7B9E CCBF 777D BD3F 7BBF 7E1F"
		$"77FE F84F 6FFD 010F E5FF D42F CB5F FC8F"
		$"D55F FFDF FBEF FFFF FD7E FFFF FABD FFFF"
		$"F5FA FFFF 7BFD FFFF 67FF DFDE EEFE 8F80"
		$"F7F7 57C0 EEFE BFC0 FFFF 7FC0 FFFF FFC0"
		$"FFFF FFE0 FFFF FFE0 FFFF FFC0 FFFF FFC0",
		/* [2] */
		$"4001 8038 77BF F478 7FBF FEFC 7FFF FFF8"
		$"7FFF FFF0 3FFF FFE0 3FFF FFC0 3FFF FFC0"
		$"3FFF FFC0 3FFF FFE0 3FFF FFF0 3FFF FFFC"
		$"3FFF FFFC 3FFF FFFC 7FFF FFFC FFFF FFFC"
		$"FFFF FFFC 7FFF FFFC 3FFF FF3C 1FFF FE00"
		$"1FFF FE00 3FFF FC00 3FFF FE00 7FFF FE00"
		$"7FFF FE00 3FFF FE00 3FFF FF00 7FFF FF00"
		$"7FF3 FE00 08"
	}
};

resource 'vers' (2) {
	0x1,
	0x0,
	development,
	0x6,
	14,
	"1.0d6",
	"Iconographer 1.0d6"
};

resource 'vers' (1) {
	0x1,
	0x0,
	development,
	0x6,
	14,
	"1.0d6",
	"1.0d6 ©1998-99 Mihai Parparita"
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

resource 'dlgx' (1410) {
	versionZero {
		15
	}
};

resource 'dlgx' (1000) {
	versionZero {
		15
	}
};

resource 'dlgx' (9999) {
	versionZero {
		11
	}
};

resource 'dlgx' (1001) {
	versionZero {
		15
	}
};

resource 'dlgx' (300) {
	versionZero {
		15
	}
};

resource 'DITL' (128, "About Box") {
	{	/* array DITLarray: 10 elements */
		/* [1] */
		{169, 234, 188, 292},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{10, 10, 98, 294},
		UserItem {
			enabled
		},
		/* [3] */
		{101, 189, 113, 294},
		StaticText {
			disabled,
			"by Mihai Parparita"
		},
		/* [4] */
		{144, 172, 156, 295},
		StaticText {
			enabled,
			"http://www.mscape.com/"
		},
		/* [5] */
		{129, 207, 141, 295},
		StaticText {
			enabled,
			"mihai@mscape.com"
		},
		/* [6] */
		{102, 9, 114, 109},
		StaticText {
			disabled,
			"Registered to:"
		},
		/* [7] */
		{116, 17, 128, 157},
		StaticText {
			disabled,
			""
		},
		/* [8] */
		{130, 17, 142, 157},
		StaticText {
			disabled,
			""
		},
		/* [9] */
		{144, 17, 156, 157},
		StaticText {
			disabled,
			""
		},
		/* [10] */
		{115, 199, 127, 294},
		StaticText {
			disabled,
			"Mscape Software"
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

resource 'DITL' (1410, purgeable) {
	{	/* array DITLarray: 9 elements */
		/* [1] */
		{204, 123, 224, 191},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{204, 43, 224, 107},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{100, 11, 116, 51},
		StaticText {
			disabled,
			"Text:"
		},
		/* [4] */
		{119, 16, 187, 192},
		EditText {
			enabled,
			"Icon Mangler"
		},
		/* [5] */
		{8, 8, 28, 188},
		Control {
			enabled,
			1410
		},
		/* [6] */
		{38, 11, 54, 56},
		StaticText {
			disabled,
			"Size:"
		},
		/* [7] */
		{39, 124, 55, 158},
		EditText {
			enabled,
			"12"
		},
		/* [8] */
		{37, 166, 57, 188},
		Control {
			enabled,
			1411
		},
		/* [9] */
		{66, 8, 86, 190},
		Control {
			enabled,
			1412
		}
	}
};

resource 'DITL' (9999) {
	{	/* array DITLarray: 26 elements */
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
		{210, 62, 226, 384},
		Control {
			enabled,
			202
		},
		/* [8] */
		{159, 5, 201, 47},
		Control {
			enabled,
			203
		},
		/* [9] */
		{25, 261, 115, 315},
		Control {
			enabled,
			204
		},
		/* [10] */
		{25, 322, 115, 376},
		Control {
			enabled,
			205
		},
		/* [11] */
		{8, 259, 22, 317},
		Control {
			enabled,
			206
		},
		/* [12] */
		{8, 320, 22, 378},
		Control {
			enabled,
			207
		},
		/* [13] */
		{118, 260, 130, 314},
		Control {
			enabled,
			208
		},
		/* [14] */
		{118, 323, 130, 377},
		Control {
			enabled,
			209
		},
		/* [15] */
		{44, 0, 66, 26},
		Control {
			enabled,
			128
		},
		/* [16] */
		{44, 26, 66, 52},
		Control {
			enabled,
			129
		},
		/* [17] */
		{132, 26, 154, 52},
		Control {
			enabled,
			141
		},
		/* [18] */
		{66, 26, 88, 52},
		Control {
			enabled,
			131
		},
		/* [19] */
		{66, 0, 88, 26},
		Control {
			enabled,
			130
		},
		/* [20] */
		{88, 26, 110, 52},
		Control {
			enabled,
			138
		},
		/* [21] */
		{132, 261, 186, 376},
		Control {
			enabled,
			210
		},
		/* [22] */
		{190, 261, 202, 376},
		Control {
			enabled,
			211
		},
		/* [23] */
		{88, 0, 110, 26},
		Control {
			enabled,
			137
		},
		/* [24] */
		{132, 0, 154, 26},
		Control {
			enabled,
			140
		},
		/* [25] */
		{110, 26, 132, 52},
		Control {
			enabled,
			139
		},
		/* [26] */
		{110, 0, 132, 26},
		Control {
			enabled,
			136
		}
	}
};

resource 'DITL' (1000, purgeable) {
	{	/* array DITLarray: 8 elements */
		/* [1] */
		{222, 270, 242, 338},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{222, 190, 242, 254},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{16, 9, 34, 142},
		StaticText {
			disabled,
			"Default zoom level:"
		},
		/* [4] */
		{19, 147, 30, 182},
		EditText {
			disabled,
			"1000%"
		},
		/* [5] */
		{13, 188, 37, 201},
		Control {
			enabled,
			1000
		},
		/* [6] */
		{38, 8, 54, 168},
		CheckBox {
			enabled,
			"Show pixel grid"
		},
		/* [7] */
		{55, 8, 71, 308},
		CheckBox {
			enabled,
			"Check sync between 8-bit and 1-bit masks"
		},
		/* [8] */
		{72, 8, 88, 308},
		CheckBox {
			enabled,
			"Dither when copying down to lower depths"
		}
	}
};

resource 'DITL' (1001, purgeable) {
	{	/* array DITLarray: 14 elements */
		/* [1] */
		{160, 187, 180, 255},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{160, 109, 180, 173},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{13, 10, 29, 40},
		StaticText {
			disabled,
			"ID:"
		},
		/* [4] */
		{13, 64, 29, 124},
		EditText {
			enabled,
			""
		},
		/* [5] */
		{42, 10, 58, 60},
		StaticText {
			disabled,
			"Name:"
		},
		/* [6] */
		{42, 64, 58, 254},
		EditText {
			enabled,
			""
		},
		/* [7] */
		{13, 139, 29, 174},
		StaticText {
			disabled,
			"Size:"
		},
		/* [8] */
		{13, 173, 29, 263},
		StaticText {
			disabled,
			""
		},
		/* [9] */
		{90, 14, 106, 124},
		CheckBox {
			enabled,
			"Purgeable"
		},
		/* [10] */
		{108, 14, 124, 124},
		CheckBox {
			enabled,
			"Preload"
		},
		/* [11] */
		{127, 14, 143, 124},
		CheckBox {
			enabled,
			"Locked"
		},
		/* [12] */
		{90, 133, 106, 243},
		CheckBox {
			enabled,
			"Protected"
		},
		/* [13] */
		{108, 133, 124, 243},
		CheckBox {
			enabled,
			"System Heap"
		},
		/* [14] */
		{70, 10, 150, 258},
		Control {
			enabled,
			1001
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

data 'DLGX' (128) {
	$"0743 6869 6361 676F 0000 0000 0000 0000"            /* .Chicago........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"000A 0000 0000 0000 0000 0000 0000 000A"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
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

data 'DLGX' (1410) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0009 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0007 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'DLGX' (9999) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"001A 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"8000 0000 0000 0000 0000 0005 0000 0000"            /* Ä............... */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 8000 0000"            /* ............Ä... */
	$"0000 0000 0000 0005 8000 0000 0000 0000"            /* ........Ä....... */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
};

data 'DLGX' (1000) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0008 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'DLGX' (1001) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"000E 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0007"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"8000 0000 0000 0000 0000"                           /* Ä......... */
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

data 'ictb' (132) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0007 0028 8007 003C 0001 0000 0009 0000"            /* ...(Ä..<........ */
	$"0000 0000 FFFF FFFF FFFF 0000 0050 0000"            /* ....ˇˇˇˇˇˇ...P.. */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........ˇˇˇˇˇˇ.. */
	$"0647 656E 6576 61"                                  /* .Geneva */
};

data 'ictb' (129) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0007 0024 0000 0000 000C 0000 0000 0000"            /* ...$............ */
	$"FFFF FFFF FFFF 0000"                                /* ˇˇˇˇˇˇ.. */
};

data 'ictb' (128) {
	$"0000 0000 0000 0000 000F 0028 000F 003C"            /* ...........(...< */
	$"000F 0050 0007 0064 0007 0078 0007 008C"            /* ...P...d...x...å */
	$"0007 00A0 000F 00B4 0001 0100 0009 0000"            /* ...†...¥........ */
	$"0000 0000 0000 0006 0000 0000 0001 0400"            /* ................ */
	$"0009 0000 0000 FFFF 0000 0006 0000 0000"            /* ......ˇˇ........ */
	$"0001 0400 0009 0000 0000 FFFF 0000 0006"            /* ..........ˇˇ.... */
	$"0000 0000 0001 0100 0009 0000 0000 0000"            /* ................ */
	$"FFFF FFFF FFFF 0000 0001 0000 0009 0000"            /* ˇˇˇˇˇˇ.......... */
	$"0000 0000 FFFF FFFF FFFF 0000 0001 0000"            /* ....ˇˇˇˇˇˇ...... */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........ˇˇˇˇˇˇ.. */
	$"0001 0000 0009 0000 0000 0000 FFFF FFFF"            /* ............ˇˇˇˇ */
	$"FFFF 0000 0001 0100 0009 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0006 0000 0000"                                /* ........ */
};

data 'ictb' (1410) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000"                                          /* .... */
};

data 'ictb' (9999) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000"                                /* ........ */
};

data 'ictb' (1001) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000"                                /* ........ */
};

data 'ictb' (1000) {
	$"0000 0000 0000 0000 0000 0000 0007 0020"            /* ...............  */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0001 0000 0009 0000 0000 0000 FFFF FFFF"            /* ............ˇˇˇˇ */
	$"FFFF 0000"                                          /* ˇˇ.. */
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

resource 'mctb' (1412) {
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

resource 'mctb' (1411) {
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

resource 'dctb' (1410) {
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

resource 'dctb' (9999) {
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

resource 'dctb' (1001) {
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

data 'Mcmd' (128) {
	$"0002 0000 0000 0000 0000"                           /* .......... */
};

data 'Mcmd' (1) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (130) {
	$"0009 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000"                                     /* ...... */
};

data 'Mcmd' (133) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (1410) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (1412) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (1411) {
	$"000B 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000"                 /* .............. */
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

resource 'xmnu' (131, "Select") {
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
			skipItem {

			},
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

resource 'xmnu' (133, "Paste Menu") {
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

resource 'STR#' (128, "Default Names", purgeable) {
	{	/* array StringArray: 10 elements */
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
		"Not Registered"
	}
};

resource 'STR#' (129, "Standard Errors", purgeable) {
	{	/* array StringArray: 14 elements */
		/* [1] */
		"The file you selected is already open in"
		" another program.",
		/* [2] */
		"This development copy of <app name> expi"
		"red on July 1, 1999. Please download a n"
		"ewer version.",
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
		"Thank you for registering <app name>."
	}
};

resource 'STR#' (130, "Prompts", purgeable) {
	{	/* array StringArray: 5 elements */
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
		"Open Icon",
		/* [5] */
		"You have used <app name> to create <no o"
		"f icons> icons. If you continue to use i"
		"t, please pay the $15 shareware fee. Thi"
		"s can be done online, or by using the en"
		"closed Register application."
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

resource 'STR#' (157, "View Balloon Help", purgeable) {
	{	/* array StringArray: 6 elements */
		/* [1] */
		"View Menu\n\nThis menu can be used to modi"
		"fy how the front-most icon is viewed.",
		/* [2] */
		"View Menu\n\nThis menu can be used to modi"
		"fy how the front-most icon is viewed.\n\nN"
		"ot available because there are no open e"
		"ditors.",
		/* [3] */
		"This comman increases the magnification "
		"level of the front-most editor.",
		/* [4] */
		"This comman increases the magnification "
		"level of the front-most editor.\n\nNot ava"
		"ilable because the editor is at maximum "
		"magnification, or because there are no o"
		"pen editors.",
		/* [5] */
		"This comman decreases the magnification "
		"level of the front-most editor.",
		/* [6] */
		"This comman decreases the magnification "
		"level of the front-most editor.\n\nNot ava"
		"ilable because the editor is at minimum "
		"magnification, or because there are no o"
		"pen editors."
	}
};

resource 'STR#' (156, "Paste Balloon Help", purgeable) {
	{	/* array StringArray: 4 elements */
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
		" been made."
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

resource 'STR#' (153, "Edit Balloon Help", purgeable) {
	{	/* array StringArray: 20 elements */
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
		"editors.",
		/* [17] */
		"Performs various transformations on imag"
		"es.",
		/* [18] */
		"Performs various transformations on imag"
		"es.\n\nNot available because there are no "
		"open editors.",
		/* [19] */
		"Opens a dialog box which allows you to c"
		"ustomize various aspects of Iconographer"
		"’s operation.",
		/* [20] */
		"Opens a dialog box which allows you to c"
		"ustomize various aspects of Iconographer"
		"’s operation.\n\nNot available because the"
		" preferences cannot be edited at this mo"
		"ment."
	}
};

resource 'STR#' (152, "File Balloon Help", purgeable) {
	{	/* array StringArray: 14 elements */
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
		"Creates a new window editor with an empt"
		"y icon.\n\nNot available because no more e"
		"ditors can be created.",
		/* [5] */
		"Opens an item’s icon into a new editor w"
		"indow.",
		/* [6] */
		"Opens an item’s icon into a new editor w"
		"indow.\n\nNot available because no more ed"
		"itors can be created.",
		/* [7] */
		"Closes the front-most editor window.",
		/* [8] */
		"Closes the front-most editor window.\n\nNo"
		"t available because no editor windows ar"
		"e opened.",
		/* [9] */
		"Saves the contents of the front-most edi"
		"tor window.",
		/* [10] */
		"Saves the contents of the front-most edi"
		"tor window.\n\nNot available because there"
		" are no open editors, or because the fro"
		"nt-most editor doesn’t need to be saved.",
		/* [11] */
		"Saves the contents of the front-most edi"
		"tor window in a different file.",
		/* [12] */
		"Saves the contents of the front-most edi"
		"tor window in a different file.\n\nNot ava"
		"ilable because there are no open editors"
		".",
		/* [13] */
		"Exits Iconographer, first asking if any "
		"unsaved changes should be saved.",
		/* [14] */
		"Exits Iconographer, first asking if any "
		"unsaved changes should be saved.\n\nNot av"
		"ailable because Iconographer cannot be e"
		"xited at this time."
	}
};

resource 'STR#' (158, "About Balloon Help", purgeable) {
	{	/* array StringArray: 5 elements */
		/* [1] */
		"Click here to dimiss this dialog.",
		/* [2] */
		"Drop-shadowing that works with any backg"
		"round color. Cool, eh?",
		/* [3] */
		"Click here to visit the Mscape Software "
		"homepage (requires Internet Config).",
		/* [4] */
		"Click here to e-mail the author (require"
		"s Internet Config).",
		/* [5] */
		"If you’ve paid, thank your very much. If"
		" you haven’t, perhaps you should conside"
		"r it."
	}
};

resource 'STR#' (159, "Registration Balloon Help", purgeable) {
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

resource 'STR#' (3001, "Select Object Strings") {
	{	/* array StringArray: 2 elements */
		/* [1] */
		"Select \"<file name>\"",
		/* [2] */
		"Select Desktop"
	}
};

resource 'STR#' (201, "Labels", purgeable) {
	{	/* array StringArray: 6 elements */
		/* [1] */
		"Icon",
		/* [2] */
		"Mask",
		/* [3] */
		"Preview",
		/* [4] */
		"Pick a foreground color:",
		/* [5] */
		"Pick a background color:",
		/* [6] */
		" bytes"
	}
};

resource 'STR#' (202, "Icon Part Names", purgeable) {
	{	/* array StringArray: 18 elements */
		/* [1] */
		"Large 32-bit Icon",
		/* [2] */
		"Small 32-bit Icon",
		/* [3] */
		"Large 8-bit Mask",
		/* [4] */
		"Small 8-bit Mask",
		/* [5] */
		"Large 8-bit Icon",
		/* [6] */
		"Small 8-bit Icon",
		/* [7] */
		"Large 4-bit Icon",
		/* [8] */
		"Small 4-bit Icon",
		/* [9] */
		"Large 1-bit Icon",
		/* [10] */
		"Small 1-bit Icon",
		/* [11] */
		"Large 1-bit mask",
		/* [12] */
		"Small 1-bit Mask",
		/* [13] */
		"Huge 32-bit Icon",
		/* [14] */
		"Huge 8-bit Mask",
		/* [15] */
		"Huge 1-bit Icon",
		/* [16] */
		"Huge 1-bit Mask",
		/* [17] */
		"Huge 8-bit Icon",
		/* [18] */
		"Huge 4-bit Icon"
	}
};

resource 'STR#' (200, "Basic Strings", purgeable) {
	{	/* array StringArray: 9 elements */
		/* [1] */
		"Untitled",
		/* [2] */
		"An icon with the ID <ID> already exists "
		"in this file. If you continue, the old i"
		"con will be overwritten when the current"
		" is saved.",
		/* [3] */
		"Overwrite",
		/* [4] */
		"Cancel",
		/* [5] */
		"The large 8-bit and 1-bit masks seem to "
		"be out of sync. Should the large 1-bit m"
		"ask be regenerated?",
		/* [6] */
		"The small 8-bit and 1-bit masks seem to "
		"be out of sync. Should the small 1-bit m"
		"ask be regenerated?",
		/* [7] */
		"The huge 8-bit and 1-bit masks seem to b"
		"e out of sync. Should the huge 1-bit mas"
		"k be regenerated?",
		/* [8] */
		"Yes",
		/* [9] */
		"No"
	}
};

resource 'STR#' (204, "Icon Info Balloon Help", purgeable) {
	{	/* array StringArray: 10 elements */
		/* [1] */
		"Sets the selected attributes and closes "
		"this dialog.",
		/* [2] */
		"Closes this dialog without making any ch"
		"anges.",
		/* [3] */
		"Each icon within a file must have an uni"
		"que ID.",
		/* [4] */
		"This is the size of the final icon resou"
		"rce.",
		/* [5] */
		"Names are optional, but they can help yo"
		"u identify icon resources quickly.",
		/* [6] */
		"If an icon is purgeable, it will be unlo"
		"aded from memory is space is short.",
		/* [7] */
		"If an icon is preloaded, it will be load"
		"ed automatically once a file is opened.",
		/* [8] */
		"If an icon is locked, then it cannot be "
		"moved while loaded in memory.",
		/* [9] */
		"If an icon is protected, then it cannot "
		"be modified.",
		/* [10] */
		"If an icon is part of the system heap, t"
		"hen it will be placed in the area of mem"
		"ory that is used by the system."
	}
};

resource 'STR#' (203, "Editor Balloon Help", purgeable) {
	{	/* array StringArray: 23 elements */
		/* [1] */
		"Rectangular Marquee Tool (M)",
		/* [2] */
		"Move Tool (V)",
		/* [3] */
		"Lasso Tool (L)",
		/* [4] */
		"Magic Wand Tool (W)",
		/* [5] */
		"Pencil Tool (N)",
		/* [6] */
		"Eye Dropper Tool (I)",
		/* [7] */
		"Paint Bucket Tool (K)",
		/* [8] */
		"Eraser Tool (E)",
		/* [9] */
		"Rectangle Tool (R)",
		/* [10] */
		"Oval Tool (O)",
		/* [11] */
		"Line Tool (Y)",
		/* [12] */
		"Polygon Tool (P)",
		/* [13] */
		"Gradient Tool (G)",
		/* [14] */
		"Text Tool (T)",
		/* [15] */
		"This is the main editing area. The curre"
		"nt icon is displayed at a magnified size"
		" here.",
		/* [16] */
		"The magnification level is displayed her"
		"e. To change it, you either use the Zoom"
		" In and Zoom Out commands from the View "
		"menu, or the grow box in the lower-right"
		" corner of the window.",
		/* [17] */
		"The name and ID of the current icon are "
		"displayed here. Clicking on this placard"
		" will result in a dialog which allows yo"
		"u to change the name, ID and flags of th"
		"e icon.",
		/* [18] */
		"The current foreground and background co"
		"lors are displayed here. Click on the co"
		"lor swatches to change them.",
		/* [19] */
		"This set of image wells displays the thr"
		"ee sizes (48 x 48, 32 x 32 and 16 x16) f"
		"or the current icon depth. You can click"
		" on them to edit that size. You may also"
		" drag among them to copy and scale their"
		" contents.",
		/* [20] */
		"This popup is used to switch among the d"
		"ifferent icon depths. You may also hold "
		"down option to transfer one depth to ano"
		"ther.",
		/* [21] */
		"This set of image wells displays the thr"
		"ee sizes (48 x 48, 32 x 32 and 16 x16) f"
		"or the current mask depth. You can click"
		" on them to edit that size. You may also"
		" drag among them to copy and scale their"
		" contents.",
		/* [22] */
		"This popup is used to switch among the d"
		"ifferent mask depths. You may also hold "
		"down option to transfer one depth to ano"
		"ther.",
		/* [23] */
		"Here you can see a preview of the curren"
		"t icon and mask together on two differen"
		"t backgrounds (white and the current des"
		"ktop pattern). You can click on the prev"
		"iew in order to view the icon in the sel"
		"ected state."
	}
};

resource 'STR#' (300, "Icon Browser: List Strings", purgeable) {
	{	/* array StringArray: 1 elements */
		/* [1] */
		"\t\t\t\t\t\t\t\t\tItem’s Finder Icon"
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

data 'Mngl' (0, "Owner resource") {
	$"18A9 2031 3939 382D 3920 4D69 6861 6920"            /* .© 1998-9 Mihai  */
	$"5061 7270 6172 6974 61"                             /* Parparita */
};

resource 'BNDL' (128) {
	'Mngl',
	0,
	{	/* array TypeArray: 2 elements */
		/* [1] */
		'FREF',
		{	/* array IDArray: 5 elements */
			/* [1] */
			0, 128,
			/* [2] */
			1, 129,
			/* [3] */
			2, 130,
			/* [4] */
			3, 1,
			/* [5] */
			4, 2
		},
		/* [2] */
		'ICN#',
		{	/* array IDArray: 5 elements */
			/* [1] */
			0, 128,
			/* [2] */
			1, 0,
			/* [3] */
			2, 0,
			/* [4] */
			3, 0,
			/* [5] */
			4, 0
		}
	}
};

resource 'PICT' (128, "About Pic") {
	51940,
	{0, 0, 88, 284},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0058 011C 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0058"
	$"011C 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0058 011C 009A 0000 00FF 8470 0000"
	$"0000 0058 011C 0000 0004 0000 0000 0048"
	$"0000 0048 0000 0010 0020 0003 0008 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0058"
	$"011C 0000 0000 0058 011C 0040 000E 8100"
	$"8100 8100 8100 8100 8100 AD00 000E 8100"
	$"8100 8100 8100 8100 8100 AD00 000E 8100"
	$"8100 8100 8100 8100 8100 AD00 000E 8100"
	$"8100 8100 8100 8100 8100 AD00 000E 8100"
	$"8100 8100 8100 8100 8100 AD00 0046 FC00"
	$"0003 DA00 029F B66A E100 FF01 D300 C200"
	$"011E 22C2 00E0 0000 02DA 0002 7097 58E1"
	$"00FF 01EF 00A6 00FF 19DE 00C4 0000 01DA"
	$"0002 425A 34E9 00F9 0000 0193 0001 0F10"
	$"FA00 AD00 0100 FB00 0103 16F5 0002 4246"
	$"23FD 0005 0640 6E6D 6911 FE00 0313 3F68"
	$"56FD 000B 03AC BFB7 6B23 2324 2446 360E"
	$"F400 0219 2616 F900 010C 09ED 000C 094D"
	$"9375 2323 2D4A 6470 96A4 5FF4 00C4 0003"
	$"63BF B761 FB00 0263 350B CB00 DF00 0103"
	$"11F5 0002 3036 1DFD 0005 042D 505A 4A0E"
	$"FE00 030E 2E4A 44FD 000B 0385 8C8E 4D19"
	$"1B1C 1E33 260B F400 0212 1E11 F900 0108"
	$"07EF 00FF 000C 073F 7058 1919 2036 5151"
	$"747D 44B7 0003 4D8C 8E46 FB00 0252 2908"
	$"E700 C300 0102 0AF5 0002 211E 11FD 0005"
	$"021A 2B36 2B08 FE00 0308 1929 29FD 000B"
	$"0155 5950 290E 1012 1220 1607 F400 020A"
	$"150A F900 FF05 ED00 0C04 264C 360F 0E13"
	$"1E31 2F44 5028 B700 0331 5950 25FB 0000"
	$"3101 1A05 AF00 019A FA00 0163 16F8 0016"
	$"3B7C B6AA BB6D 0000 4C9E ABB6 B0AF 916D"
	$"7F9C A6A5 B386 11FE 0010 32B6 B8AF B6BF"
	$"AFB6 AFB6 AEB6 A992 9288 20FA 0004 59AE"
	$"AFAF 61FB 0003 318F 9E28 F800 1F1C 848D"
	$"865F 2823 2355 7EAB B4B4 B2B2 B0AD B6B2"
	$"AFB0 B7AF 6009 2861 6A69 6A4F 1EFD 00EB"
	$"0001 3336 DC00 0384 B8AF 63FB 0003 63B7"
	$"9F30 F900 0424 2B59 4304 D900 F600 0106"
	$"02EB 0001 4711 F800 162E 578C 7689 5A00"
	$"0036 7078 8A7C 7B67 4F59 6D73 7D7C 5F0D"
	$"FE00 1029 9785 7B97 967B 837B 8385 8D83"
	$"7979 711B FA00 0445 857B 7E4C FB00 0323"
	$"726F 1FF8 0007 1464 635E 431D 1919 173B"
	$"607C 9084 8E81 7F7F 8D7E 7B80 867B 4406"
	$"1E44 4C50 4C3E 18E7 0001 2427 DC00 036E"
	$"857B 52FB 0003 4D8E 8428 F900 041E 2144"
	$"2F03 F500 DA00 0104 02EB 0001 2B0A F800"
	$"161A 335A 4559 3600 001F 4245 5049 483C"
	$"2F34 4040 4951 3708 FE00 1019 5A47 485A"
	$"5948 5A48 5A51 5A4A 4848 4311 FA00 0327"
	$"5149 4C00 2DFB 0003 1543 4A11 F800 1F0B"
	$"3A3A 3727 110E 0E21 3851 5649 5C50 4A4A"
	$"5249 484B 5148 2904 122C 2C31 2C2C 0DE7"
	$"0001 1518 DC00 0341 4748 31FB 0000 3102"
	$"504F 18F9 0004 1213 291C 02CE 0001 0301"
	$"F200 0233 FA00 055A A282 847E 39FE 006F"
	$"1758 A2AC B3AE B5B7 6D83 9CAD 908E ABAE"
	$"B5A5 A1AF AFB8 B79C 8616 002A A9BF B8B8"
	$"AFB8 BFAF B8BF BFBD B7B5 AFAE AB66 2526"
	$"0000 0656 A5B1 B6A6 AF82 4549 4944 6AA6"
	$"B7B3 A290 7F42 2425 2424 2571 908E ABAE"
	$"B5A5 A1AF AFB8 B6B0 B4B4 A2AB 9999 AEB0"
	$"B4A9 A6AF B0B9 B8A1 B0B0 B6A6 591B 0000"
	$"EC00 0332 B070 02EB 0005 232B 6095 6603"
	$"FA00 0080 FEB8 005F FB00 1167 B7B5 A988"
	$"685C 3526 2435 95AF A5B1 B676 06F9 00FF"
	$"2002 2224 23E7 00FC 0006 2578 4449 4203"
	$"01EA 0005 4676 625C 5B29 FE00 5312 3F76"
	$"8D89 9495 8455 5E72 7965 6572 7B95 8171"
	$"7B7B 7C84 7E5E 0F00 2083 9685 857B 858C"
	$"7B85 9696 948E 967B 8582 471B 1C00 0005"
	$"3C7A 838A 807F 6230 3535 344E 788F 8076"
	$"7661 381E 1A1C 1A1B 4F65 6572 7B95 8171"
	$"7B19 7B7C 9182 8980 767A 6E70 767D 9082"
	$"767B 7D80 8781 7E7E 837D 4515 EA00 0325"
	$"8556 02EB 0005 1923 4B69 4702 FA00 0463"
	$"9185 8543 FB00 1151 8E96 7768 5041 271C"
	$"1E26 6B7B 7A83 8A5B 04F9 0002 1718 1C01"
	$"1B1E E200 051A 5634 3630 02E9 0005 2A3E"
	$"3933 3719 FE00 120B 2647 5558 585A 502F"
	$"414A 4839 3D43 4861 4F3F FE48 214D 4A37"
	$"0900 134A 5947 4748 4759 4847 5959 6B50"
	$"6348 514F 2A0E 1200 0003 2347 4F4F 4D1A"
	$"4339 1B20 201F 3040 574E 4747 3E21 1210"
	$"1012 112F 393D 4348 614F 3FFE 4817 574E"
	$"4D55 4B48 3E43 4448 5C4D 4448 484B 4F4F"
	$"494B 4F4A 270D EA00 0316 4C34 01EB 0005"
	$"0E17 2E3A 2A01 FA00 0438 5647 4727 FB00"
	$"003A 1050 6345 3F31 2615 1212 174A 4847"
	$"4F4F 3702 F900 FF0E 0211 1212 E200 0510"
	$"341F 211A 01F0 0002 C7FA 0078 2499 B4B6"
	$"B8A6 9256 8F9D B0A1 BCAD B6B6 BFB6 B4B6"
	$"9FB5 AEBE B69C B0AF AFB7 B0B6 A39D BF8F"
	$"B1B6 B6B7 AEB6 AFBF B6B6 AFAF B6B6 B7BF"
	$"B7AE B6B6 AEA7 99AC AFA1 BCB3 B79C B4B6"
	$"B8A6 B2B6 B79D B0A1 BCAD B6B6 BFB6 B4B6"
	$"9FB5 AEBE B69C B0AF AFB7 B0B6 B8B0 B7B4"
	$"A7B5 B0BC B4A1 B0B2 B0B7 B0B5 A6A1 BEB1"
	$"BEB5 B68F 5F01 4310 FE00 0629 4649 4849"
	$"4212 F900 052F B5B3 B769 03FB 0006 257D"
	$"98BC 9A88 1AFB 0013 23A2 B69C B0AF AF99"
	$"8D92 977E 998C 99B0 B6B7 AE63 FB00 2377"
	$"B6B7 BFB7 AEB6 B6AE BFBF AFAF A1BC B3B7"
	$"8E79 4C25 1E00 3874 91B0 A1BC ADB6 B099"
	$"815C 1AF7 0002 1649 1CF9 00FD 0007 239D"
	$"898D 8C86 6903 EA00 5C1A 7B8C 8C85 7E6C"
	$"4774 7E7C 7193 7B84 838C 8483 847F 827E"
	$"9583 7E7C 7A7B 8481 8D8F 748C 6582 8D97"
	$"8E85 977B 9683 977B 7B8D 978E 9684 7A83"
	$"8D85 8378 797B 7E91 8984 7D8C 8C85 7E84"
	$"9695 7E7C 7193 7B84 838C 8483 847F 827E"
	$"9583 7E7C 7A7B 1D84 8186 8D80 8582 8285"
	$"8493 8383 7C7F 7C87 808A 8F79 8C7E 8B8B"
	$"956F 4837 0BFE 0006 1D32 383C 3934 0DF9"
	$"0005 258C 8984 5402 FB00 061E 586B 936D"
	$"6213 FB00 1319 7F83 7E7C 7A7B 6E67 7184"
	$"5D70 6270 8897 8E85 52FB 001C 5C97 8E96"
	$"847A 838D 8596 967B 7B7E 9189 8472 5E3B"
	$"1B17 002E 5F75 7C71 9306 7B84 7E70 5E43"
	$"12F7 0002 1038 19F5 0007 1B71 6869 736D"
	$"5402 EA00 4010 4958 5948 4B45 2A46 4C49"
	$"4057 475A 5A58 4F51 504C 5042 595A 4A48"
	$"4748 504D 5A5C 4159 3B52 5A5A 5051 5A48"
	$"595A 5A48 485A 5A50 5950 515A 5A51 4E47"
	$"4748 4965 5650 394A 5859 484B 5458 5A4C"
	$"4940 5747 5A5A 584F 5150 4C50 4259 5A4A"
	$"4847 4850 4D5A 594B 534E 4F52 4757 584D"
	$"484A 4B52 4C57 5C45 584A 5859 5A3F 2C21"
	$"07FE 0006 111D 2424 201F 08F9 0005 1561"
	$"5650 3201 FB00 0612 343C 573F 430D FB00"
	$"130D 4C5A 4A48 4748 433E 4855 3447 3A47"
	$"575A 5051 31FB 0000 3B22 5A50 5950 515A"
	$"5A51 5959 4848 4965 5650 433B 250E 0E00"
	$"1B39 4649 4057 475A 5746 3829 0BF7 0002"
	$"0A24 10F5 0007 113E 3E42 4342 3301 F100"
	$"0323 F900 2946 B5B6 B6A5 B2A9 B8B5 B1A9"
	$"ADA8 ADB6 B2A1 B6AB B6AF B0BF 9E9F A6B7"
	$"B7B0 BBB7 AFA6 AFAF B7AE B7BF B6B7 BDFE"
	$"B84A B69D B6BD A5BD B7B6 B69D AFBF B6AF"
	$"AFA8 A5A9 B7BF B5B6 B6A5 B2A9 B8B5 B1A9"
	$"ADA8 ADB6 B2A1 B6AB B6AF B0BF 9E9F A6B7"
	$"B7B0 BBB6 B1A2 B4AC B6AF B2BF A3A4 ABB7"
	$"B7B1 BAB3 B0A9 AEB1 B7AF B7BB B50C B8BC"
	$"A692 B1B5 9EB6 BDA6 BDA6 24FC 002F 106F"
	$"A8A5 A9B7 BF91 6D4C 4247 69A1 B5B1 A9AD"
	$"A8AD B698 8192 89B6 AFB0 BF9E 9FA6 B7B7"
	$"B0BB B7AF A6AF AFB7 AEB7 BFB6 8537 FD00"
	$"3367 B6BD A5BD B7B6 B69D AFBF B6AF AFA8"
	$"A5A9 B7BF B5B6 B6A5 B2A9 B8B5 B1A9 ADA8"
	$"ADB6 B2A1 B6A5 928C 8D92 5F43 4249 5D89"
	$"BBB7 A985 03FC 0000 4F12 8792 A3A8 AFA8"
	$"98A0 94A1 988C 6D6F 828A 928E 5DF0 0029"
	$"368D 8C84 7C88 7B8E 868B 817A 847F 8F85"
	$"788B 7B83 7B7C 8C6B 6273 8E8E 818D 8E7B"
	$"737B 7B8E 7A8E 8C8D 8E94 FE85 2E83 7497"
	$"947C 948E 8D8D 747B 8C97 7B7B 7974 838B"
	$"938D 8C84 7C88 7B8E 868B 817A 847F 8F85"
	$"788B 7B83 7B7C 8C6B 6273 8E8E 2881 8D8F"
	$"8277 877B 867B 808C 726B 7A8C 8C82 8B8A"
	$"7F78 7B7E 8E7C 8E89 8B8E 9478 6A7F 8275"
	$"9694 7D94 811C FC00 2F0B 4E79 7483 8B93"
	$"7154 3732 364C 7C86 8B81 7A84 7F8F 7260"
	$"6F62 837B 7C8C 6B62 738E 8E81 8D8E 7B73"
	$"7B7B 8E7A 8E8C 8D67 2BFD 001D 4C97 947C"
	$"948E 8D8D 747B 8C97 7B7B 7974 838B 938D"
	$"8C84 7C88 7B8E 868B 817A 1584 7F8F 8578"
	$"8B77 6962 636B 4029 2E39 4865 8D8E 775C"
	$"02FC 0013 3D69 6F7E 8387 7A72 7A6C 7C70"
	$"6E53 4E66 6672 6A46 F000 0A20 554E 5045"
	$"4D48 5A55 634E FE48 1B5A 5441 5548 4748"
	$"4859 382F 4050 504A 5350 4840 4848 5051"
	$"5059 5A50 6BFE 4712 5A41 5A6B 496B 505A"
	$"5A41 4859 5A48 4846 3D4B 570A 5855 4E50"
	$"454D 485A 5563 4EFE 4836 5A54 4155 4847"
	$"4848 5938 2F40 5050 4A53 5751 4152 4849"
	$"4A4A 593F 3649 4E4E 4954 4E4B 4648 4D50"
	$"5251 5658 516A 4139 4458 425A 6A4A 6A49"
	$"12FC 0010 062E 463D 4B57 5844 2F22 1C1F"
	$"2D4F 5563 4EFE 481B 5A48 3444 3A47 4848"
	$"5938 2F40 5050 4A53 5048 4048 4850 5150"
	$"595A 3A1F FD00 012B 5A1A 6B49 6B50 5A5A"
	$"4148 595A 4848 463D 4B57 5855 4E50 454D"
	$"485A 5563 4EFE 4813 5A54 4155 4539 3A3A"
	$"4422 141A 2029 3A53 5045 3301 FC00 1327"
	$"3C46 4B4F 4B4A 4045 3F4F 474E 322E 383A"
	$"4843 26F8 0003 2CF8 0076 9EA2 B4A5 B89D"
	$"97AA B8B7 B6B3 B6B6 BDAE B8AF A3B3 B6B6"
	$"A6B0 B09F B5B4 BDAF B89E AFAF BFB8 B8B7"
	$"BFAF AFB7 AFB8 B6B8 B8B7 B7B6 B6B7 B6AE"
	$"A5AF B6B7 AEB4 B2AF BBAA BDA2 B4A5 B89D"
	$"97AA B8B7 B6B3 B6B6 BDAE B8AF A3B3 B6B6"
	$"A6B0 B09F B5B4 BDB4 BCAA B6AF AAB4 B6B6"
	$"ACB0 B0A4 B4B5 BCB1 B8A2 B0B0 BEB8 B8B6"
	$"BC0A AFB0 B7AF B8B6 B7B8 B6B7 B5FE B66B"
	$"AEA5 AFB6 B7AE B4B2 AFBB AABD A2B4 A5B8"
	$"9D97 AAB8 B7B6 B3B6 B6BD AEB8 AFA3 B3B6"
	$"B6A6 B0B0 9FB5 B4BD AFB8 9EAF AFBF B8B8"
	$"B7BF AF7F 4953 6E98 B8B8 B7B7 B6B6 B7B6"
	$"AEA5 AFB6 B7AE B4B2 AFBB AABD A2B4 A5B8"
	$"9D97 AAB8 B7B6 B3B6 B6BD AEB8 AFA3 B3B6"
	$"B6A6 B0B0 9FB5 B4BD AFB8 9E1D FD00 0106"
	$"AA12 AFBB AABD A2B4 A5B8 9D97 AAB8 B7B6"
	$"B3B6 B66E 02EF 005A 8171 8B84 8E72 777C"
	$"9696 9183 8497 9485 857C 7B7E 8F8D 877B"
	$"7B76 8981 947B 856B 7B7B 9685 8584 8C7B"
	$"7B84 7B85 9785 858E 8497 8D84 9785 7C7B"
	$"8D84 8582 8181 9284 9B71 8B84 8E72 777C"
	$"9696 9183 8497 9485 857C 7B7E 8F8D 877B"
	$"7B76 897F 8194 8F90 7E82 7C82 808D 8B88"
	$"7B7B 7986 8295 7D85 707C 7F95 8587 848A"
	$"7B7D 847C 8596 8586 8D85 958D 8497 847C"
	$"7B8D 8485 8281 8192 849B 718B 848E 7277"
	$"7C96 9691 8384 9794 8585 7C7B 7E8F 8D87"
	$"7B7B 7689 8194 7B85 6B7B 7B96 8585 848C"
	$"7B59 353A 507E 8585 8E84 978D 8497 857C"
	$"7B8D 8485 8281 8192 849B 718B 848E 7277"
	$"7C96 9691 1583 8497 9485 857C 7B7E 8F8D"
	$"877B 7B76 8981 947B 856B 14FD 0014 047D"
	$"8192 849B 718B 848E 7277 7C96 9691 8384"
	$"9756 02EF 003E 563D 594D 503C 4848 5A5F"
	$"5557 4F5A 6952 494A 4B47 5A5A 4A48 4841"
	$"554C 6B48 4738 4848 5947 4750 5948 4850"
	$"4847 5A47 4750 505A 5A50 5A51 4948 5A50"
	$"514F 4F4C 647F 5167 3D59 4D50 3C48 485A"
	$"5F55 574F 5A69 5249 4A4B 475A 5A4A 4848"
	$"4155 4C6B 555F 4B49 494F 4755 584D 4848"
	$"4453 4B68 4847 3C49 4A59 4849 5057 484A"
	$"5049 4859 4749 5051 595A 505A 5049 485A"
	$"5051 4F4F 4C64 5167 3D59 4D50 3C48 485A"
	$"5F55 574F 5A69 5249 4A4B 475A 5A4A 4848"
	$"4155 4C6B 4847 3848 4859 4747 5059 4834"
	$"2022 2B4B 4747 FF50 FF5A 2D50 5A51 4948"
	$"5A50 514F 4F4C 6451 673D 594D 503C 4848"
	$"5A5F 5557 4F5A 6952 494A 4B47 5A5A 4A48"
	$"4841 554C 6B48 4738 0CFD 0014 034F 4C64"
	$"5167 3D59 4D50 3C48 485A 5F55 574F 5A3D"
	$"01F8 0003 27F8 000F 95AF B7B4 B498 ADB7"
	$"B7AF B5B6 AFAF B7A5 FEB6 12B1 B9B6 B4AF"
	$"BEB0 B8AD B7B7 AFB6 B6AF B8AF B7B8 FEB6"
	$"13AF B6B7 B6B6 BFAF B8B6 AFB6 B6BF B69D"
	$"AFB7 A5B8 B7FD B60E AFB7 B4B4 98AD B7B7"
	$"AFB5 B6AF AFB7 A5FE B623 B1B9 B6B4 AFBE"
	$"B0B8 ADB7 B1B5 AAB6 B4B7 B0B8 B6B4 B1BC"
	$"B0B8 AFB7 B7B2 B5B6 B0B7 B0B7 B9B6 15B4"
	$"B5B0 B5B7 B6B6 BEAF B8B6 AFB6 B6BE B69E"
	$"AFB7 A5B8 B7FD B60E AFB7 B4B4 98AD B7B7"
	$"AFB5 B6AF AFB7 A5FE B612 B1B9 B6B4 AFBE"
	$"B0B8 ADB7 B7AF B6B6 AFB8 AFB7 B8FE B613"
	$"AFB6 B7B6 B6BF AFB8 B6AF B6B6 BFB6 9DAF"
	$"B7A5 B8B7 FDB6 0EAF B7B4 B498 ADB7 B7AF"
	$"B5B6 AFAF B7A5 FEB6 13B1 B9B6 B4AF BEB0"
	$"B8AD B7B7 AFB6 B61D 0000 047C B6FD B60D"
	$"AFB7 B4B4 98AD B7B7 AFB5 B6AF 7905 EE00"
	$"5A74 8287 8B82 7B84 8389 8597 8D7B 7B84"
	$"7C83 8D8E 848D 8E90 898C 7D86 7984 8E7B"
	$"8D8D 7B85 7B8E 8597 8D83 7B8D 8E97 9796"
	$"7B85 977B 8D97 9697 747B 8E87 9388 8E87"
	$"898D 8287 8B82 7B84 8389 8597 8D7B 7B84"
	$"7C83 8D8E 848D 8E90 898C 7D86 0179 84FE"
	$"817A 8688 8C82 8D8C 928A 8A7D 877D 8890"
	$"7F8A 8C7F 847D 8F87 978B 827D 8D8E 9696"
	$"957C 8596 7B8D 9695 9674 7B8E 8793 888E"
	$"8789 8D82 878B 827B 8483 8985 978D 7B7B"
	$"847C 838D 8E84 8D8E 9089 8C7D 8679 848E"
	$"7B8D 8D7B 857B 8E85 978D 837B 8D8E 9797"
	$"967B 8597 7B8D 9796 9774 7B8E 8793 888E"
	$"8789 8D82 878B 827B 8483 8985 972D 8D7B"
	$"7B84 7C83 8D8E 848D 8E90 898C 7D86 7984"
	$"8E7B 8D8D 1400 0003 5A97 8E87 898D 8287"
	$"8B82 7B84 8389 8597 8D7B 5504 EE00 0646"
	$"4E51 574D 4B56 FE52 FF5A FF48 0150 49FE"
	$"5A12 504F 5A56 5258 4852 4650 5048 5A5A"
	$"4847 4850 47FE 5A15 485A 505A 5A59 4847"
	$"5A48 5A5A 595A 4148 5049 5751 534F 0751"
	$"554E 5157 4D4B 56FE 52FF 5AFF 4801 5049"
	$"FE5A 4350 4F5A 5652 5848 5246 504A 4E4E"
	$"5A55 554E 4F55 5754 5848 5448 5252 4B57"
	$"574B 474A 5149 5A58 5849 5951 595A 5848"
	$"4859 485A 5A59 5A41 4850 4957 5153 4F51"
	$"554E 5157 4D4B 56FE 52FF 5AFF 4801 5049"
	$"FE5A 1250 4F5A 5652 5848 5246 5050 485A"
	$"5A48 4748 5047 FE5A 0548 5A50 5A5A 5917"
	$"4847 5A48 5A5A 595A 4148 5049 5751 534F"
	$"5155 4E51 574D 4B56 FE52 FF5A FF48 0150"
	$"49FE 5A1D 504F 5A56 5258 4852 4650 5048"
	$"5A5A 0C00 0002 305A 534F 5155 4E51 574D"
	$"4B56 FE52 FF5A 0248 3202 F700 0318 F800"
	$"20A0 BBAC B6AF ACB6 ABB4 ACB7 B6AF AFB6"
	$"AFAE B6BF B1B6 BFB8 BAB1 B2B6 B8B7 AFB6"
	$"B7B8 FDAF 05B7 AFBD B7A5 A5FC B701 BFB7"
	$"FEB6 07AE B6B6 AFBF BFB6 ADFE B630 B7BB"
	$"ACB6 AFAC B6AB B4AC B7B6 AFAF B6AF AEB6"
	$"BFB1 B6BF B8BA B1B2 B6B8 B7AF B6B1 B1B4"
	$"BBB0 B4BD B6BB B2AF B2B8 B7B0 B6B7 B9FD"
	$"B001 B6B0 05BC B6A7 A7B7 B6FE B701 BFB7"
	$"FEB6 07AE B6B6 AFBF BFB6 ADFE B620 B7BB"
	$"ACB6 AFAC B6AB B4AC B7B6 AFAF B6AF AEB6"
	$"BFB1 B6BF B8BA B1B2 B6B8 B7AF B6B7 B8FD"
	$"AF05 B7AF BDB7 A5A5 FCB7 01BF B7FE B607"
	$"AEB6 B6AF BFBF B6AD FEB6 26B7 BBAC B6AF"
	$"ACB6 ABB4 ACB7 B6AF AFB6 AFAE B6BF B1B6"
	$"BFB8 BAB1 B2B6 B8B7 AFB6 B7B8 AF86 5676"
	$"B7AF FEB6 0DB7 BBAC B6AF ACB6 ABB4 ACB7"
	$"B679 02ED 0020 7891 7D97 8984 867D 887D"
	$"8E97 7B7B 977B 8597 9691 8393 8986 817F"
	$"8D85 8E7B 978E 85FD 7B0C 8E7B 9484 7C7C"
	$"848E 8E84 8E8C 84FE 8325 858D 837B 968C"
	$"8980 8287 8E89 917D 9789 8486 7D88 7D8E"
	$"977B 7B97 7B85 9796 9183 9389 8681 7F8D"
	$"1585 8E7B 9781 858F 8F8B 8192 8689 827E"
	$"8985 8E7E 948E 86FD 7C3B 8D7D 9283 7E7D"
	$"848D 8D84 8E8C 8583 8483 858D 837B 968C"
	$"8980 8287 8E89 917D 9789 8486 7D88 7D8E"
	$"977B 7B97 7B85 9796 9183 9389 8681 7F8D"
	$"858E 7B97 8E85 FD7B 0C8E 7B94 847C 7C84"
	$"8E8E 848E 8C84 FE83 1585 8D83 7B96 8C89"
	$"8082 878E 8991 7D97 8984 867D 887D 8E2C"
	$"977B 7B97 7B85 9796 9183 9389 8681 7F8D"
	$"858E 7B97 8E85 7B5E 3C53 8E7B 8287 8E89"
	$"917D 9789 8486 7D88 7D8E 9755 02ED 0020"
	$"4559 505A 5250 5A48 4E49 4F59 4848 5A48"
	$"515A 5955 4759 4949 4A4B 5A47 5048 5A50"
	$"47FD 4805 5048 6B50 4949 FC50 0159 50FE"
	$"5A09 515A 5A48 5959 4C4D 475A 3253 4F59"
	$"505A 5250 5A48 4E49 4F59 4848 5A48 515A"
	$"5955 4759 4949 4A4B 5A47 5048 5A4A 4E55"
	$"5452 4757 4951 4B4B 5649 5049 5850 4A49"
	$"FE4A 0C50 4A69 4F4A 4A50 504F 5150 5850"
	$"FE5A 2B51 5A5A 4859 594C 4D47 5A53 4F59"
	$"505A 5250 5A48 4E49 4F59 4848 5A48 515A"
	$"5955 4759 4949 4A4B 5A47 5048 5A50 47FD"
	$"4805 5048 6B50 4949 FD50 0250 5950 FE5A"
	$"4251 5A5A 4859 594C 4D47 5A53 4F59 505A"
	$"5250 5A48 4E49 4F59 4848 5A48 515A 5955"
	$"4759 4949 4A4B 5A47 5048 5A50 4748 3723"
	$"3150 4847 5A53 4F59 505A 5250 5A48 4E49"
	$"4F59 3201 F600 0329 F900 3439 AFA4 A9A6"
	$"B0A7 9983 7772 7894 ABB2 B7B7 A5A8 966C"
	$"9EB8 B5BD 9D7F 658A A5BF B7B6 B6B7 B7B8"
	$"B6AF B5B6 BFB7 B6A5 B7B6 AFB8 A6AE AFBF"
	$"FEB6 1AAE B8AF BFB3 B2B6 B4B8 AFA4 A9A6"
	$"B0A7 A7AF B7AF B1BF BFB6 B7B7 A5AE FEB6"
	$"21B8 B5BD B1B5 9CB6 A5B9 B7B7 AAB1 B6B7"
	$"B6B6 B5BB B4B5 A2B3 A9BD B6B6 B3B6 B6B9"
	$"B6B0 B50C B5BE B6B7 A6B7 B6AF B8A6 AEAF"
	$"BEFE B61A AEB8 AFBF B3B2 B6B4 B8AF A4A9"
	$"A6B0 A7A7 AFB7 AFB1 BFBF B6B7 B7A5 AEFE"
	$"B61E B8B5 BDB1 B59C B6A5 BFB7 B6B6 B7B7"
	$"B8B6 AFB5 B6BF B7B6 A5B7 B6AF B8A6 AEAF"
	$"BFFE B61A AEB8 AFBF B3B2 B6B4 B8AF A4A9"
	$"A6B0 A7A7 AFB7 AFB1 BFBF B6B7 B7A5 AEFE"
	$"B611 B8B5 BDB1 B59C B6A5 BFB7 B6B6 B7B7"
	$"B8B6 AFB5 0FB6 B4B8 AFA4 A9A6 B0A7 A7AF"
	$"B7AF B1BF 04ED 005B 2A7B 807B 7789 7566"
	$"3A2B 212E 5578 868E 847C 7C62 1C6F 8695"
	$"8960 3C13 4E7C 8C8E 8D8D 848E 858D 7B96"
	$"8D8C 848D 8784 977B 8573 857B 968D 8383"
	$"8585 7B8C 8184 8D85 897B 807B 7789 757D"
	$"7B8E 7B8B 9696 8D8E 847C 8597 9697 8695"
	$"897E 967D 7F97 7C8D 8E87 8185 9491 9483"
	$"958A 8192 8094 7E8E 8B8C 8984 8B87 8D7C"
	$"948C 8B83 8D87 8496 7C85 7385 7B95 8D83"
	$"8385 857B 8C81 848D 8589 7B80 7B77 8975"
	$"7D7B 8E7B 8B96 968D 8E84 7C85 9796 9786"
	$"9589 7E96 7D97 7C8C 8E8D 8D84 8E85 8D7B"
	$"968D 8C84 8D87 8497 7B85 7385 7B96 8D83"
	$"8385 857B 8C81 848D 8589 7B80 7B77 8975"
	$"7D7B 8E7B 8BFF 9629 8D8E 847C 8597 9697"
	$"8695 897E 967D 977C 8C8E 8D8D 848E 858D"
	$"7B96 8D85 897B 807B 7789 757D 7B8E 7B8B"
	$"9603 ED00 3417 4850 4E4F 5745 402B 2420"
	$"2739 4B57 5050 494D 401E 4748 5957 3A2E"
	$"1937 4959 505A 5A50 5047 5A48 635A 5950"
	$"5A49 505A 4847 4051 4859 FE5A 0751 4748"
	$"5952 4F54 4D7F 4948 504E 4F57 454A 4850"
	$"4854 5859 5A50 5049 515A 585A 4859 5747"
	$"594A 5A49 5A50 534E 5157 535A 485B 584B"
	$"574D 574A 594F 5756 504F 495A 4A62 5957"
	$"4F5A 4A50 5A48 4740 5148 595A 595A 5147"
	$"4859 524F 544D 4948 504E 4F57 454A 4850"
	$"4854 5859 5A50 5049 515A 585A 4859 5747"
	$"594A 5A49 5950 5A5A 5050 475A 4863 5A59"
	$"505A 4950 5A48 0447 4051 4859 FE5A 3F51"
	$"4748 5952 4F54 4D49 4850 4E4F 5745 4A48"
	$"5048 5458 595A 5050 4951 5A58 5A48 5957"
	$"4759 4A5A 4959 505A 5A50 5047 5A48 6354"
	$"4D49 4850 4E4F 5745 4A48 5048 5458 02F5"
	$"0003 17F9 0006 8DB0 B5B4 94A9 7FF9 5B68"
	$"6067 625B 5B84 B5A7 AD72 5B70 A4B6 B7AF"
	$"C6AE B7BF A5B8 B89C 9EB7 AFAF B8BF AEB6"
	$"B7B6 B6AF BDB6 B7B6 AFBF B6B7 A5B5 B4AD"
	$"ADAC B0B5 B494 ADB5 A5B7 B9B9 B7AE AFBF"
	$"9CB6 AEB6 AFB6 B6A7 B6B0 BFB7 BFB6 B7BA"
	$"A9B4 B1B9 ACB7 B7A4 B0B2 BBB5 BDB8 B5B0"
	$"C3AF B7BC A9B8 B89F A07F B8B0 B0B6 BEAE"
	$"B5B6 B5B6 AFBD B5B7 B6AF BFB6 B7A5 B5B4"
	$"ADAD ACB0 B5B4 94AD B5A5 B7B9 B9B7 AEAF"
	$"BF9C B6AE B6AF B6B6 A7B6 B0BF B7BF B6B7"
	$"AFC6 AEB7 BFA5 B8B8 9C9E B7AF AFB8 BFAE"
	$"B6B7 B6B6 AFBD B6B7 B6AF BFB6 B7A5 B5B4"
	$"ADAD ACB0 B1B4 94AD B5A5 B7B9 B9B7 AEAF"
	$"BF9C B6AE B6AF B6B6 A7B6 B0BF B7BF B6B7"
	$"AFC6 AEB7 BFA5 B8B8 9C9E FFAD 0CAC B0B5"
	$"B494 ADB5 A5B7 B9B9 B7AE EC00 0663 8797"
	$"8C74 7337 F900 4C09 140B 0000 408B 7C80"
	$"2200 1F67 978E 7B9D 858E 967C 8585 7D6B"
	$"8E7B 7B85 9685 838E 978D 7B94 8D8E 8D7B"
	$"8C8D 847C 848B 8385 7987 978C 7479 8C87"
	$"8E8D 9687 857B 9673 9785 977B 8D8D 7C8E"
	$"7D95 848C 7F97 8E8D 8091 8897 7B8B 8B7C"
	$"8581 8F82 8A97 8C7D 9A88 8E92 8086 867F"
	$"6D8E 7D7C 8495 8583 8D95 8D7C 948C 8D8D"
	$"7B8C 8D84 7C84 8B83 8579 8797 8C74 798C"
	$"878E 8D96 8785 7B96 7397 8597 7B8D 8D7C"
	$"8E7D 9584 8C97 8E7B 9D85 8E96 7C85 857D"
	$"6B8E 7B7B 8596 8583 8E97 8D7B 948D 8E8D"
	$"7B8C 8D84 7C84 8B83 8579 8790 8C74 798C"
	$"878E 8D96 872A 857B 9673 9785 977B 8D8D"
	$"7C8E 7D95 848C 978E 7B9D 858E 967C 8585"
	$"7D6B 8385 7987 978C 7479 8C87 8E8D 9687"
	$"85EC 0006 3A62 5A4E 4645 2EF9 1130 161B"
	$"1611 1132 5749 4E20 1120 465A 5048 6A51"
	$"5059 4947 474A 3850 4848 4759 515A 505A"
	$"5A48 6B5A 505A 4859 5A50 4950 5B50 507F"
	$"4762 5A4E 4648 5A49 5152 5950 5148 594A"
	$"5A51 5A48 5A58 4955 4859 5059 5A50 5354"
	$"5751 5A48 5553 494E 4A55 4E55 5A50 4B65"
	$"5352 564E 4A48 4C3A 514A 4947 5852 5950"
	$"595A 496A 5950 5A48 595A 5049 505B 5050"
	$"4762 5A4E 4648 5A49 5152 5950 5148 594A"
	$"5A51 5A48 5A58 4955 4859 5059 5A50 486A"
	$"5150 5949 4747 4A38 5048 4847 5951 5A50"
	$"FF5A 4448 6B5A 505A 4859 5A50 4950 5B50"
	$"5047 6257 4E46 485A 4951 5259 5051 4859"
	$"4A5A 515A 485A 5849 5548 5950 595A 5048"
	$"6A51 5059 4947 474A 3850 5047 625A 4E46"
	$"485A 4951 5259 5051 F400 0314 FA00 0632"
	$"B0AF B2BC A872 F75B FF69 655B 83A6 B6AA"
	$"655B 83BF B7A5 AFAF B7B6 B8B6 B7AF B6AF"
	$"B7A6 B8B7 B7AF AFB6 BD9E B7AF B6B6 B7B8"
	$"C6B7 A5B7 AFB6 A6B2 B5B0 AFB2 BCA8 ADAD"
	$"ABB7 B6B5 A59C B5AE 9FA5 A5B7 BFA6 B6B6"
	$"BFB6 B7BF B7A5 AFAE A7AA ABB7 BDA9 B6B4"
	$"BDB2 B7BD B7A7 AFB0 B8B2 B8B5 B7B0 B6B0"
	$"B97F A8B6 B7B6 B0AE B6BC 9FB7 AFB6 B5B7"
	$"B8C5 B7A5 B7AF B6A6 B2B5 B0AF B2BC A8AD"
	$"ADAB B7B6 B5A5 9CB5 AE9F A5A5 B7BF A6B6"
	$"B6BF B6B7 BFB7 A5AF AFB7 B6B8 B6B7 AFB6"
	$"AFB7 A6B8 B7B7 AFAF B6BD 9EB7 AFB6 B6B7"
	$"B8C6 B78C ABAF B6A6 B2AF 876C 67B7 A8AD"
	$"ADAB B7B6 B5A5 9CB5 AE9F A5A5 B7BF A6B6"
	$"B6BF B6B7 BFB7 A5AF AFB7 B6B8 B6B7 AFB6"
	$"AFB7 0EB2 B5B0 AFB2 BCA8 ADAD ABB7 B6B5"
	$"A59C ED00 0624 8692 9692 7F22 F700 FF19"
	$"4900 3773 977A 0E00 3D96 8E7C 7B7B 848D"
	$"8597 8E7B 977B 8E73 8584 8E7B 7B8D 946B"
	$"847B 978D 8E85 9D8E 7C8E 7B8C 7394 8286"
	$"9296 927F 7A78 7784 9796 7C73 9685 7687"
	$"878E 8C73 978D 8B83 8E96 8E7F 7C7B 827B"
	$"8986 918D 7597 888C 7F8C 928E 7C7B 7F87"
	$"8785 928F 7E96 7C90 7684 858C 7C7A 8D93"
	$"6D85 7C97 8C8D 859C 8E7D 8E7B 8C74 9482"
	$"8692 9692 7F7A 7877 8497 967C 7396 8576"
	$"8787 8E8C 7397 8D8B 838E 968E 7C7B 7B84"
	$"8D85 978E 7B97 7B8E 7385 848E 7B7B 8D94"
	$"6B84 7B97 8D8E 859D 8E52 7C7B 8C73 9479"
	$"461E 148B 7F7A 7877 8497 967C 2A73 9685"
	$"7687 878E 8C73 978D 8B83 8E96 8E7C 7B7B"
	$"848D 8597 8E7B 977B 8E94 8286 9296 927F"
	$"7A78 7784 9796 7C73 ED00 0619 4B57 5969"
	$"4F21 F711 FF1B 2D11 2E40 5A50 1811 2C59"
	$"5049 4848 505A 475A 5048 5A48 5040 4750"
	$"5048 485A 6B38 5048 5A5A 5047 6A50 4950"
	$"4859 4063 5A7F 4B57 5969 4F48 4645 515A"
	$"5849 4A63 512E 4949 5059 405A 5A59 5A50"
	$"5950 4948 4E39 4E48 5356 425A 5557 534E"
	$"5750 4948 4C55 5449 5752 4B59 4853 4247"
	$"504F 4947 5B6A 3950 495B 5A50 4769 5049"
	$"5048 5941 6359 4B57 5969 4F48 4645 515A"
	$"5849 4A63 512E 4949 5059 405A 5A59 5A50"
	$"5950 4948 4850 5A47 5A50 485A 4850 4047"
	$"5050 4848 5A6B 4638 5048 5A5A 5047 6A50"
	$"3648 4859 4063 552F 1F1B 654F 4846 4551"
	$"5A58 494A 6351 2E49 4950 5940 5A5A 595A"
	$"5059 5049 4848 505A 475A 5048 5A48 5063"
	$"5A4B 5759 694F 4846 4551 5A58 494A F400"
	$"032C FA00 2763 AABC B1B7 935B 6684 857E"
	$"6C62 5B62 7BA0 925B 6A9B B6B7 6A5B 689B"
	$"B7B6 AFB7 B6B8 AEAF B7AF AFB7 B6FE AF21"
	$"B8B6 AFB6 B7A5 9CB7 B6B7 AFB6 B7AF B7B6"
	$"A3AF ACB6 AFB6 AABC B1B7 B3AE 9EB5 AFB7"
	$"A5AF FEB6 28B7 AEB7 AF9C B6B8 AFB6 BF9C"
	$"B7B6 AFB7 B6B7 AEB4 B2A2 B4B8 B1B4 BBA1"
	$"B7B6 AFB7 B6B4 ABB0 B7B0 AFB7 B6AF FFB0"
	$"21B6 B5AF B6B6 A69D B7B6 B7AF B6B6 AFB7"
	$"B6A3 AFAC B6AF B6AA BCB1 B7B3 AE9E B5AF"
	$"B7A5 AFFE B617 B7AE B7AF 9CB6 B8AF B6BF"
	$"9CB7 B6AF B7B6 B8AE AFB7 AFAF B7B6 FEAF"
	$"21B8 B6AF B6B7 A59C B7B6 B7AF B6B7 AFB7"
	$"8D5D 7FA8 B690 615B 72AA B7B3 AE9E B5AF"
	$"B7A5 AFFE B618 B7AE B7AF 9CB6 B8AF B6BF"
	$"9CB7 B6AF B7B6 B8AE AFB7 AFAF B7B6 AF0F"
	$"AFB6 AABC B1B7 B3AE 9EB5 AFB7 A5AF B003"
	$"EE00 274C 7B89 8D84 5B00 1243 3E37 200A"
	$"000C 3263 5100 177B 8383 1700 147B 8497"
	$"7B84 8D85 857B 847B 7B8E 8DFE 7B31 7A8D"
	$"7B8D 8E7C 7D84 9784 7B97 847B 848D 8F7B"
	$"798E 7C8C 7B89 8D84 8F81 6D95 7C8E 877B"
	$"8D97 8D84 7A8E 7B7D 8385 7B97 967D 8497"
	$"5A7B 848D 847E 887E 7C81 8880 908F 7C82"
	$"957B 868D 8384 7D87 7C7B 8F8C 7B7C 7D7C"
	$"8B7B 8D8D 7D7D 8496 847C 9683 7C84 8D8F"
	$"7B79 8E7C 8C7B 898D 848F 816D 957C 8E87"
	$"7B8D 978D 847A 8E7B 7D83 857B 9796 7D84"
	$"977B 848D 8585 7B84 7B7B 8E8D FE7B 217A"
	$"8D7B 8D8E 7C7D 8497 847B 9784 7B84 4D04"
	$"3573 8E4F 0900 2081 848F 816D 957C 8E87"
	$"7B2B 8D97 8D84 7A8E 7B7D 8385 7B97 967D"
	$"8497 7B84 8D85 857B 847B 7B8E 8D7B 7C8C"
	$"7B89 8D84 8F81 6D95 7C8E 877B 8803 EE00"
	$"2730 4759 5446 4111 1832 2C29 1E16 1117"
	$"2B40 3C11 1B49 5A46 1B11 1B49 505A 4850"
	$"5A47 5148 5048 4850 5AFE 4815 475A 485A"
	$"5049 4A50 5A50 485A 5048 505A 5C48 4F4F"
	$"4958 0B47 5954 465C 4E3B 5A48 5049 48FE"
	$"5A4C 5051 5048 4A5A 4748 5A59 4A50 5A48"
	$"505A 4D51 4D4B 4955 4A4D 5555 494E 5A48"
	$"5258 4750 4952 4948 5159 4849 4A49 5849"
	$"5950 4A4A 505A 5049 5A4F 4950 5A5C 484F"
	$"4F49 5847 5954 465C 4E3B 5A48 5049 48FE"
	$"5A17 5051 5048 4A5A 4748 5A59 4A50 5A48"
	$"505A 4751 4850 4848 505A FE48 0547 5A48"
	$"5A50 491B 4A50 5A50 485A 5048 5039 1329"
	$"4C4F 3516 1122 4E46 5C4E 3B5A 4850 4948"
	$"FE5A 2850 5150 484A 5A47 485A 594A 505A"
	$"4850 5A47 5148 5048 4850 5A48 4958 4759"
	$"5446 5C4E 3B5A 4850 4948 5702 F500 0329"
	$"FA00 5063 B4A7 B6B7 6D84 A6AE B6B6 AEAE"
	$"A5BF BFA2 5F5B 9FBF B694 5B5B 81A3 AE95"
	$"A5B7 B7B8 A6AF B8B6 AFAF B6AF AFB6 BFB6"
	$"AFAF B7B6 B6B7 AFB7 BFA5 B683 BF9C A5B6"
	$"B5AD B1B5 B4A7 B6B7 BFB6 A6AE B6B6 AEAE"
	$"A5BF BFAE FEB6 24BF B6BF B6A5 AFA3 AE95"
	$"A5B7 BCB1 B1B4 B7BC B4BA B6A8 AFA8 B29D"
	$"A7B5 B7B8 A9B0 B6B6 B1AE B6A9 06B1 B3BC"
	$"B6B0 AFB7 FEB6 1DAF B7BF A6B5 84BF 9DA5"
	$"B6B5 ADB1 B5B4 A7B6 B7BF B6A6 AEB6 B6AE"
	$"AEA5 BFBF AEFE B63C BFB6 BFB6 A5AF A3AE"
	$"95A5 B7B7 B8A6 AFB8 B6AF AFB6 AFAF B6BF"
	$"B6AF AFB7 B6B6 B7AF B7BF A5B6 83BF 9C89"
	$"5B6C 805B 5B61 A0B6 B7BF B6A6 AEB6 B6AE"
	$"AEA5 BFBF AEFE B614 BFB6 BFB6 A5AF A3AE"
	$"95A5 B7B7 B8A6 AFB8 B6AF AFB6 AF0E B1B5"
	$"B4A7 B6B7 BFB6 A6AE B6B6 AEAE 48ED 005C"
	$"5087 808C 8E1A 3F73 8597 8D85 8587 9696"
	$"7107 0071 8C97 5000 0037 8F85 6287 8E84"
	$"8573 7B85 977B 7B97 7B7B 8D8C 8D7B 7B8E"
	$"8D97 8E7B 848C 7C8D 6596 7D7C 978B 7C89"
	$"9387 808C 8E8C 8D73 8597 8D85 8587 9696"
	$"8597 8397 8C97 8C8D 7C7B 8F85 627F 878E"
	$"9085 8B80 918F 8F87 907C 7B8E 876C 848A"
	$"8687 7A7E 8394 7E7B 9678 7E8B 8A8E 7C7B"
	$"8E8D 968D 7C84 8C7D 8C66 967D 7C97 8B7C"
	$"8993 8780 8C8E 8C8D 7385 978D 8585 8796"
	$"9685 9783 978C 978C 8D7C 7B8F 8562 878E"
	$"8485 737B 8597 7B7B 977B 7B8D 8C8D 7B7B"
	$"8E8D 978E 7B84 8C7C 8D65 967D 4D00 1A38"
	$"0000 0973 8C8E 8C8D 7385 978D 8585 2A87"
	$"9696 8597 8397 8C97 8C8D 7C7B 8F85 6287"
	$"8E84 8573 7B85 977B 7B97 7B89 9387 808C"
	$"8E8C 8D73 8597 8D85 853B ED00 4031 534C"
	$"5850 1E32 4151 5A5A 5151 4959 5947 1411"
	$"4859 5A3A 1111 2A5C 5139 4950 5047 4048"
	$"475A 4848 5A48 485A 595A 4848 505A 5A50"
	$"4850 5949 5A31 594A 495A 5248 515A 0F53"
	$"4C58 5059 5A41 515A 5A51 5149 5959 51FE"
	$"5A4C 595A 595A 4948 5C51 3949 5056 4E51"
	$"5454 5955 545A 4948 5B53 4149 4E50 4B45"
	$"4947 584B 485A 454A 5857 5A49 4850 5A5A"
	$"5049 5059 4A59 3259 4A49 5A52 4851 5A53"
	$"4C58 5059 5A41 515A 5A51 5149 5959 51FE"
	$"5A1C 595A 595A 4948 5C51 3949 5050 4740"
	$"4847 5A48 485A 4848 5A59 5A48 4850 5A1F"
	$"5A50 4850 5949 5A31 594A 3411 1D2A 1111"
	$"1546 5850 595A 4151 5A5A 5151 4959 5951"
	$"FE5A 2359 5A59 5A49 485C 5139 4950 5047"
	$"4048 475A 4848 5A48 515A 534C 5850 595A"
	$"4151 5A5A 5151 20F4 0003 26FA 0028 6BB8"
	$"B7AF AF63 B3AF 9CAE B6AE B8AF B7B6 6D5B"
	$"6CBD B6B7 695B 5B95 BF9C AFAF B6B8 BDB7"
	$"B8BF BFB6 B6B7 A5FE B8FF A54A B6B7 AEAF"
	$"B7AE A5A6 B6B8 BDB8 AFB6 B6B7 BFAF B8B8"
	$"B7AF B7B7 B6AF 9CAE B6AE B8AF B7B7 BFB6"
	$"B6BD B6B7 B6AF AFB6 BF9C AFAF B6B7 BEB6"
	$"B7BE B9B7 B6B1 ACB7 BDA3 ADAD B6B8 BAB5"
	$"B8BC BBB4 B6B7 A83F B8B7 B8A7 A7B7 B6AF"
	$"B0B7 AEA6 A7B6 B8BC B8AF B6B6 B7BF AFB8"
	$"B8B7 AFB7 B7B6 AF9C AEB6 AEB8 AFB7 B7BF"
	$"B6B6 BDB6 B7B6 AFAF B6BF 9CAF AFB6 B8BD"
	$"B7B8 BFBF B6B6 B7A5 FEB8 FFA5 0EB6 B7AE"
	$"AFB7 AEA5 A6B6 B8BD B8AF B669 FD5B 277F"
	$"B7AF B7B7 B6AF 9CAE B6AE B8AF B7B7 BFB6"
	$"B6BD B6B7 B6AF AFB6 BF9C AFAF B6B8 BDB7"
	$"B8BF BFB6 B6B7 A50E AFB8 B8B7 AFB7 B7B6"
	$"AF9C AEB6 AEB2 13ED 0028 4D85 8E7B 820B"
	$"897B 7D85 8D85 857B 8482 1C00 1C94 978E"
	$"1400 0060 8C7D 7B7B 9785 9484 8596 9697"
	$"8D84 7CFE 85FF 7C2E 8D84 857B 8485 7C73"
	$"8D85 9485 7B8D 8D8E 967C 8585 8E7B 8E84"
	$"8D7B 7D85 8D85 857B 8484 9697 9794 978E"
	$"837B 7B97 8C7D 7B5B 7B97 8495 9091 9597"
	$"9186 7E7B 928A 7F7B 7B95 8591 8285 9392"
	$"918D 847F 8584 867E 7E8E 8385 7C85 847D"
	$"748D 8593 857B 8D8D 8E96 7C85 858E 7B8E"
	$"848D 7B7D 858D 8585 7B84 8496 9797 9497"
	$"8E83 7B7B 978C 7D7B 7B97 8594 8485 9696"
	$"978D 847C FE85 FF7C 0E8D 8485 7B84 857C"
	$"738D 8594 857B 8D15 FD00 0B33 8E7B 8E84"
	$"8D7B 7D85 8D85 852A 7B84 8496 9797 9497"
	$"8E83 7B7B 978C 7D7B 7B97 8594 8485 9696"
	$"978D 847C 7C85 858E 7B8E 848D 7B7D 858D"
	$"8580 0DED 0028 2948 5048 4B16 5848 4A51"
	$"5A51 4748 504F 1E11 1E6B 5A50 1C11 113F"
	$"594A 4848 5A47 6B50 4759 595A 5A50 49FE"
	$"47FF 4912 5A50 5148 5051 4940 5A47 6B47"
	$"485A 5A4F 5948 4777 4850 4850 505A 484A"
	$"515A 5147 4850 5059 5A5A 6B5A 505A 4848"
	$"5A59 4A48 485A 4D5F 5754 655A 535A 4A48"
	$"5554 4948 485A 4966 4E49 5856 565A 4F4D"
	$"4747 494B 4A5A 4F50 4850 5149 415A 476A"
	$"4748 5A5A 4F59 4847 4850 4850 505A 484A"
	$"515A 5147 4850 5059 5A5A 6B5A 505A 4848"
	$"5A59 4A48 485A 476B 5047 5959 5A5A 5049"
	$"FE47 FF49 025A 5051 0B48 5051 4940 5A47"
	$"6B47 485A 1CFD 1136 2650 4850 505A 484A"
	$"515A 5147 4850 5059 5A5A 6B5A 505A 4848"
	$"5A59 4A48 485A 476B 5047 5959 5A5A 5049"
	$"4847 4850 4850 505A 484A 515A 5144 08F4"
	$"0003 22FA 0015 A2AF B8B7 A794 B7B7 B6B6"
	$"B8B6 AEB7 B78F 5B5B 83B8 B6A9 FE5B 3395"
	$"B8B6 B6AF AFB6 BFB6 B5B8 AFB8 BDB7 B7BF"
	$"BFB8 B6AF A3AF 9CB7 AEAF AEB6 A5AF C6BF"
	$"B6B7 AFAF AEB6 B6AF B8B7 AFAF B7B7 B6B6"
	$"B8B6 AEFE B728 BFB6 AEB8 B6B6 AEB8 B6B6"
	$"B8B6 B6AF AFB7 BFB6 B0B8 B4B7 B3B8 B6B9"
	$"BAB7 B6AF ACB4 B8B6 B4B6 AFB8 B9B6 B923"
	$"BFBE B8B5 AFA4 B09E B6AF AFAE B6A6 AFC5"
	$"BFB6 B7AF AFAE B6B6 AFB8 B7AF AFB7 B7B6"
	$"B6B8 B6AE FEB7 2CBF B6AE B8B6 B6AE B8B6"
	$"B6B8 B6B6 AFAF B6BF B6B5 B8AF B8BD B7B7"
	$"BFBF B8B6 AFA3 AF9C B7AE AFAE B6A5 AFC6"
	$"BFB6 B777 FD5B 0B8F B8B7 AFAF B7B7 B6B6"
	$"B8B6 AEFE B718 BFB6 AEB8 B6B6 AEB8 B6B6"
	$"B8B6 B6AF AFB6 BFB6 B5B8 AFB8 BDB7 B7FF"
	$"B60B AFB8 B7AF AFB7 B7B6 B6B8 B69E EC00"
	$"1586 7B85 8E6F 548E 8E83 8385 977A 8484"
	$"4B00 0041 858D 79FE 0033 6085 9783 7B7B"
	$"838C 9796 7A7B 8594 8484 968C 8597 7B8F"
	$"7B7D 847A 7B85 8D87 7B9D 8C97 847B 7B85"
	$"8397 7B85 8E7B 7B8E 8E83 8385 977A FE84"
	$"0C96 8D85 858D 8D85 858D 9785 9783 FF7B"
	$"3D84 9291 8B81 878A 8A85 8A97 8792 887B"
	$"8081 8993 917A 7D86 9283 8795 8D85 947B"
	$"8E7C 7F83 7B7C 848C 877C 9C8C 9784 7B7B"
	$"8583 977B 858E 7B7B 8E8E 8383 8597 7AFE"
	$"842C 968D 8585 8D8D 8585 8D97 8597 837B"
	$"7B83 8C97 967A 7B85 9484 8496 8C85 977B"
	$"8F7B 7D84 7A7B 858D 877B 9D8C 9784 29FD"
	$"000B 4C85 8E7B 7B8E 8E83 8385 977A FE84"
	$"2696 8D85 858D 8D85 858D 9785 9783 7B7B"
	$"838C 9796 7A7B 8594 8484 8397 7B85 8E7B"
	$"7B8E 8E83 8385 976F EC00 1550 4847 5043"
	$"3750 505A 5A47 5A51 5050 3511 1130 475A"
	$"4FFE 1127 3F47 5A5A 4848 5A59 5A63 4748"
	$"476B 5050 5959 475A 485C 484A 5051 4851"
	$"5A49 486A 595A 5048 4851 5A5A 0B48 4750"
	$"4848 5050 5A5A 475A 51FE 504C 595A 5147"
	$"5A5A 5147 5A5A 475A 5A48 4854 595A 5747"
	$"5454 594A 575A 4C55 5A48 4D56 5658 6047"
	$"494A 664F 5359 5948 5848 5B49 4B4F 5048"
	$"5159 4948 6959 5950 4848 515A 5A48 4750"
	$"4848 5050 5A5A 475A 51FE 5020 595A 5147"
	$"5A5A 5147 5A5A 475A 5A48 485A 595A 6347"
	$"4847 6B50 5059 5947 5A48 5C48 4A0B 5051"
	$"4851 5A49 486A 595A 5023 FD11 0B33 4750"
	$"4848 5050 5A5A 475A 51FE 5026 595A 5147"
	$"5A5A 5147 5A5A 475A 5A48 485A 595A 6347"
	$"4847 6B50 505A 5A48 4750 4848 5050 5A5A"
	$"475A 4AF3 0003 1DFA 0015 7EB7 AEB7 B6B8"
	$"B69C A6C6 AFB6 BDBC B361 5B5B 9AB6 C699"
	$"FE5B 1493 B8BF AFA5 B6B8 B6AF B7AF A6AF"
	$"AFBF BFAF B7BD A6BF FDAF FFA5 44AE A5B7"
	$"B6B6 AFBF AFBD B8AF AFB6 B7AE B7B6 B8B6"
	$"9CA6 C6AF B6BD BCB6 B6AE B6B7 B6C6 B6B8"
	$"B6AF BDB8 BFAF A5B6 B7B1 B4B7 B4BB B4B5"
	$"B9B4 B9B8 BEAD ABB4 B6B5 AFB4 ADA7 ADB0"
	$"BEBE 44AF B8BC A8BE AFAF B0B0 A6A6 AEA6"
	$"B7B5 B5B0 BFAF BDB8 AFAF B6B7 AEB7 B6B8"
	$"B69C A6C6 AFB6 BDBC B6B6 AEB6 B7B6 C6B6"
	$"B8B6 AFBD B8BF AFA5 B6B8 B6AF B7AF A6AF"
	$"AFBF BFAF B7BD A6BF FDAF FFA5 08AE A5B7"
	$"B6B6 AFBF AF89 FD5B 27A0 AEB7 B6B8 B69C"
	$"A6C6 AFB6 BDBC B6B6 AEB6 B7B6 C6B6 B8B6"
	$"AFBD B8BF AFA5 B6B8 B6AF B7AF A6AF AFBF"
	$"BF0D AFB6 B7AE B7B6 B8B6 9CA6 C6AF B6AC"
	$"EC00 1561 8E85 8483 858D 7D73 9D7B 8394"
	$"9D92 0A00 005A 979D 67FE 0014 5485 8C7B"
	$"7C8D 858D 7B8E 7B73 7B7B 8C96 7B8E 9473"
	$"8CFD 7BFF 7C28 8587 848D 8D7B 8C7B 9485"
	$"7B7B 8D8E 8584 8385 8D7D 739D 7B83 949D"
	$"9797 8597 8497 9D97 858D 7B94 858C 7B60"
	$"7C8D 9088 8D87 8D8F 8E82 8D83 8D87 8E79"
	$"8089 8389 7B8B 7B76 7D7C 8C95 7B8E 9176"
	$"8B7B 7B7C 7C7D 7C85 8784 8C8C 7C8C 7B94"
	$"857B 7B8D 8E85 8483 858D 7D73 9D7B 8394"
	$"9D97 9785 9784 979D 9785 8D7B 9485 8C7B"
	$"7C8D 858D 7B8E 7B73 7B7B 8C96 7B8E 9473"
	$"8CFD 7BFF 7C08 8587 848D 8D7B 8C7B 45FD"
	$"000B 6A85 8483 858D 7D73 9D7B 8394 299D"
	$"9797 8597 8497 9D97 858D 7B94 858C 7B7C"
	$"8D85 8D7B 8E7B 737B 7B8C 967B 8D8E 8584"
	$"8385 8D7D 739D 7B83 87EC 0015 3E50 5150"
	$"5A47 5A4A 406A 485A 6B74 5816 1111 3C5A"
	$"6A43 FE11 1444 4759 4849 5A47 5A48 5048"
	$"4048 4859 5948 506B 4059 FD48 FF49 0C51"
	$"4950 5A5A 4859 486B 4748 485A 4B50 5150"
	$"5A47 5A4A 406A 485A 6B74 5A5A 515A 505A"
	$"6A5A 475A 486B 4759 4849 5A53 5454 5054"
	$"5C54 475A 4D61 495E 464D 5647 5648 4F48"
	$"4348 4959 5948 5167 4457 4848 4949 4A49"
	$"5149 5059 5949 5948 6BFE 482D 5A50 5150"
	$"5A47 5A4A 406A 485A 6B74 5A5A 515A 505A"
	$"6A5A 475A 486B 4759 4849 5A47 5A48 5048"
	$"4048 4859 5948 506B 4059 FE48 0B48 4949"
	$"5149 505A 5A48 5948 3BFD 1135 4051 505A"
	$"475A 4A40 6A48 5A6B 745A 5A51 5A50 5A6A"
	$"5A47 5A48 6B47 5948 495A 475A 4850 4840"
	$"4848 5959 485A 5051 505A 475A 4A40 6A48"
	$"5A61 F300 0322 FA00 0E20 B8B6 B8B8 B7B6"
	$"B6AF BFB6 B6BF BF97 FE5B 039D AFB6 94FE"
	$"5B0F 87B6 9CB7 B6BF B7B7 BFB7 A6AF B7A5"
	$"AFB6 FEBF 4CAF B8B7 B69E AFB8 AF9D A59C"
	$"AFAF B7B8 B6BF AFB6 95AF B8B6 B8B8 B7B6"
	$"B6AF BFB6 B6BF BFB7 B7AE BDAF AFB6 BFB6"
	$"B6BF B6B6 9CB7 B6BF B7B1 BEB2 ACB4 BCB1"
	$"B4BC B9B9 A5B5 B6BD B7B2 BCB7 A8AC B4A4"
	$"AFB5 FEBE 3CB1 B7B7 B39F B0B8 AF9E A69D"
	$"AFAF B7B8 B6BF AFB6 96AF B8B6 B8B8 B7B6"
	$"B6AF BFB6 B6BF BFB7 B7AE BDAF AFB6 BFB6"
	$"B6BF B6B6 9CB7 B6BF B7B7 BFB7 A6AF B7A5"
	$"AFB6 FEBF 10AF B8B7 B69E AFB8 AF9D A59C"
	$"AFAF B7B8 B68D FD5B 27A2 B6B8 B8B7 B6B6"
	$"AFBF B6B6 BFBF B7B7 AEBD AFAF B6BF B6B6"
	$"BFB6 B69C B7B6 BFB7 B7BF B7A6 AFB7 A5AF"
	$"B60D 95AF B8B6 B8B8 B7B6 B6AF BFB6 B6AE"
	$"EC00 0E16 858D 8585 8E97 8D7B 968D 9796"
	$"965C FE00 0360 7B97 50FE 000F 4997 7D84"
	$"838C 8E84 8C84 737B 8E7C 7B8D FE96 307B"
	$"8584 8D6B 7B85 7B74 877D 7B7B 8E85 8D96"
	$"7B97 627B 858D 8585 8E97 8D7B 968D 9796"
	$"968E 8E7A 947B 7B97 8C8D 9796 9797 7D84"
	$"5B83 8C8E 7E91 7E78 8E8D 888E 9397 9784"
	$"8283 8A8E 7F89 8474 7A8D 7C7B 8B95 9495"
	$"7E84 8689 6C7C 867C 7587 7E7C 7B8E 858D"
	$"967C 9763 7B85 8D85 858E 978D 7B96 8D97"
	$"9696 8E8E 7A94 7B7B 978C 8D97 9697 977D"
	$"8483 8C8E 848C 8473 7B8E 7C7B 8DFE 9610"
	$"7B85 848D 6B7B 857B 7487 7D7B 7B8E 858D"
	$"4BFD 000B 668D 8585 8E97 8D7B 968D 9796"
	$"2996 8E8E 7A94 7B7B 978C 8D97 9697 977D"
	$"8483 8C8E 848C 8473 7B8E 7C7B 8D62 7B85"
	$"8D85 858E 978D 7B96 8D97 88EC 000E 0D47"
	$"5A47 4750 5A5A 4859 5A5A 5959 3AFE 1103"
	$"3C48 5A3A FE11 0F34 5A4A 505A 5950 5059"
	$"5040 4850 4948 5AFE 5914 4847 505A 3848"
	$"4748 4149 4A48 4850 475A 5948 5A39 483F"
	$"475A 4747 505A 5A48 595A 5A59 5950 5051"
	$"6B48 485A 595A 5A59 5A5A 4A50 5A59 5051"
	$"644B 4554 5655 5459 5A5A 4E4E 5557 524B"
	$"564E 4147 4F49 4858 5857 594A 4751 5739"
	$"FE48 3441 494B 4948 5048 5A59 485A 3948"
	$"475A 4747 505A 5A48 595A 5A59 5950 5051"
	$"6B48 485A 595A 5A59 5A5A 4A50 5A59 5050"
	$"5950 4048 5049 485A FE59 0448 4750 5A38"
	$"0B48 4748 4149 4A48 4850 475A 35FD 1135"
	$"3B5A 4747 505A 5A48 595A 5A59 5950 5051"
	$"6B48 485A 595A 5A59 5A5A 4A50 5A59 5050"
	$"5950 4048 5049 485A 3948 475A 4747 505A"
	$"5A48 595A 5A51 F300 0323 FA00 0E0D A8AF"
	$"AFB8 BFB7 AFBF AFAE BFB6 B67A FE5B 03A4"
	$"B7A5 85FE 5B15 7BBF B8B6 A5BF B7B8 B89D"
	$"AFB6 B8B8 B6A5 AFB6 B8A6 AFA5 FEB6 19AF"
	$"B7A5 AFAE A5A5 B6B8 B7B8 B8B6 B7AF AEAF"
	$"AFB8 BFB7 AFBF AFAE BFFE B629 AFBC B6AF"
	$"B7A5 AFB6 B7B7 B8BF B8B6 A5BF B2BA B7A8"
	$"B4AB B2B7 B7B2 B5BC B8B2 A7B9 B7B8 B8A1"
	$"B0B3 B7B6 B4A5 22B0 B6B8 A8B0 A7B6 B5B5"
	$"AFB7 A6B0 AEA5 A6B6 B8B7 B8B8 B6B7 AFAE"
	$"AFAF B8BF B7AF BFAF AEBF FEB6 1FAF BCB6"
	$"AFB7 A5AF B6B7 B7B8 BFB8 B6A5 BFB7 B8B8"
	$"9DAF B6B8 B8B6 A5AF B6B8 A6AF A5FE B60A"
	$"AFB7 A5AF AEA5 A5B6 B8B7 89FD 5B0A 9BAF"
	$"AFB8 BFB7 AFBF AFAE BFFE B619 AFBC B6AF"
	$"B7A5 AFB6 B7B7 B8BF B8B6 A5BF B7B8 B89D"
	$"AFB6 B8B8 B6A5 0DB7 AFAE AFAF B8BF B7AF"
	$"BFAF AEBF A6EC 000E 0980 7B7B 858C 8E7B"
	$"967B 8596 978D 33FE 0003 6B84 7C3D FE00"
	$"432E 8C85 8D7C 8C8E 8585 747B 9785 8597"
	$"7C7B 977A 737B 7C83 8D8D 7B84 877B 857C"
	$"7C97 858E 8585 8D84 7B85 7B7B 858C 8E7B"
	$"967B 8596 978D 977B 9D97 7B84 7C7B 838E"
	$"8E85 8C85 8D6F 7C8C 8294 9078 8185 7E84"
	$"9189 828F 8286 7C88 8B87 8775 7D94 8385"
	$"937C 7F95 7C75 7C7E 838C 8C7B 8387 7C85"
	$"7C7D 9685 8E85 858D 847B 857B 7B85 8C8E"
	$"7B96 7B85 9697 8D97 7B9D 977B 847C 7B83"
	$"8E8E 858C 858D 7C8C 8E85 8574 7B97 8585"
	$"977C 7B97 7A73 7B7C 838D 8D7B 8487 7B85"
	$"7C7C 9785 8E42 FD00 0B66 7B7B 858C 8E7B"
	$"967B 8596 9729 8D97 7B9D 977B 847C 7B83"
	$"8E8E 858C 858D 7C8C 8E85 8574 7B97 8585"
	$"977C 847B 857B 7B85 8C8E 7B96 7B85 9689"
	$"EC00 0E05 4E48 4847 5950 4859 4851 595A"
	$"5A2A FE11 0341 5049 2CFE 1115 2459 475A"
	$"4959 5047 4741 485A 4747 5A49 485A 4740"
	$"4849 FE5A 0E48 5049 4851 4949 5A47 5047"
	$"475A 5048 0A51 4848 4759 5048 5948 5159"
	$"FE5A 2F48 745A 4850 4948 5A50 5047 5947"
	$"5A49 594B 6353 454D 4F48 5453 4E47 5947"
	$"5349 5552 4B4B 4249 5747 4958 494A 5848"
	$"4148 4BFE 5919 4850 4949 5149 4A59 4750"
	$"4747 5A50 4951 4848 4759 5048 5948 5159"
	$"FE5A 2148 745A 4850 4948 5A50 5047 5947"
	$"5A49 5950 4747 4148 5A47 475A 4948 5A47"
	$"4048 495A 5A0B 5A48 5049 4851 4949 5A47"
	$"502C FD11 0A42 4848 4759 5048 5948 5159"
	$"FE5A 2748 745A 4850 4948 5A50 5047 5947"
	$"5A49 5950 4747 4148 5A47 475A 4950 4851"
	$"4848 4759 5048 5948 5159 52F3 0003 29FB"
	$"000F 0C9C AFBD B6B8 B6BD A3B6 B7B8 AEBF"
	$"B665 FE5B 03B0 AEAF 88FE 5B33 70B8 B6AE"
	$"BF9D AFB8 B8B7 B7A5 B6AF AE8F BDAF AF9D"
	$"AFAF A5AF B8AF B6AE AFB6 9DB7 9BAE AFAE"
	$"B7AF B7AF AFBD B6B8 B6BD A3B6 B7A9 A5BF"
	$"FEB6 28AF B7BD AEA8 A4B6 BFB8 AEB8 B6AE"
	$"BF9D B3B2 B7BB B1AC B6B3 9DB1 B3B5 B4AA"
	$"BBA1 ADB6 B8B5 B7A7 B5B0 ACA8 23BE AFAF"
	$"9FAC 90A1 AFB7 B0B6 AFAF B69D B8B7 AFAF"
	$"AEB7 AFB7 AE99 BDB6 B8B6 BDA3 B6A3 B5AE"
	$"BFFE B62C AFB7 BDAE AFB6 B6B5 A4AE B8B6"
	$"AEBF 9DAF B8B8 B7B7 A5B6 AFAF 96B2 AFAF"
	$"9DAF AFA5 AFB4 9AB6 AEAF B69D B8B7 AFAF"
	$"84FD 5B0B 9CBD B6B8 B6BD A29B B6B8 AEBF"
	$"FEB6 18AF B7BD AEAF B6B6 BFB8 AD9C B5AE"
	$"BF9D AFB8 B8B7 B7A5 B6AF A19D 0EB7 AFAF"
	$"BDB6 B8B3 A8A3 B6B7 B8AE B506 EE00 0F09"
	$"6D7B 9497 8597 948F 9784 8585 9697 11FE"
	$"0003 8085 7B41 FE00 3E21 8597 858C 747B"
	$"8585 8E8E 7C97 7B79 5F94 7B7B 747B 7B87"
	$"7B85 7B83 857B 8374 8363 797B 8584 7B84"
	$"7B7B 9497 8597 948F 9784 6F76 9697 9783"
	$"7B84 9485 7169 8396 FE85 0197 856F 8C74"
	$"807F 8492 887B 8A7E 6284 8A82 8F81 8876"
	$"7E83 858A 8C7E 927C 7A87 957B 7B76 764E"
	$"7E7B 847D 8485 7C84 7586 8E7B 7B85 847B"
	$"8479 5A94 9785 9794 8F97 6881 8596 9797"
	$"837B 8494 857B 8383 8768 8585 9785 8C74"
	$"7B85 858E 8E7C 977B 7B6C 827B 7B74 7B7B"
	$"877B 7F5C 8385 7B83 7485 8E7B 7B42 FD00"
	$"0B5F 9497 8597 948D 6982 8585 96FF 9728"
	$"837B 8494 857B 8383 9685 835D 9585 8C74"
	$"7B85 858E 8E7C 977B 6778 847B 7B94 9785"
	$"9274 8F97 8485 858E 05EE 000F 0540 486B"
	$"5A47 5A6B 5C5A 5047 5159 5A19 FE11 035F"
	$"5148 35FE 1127 2147 5A51 5941 4847 4750"
	$"5049 5A48 4738 5848 4841 4848 4948 4748"
	$"5A51 485A 4146 3D47 4851 5048 5048 0B48"
	$"6B5A 475A 6B5C 5A50 3E4A 59FE 5A4C 4850"
	$"6B51 434B 5A59 4751 475A 5159 4153 484D"
	$"6151 485A 5340 4753 4755 4D55 4348 4747"
	$"4E52 4A57 4B47 4958 4848 4346 3446 4847"
	$"4A5A 5049 5B42 4850 4848 5150 4850 4739"
	$"6B5A 475A 6B5C 5A42 4551 59FE 5A20 4850"
	$"6B51 485A 5A52 3B51 475A 5159 4148 4747"
	$"5050 495A 4848 3E4F 4848 4148 4849 480B"
	$"443A 5A51 485A 4147 5048 4831 FD11 0B3B"
	$"6B5A 475A 6B5B 444F 4751 59FE 5A27 4850"
	$"6B51 485A 5A59 4750 3759 5159 4148 4747"
	$"5050 495A 483F 4350 4848 6B5A 4758 585C"
	$"5A50 4751 5403 F400 0329 FB00 0E31 AE9C"
	$"B6BF B7B6 BFAF BFB8 B7C6 BFB1 FD5B 03AB"
	$"BFB7 80FE 5B19 64BF AFB6 B6BF AFB7 B7B6"
	$"BFB6 AEB0 745B 6993 A5BF 9CB8 AFA5 A5A6"
	$"FEAF 20B7 B472 5B6C 9A9F B7AF BFAE 9CB6"
	$"BFB7 B6BF AFBF 9C5F 64A7 B7B6 B6B7 B6B7"
	$"AD67 60A8 FEB7 15B8 AFB6 B6BF B3B7 B6B7"
	$"BFB7 A071 5B6C A0BA ACB8 AFBD AFFE B305"
	$"BCB5 AEB8 BFB9 53B5 B0A4 9562 5B61 819E"
	$"A7B0 AFAF B7BE BDAF B5B0 A0B7 AFBA 745B"
	$"84BF B7B6 BFAF 9B5C 7BC6 BFB7 B6B6 B7B6"
	$"B7BF B7A6 9F64 5B78 A7AF B6B6 BFAF 9DAD"
	$"B6BF B6AE B894 5C61 9BA5 BF9C B8AF 9E67"
	$"5C86 AFAF B7BF BDAF B6AF 7DFD 5B27 8DB6"
	$"BFB7 B6B7 715B 74B3 C6BF B7B6 B6B7 B6B7"
	$"BFB7 A6B6 B695 695B 7CB6 B6BF AFB7 B7B6"
	$"BFB6 AE9C 6064 0FB0 AE9C B6BF AF70 609E"
	$"BFB8 B7C6 BFAD 06EF 000E 2685 7D8D 9684"
	$"978C 7B8C 8584 9D96 7BFD 0003 7296 8E39"
	$"FE00 190E 967B 8397 967B 8E8E 9796 9785"
	$"7023 0017 527C 8C7D 857B 7C7C 73FE 7B26"
	$"8E85 2300 1A5C 7684 7B96 857D 8D96 8497"
	$"8C7B 8C5D 060D 7384 8D97 8E97 847A 1308"
	$"788E 848E 8C7B 836F 9796 8C8E 948B 9691"
	$"6B20 0018 6D8E 7B85 9092 7B8A 8A90 9192"
	$"837D 8D87 937D 7853 0C00 083F 7275 7D7B"
	$"7C8E 9594 7B8B 7C77 847B 8F28 0040 9684"
	$"978C 7B59 022E 9D96 848D 978E 9784 968E"
	$"736A 0E00 2D73 7B83 9796 7B65 7E97 9697"
	$"857A 5002 0A5E 7C8C 7D85 7B70 1502 407B"
	$"7B8E 9694 7B8D 7B3B FD00 0B60 8D96 8497"
	$"8021 0023 7E9D 962B 848D 978E 9784 968E"
	$"738D 8C54 1600 3183 9796 7B8E 8E97 9697"
	$"8556 070D 8085 7D8D 9679 2407 628C 8584"
	$"9D96 7D05 EF00 0E17 514A 5A59 505A 5948"
	$"5947 506A 594C FD11 0348 5950 28FE 1119"
	$"1759 485A 5A59 4850 505A 595A 5143 2311"
	$"1C36 4959 4A47 4849 4940 FE48 0A50 5126"
	$"111E 3A2E 5048 5951 154A 5A59 505A 5948"
	$"5937 1418 4850 5A5A 505A 504C 1914 4FFE"
	$"5066 5448 5A5A 5953 5056 5459 5440 2111"
	$"1C42 5448 5A56 5548 4E4F 5556 574F 4859"
	$"4C58 4A47 3917 1115 2E44 4249 4849 5058"
	$"6A48 5949 2F50 4856 2411 3259 505A 5948"
	$"3F12 276A 5950 5A5A 505A 5059 5040 4817"
	$"1125 4848 5A5A 5948 3E49 5A59 5A51 473A"
	$"1216 3B49 594A 4748 440B 1A12 2D48 4850"
	$"596B 485A 481F FD11 373D 5A59 505A 5320"
	$"111F 4D6A 5950 5A5A 505A 5059 5040 5A4F"
	$"391B 1127 5A5A 5948 5050 5A59 5A51 3714"
	$"164E 514A 5A59 4B22 143D 5947 506A 594C"
	$"03F5 0003 06FB 000E 03AD B6AF B6BF B6B7"
	$"AFBF BFB6 B8B6 A2FD 5B03 AAB6 B69B FD5B"
	$"0CB2 AFB7 AFB8 AFAF B7A5 B7B7 9D68 FD5B"
	$"026D 92A6 FEAF 06A5 AFAF AEA3 8A5F FD5B"
	$"116F 98AC A6B7 B6AF B6BF B6B7 AF91 5D5B"
	$"5B5F 9EFE AF14 B795 5F5B 5B65 ACAE A869"
	$"A7B7 AFB8 AFAF B7B0 B38A 5FFD 5B0E 6F94"
	$"AFAD B6AF AFB3 A7B5 B5AD BEB6 B802 AC88"
	$"64FC 5B0E 5D7F A7AF A6B6 B69A 6C9B AFB7"
	$"B6A5 68FE 5B04 87BF B6B7 86FE 5B01 88B6"
	$"FDAF 04AD 9EA1 9079 FC5B 0B68 8496 AA96"
	$"60AD A5B7 B7A8 77FE 5B06 5FAC A5A6 AFA2"
	$"66FE 5B08 7BA4 B6B6 B8B7 A5AF 89FD 5B05"
	$"A1AF B6BF A567 FE5B 0270 B5B6 FDAF 00B7"
	$"FEB6 02BD 9969 FD5B 0C8C AFB8 AFAF B7A5"
	$"B7B7 885D 5B5B 0F62 ADB6 AFAA 6A5B 5B63"
	$"B4BF B6B8 B6AF 40EF 000E 0286 8D7B 978C"
	$"9784 7B96 968D 8583 69FD 0003 7A97 8D5F"
	$"FD00 0C86 7B8E 7B85 7B7B 8E7C 8484 6013"
	$"FD00 021E 5D73 FE7B 067C 7B7B 8578 4407"
	$"FD00 111D 5E77 738E 8D7B 978C 9784 7B51"
	$"0200 0006 62FE 7B0B 8E5A 0700 000F 8685"
	$"6F15 6F8E 087B 857B 7B8E 878B 4707 FD00"
	$"111F 5785 7983 7B7B 8A7C 8284 7B8B 9785"
	$"7C46 0FFC 000E 0435 7185 7D83 965B 196B"
	$"7B84 8D6D 13FE 0004 498C 9784 40FE 0001"
	$"4183 FD7B 047E 6774 522D FC00 0B12 4056"
	$"7156 087E 7C84 8471 28FE 0006 0786 7C73"
	$"7B69 10FE 0008 337A 8397 8584 7C7B 42FD"
	$"0005 6C7B 978C 7B12 FE00 0221 8183 FD7B"
	$"068E 8D97 8D94 6417 FD00 1C4C 7B85 7B7B"
	$"8E7C 8484 4202 0000 0B7E 8D7B 8315 0000"
	$"0C85 968D 8583 7B2D EF00 0E01 4C5A 485A"
	$"595A 5048 5959 5A47 5A40 FD11 0350 5A5A"
	$"3FFD 110C 5748 5048 4748 4850 4950 503C"
	$"1BFD 1102 203B 40FE 4806 4948 4851 4737"
	$"14FD 1104 1F42 4640 500C 5A48 5A59 5A50"
	$"4838 1211 1114 3DFE 4814 503F 1411 111B"
	$"5251 4F1C 4350 4847 4848 5054 5435 14FD"
	$"1111 2139 4C46 4748 484E 494E 5048 595A"
	$"4751 3518 FC11 0E13 2944 514A 5A59 371D"
	$"4248 505A 4219 FE11 0434 595A 502D FE11"
	$"012B 5AFD 4804 4947 493C 27FC 110B 192D"
	$"383F 3714 4949 5050 4325 FE11 0614 5249"
	$"4048 4018 FE11 0829 485A 5A47 5049 4830"
	$"FD11 0549 485A 594D 19FE 1102 2245 5AFD"
	$"4800 50FE 5A02 5850 1CFD 111C 3348 4748"
	$"4850 4950 502F 1211 1116 495A 4850 1C11"
	$"1116 5159 5A47 5A48 1AF5 0002 99FB 000E"
	$"25B7 BFA5 AFAF BFB7 B5AF AEB6 B6A5 8EFD"
	$"5B03 A2B8 AF99 FD5B 0B96 AFB7 AFB6 B8AF"
	$"B6AF 9983 5DFA 5B08 6DA3 B69F A6B7 A88D"
	$"62F9 5B09 627E 9CBA A5AF AFBF B67D FC5B"
	$"046E 9DAF AE8A FC5B 0C69 9F64 94AF B7AF"
	$"B6B3 AFB3 8C63 F95B 0C62 7999 B4AB B3B1"
	$"A1B8 B99A 8771 015B 5CF9 5B0B 5E7E 9B90"
	$"655B 5BAC 84B6 9B63 FC5B 029F BD7F FC5B"
	$"078A 9D9D AFAF 9265 5FF5 5B05 89B6 AF9D"
	$"9F66 FC5B 047D AF9D 9D64 FC5B 0778 AF9D"
	$"B8AF B883 88FD 5B04 A8A5 AF90 60FC 5B0C"
	$"8CA5 9D9D AFAF BFB7 B089 676D 79FC 5B07"
	$"93B6 B8AF B6AF 9C7E FD5B 045B 77BF 9563"
	$"FD5B 066A AAB6 B6A5 9D67 EF00 0E1C 8E8C"
	$"877B 7B96 8496 7B85 9797 7C59 FD00 0365"
	$"857B 60FD 000B 637B 8E7B 9785 7B97 7B6C"
	$"3902 FA00 081F 7397 6273 8E71 530C F900"
	$"090A 3764 8587 7B7B 9682 39FC 0004 2174"
	$"7B79 46FC 0005 146A 0E5F 7B8E 067B 977F"
	$"7B8A 470C F900 0E0B 2F66 8375 8F7F 7588"
	$"905C 4121 0002 F900 0B04 396B 4E12 0000"
	$"7466 835E 0CFC 0002 6394 34FC 0007 4F74"
	$"747B 7B52 0F06 F500 0544 977B 7462 11FC"
	$"0004 317B 746A 0FFC 0007 317B 7485 7B85"
	$"6541 FD00 046C 877B 4E07 FC00 0151 7CFF"
	$"74FF 7B06 9684 7A44 131A 2BFC 0007 5297"
	$"857B 977B 7233 FC00 032B 8C69 0CFD 0006"
	$"177F 9797 7C74 4CEF 000E 1050 5949 4848"
	$"5950 6348 515A 5A49 36FD 1103 4147 4843"
	$"FD11 0B3E 4850 485A 4748 5A48 3E28 12FA"
	$"1108 1E48 5A2E 4050 4339 16F9 1102 1629"
	$"3D06 5649 4848 594F 30FC 1104 1F41 4847"
	$"33FC 110C 1C48 173C 4850 485A 4848 5332"
	$"16F9 110E 1625 4349 4254 4A42 4B65 3A30"
	$"2011 12F9 110B 132D 4234 1811 1141 325A"
	$"3B16 FC11 023D 582A FC11 0735 4141 4848"
	$"3918 14F5 1105 2F5A 4841 391B FC11 0527"
	$"4841 4418 11FD 1107 2748 4147 4847 3135"
	$"FD11 0448 4948 3414 FC11 0C38 4941 4148"
	$"4859 5043 2F1B 1E29 FC11 0736 5A47 485A"
	$"4840 26FC 1103 2459 3D16 FD11 061B 4E5A"
	$"5A49 412B F500 029C FB00 0E11 B6AF B6A6"
	$"B7B7 AF9D B6B2 937C 746E FD5B 0395 AFBD"
	$"A2FD 5B09 8CB7 B7B6 B7A6 B8B6 9461 F85B"
	$"0B5F A5A5 BDAF 705E 5B5B 6477 63F9 5B07"
	$"7AB6 A6B7 B773 716F FD5B 055F BFAF 7383"
	$"76FB 5B0D 8DA5 B7B7 B6B7 B078 5E5B 5B68"
	$"7964 F95B 0676 B9B4 ABB8 B7AD FE5B 045B"
	$"74A0 8B69 F55B 05AB 9E9C 6888 5FFD 5B03"
	$"8874 8466 FD5B 0A5C AABF B7B6 A669 ACA3"
	$"8469 F95B 0762 B7B6 AFB8 8296 75FD 5B05"
	$"67B8 A069 8560 FC5B 0689 AFAF A5B7 9D85"
	$"FD5B 059C B57E 7598 5FFD 5B0D 6EB8 B6BF"
	$"B7B6 AE75 5C5B 5B74 9B70 FD5B 085F A3A6"
	$"B8B6 AF76 7B71 FE5B 045B 5E93 6D81 FC5B"
	$"057F B6B8 B8B6 A3EF 000E 0C8D 7B97 7384"
	$"847B 7497 7C5D 2F24 1BFD 0003 5D7B 9476"
	$"FD00 095A 8E8E 978E 7385 8D54 09F8 000B"
	$"0676 7C94 7B28 0400 000F 290C F900 072D"
	$"9773 8484 2327 21FD 0005 0696 7926 412C"
	$"FB00 034E 878E 8E09 978E 7D2C 0400 0013"
	$"300D F900 062B 8889 7B85 847A FD00 0321"
	$"7044 14F5 0005 7374 5F13 3F06 FD00 0340"
	$"233B 14FD 000A 0272 9684 8D78 1677 6D44"
	$"15F9 0007 0B83 8D7B 8537 5627 FD00 0514"
	$"8563 1647 07FC 0006 517B 7B7C 8474 3DFD"
	$"0005 5F95 3625 5806 FD00 011B 850B 8396"
	$"848D 852A 0200 0026 7B1F FD00 0807 6F73"
	$"858D 7B26 2E21 FD00 0304 521E 3AFC 0005"
	$"3397 8585 8380 EF00 0E07 5A48 5A40 5050"
	$"4841 5A43 3E24 2020 FD11 033E 486B 4AFD"
	$"1109 3650 505A 5040 475A 3715 F811 0B14"
	$"4A49 6B48 2313 1111 1724 16F9 1104 255A"
	$"4050 50FE 21FD 1105 1459 4B24 3026 FB11"
	$"0D39 4950 505A 5049 2613 1111 1C28 17F9"
	$"1106 234F 5648 474E 47FD 1103 2046 2D1B"
	$"F511 0548 413B 1B31 14FD 1103 3022 2C19"
	$"FD11 0A12 5159 505A 4B1C 4653 321A F911"
	$"0716 465A 4847 2B38 22FD 1105 1B47 401C"
	$"3115 FC11 0633 4848 4950 412C FD11 053B"
	$"5927 233B 14FD 110D 1C47 5A59 505A 5125"
	$"1211 1122 491F FD11 0814 4240 475A 4820"
	$"2720 FD11 0313 3620 29FC 1105 265A 4747"
	$"5A4C F500 02C9 FA00 0993 A6A5 B7B7 A6B7"
	$"B79C 61F9 5B03 8FB7 B6AD FD5B 0882 B8B6"
	$"AFBF B6AF AE85 FD5B 019B 78FD 5B04 91AE"
	$"B7B7 96FD 5B05 71AF AE9D 765C FC5B 0776"
	$"A5B7 B7A6 ABB7 B4FC 5B05 A06C 8DB5 B579"
	$"FC5B 06A8 AFB8 B6AF BFB6 FD5B 0574 B6B4"
	$"9B76 5CFC 5B06 7CB1 A9B2 B8B6 B7FE 5B07"
	$"5B72 B0AD B6A0 8366 F85B 05A4 B69D ADB8"
	$"8BFD 5B04 5E89 B7A9 60FE 5B0E 79AF AFB6"
	$"A6B5 8295 B6B6 BDA2 8971 5CFD 5B08 7FAF"
	$"AEAF B8B8 B7A1 5EFD 5B05 936A A6B7 A561"
	$"FD5B 0675 AFAF B7AF B67D FD5B 068E 6F88"
	$"B6A6 A35C FE5B 065E 96AF AFB6 A6B5 FD5B"
	$"0376 AEAB 6DFD 5B0A 65AC AFAE AFAC B8B4"
	$"5F5B 5BFF 5B03 6E9E B77F FE5B 066A A8BD"
	$"B696 AFAF EE00 096A 737C 848E 738E 845B"
	$"09F9 0003 4A8E 9788 FD00 0839 8597 7B96"
	$"8D7B 853D FD00 0159 2DFD 0004 5385 848E"
	$"63FD 0005 247B 795F 2702 FC00 072A 7C84"
	$"8E73 7C84 7CFC 0005 641A 4D96 812F FC00"
	$"0371 7B85 9702 7B96 8DFD 0005 2790 8661"
	$"2902 FC00 0633 7F7E 8185 8384 FD00 0621"
	$"7C7A 8D6D 3911 F800 056B 8472 7F85 44FD"
	$"0004 0447 8E70 07FE 000E 327B 7B8D 7396"
	$"395A 9797 9472 4421 02FD 0008 387B 857B"
	$"8585 846B 04FD 0005 5218 7884 720A FD00"
	$"062A 7B7B 847B 833B FD00 064F 2140 8C73"
	$"6F02 FE00 0105 63FF 7B02 8D73 96FD 0003"
	$"2885 751B FD00 080F 7D7B 857B 7485 8005"
	$"FD00 031D 7084 38FE 0006 156F 9497 637B"
	$"7BEE 0009 3940 4950 5040 5050 4016 F911"
	$"033B 505A 53FD 1108 2B47 5A48 595A 4851"
	$"2CFD 1101 3F28 FD11 043C 5150 502F FD11"
	$"0522 4847 3E22 12FC 1107 2249 5050 4048"
	$"5051 FC11 053E 1E30 6359 26FC 1106 4348"
	$"475A 4859 5AFD 1105 2356 5B41 2412 FC11"
	$"062B 4A4A 4C47 474E FD11 0620 4A45 5A45"
	$"2C18 F811 0542 5A2D 5347 32FD 1104 132E"
	$"5047 14FE 110E 2048 485A 4063 3039 5A5A"
	$"6B48 2F20 12FD 1108 2E48 5148 4747 503D"
	$"13FD 1104 361D 4B50 4300 14FD 1106 2548"
	$"4850 485A 1FFD 1106 3120 304F 4042 12FE"
	$"1106 132F 4848 5A40 63FD 1103 2951 451D"
	$"FD11 0818 5248 5148 4047 4E13 FD11 031D"
	$"4450 2AFE 1106 1C4F 6B5A 2F48 48F5 0002"
	$"EAFA 0007 49B6 B7A5 B8B8 A68E F75B 0481"
	$"AFBF B65E FE5B 0176 B7FE AF03 B7AF AF80"
	$"FD5B 0AA2 B69C 6C5B 6FB7 B7AF AFB7 FD5B"
	$"0674 AFB8 A5B7 A481 FD5B 087C B7A5 B8B8"
	$"A6B7 BF65 FD5B 0667 A0B7 AFB6 AE65 FE5B"
	$"0363 AFAF B7FE AF00 B2FD 5B06 74B6 B5B6"
	$"B1A4 7DFD 5B06 7CAF B1A4 A3B1 B7FE 5B08"
	$"5B70 B6B6 B7B6 B0B0 65FE 5B0A 628F 7B6E"
	$"5CAB AFB7 B7AF 9EFD 5B16 85B8 A6B7 9C5B"
	$"5B8E AEAF 9CAE B7AF AA6A BFB6 B8B5 AFAF"
	$"90FD 5B08 91AF AFA6 A5AF B7AF 6EFD 5B06"
	$"72B1 B7AF AFA9 5DFE 5B06 6BAF B8A5 B7AF"
	$"89FD 5B06 6498 A5B8 B8A6 71FD 5B05 A7AF"
	$"9CAE B7AF FD5B 0474 B5AF A768 FD5B 0969"
	$"ABAF A6A5 AFB7 6F5B 5BFF 5B07 B2B7 A5B5"
	$"6C5B 69B5 FEB7 02AE AF4C EE00 0734 8D8E"
	$"7C85 8573 4FF7 0004 3B7B 8C97 04FE 0001"
	$"278E FE7B 0384 7B7B 39FD 000A 6583 5F1D"
	$"0021 848E 7B7B 8EFD 0006 247B 857C 846B"
	$"37FD 0008 338E 7C85 8573 8E96 10FD 0006"
	$"1766 8E7B 8D79 0EFE 0004 0C7B 7B8E 7BFF"
	$"7B00 7EFD 0006 2494 8290 7E6B 33FD 0006"
	$"2F7B 7F73 7A7D 8EFD 0007 2283 9584 8C7C"
	$"7C10 FE00 0A0C 4B30 1B02 727B 8484 7B61"
	$"FD00 163C 8573 8E62 0000 4985 7B7D 7A8E"
	$"7B7B 178C 9785 967B 7B4E FD00 084D 7B7B"
	$"737C 7B8E 7B1B FD00 0626 7B8E 7B7B 7904"
	$"FE00 0616 7B85 7C84 7B42 FD00 060D 5F7C"
	$"8585 7321 FD00 007A 047B 7D7A 8E7B FD00"
	$"0424 967B 6F12 FD00 0714 757B 737C 7B8E"
	$"1DFD 000D 868E 7C81 1900 1587 8E84 8485"
	$"7B3D EE00 0724 5A50 4947 4740 34F7 1104"
	$"2F48 595A 13FE 1101 2250 FE48 0350 4848"
	$"28FD 110A 415A 3B1E 1121 5050 4848 50FD"
	$"1106 2048 4749 5041 2BFD 1108 2C50 4947"
	$"4740 5059 18FD 1106 1C46 5048 5A47 18FE"
	$"1103 1648 4850 FE48 0051 FD11 0623 5647"
	$"5D4E 4128 FD11 0627 484A 4047 4852 FD11"
	$"0720 4F59 504F 4949 18FE 110A 1730 261C"
	$"1248 4850 5048 3FFD 1116 2947 4050 4011"
	$"1134 5148 4A51 5048 511B 595A 4763 4848"
	$"34FD 1108 3648 4840 4948 5048 1EFD 1104"
	$"234C 5048 4801 4713 FE11 061A 4847 4950"
	$"4830 FD11 0618 3B49 4747 4020 FD11 054C"
	$"484A 5150 48FD 1104 2063 4843 19FD 1107"
	$"1A45 4840 4948 501E FD11 0757 5049 451B"
	$"111A 52FE 5002 5148 24F5 0002 F3F9 000B"
	$"7BAF AEB8 B69D 5B63 8799 8C69 FC5B 0475"
	$"B6B6 B76C FE5B 0869 AFB8 AFB5 B6A6 AF85"
	$"FD5B 0A9C AFA5 9D9A A89D AFB6 A59D FD5B"
	$"066D A5B7 B6AF B7AC FD5B 087D AFAE B8B6"
	$"B7AF AF76 FD5B 02B0 B7B7 FEB6 0067 FE5B"
	$"0064 FEAF 03B8 AFB5 B7FD 5B06 74B7 B1B4"
	$"A2AC 9FFD 5B06 7CA6 ABB0 B4B5 B6FE 5B08"
	$"5B6D B7B6 9FAF B6A7 64FE 5B0A 679F A5B7"
	$"B3AE B7B8 AFAF A2FD 5B07 89B6 B7AF AF89"
	$"9BB7 FEB6 FFB7 FFB6 077E 99B7 B7B6 9CAF"
	$"90FD 5B08 95A6 AFAF B8B6 B6A6 72FD 5B06"
	$"B29D AFB6 A59D 67FE 5B06 64A5 B7B6 AFB7"
	$"89FD 5B06 9CAF AEB8 B6B7 7AFD 5B05 AAB6"
	$"B6B7 B7B6 FD5B 0574 B69C AFA5 63FD 5B08"
	$"6FAE AFB8 B6B6 6F5B 5BFF 5B0C B7AF AEB8"
	$"AC77 A9AF BDBD B7B6 67EC 000B 597B 8585"
	$"8D5F 000C 435E 4C17 FC00 0428 9797 841A"
	$"FE00 0815 7B7A 7B96 8D73 7B3D FD00 0A5F"
	$"7B7C 7461 6F74 7B97 8774 FD00 061D 7C8E"
	$"977B 8E73 FD00 0830 7B85 858D 847B 7B28"
	$"FD00 068D 8484 978D 9714 FE00 000F FE7B"
	$"007A 027B 9688 FD00 0627 8B84 8076 7B69"
	$"FD00 0634 7879 8179 8192 FD00 0720 8E83"
	$"757B 9588 10FE 000A 106C 7C8D 927A 8E85"
	$"7C7C 65FD 0007 428D 847B 7B45 608E FE97"
	$"FF84 0997 8D3A 6784 8E83 737B 4EFD 0008"
	$"5A73 7B7B 7A83 9773 21FD 0006 7D74 7B97"
	$"8774 14FE 0006 0E7C 8E97 7B8E 42FD 0006"
	$"5D7B 8585 8D84 2DFD 0000 83FF 97FF 8400"
	$"97FD 0005 2683 737B 6D0C FD00 061F 797B"
	$"7A83 971F FD00 0C84 7B85 857D 2873 7B94"
	$"948E 9755 EC00 0B36 4851 475A 3E11 163A"
	$"4A33 1CFC 1104 265A 5A50 1DFE 1108 1A48"
	$"4748 635A 4048 2CFD 110A 3B48 4941 3C4F"
	$"4148 5A49 41FD 1106 1C49 505A 4850 40FD"
	$"1108 2848 5147 5A50 4848 29FD 1102 5550"
	$"50FE 5A00 1BFE 1100 19FE 4803 4748 6354"
	$"FD11 0625 544A 5449 483F FD11 062C 4246"
	$"4C46 5757 FD11 071E 5058 4248 594A 18FE"
	$"110A 1839 4950 5948 5047 4848 41FD 1107"
	$"2C5A 5048 483B 4C50 FE5A FF50 FF5A 072D"
	$"4350 505A 4A48 34FD 1108 3F40 4848 475A"
	$"5A40 20FD 1104 5741 485A 4901 411B FE11"
	$"0616 4950 5A48 502C FD11 063D 4851 475A"
	$"5025 FD11 0550 5A5A 5050 5AFD 1105 225A"
	$"4A48 4216 FD11 061E 4748 475A 5A1E FD11"
	$"0C50 4851 4752 2444 486B 6B50 5A33 F400"
	$"02F4 F900 0C63 B6AE B7B7 717C AAB5 B7B8"
	$"BB73 FD5B 0469 B7B7 BF78 FD5B 07B3 B6A5"
	$"B6AF B6B6 8DFD 5B0A A2AF B7B7 B6AF AFB7"
	$"B7BF A5FD 5B06 74AE B7AE B1B6 A6FD 5B08"
	$"7CB6 AEB7 B7BF A5AE 73FD 5B01 B7BF FDB7"
	$"0067 FE5B 0766 B7AF B6B6 A5B6 B8FD 5B06"
	$"73BC B7A5 AEB7 A6FD 5B06 7AB8 B2BD B2AD"
	$"B3FE 5B08 5B74 B6AF AFB7 B5BE 65FE 5B0A"
	$"65B6 AEB7 AEB1 B6B1 AEB6 95FD 5B0B 89B7"
	$"BFA5 AEB5 B7B8 BDA5 B7BF FEB7 07A8 6CBF"
	$"B79C AEB7 90FD 5B08 90B6 B6BF B7AF B6B7"
	$"74FD 5BFF AFFF B702 BFA5 67FE 5B06 67AE"
	$"B7AE B1B6 86FD 5B06 A1B6 AEB7 B7BF 76FD"
	$"5B05 B0A5 B7BF B7B7 FD5B 0674 9CAE B7AF"
	$"A862 FE5B 086C ACBF B7AF B674 5B5B FF5B"
	$"FFB6 0AAE B7B7 BFA5 AEB5 B7B8 BD0C EC00"
	$"0C4D 8D7A 848E 1E38 7F96 8485 9229 FD00"
	$"0415 8E84 962D FD00 077F 837C 977B 978D"
	$"46FD 000A 6D7B 8E84 8D7B 7B84 8496 7CFD"
	$"0006 2685 847B 7F97 76FD 0008 338D 7A84"
	$"8E8C 7C85 29FD 0006 848C 8E84 8E8E 12FE"
	$"0004 128E 7B83 8302 7C97 85FD 0006 2396"
	$"8A83 828E 6DFD 0006 2E97 898E 817B 92FD"
	$"0007 238E 7C7C 8682 9511 FE00 0A11 8D85"
	$"847C 7F97 8885 9758 FD00 1642 8E8C 7C85"
	$"9684 8594 7C84 8C8E 848E 7718 968E 7D85"
	$"8E4E FD00 084E 978D 8C84 7B97 8426 FD00"
	$"FF7B FF84 0296 7C14 FE00 0613 8584 7B7F"
	$"9744 FD00 066C 8D7A 848E 8C2D FD00 0080"
	$"047C 848C 8E84 FD00 0626 7D85 8E7B 6F0B"
	$"FE00 061C 7D8C 847B 9724 FD00 FF8D 0A7A"
	$"848E 8C7C 8596 8485 9409 EC00 0C31 5A51"
	$"5050 212A 4E63 5047 6A23 FD11 041A 5050"
	$"5925 FD11 0758 5A49 5A48 5A5A 35FD 110A"
	$"4148 5050 5A48 4850 5059 49FD 1106 2551"
	$"5049 4A59 4AFD 1108 2C5A 5150 5059 4951"
	$"27FD 1101 5059 FD50 0019 FE11 071A 5048"
	$"5A5A 495A 52FD 1106 2159 504C 4E50 42FD"
	$"1106 265A 5659 4D48 57FD 1107 225A 4949"
	$"514F 5819 FE11 0A18 5A51 504A 4A59 5451"
	$"5A35 FD11 0B30 5059 4951 6350 476B 4950"
	$"59FE 5007 461D 5950 4A51 5034 FD11 0834"
	$"5A5A 5950 485A 5022 FD11 FF48 FF50 0059"
	$"0149 1BFE 1106 1B51 5049 4A59 32FD 1106"
	$"495A 5150 5059 25FD 1105 5F49 5059 5050"
	$"FD11 0622 4A51 5048 4F17 FE11 061E 5259"
	$"5048 5A22 FD11 FF5A 0A51 5050 5949 5163"
	$"5047 6B05 F400 02F3 F900 0D63 AFB8 AFAE"
	$"B5B8 AEAE AFB6 B7B4 68FD 5B03 C4AF BF84"
	$"FD5B 079F AFBF AEB6 BFB7 8DFD 5B0A A29C"
	$"A5B6 B8B7 AFAF AEAF BFFD 5B06 72BF A5B3"
	$"B5BE A7FD 5B08 7CAF B8AF AEB6 B8AE 71FD"
	$"5B01 AEBF FEAE 01C6 66FE 5B07 66BF B8AE"
	$"AFBF AEBB FD5B 0673 B9B7 B2A9 B7AB FD5B"
	$"067B BBB9 BDBD B6AD FE5B 085B 74B9 B7AF"
	$"B0AF B068 FE5B 0A65 AFBF A5B3 B5BE B3AF"
	$"B6A1 FD5B 0B85 AEB6 B8AE AEAF B6B7 B7AE"
	$"BFFE AE07 C365 9DB7 AFAF BF96 FD5B 0895"
	$"BFB7 BFBF B6AF B774 FD5B 06B7 AFAF AEAF"
	$"BF67 FE5B 0666 BFA5 B3B5 BE87 FD5B 06A1"
	$"AFB8 AFAE B67D FD5B 05AB B7AE BFAE AEFD"
	$"5B12 74AF AFBF B8AE 995B 5C84 BDB7 BFBF"
	$"B6AF 745B 5BFF 5B0B B6AF B8AF AEB6 B8AE"
	$"AEAF B6A6 EB00 0D4D 7B7A 7B85 9585 7A85"
	$"7B83 8E80 13FD 0003 9B7B 8C40 FD00 076D"
	$"7B96 858D 9684 4BFD 000A 6673 7C8D 8584"
	$"7B7B 857B 8CFD 0006 2196 7C86 8A96 73FD"
	$"0008 337B 7A7B 8597 857A 24FD 0001 7A96"
	$"FE85 019D 10FE 0004 108C 8585 7B02 9685"
	$"92FD 0006 2486 8A7E 7887 75FD 0006 3390"
	$"8696 9697 7BFD 0007 2687 847B 7D86 7D13"
	$"FE00 0A11 7C95 7C86 8A95 857B 8D6C FD00"
	$"0B3D 8597 857A 857B 838E 847A 96FE 8507"
	$"980E 5D8E 7B7B 8C54 FD00 085A 9684 9696"
	$"977B 8424 FD00 0684 7B7B 857B 8C14 FE00"
	$"0610 967C 868A 9642 FD00 066C 7B7A 7B85"
	$"9731 FD00 007B 0484 7A96 8585 FD00 1026"
	$"7B7B 8C85 855A 0002 4094 8496 9697 7B24"
	$"FD00 0B8D 7B7A 7B85 9785 7A85 7B83 81EB"
	$"000D 3148 4748 5159 4751 5148 5A50 4E1B"
	$"FD11 0369 4859 2DFD 1107 4548 5951 5A59"
	$"5035 FD11 0A3B 4A49 5A47 5048 4851 4859"
	$"FD11 0620 5948 5355 5945 FD11 082C 4847"
	$"4851 5A47 5122 FD11 0151 59FE 5101 6A18"
	$"FE11 0718 5947 5148 5951 59FD 1106 2253"
	$"5048 4954 45FD 1106 2B55 5259 595A 48FD"
	$"1107 2449 5048 4A52 491B FE11 0A18 4958"
	$"4853 5559 4D48 5A49 FD11 0B2C 515A 4751"
	$"5148 5A50 5051 59FE 5107 6717 4150 4848"
	$"5933 FD11 083F 5950 5959 5A48 5020 FD11"
	$"0450 4848 5148 0159 1BFE 1106 1859 4853"
	$"5559 2FFD 1106 4948 4748 515A 25FD 1105"
	$"4850 5159 5151 FD11 1022 4848 5947 5139"
	$"1112 3258 5059 595A 4822 FD11 0B5A 4847"
	$"4851 5A47 5151 485A 49F3 0002 F3F9 0007"
	$"3CB7 AEB6 B6AE AEA5 FEB6 02AF B692 FD5B"
	$"03B0 B7B7 8FFD 5B07 9CAF AFA6 B8B6 AF89"
	$"FD5B 0AA1 AFA6 B8B7 AFB6 C6BF B6BF FD5B"
	$"0674 B6A6 AFB0 B58E FD5B 087D B7AE B6B6"
	$"AEAE A574 FD5B 01B7 AEFE B601 BF67 FE5B"
	$"0767 B6B6 B7AF AFA6 B2FD 5B06 73B7 A8B6"
	$"B4B1 ABFD 5B06 7EB6 B3B5 B0B2 B5FE 5B08"
	$"5B74 B7AC B5C5 BEB6 68FE 5B0A 66B8 B6A6"
	$"AFB0 B597 AFB7 A2FD 5B04 88B6 AEAE A5FE"
	$"B603 AFB6 B7AE FEB6 0781 6977 6C93 B4B6"
	$"95FD 5B08 96B6 AFB7 AEAF B69C 74FD 5B06"
	$"AFB6 C6BF B6BF 66FE 5B06 67B6 A6AF B0B5"
	$"78FD 5B06 A2B7 AEB6 B6AE 79FD 5B05 A4B6"
	$"B7AE B6B6 FD5B 1271 B6B7 B6B6 A668 6694"
	$"B8B6 AFB7 AEAF B66D 5B5B FF5B FFB7 05AE"
	$"B6B6 AEAE A5FE B600 9FEB 000D 2B84 858D"
	$"9785 857C 8D83 8D7B 974F FD00 0377 8E8E"
	$"54FD 0007 647B 7B73 8597 7B47 FD00 0A74"
	$"7B73 8584 7B8D 9D8C 9796 FD00 0624 977D"
	$"858D 8962 FD00 0830 8485 8D97 8585 7C26"
	$"FD00 0684 858D 8383 8C13 FE00 0413 8D83"
	$"8E7B 027B 7385 FD00 0625 8E7F 9788 8572"
	$"FD00 0631 9781 8A87 808A FD00 0724 857A"
	$"8B9C 8B96 14FE 000A 1185 967D 858D 8971"
	$"7C8E 66FD 0016 4697 8585 7C8D 838D 7B97"
	$"8485 8D83 8335 152B 1B5D 8A8D 53FD 0008"
	$"5497 7B8E 857B 8D73 29FD 0006 7B8D 9D8C"
	$"9796 10FE 0006 1297 7D85 8D89 38FD 0006"
	$"6584 858D 9785 31FD 0000 6B04 9784 858D"
	$"83FD 0010 2497 8E8D 8374 1310 5885 977B"
	$"8E85 7B8D 1FFD 00FF 8409 858D 9785 857C"
	$"8D83 8D70 EB00 071A 5051 5A5A 5151 49FE"
	$"5A02 485A 37FD 1103 4E50 5039 FD11 073D"
	$"4848 4047 5A48 30FD 110A 4948 4047 5048"
	$"5A6A 595A 59FD 1106 205A 4953 544E 39FD"
	$"1108 2850 515A 5A51 5149 25FD 1101 5051"
	$"FE5A 0159 19FE 1107 195A 5A50 4848 404D"
	$"FD11 0621 544F 5A4D 524B FD11 0626 5A4C"
	$"5051 4F57 FD11 0720 5047 5868 575A 1AFE"
	$"110A 1847 5A49 5354 4E3F 4850 3BFD 1104"
	$"355A 5151 49FE 5A03 485A 5051 FE5A 072C"
	$"1A24 1E3E 4E5A 3FFD 1108 335A 4850 5148"
	$"5A4A 25FD 1104 485A 6A59 5A01 591A FE11"
	$"0618 5A49 5354 4E28 FD11 0641 5051 5A5A"
	$"5128 FD11 0541 5A50 515A 5AFD 1110 225A"
	$"505A 5A44 1918 3547 5A48 5051 485A 20FD"
	$"11FF 5005 515A 5A51 5149 FE5A 0042 F300"
	$"02F1 F900 094D B6BF B6B7 AFA5 B6BF B6FE"
	$"BF00 B7FD 5B03 9FB6 A5A4 FD5B 078E BFB7"
	$"AFA6 B7B6 85FD 5B0A 8EB7 AFB7 B7AF B6BF"
	$"BFB6 A5FD 5B06 74A6 AEAD AEB4 A8FD 5B08"
	$"7DB6 BFB6 B7AF A5B6 76FD 5B06 BFAF B6AE"
	$"B7B6 67FE 5B07 68A5 B6B7 BFB7 AFAB FD5B"
	$"0672 A9B6 9DBC A8AA FD5B 0679 B7B2 B0AF"
	$"A5AF FE5B 085B 74B7 B0B5 BEBD B565 FE5B"
	$"0266 B7A6 FEAE FFB4 02AF B694 FD5B 0688"
	$"B7AF A5B6 BFB6 FDBF 0BAF B6AE 915B 94A5"
	$"AA77 6A7C 89FD 5B08 8BB7 B6AF AFA5 AFB6"
	$"6DFD 5B06 AFB6 BFBF B6A5 67FE 5B06 67A6"
	$"AEAD AEB4 87FD 5B06 A2B6 BFB6 B7AF 76FD"
	$"5B05 B2BF BFAF B6AE FD5B 1274 9DBF A48C"
	$"5C81 B3AF A6B7 B6AF AFA5 AF74 5B5B FF5B"
	$"0BB8 B6BF B6B7 AFA5 B6BF B6BF AEEB 000D"
	$"3897 8C97 8E7B 7C97 8C97 8C8C 968A FD00"
	$"036A 837C 71FD 0007 4E96 8E7B 738E 8D3D"
	$"FD00 0A52 847B 8E8E 7B8D 968C 977C FD00"
	$"0624 7384 7B7B 8878 FD00 0831 978C 978E"
	$"7B7C 9726 FD00 0696 7B8D 8584 8D11 FE00"
	$"0414 7C97 8E96 028E 7B78 FD00 0623 7C91"
	$"7190 7C80 FD00 062C 9089 7F7B 7A7B FD00"
	$"0726 8D7D 8B96 8B95 11FE 000A 1084 7385"
	$"7C7C 888B 7C97 5FFD 0016 4B8E 7B7C 978C"
	$"978C 8C96 967B 8D85 4E00 537C 7B32 1637"
	$"4CFD 0008 498E 8D7B 7B7C 7B97 1DFD 0006"
	$"7B8D 968C 977C 13FE 0006 1273 847B 7B88"
	$"45FD 0006 6697 8C97 8E7B 2DFD 0000 79FF"
	$"9602 7B8D 85FD 0010 2674 967A 5102 3987"
	$"7B73 8E8D 7B7B 7C7B 29FD 000B 8597 8C97"
	$"8E7B 7C97 8C97 8C7F EB00 091E 5A59 5A50"
	$"4849 5A59 5AFE 5900 53FD 1103 485A 494B"
	$"FD11 0734 5950 4840 505A 2CFD 110A 2F50"
	$"4850 5048 5A59 595A 49FD 1106 2240 5148"
	$"4854 4FFD 1108 255A 595A 5048 495A 24FD"
	$"1106 5948 5A51 505A 1BFE 1107 1B49 5A50"
	$"5950 4845 FD11 0623 495A 3E56 494E FD11"
	$"0624 5256 4C48 474A FD11 0722 504A 5859"
	$"5859 18FE 110A 1A50 4051 4949 5459 485A"
	$"3CFD 1106 3550 4849 5A59 5AFD 590B 485A"
	$"5136 113F 4951 261C 2A36 FD11 082F 505A"
	$"4848 4948 5A1C FD11 0448 5A59 595A 0149"
	$"1BFE 1106 1940 5148 4854 35FD 1106 3B5A"
	$"595A 5048 25FD 1105 4F59 5948 5A51 FD11"
	$"1025 4159 4838 122C 4D48 4050 5A48 4849"
	$"4825 FD11 0B47 5A59 5A50 4849 5A59 5A59"
	$"51F3 0002 FCFA 000F 15B2 AEAF BFB6 AFB6"
	$"B6A5 ACB6 AF9C B66C FE5B 039B AFAE B8FD"
	$"5B07 80AE A6A6 B7B6 A585 FD5B 0AA2 AEAF"
	$"B7A6 AFB7 B6A5 AFB8 FD5B 0672 B7B8 B5B6"
	$"AAA8 FD5B 087C AEAF BFB6 AFB6 B66F FD5B"
	$"06B6 B59C 9CAF BF66 FE5B 0764 AEB6 AEAE"
	$"A6A6 B6FD 5B06 71B2 BEB7 A2AE AAFD 5B06"
	$"7BB4 A9AF B6A8 B8FE 5B08 5B74 A6B0 B7B6"
	$"A6AF 67FE 5B0A 67AF B7B8 B4B6 AAB4 B6B6"
	$"A1FD 5B16 8DB6 AFB6 B6A5 ACB6 AF9C B6B5"
	$"9C92 5E5E ABAE BDB7 9A8D 69FD 5B08 95B6"
	$"A5AF B6A6 B8BF 74FD 5B06 AFB7 B6A5 AFB8"
	$"66FE 5B06 66B7 B8B5 B6AA 87FD 5B06 A1AE"
	$"AFBF B6AF 7CFD 5B05 A49C B6B5 9C9C FD5B"
	$"1276 B795 6D62 94AE A6A6 B7B6 A5AF B6A6"
	$"B876 5B5B FF5B 0CB6 AEAF BFB6 AFB6 B6A5"
	$"ACB6 A503 ED00 0F10 9485 7B8C 8D7B 8397"
	$"7C8D 977B 738D 1CFE 0003 5F7B 858D FD00"
	$"073C 8573 7384 8D7C 3DFD 000A 6D85 7B84"
	$"737B 8497 7C7B 85FD 0006 2285 888D 8C77"
	$"73FD 0008 3785 7B8C 8D7B 8397 22FD 0006"
	$"8D96 7D73 7B96 10FE 0004 0F7A 9785 85FF"
	$"7300 8EFD 0006 2085 9587 797A 7EFD 0006"
	$"2F89 7E7B 8D76 85FD 0007 2473 7C84 977D"
	$"7C12 FE00 0A12 7C85 898C 8C78 8584 976C"
	$"FD00 1646 8D7B 8397 7C8D 977B 738D 967D"
	$"6204 0575 8594 846F 4917 FD00 0854 8D7C"
	$"7B8D 7385 9626 FD00 067B 8497 7C7B 8510"
	$"FE00 0611 8588 8D8C 7742 FD00 0674 857B"
	$"8C8D 7B30 FD00 006B 0473 8D96 7D73 FD00"
	$"1028 8466 1A0C 5B85 7373 848D 7C7B 8D73"
	$"8529 FD00 0C97 857B 8C8D 7B83 977C 8D97"
	$"7402 ED00 0F0A 5851 4859 5A48 5A5A 4964"
	$"5A48 4A5A 20FE 1103 3F48 5167 FD11 072E"
	$"5140 4050 5A49 2CFD 110A 4151 4850 4048"
	$"505A 4948 47FD 1106 2051 5259 5A45 44FD"
	$"1108 2C51 4859 5A48 5A5A 20FD 1106 5A63"
	$"4A4A 4859 18FE 1107 1951 5A51 5140 405B"
	$"FD11 061F 4D65 504C 4E4E FD11 0627 5649"
	$"485A 434A FD11 0722 4148 505A 4A49 18FE"
	$"110A 1B48 5152 585A 464C 505A 49FD 1116"
	$"355A 485A 5A49 645A 484A 5A63 4A42 1313"
	$"4551 6B50 4837 1CFD 1108 395A 4948 5A40"
	$"4759 22FD 1104 4850 5A49 4801 4718 FE11"
	$"0618 5152 595A 452E FD11 0649 5148 595A"
	$"482C FD11 0541 4A5A 634A 4AFD 1110 2950"
	$"441F 173D 5140 4050 5A49 485A 4047 24FD"
	$"110C 5A51 4859 5A48 5A5A 4964 5A44 01F4"
	$"0002 F8F9 0000 5DFE B60A AFA5 AEAF A5B6"
	$"B7A6 B6A5 73FE 5B04 86B6 AFB6 64FE 5B07"
	$"76AE BFB6 9DA5 BF89 FD5B 0AA1 A5AE B8B6"
	$"B6AF AFB6 B7AE FD5B 0674 BAB6 AFAF 9BA3"
	$"FD5B 007C FEB6 04AF A5AE AF6F FD5B 06A5"
	$"AF96 B6AF AF67 FE5B 0767 B6AF A5AE BFB6"
	$"A7FD 5B06 73AF B7B7 B0B3 A6FD 5B06 75A9"
	$"BBB5 AFAF B0FE 5B08 5B74 B3B5 B0AF B6B7"
	$"66FE 5B0A 67B7 B9B6 AFAF 9CAE B7AF A1FD"
	$"5B16 88AF A5AE AFA5 B6B7 A6B6 A5AF 9670"
	$"5B70 B6AF B6B7 B6B6 90FD 5B03 85A5 BFB7"
	$"FEAF 01B8 74FD 5B06 B6AF AFB6 B7AE 66FE"
	$"5B06 67BA B6AF AF9B 84FD 5B00 A1FE B602"
	$"AFA5 79FD 5B05 9CB6 A5AF 96B6 FD5B 0C74"
	$"935F 76A7 A5AE BFB6 9DA5 BFB7 FEAF 0274"
	$"5B5B FF5B FDB6 08AF A5AE AFA5 B6B7 A63B"
	$"EC00 0E48 9783 977B 7C85 7B7C 8D8E 7397"
	$"8723 FE00 0440 977B 970E FE00 072D 8596"
	$"8D74 7C96 47FD 000A 6C7C 8585 8D83 7B7B"
	$"8384 85FD 0006 2494 947B 7B72 72FD 0008"
	$"3397 8397 7B7C 857B 22FD 0006 877B 6383"
	$"7B7B 14FE 0004 1183 7B7C 8502 968D 78FD"
	$"0006 267B 918E 8184 6DFD 0006 2C7E 928A"
	$"7B7B 80FD 0007 248A 837D 7B85 8412 FE00"
	$"0A14 8593 937B 7C73 848E 7B74 FD00 164B"
	$"7B7C 857B 7C8D 8E73 9787 7B63 1E00 1F97"
	$"7B97 8E83 834E FD00 034A 7C96 8EFE 7B01"
	$"8526 FD00 0683 7B7B 8384 8510 FE00 0612"
	$"9494 7B7B 7242 FD00 066C 9783 977B 7C31"
	$"FD00 0064 0497 877B 6383 FD00 0C29 5606"
	$"286F 7C85 968D 747C 968E FE7B 0024 FD00"
	$"0C8D 9783 977B 7C85 7B7C 8D8E 7331 EC00"
	$"002E FE5A 0A48 4951 4849 5A50 405A 4921"
	$"FE11 042D 5A48 5A17 FE11 0725 5159 5A41"
	$"4959 30FD 11FF 4908 5147 5A5A 4848 5A50"
	$"51FD 1106 2067 5A48 484A 48FD 1100 2CFE"
	$"5A04 4849 5148 20FD 1106 4948 2F5A 4848"
	$"1BFE 1107 1B5A 4849 5159 5A45 FD11 0623"
	$"4853 5354 5741 FD11 0625 4B57 4E48 484B"
	$"FD11 0720 5859 4948 5A51 1AFE 110A 1B48"
	$"6659 4849 4A51 5048 49FD 1116 3548 4951"
	$"4849 5A50 405A 4948 2F22 111F 5A48 5A50"
	$"5A5A 34FD 1103 2F49 5950 FE48 0147 25FD"
	$"1104 5A48 485A 5001 5118 FE11 0618 675A"
	$"4848 4A31 FD11 0049 FE5A 0248 4928 FD11"
	$"053A 5A49 482F 5AFD 110C 2537 1427 4349"
	$"5159 5A41 4959 50FE 4800 20FD 11FD 5A08"
	$"4849 5148 495A 5040 1DF4 0002 F7FA 000F"
	$"0150 AEAE AFAE AEB6 B7B6 AEA5 94AF 9D76"
	$"FE5B 0484 AFB6 AE76 FE5B 007F FDAF 02B6"
	$"BF85 FD5B 0AA8 B6B7 B7AE AEAF B7AE B7B7"
	$"FD5B 0674 AEB6 B6B8 AEAA FD5B 087F AEAE"
	$"AFAE AEB6 B774 FD5B 069D A5B6 B6B7 AE66"
	$"FE5B 0367 AEB6 BFFE AF00 A9FD 5B06 73B6"
	$"B1BE B6B1 AAFD 5B06 7AB6 BDB1 B4B4 B6FE"
	$"5B08 5B74 AEAF AFB6 AFB6 67FE 5B0A 67B7"
	$"AEB6 B6B8 AEB5 AFAF A1FD 5B16 85AE AEB6"
	$"B7B6 AEA5 94AF 9DA5 995B 5B7F AFB6 AEBD"
	$"B6AE 95FD 5B03 90B6 BFAF FDB6 0076 FD5B"
	$"06AE AFB7 AEB7 B767 FE5B 0667 AEB6 B6B8"
	$"AE88 FD5B 06A8 AEAE AFAE AE7C FD5B 058C"
	$"AF9D A5B6 B6FD 5B05 5C60 91AE B6BF FDAF"
	$"02B6 BFAF FEB6 0274 5B5B FF5B 0CBF AEAE"
	$"AFAE AEB6 B7B6 AEA5 9456 ED00 0F01 3B85"
	$"857B 8585 9784 8385 7C75 7B74 2DFE 0004"
	$"427B 8D85 28FE 0000 33FD 7B02 8D8C 3DFD"
	$"000A 7397 8484 8585 7B8E 8584 8EFD 0006"
	$"268B 8D83 8585 83FD 0008 3385 857B 8585"
	$"9784 23FD 0006 747C 8397 8E85 10FE 0004"
	$"1485 8D8C 7BFF 7B00 7CFD 0006 2491 8895"
	$"9785 78FD 0006 2E8B 8C7D 9194 93FD 0007"
	$"2485 877B 8C86 8313 FE00 0A11 8E8C 8D83"
	$"8585 967B 7B6C FD00 163D 8585 9784 8385"
	$"7C75 7B74 7C59 0000 397B 8D85 9497 855A"
	$"FD00 034E 8D8C 7BFE 9701 8D29 FD00 0685"
	$"7B8E 8584 8E12 FE00 0613 8B8D 8385 854B"
	$"FD00 066C 8585 7B85 8537 FD00 0065 047B"
	$"747C 8397 FD00 0502 0759 858D 8CFD 7B02"
	$"8D8C 7BFE 9700 26FD 000C 8C85 857B 8585"
	$"9784 8385 7C75 3CED 000F 0125 5151 4851"
	$"515A 505A 5149 4248 4125 FE11 0431 485A"
	$"5129 FE11 002B FD48 025A 592C FD11 0A48"
	$"5A50 5051 5148 5051 5050 FD11 0625 5159"
	$"5A47 5150 FD11 082B 5151 4851 515A 5025"
	$"FD11 0641 495A 5A50 5118 FE11 031B 515A"
	$"59FE 4800 49FD 1106 225A 5465 5A51 4EFD"
	$"1106 2658 574A 5858 5AFD 1107 2251 5248"
	$"4F52 4F1A FE11 0A1B 5A51 595A 4751 5948"
	$"4849 FD11 162C 5151 5A50 5A51 4942 4841"
	$"4943 1111 2D48 5A51 6B5A 513F FD11 0334"
	$"5A59 48FD 5A00 24FD 1104 5148 5051 5001"
	$"5019 FE11 061B 5159 5A47 5135 FD11 0648"
	$"5151 4851 512C FD11 053B 4841 495A 5AFD"
	$"1105 1215 3C51 5A59 FD48 025A 5948 FE5A"
	$"0025 FD11 0C59 5151 4851 515A 505A 5149"
	$"4223 F400 02FE FA00 0F21 B7BF AFBF B7AF"
	$"9CB6 A6B7 9CAF AEBD 7FFE 5B04 86AF BFB6"
	$"7BFE 5B07 7BA5 9CAF A5AE AF88 FD5B 0AA2"
	$"B8AF 94AF BFB6 A6A6 A5B6 FD5B 0675 B1B6"
	$"AFBE B5AB FD5B 087D BFAF BFB7 AF9C B66F"
	$"FD5B FFBD 04AF B6B6 A566 FE5B 0768 B6B6"
	$"AFA5 9CAF B3FD 5B06 73BC B9B2 BDB4 A1FD"
	$"5B03 76AC B1B6 FEB5 FE5B 085B 6CB0 BEB5"
	$"A7A5 A667 FE5B 0A66 BBB0 B6AF BEB4 B7AE"
	$"AF8E FD5B 168D B7AF 9CB6 A6B7 9CAF AEBD"
	$"BD6C 5B5B 80AF BFB6 AFBF B695 FD5B 088A"
	$"AEAF B6B7 B6B6 BF74 FD5B 06BF B6A6 A6A5"
	$"B667 FE5B 0668 B1B6 AFBE B589 FD5B 06A2"
	$"BFAF BFB7 AF73 FD5B 05A4 AEBD BDAF B6FD"
	$"5B12 65A4 BFB6 B6AF A59C AFA5 AEAF B6B7"
	$"B6B6 765B 5BFF 5B0C B7BF AFBF B7AF 9CB6"
	$"A6B7 9C92 0BED 000F 1A84 8C7B 8C84 7B7D"
	$"8D73 8E7D 7B7A 9436 FE00 044F 7B96 8D2F"
	$"FE00 072F 877D 7B7C 7A7B 46FD 000A 6585"
	$"7B75 7B96 8D73 737C 97FD 0006 288B 8D7B"
	$"8C96 7BFD 0008 308C 7B8C 847B 7D8D 1FFD"
	$"00FF 9404 7B83 8D87 10FE 0004 1383 837B"
	$"8702 7D7B 8AFD 0006 2396 907E 8A80 6EFD"
	$"0006 2C7A 818B 8A8C 94FD 0007 207E 958C"
	$"7474 7D14 FE00 0A12 938A 8D7B 8C95 8E85"
	$"7B60 FD00 1646 847B 7D8D 738E 7D7B 7A94"
	$"9419 0000 437B 968D 7B8C 8353 FD00 084F"
	$"7A7B 8D8E 8D97 9624 FD00 0696 8D73 737C"
	$"9712 FE00 0614 8B8D 7B8C 9647 FD00 0665"
	$"8C7B 8C84 7B2E FD00 006B 047A 9494 7B83"
	$"FD00 1010 6B8C 8383 7B87 7D7B 7C7A 7B8D"
	$"8E8D 9729 FD00 0C84 8C7B 8C84 7B7D 8D73"
	$"8E7D 6708 ED00 0F0E 5059 4859 5048 4A5A"
	$"4050 4A48 516B 32FE 1104 3248 595A 26FE"
	$"1107 2649 4A48 4951 4835 FD11 0A41 4748"
	$"4248 595A 4040 495A FD11 0629 544F 4859"
	$"5A48 FD11 0828 5948 5950 484A 5A1E FD11"
	$"FF6B 0448 5A5A 4918 FE11 071B 5A5A 4849"
	$"4A48 5CFD 1106 2259 5A4B 5354 4AFD 1106"
	$"254F 4C58 5058 58FD 1107 1F4A 5859 4141"
	$"4A1B FE11 0A19 6754 4F48 595A 5051 493E"
	$"FD11 1635 5048 4A5A 4050 4A48 516B 6B1C"
	$"1111 2D48 595A 4859 5A3F FD11 0835 5148"
	$"5A50 5A5A 5922 FD11 0459 5A40 4049 015A"
	$"19FE 1106 1D54 4F48 595A 30FD 1106 4159"
	$"4859 5048 26FD 1105 4151 6B6B 485A FD11"
	$"1019 4159 5A5A 4849 4A48 4951 485A 505A"
	$"5A24 FD11 0C50 5948 5950 484A 5A40 504A"
	$"3C05 F400 02FC FA00 0828 B7AF AFBF B6AF"
	$"B7AF FEB6 03BF B6B6 74FE 5B04 A1B7 C6AF"
	$"86FE 5B07 899D AEAF A5AF B789 FD5B 0AA2"
	$"B8A5 B6B6 AF9C AFAE AEA3 FD5B 0671 ABB6"
	$"B6AE B78C FD5B 087D AFAF BFB6 AFB7 AF74"
	$"FD5B 06B6 B7BD B6B6 AE67 FE5B 0766 B7B6"
	$"B79D AEAF AFFD 5B01 74C1 FEB2 01B1 AAFD"
	$"5B06 77AF B3B6 AFB7 B9FE 5B08 5B73 B6AC"
	$"9FAF AEAF 65FE 5B0A 68AE ABB6 B6AE B795"
	$"B8AF 9CFD 5B04 8DB6 AFB7 AFFE B603 BFB6"
	$"B6AA FE5B 027E B7C6 FEAF 01B7 95FD 5B08"
	$"8AAF B7B8 AFB6 B8B7 74FD 5B06 AF9C AFAE"
	$"AEA3 66FE 5B06 66AB B6B6 AEB7 77FD 5B06"
	$"A2AF AFBF B6AF 7DFD 5B05 B2B6 B6B7 BDB6"
	$"FD5B 1272 AFAF B7B6 B79D AEAF A5AF B7B8"
	$"AFB6 B874 5B5B FF5B 0BB7 AFAF BFB6 AFB7"
	$"AFB6 B6AC 14EC 000F 1D8E 7B7B 968D 7B8E"
	$"7B8D 9797 9683 9723 FE00 0470 849D 7B40"
	$"FE00 0747 7485 7B7C 7B8E 42FD 000A 6685"
	$"7C97 977B 7D7B 7A85 8FFD 0006 247D 8297"
	$"858D 65FD 0008 347B 7B96 8D7B 8E7B 26FD"
	$"0006 9784 9497 9785 12FE 0004 108E 8D8E"
	$"7402 857B 81FD 0001 2594 FE7E 0188 7DFD"
	$"0006 2D7D 8E83 7B8E 86FD 0007 2896 7A7E"
	$"7B7A 8513 FE00 0A13 857E 8297 858D 7685"
	$"7C5F FD00 0B4B 8D7B 8E7B 8D97 9796 8397"
	$"71FE 0002 3784 9DFE 7B01 8E5A FD00 084F"
	$"7B8E 857B 8D85 8424 FD00 067B 7D7B 7A85"
	$"8F10 FE00 0612 7D82 9785 8D3A FD00 066D"
	$"7B7B 968D 7B34 FD00 0082 0483 9784 9497"
	$"FD00 1021 7B7B 8E8D 8E74 857B 7C7B 8E85"
	$"7B8D 8524 FD00 0B8E 7B7B 968D 7B8E 7B8D"
	$"978F 10EC 0008 1050 4848 595A 4850 48FE"
	$"5A03 595A 5A22 FE11 0447 506A 482D FE11"
	$"0730 4151 4849 4850 2CFD 110A 3B47 495A"
	$"5A48 4A48 5151 5CFD 1106 2248 5A5A 5150"
	$"3BFD 1108 2848 4859 5A48 5048 25FD 1106"
	$"5A50 6B5A 5A51 19FE 1107 1850 5A50 4151"
	$"484D FD11 0623 5D4B 4848 4E50 FD11 0626"
	$"4A53 494A 5D4A FD11 0724 5947 4A48 5050"
	$"1BFE 110A 1B51 4859 5A51 5043 4748 3BFD"
	$"1104 355A 4850 48FE 5A03 595A 5A47 FE11"
	$"022C 506A FE48 0150 3FFD 1108 3548 5047"
	$"485A 4750 20FD 1104 484A 4851 5101 5C1A"
	$"FE11 061A 485A 5A51 5029 FD11 0641 4848"
	$"595A 4828 FD11 054F 5A5A 506B 5AFD 1110"
	$"2048 4850 5A50 4151 4849 4850 4748 5A47"
	$"22FD 110B 5048 4859 5A48 5048 5A5A 5509"
	$"F300 02FC FA00 1742 AFB6 B6B7 B7B8 B6AE"
	$"B8BF BDB6 B6AD 5E5B 5B72 B6AE A5AF 90FE"
	$"5B07 98A6 A6B7 BFAF B789 FD5B 0AA2 AFB6"
	$"B6B7 9CB6 B7A5 AEAE FD5B 0670 B6AE BFBE"
	$"B6A4 FD5B 087A B6B6 B7B7 B8B6 AE74 FD5B"
	$"06B6 AFB7 B6AF B666 FE5B 0767 B6B7 B6A6"
	$"A6B7 B6FD 5B06 73AB B1B1 B4B6 ABFD 5B06"
	$"7DAF B5B8 A0BD B6FE 5B08 5B74 B79E B7B7"
	$"A4AF 66FE 5B0A 67A9 B6AE BFBE B6AF BFB7"
	$"8DFD 5B07 89B7 B8B6 AEB8 BFBD FEB6 0092"
	$"FE5B 076C AEA5 AFAE B6B6 95FD 5B08 9BAF"
	$"B7B8 9CBF B6B6 74FD 5B06 9CB6 B7A5 AEAE"
	$"67FE 5B06 65B6 AEBF BEB6 85FD 5B06 9CB6"
	$"B6B7 B7B8 7CFD 5B05 AAB6 B6AF B7B6 FD5B"
	$"1272 AEB6 B6B7 B6A6 A6B7 BFAF B7B8 9CBF"
	$"B674 5B5B FF5B 0BAF B6B6 B7B7 B8B6 AEB8"
	$"BFAC 15EC 0017 307B 8D97 8E8E 8597 8585"
	$"9694 9797 7604 0000 2197 857C 7B54 FE00"
	$"075E 7373 8496 7B8E 42FD 000A 667B 8D8D"
	$"847D 9784 7C85 85FD 0006 2283 7B96 948D"
	$"6BFD 0008 2D8D 978E 8E85 9785 24FD 0006"
	$"837B 8E97 7B97 12FE 0004 118D 8E8D 7302"
	$"7384 86FD 0006 2586 8585 808D 7BFD 0006"
	$"357D 8C88 7D8C 95FD 0007 2685 7D96 857C"
	$"8512 FE00 0A13 7C84 7B95 948D 7C8C 8E60"
	$"FD00 0B47 8E85 9785 8596 9497 9783 50FE"
	$"0007 1C85 7C7B 8583 8D5A FD00 085F 7B8E"
	$"857D 8C97 9724 FD00 067D 9784 7C85 8514"
	$"FE00 0611 837B 9694 8D3D FD00 065F 8D97"
	$"8E8E 8537 FD00 0083 0497 837B 8E97 FD00"
	$"1021 8583 8D8E 8D73 7384 967B 8E85 7D8C"
	$"9729 FD00 0B7B 8D97 8E8E 8597 8585 9687"
	$"11EC 0017 2148 5A5A 5050 475A 5147 596B"
	$"5A5A 5313 1111 205A 5149 483A FE11 0742"
	$"4040 5059 4850 2CFD 110A 3B48 5A5A 504A"
	$"5A50 4951 51FD 1106 2058 4859 585A 40FD"
	$"1108 255A 5A50 5047 5A51 20FD 1106 5A48"
	$"505A 485A 1AFE 1107 1B5A 505A 4040 504F"
	$"FD11 0623 4F4E 4E54 5A4A FD11 062A 4A50"
	$"4B4A 595A FD11 0725 514A 5A50 4952 19FE"
	$"110A 1A48 5848 5858 5A47 5950 3DFD 1107"
	$"3050 475A 5147 596B FE5A 0035 FE11 071E"
	$"5149 4851 5A5A 39FD 1108 3F48 5047 4A59"
	$"5A5A 20FD 1104 4A5A 5049 5101 511B FE11"
	$"0618 5848 5958 5A2C FD11 063B 5A5A 5050"
	$"472C FD11 0550 5A5A 4850 5AFD 1110 2051"
	$"5A5A 505A 4040 5059 4850 474A 595A 25FD"
	$"110B 485A 5A50 5047 5A51 4759 610A F300"
	$"02F9 FA00 1756 BFB7 AFB6 B694 B6B6 AFB6"
	$"AFAF AA6D 5B5B 69AD B6BF B6B7 A1FE 5B07"
	$"A3BF 9DB6 B7B8 AF8D FD5B 0AA1 A5AE AFB7"
	$"AEAF 94B6 B7A6 FD5B 0674 BEBA B6B5 AFA4"
	$"FD5B 087F B7AF B6B6 94B6 B672 FD5B 06AE"
	$"B6B6 AFB6 B668 FE5B 0764 B6BD AEBF 9DB6"
	$"B5FD 5B06 74B0 B7B7 A0B4 ACFD 5B06 7DB8"
	$"ADBD B4AF A8FE 5B08 5B72 B6AE B097 B7A8"
	$"5FFE 5B0A 65B7 BEBA B6B5 AFAF B6B7 A6FD"
	$"5B0B 88B6 94B6 B6AF B6AF AFB7 AE88 FD5B"
	$"06AD B6B7 B89D B697 FD5B 0895 B8AF BFB7"
	$"AEA5 B674 FD5B 06AE AF94 B6B7 A767 FE5B"
	$"0668 BEBA B6B5 AF85 FD5B 06A8 B7AF B6B6"
	$"947C FD5B 05A4 B7AE B6B6 AFFD 5B12 74B8"
	$"9DB6 BDAE BF9D B6B7 B8AF BFB7 AEA5 725B"
	$"5BFF 5B0B BFB7 AFB6 B694 B6B6 AFB6 AF6C"
	$"EC00 173C 8C8E 7B8D 8375 9797 7B83 7B7B"
	$"711D 0000 157F 8396 838E 64FE 0007 6A8C"
	$"7497 8485 7B4B FD00 0A6C 7C7A 7B8E 857B"
	$"758D 8485 FD00 0625 9491 8C87 7C6B FD00"
	$"0833 8E7B 8D83 7597 9721 FD00 0685 9797"
	$"7B8D 8314 FE00 040F 8D94 7A8C 0274 978D"
	$"FD00 0627 8191 8877 877A FD00 0631 857E"
	$"9383 857F FD00 0722 8C84 7D76 8D6F 06FE"
	$"000A 1089 9491 8B87 7C7B 8D84 69FD 000B"
	$"4683 7597 977B 837B 7B84 854B FD00 067B"
	$"838E 8574 8D5B FD00 0854 857B 9684 857C"
	$"9726 FD00 0685 7B75 8D84 8712 FE00 0612"
	$"9491 8C87 7C3D FD00 066C 8E7B 8D83 7537"
	$"FD00 006B 0484 8597 977B FD00 1026 8574"
	$"8D94 7A8C 7497 8485 7B96 8485 7C26 FD00"
	$"0B8C 8E7B 8D83 7597 977B 837B 4CEC 0017"
	$"2359 5048 5A5A 425A 5A48 5A48 4847 1F11"
	$"111A 535A 595A 5039 FE11 0749 5941 5A50"
	$"4748 35FD 11FF 4908 5148 5051 4842 5A50"
	$"48FD 1106 2458 6854 4A4A 41FD 1108 2B50"
	$"485A 5A42 5A5A 20FD 1106 515A 5A48 5A5A"
	$"1BFE 1107 175A 6B51 5941 5A55 FD11 0624"
	$"5453 4D44 5756 FD11 0629 4948 574E 4F4A"
	$"FD11 0720 4F50 4A43 5A46 14FE 110A 1856"
	$"5868 544A 4A48 5A50 47FD 110B 355A 425A"
	$"5A48 5A48 4850 5135 FD11 064C 5A50 4741"
	$"5A48 FD11 0839 4748 5950 5149 5A25 FD11"
	$"0451 4842 5A50 0149 19FE 1106 1A58 6854"
	$"4A4A 2CFD 1106 4850 485A 5A42 2CFD 1105"
	$"4150 515A 5A48 FD11 1022 4741 5A6B 5159"
	$"415A 5047 4859 5051 4923 FD11 0B59 5048"
	$"5A5A 425A 5A48 5A48 2DF3 0002 F9FB 0023"
	$"1896 B6B6 AFB6 A5AF AF94 877F 786A 5B5B"
	$"6A94 BCB6 B6B7 B6BF A15B 5B6D AFB7 B7B6"
	$"BFB6 B781 FD5B 0A9F A5A5 A6AF 9DB7 9CA5"
	$"B6A6 FD5B 0662 89B6 A6A9 B6AA FD5B 087C"
	$"B6AF B6A5 AFB6 AF74 FD5B 06B6 AEBF BFB6"
	$"B667 FE5B 0764 B7B7 AFB7 B7B6 A5FD 5B06"
	$"628F B0B6 B2B2 A6FD 5B06 7DB6 B7B6 B3B0"
	$"BDFE 5B08 5B61 9EA0 B79E A069 5CFD 5B04"
	$"ABAF BCA7 AAFE B601 B786 FD5B 0B84 A5AF"
	$"B6AF B6BF B6B7 B6B6 86FD 5B06 6FB5 BFB6"
	$"B898 61FD 5B08 94B6 B7B7 B6A0 957A 64FD"
	$"5B06 7291 90A5 B6B6 66FE 5B06 66AF BCA6"
	$"A9B6 88FD 5B06 A1B6 AFB6 A5AF 7CFD 5B05"
	$"ABB6 B6AE BFBC FD5B 1274 B6B8 B7B7 AFB7"
	$"B7B6 9BB2 B7B7 B6AF BF61 5B5B FF5B 0BB2"
	$"B6AF B6A5 AFB6 AFB6 BFB6 99ED 0023 126C"
	$"9797 7B97 7C7B 8154 4437 3016 0000 1955"
	$"918D 9784 978C 6C00 001A 7B8E 8E83 968D"
	$"843B FD00 0A71 7C7C 737B 7484 7D7C 8D70"
	$"FD00 060A 4A89 797E 8C7A FD00 0837 977B"
	$"977C 7B8D 7B26 FD00 068D 8596 968D 9712"
	$"FE00 040D 8E84 7B8E 028E 8373 FD00 060B"
	$"537E 9082 896E FD00 0635 8D85 8B8A 8091"
	$"FD00 070A 6277 867E 7415 02FD 0009 7C86"
	$"927A 7F8C 8D97 8448 FD00 0B44 7C7B 8D7B"
	$"8D96 9784 978D 45FD 0006 1C95 8C8D 855F"
	$"08FD 0008 558D 848E 8D65 5834 0FFD 0006"
	$"294D 667C 8D89 11FE 0006 1186 9379 7E8C"
	$"46FD 0006 7497 7B97 7C7B 33FD 0000 7204"
	$"978D 8596 91FD 0010 238D 858E 847B 8E8E"
	$"835F 8684 8E8D 7B96 0AFD 000B 9097 7B97"
	$"7C7B 8D7B 8D96 976E ED00 230B 425A 5A48"
	$"5A49 4854 3734 2B28 1B11 111D 3A57 5A5A"
	$"505A 5949 1111 1E48 5050 5A59 5A50 2BFD"
	$"110A 4849 4940 4841 504A 495A 49FD 1106"
	$"1634 544F 4B50 50FD 1108 2C5A 485A 4948"
	$"5A48 25FD 1106 5A51 5959 5A5A 19FE 1107"
	$"1650 5048 5050 5A48 FD11 0616 3950 5A48"
	$"4E43 FD11 062A 5A51 4F57 4B56 FD11 0715"
	$"3D44 514B 451C 12FD 1109 4A51 584F 4B50"
	$"5A5A 5032 FD11 0B32 4948 5A48 5A59 5A50"
	$"5A5A 32FD 1106 1F59 595A 473B 15FD 1108"
	$"3A5A 5050 5A3E 3B28 18FD 1104 2236 4049"
	$"5A01 5519 FE11 0619 5159 4F4B 5035 FD11"
	$"0649 5A48 5A49 482C FD11 0548 5A5A 5159"
	$"57FD 1110 235A 4750 5048 5050 5A3F 5750"
	$"505A 4859 16FD 110B 575A 485A 4948 5A48"
	$"5A59 5A43 F300 02C7 FB00 0899 BFB7 B8AF"
	$"B6AB 7F5C FB5B 1485 AFB6 B7AF B7B6 BFA5"
	$"8C5B 5B94 BFB6 AFB7 AF9E B771 FD5B 0A61"
	$"7FA7 A5B8 BFAF 9AAE AE84 FB5B 045E 7099"
	$"AFAA FD5B 087D B8AF B6AF B6AE AB69 FD5B"
	$"06A2 AFB6 B7AF B76A FD5B 069B AEAE B6AF"
	$"B781 FB5B 045E 779D A8A0 FD5B 097A A1B7"
	$"B7B5 B7B1 5D5B 5BFF 5B06 5C90 B7B6 707A"
	$"78FD 5B09 A1B0 B194 AAAF B6BD B671 FD5B"
	$"0B5C 86B6 AEA1 72B0 B6B7 BFAE 97FC 5B05"
	$"7CA4 A484 6E8A FD5B 057B 9EA9 A7B6 67F7"
	$"5B03 637E A766 FE5B 067E B0B1 93AA AF7B"
	$"FD5B 0693 B8AF B6AF B679 FD5B 05B1 BFAE"
	$"AFB6 A6FC 5B0E 678C A0AE BFB6 A775 7197"
	$"B7B8 B6B7 96FE 5BFF 5B07 6BAC AFB5 858C"
	$"AEAF FEB6 0092 ED00 0878 9684 857B 9775"
	$"3802 FB00 1443 7B8D 847B 8497 967C 5200"
	$"005B 9697 7B84 7B6B 841F FD00 0A08 356F"
	$"7C85 8C79 617A 7B3D FB00 0404 2A60 7B83"
	$"FD00 0830 857B 977B 8D85 7516 FD00 0671"
	$"7B8D 847B 8419 FD00 036C 857D 9702 7B84"
	$"37FB 0004 042E 607C 71FD 0007 2D6E 8587"
	$"928C 7F02 FD00 0602 4B84 8C1F 2E2B FD00"
	$"096B 7D83 747B 7C97 948C 20FD 000B 0240"
	$"8D85 6723 8D97 8E96 8558 FC00 0531 7A7A"
	$"3C1F 4CFD 0005 2F6B 706C 9713 F700 030C"
	$"3371 13FE 0006 367D 8373 7A7B 35FD 0006"
	$"5085 7B97 7B8D 31FD 0000 8504 9685 7B8D"
	$"6CFC 000E 1548 7485 9697 6F25 2161 8485"
	$"978E 56FC 000B 1673 7B95 3E4B 857B 8D97"
	$"9772 ED00 0847 5950 4748 5A45 2E12 FB11"
	$"1431 485A 5048 505A 5949 3611 113D 595A"
	$"4850 4838 501E FD11 0A15 2D43 4947 594B"
	$"3C51 4830 FB11 0413 253D 4850 FD11 0828"
	$"4748 5A48 5A51 451C FD11 0647 485A 5048"
	$"501D FD11 0642 514D 5A48 502A FB11 0413"
	$"263E 4947 FD11 0726 3B51 4C57 504A 12FD"
	$"1106 1237 524F 2125 27FD 1109 494A 5048"
	$"4948 5A6B 4F21 FD11 0B12 2D5A 513F 2355"
	$"5A50 5951 38FC 1105 2948 482C 1F35 FD11"
	$"0526 3847 3D5A 19F7 1101 1728 014A 1BFE"
	$"1106 2D4A 5047 4948 2AFD 1106 3747 485A"
	$"485A 28FD 1105 4C59 5148 5A45 FC11 0E1A"
	$"3145 5159 5A43 2320 3450 475A 5037 FC11"
	$"071C 4048 592D 3851 48FE 5A00 40F3 0002"
	$"88FB 0006 ADB7 B7B6 9DAA 6FF8 5B12 7FB7"
	$"B6AF BDB7 BFAF 735B 74B6 AFB6 A6B6 B7B8"
	$"99FA 5B07 5C77 9A99 6C95 AE9A F75B 016C"
	$"8DFE 5B08 6392 B69D AEAE AFB3 71FC 5B06"
	$"63A9 B8B6 AFBD 77FD 5B05 7176 69B5 A69C"
	$"F75B 016D 86FE 5B0A 6291 B7BA B6B8 B0B6"
	$"A662 5BFD 5B04 7278 70B2 96FD 5B08 76BE"
	$"A593 AFB6 BEB6 7EFA 5B04 7495 6496 AEFE"
	$"B602 AFB6 66FC 5B04 7370 83BD A4FD 5B07"
	$"5C83 69A1 B870 675D F65B 095C 5B6C A0BC"
	$"BEA4 92AF 84FC 5B06 5C98 9DAE AEAF 78FE"
	$"5B06 5FB6 B6AF B7B7 78FA 5B0C 5E7B 9A9C"
	$"648D B7B8 B7B7 B8A4 5FFE 5BFE 5B0A 5F86"
	$"7272 A8B7 B7B6 AEB6 56ED 0006 7D84 848D"
	$"747F 1FF8 0012 3483 977B 948E 967B 2500"
	$"268D 7B83 7397 8485 5FFA 0007 0230 605A"
	$"195D 8563 F700 011A 4BFE 0008 0B4F 8D74"
	$"8585 7B87 21FC 0006 0C70 8597 7B94 2BFD"
	$"0003 212B 1581 0173 6CF7 0001 1B44 FE00"
	$"090C 4F86 908C 857D 8470 0EFC 0004 222E"
	$"2188 57FD 0008 2A89 8172 7B8D 968D 33FA"
	$"0004 255A 0D62 85FE 9702 7B82 0FFC 0004"
	$"2320 3994 71FD 0007 023A 156D 851F 1202"
	$"F600 0902 0019 6693 8981 717B 40FC 0006"
	$"025F 7485 857B 2DFE 0001 0797 0497 7B84"
	$"832F FA00 0C05 325C 5E0E 5384 858E 8E85"
	$"6B06 FB00 0A07 4C26 2671 8E8E 9785 9748"
	$"ED00 064C 5050 5A41 4E20 F811 122A 465A"
	$"486B 5059 4820 1123 5A48 5A40 5A50 473B"
	$"FA11 0712 2738 391B 3E50 40F7 1101 1E35"
	$"FE11 0016 0737 5A41 5151 484D 20FC 1106"
	$"1647 475A 486B 24FD 1105 2127 1A59 4045"
	$"F711 011E 33FE 1109 1737 4955 5049 4B4F"
	$"4717 FC11 041F 2721 5141 FD11 0825 5358"
	$"4548 5959 5A28 FA11 0421 3917 4151 FE5A"
	$"0248 4F17 FC11 0421 1E2C 584B FD11 0712"
	$"291A 4147 1F19 12F7 110A 1112 111E 3E57"
	$"5358 4448 31FC 1106 1242 4151 5148 25FE"
	$"1106 145A 5A48 5046 28FA 110C 132B 3A45"
	$"1739 5047 5050 4741 14FB 110A 1430 2323"
	$"4350 505A 515A 2BF3 0002 7CFB 0005 71BF"
	$"B6B6 B774 F65B 126C A8AE AEB6 AE93 5B65"
	$"A6BD B69D AEB6 AFAF 7B62 F85B 096F 95B6"
	$"AEB4 AFB1 9A7E 60F9 5B0A 6C94 BCB6 B6B7"
	$"AEAF B7A7 65FC 5B06 5C8B B7B6 AEAE 8CFC"
	$"5B09 77B2 9DAE B6AA A89D 7B61 F95B 0C68"
	$"8CB3 AFB0 BCB2 B7B6 BBB0 A171 FC5B 0469"
	$"ABB5 A75E FD5B 098F A3B9 B1B0 B7B6 AF92"
	$"6AFB 5B09 69A7 B6B6 9DBF B6B6 A698 FC5B"
	$"055F 7FAF AEBB 64FD 5B07 63AF AFB7 B6BF"
	$"AE6C F65B 0885 B5A6 B9B1 A2B9 AB70 FB5B"
	$"0581 B7AE AFB7 74FE 5B07 6DBF B6B6 A69A"
	$"6E5C F85B 0C65 9FB6 AFAF BFAF B7B6 A77B"
	$"5C5B FC5B 0285 AEB7 FDB6 019D 34ED 0005"
	$"588C 8D8D 8428 F600 121A 7885 858D 8551"
	$"000E 7894 9774 8597 7B7B 300A F800 091C"
	$"6F97 7B80 7B80 5B37 09F9 000A 1A57 888D"
	$"8D84 857B 8E7E 10FC 0006 0249 8E8D 8585"
	$"4CFC 0002 2A90 7406 8597 7675 6532 09F9"
	$"000C 1651 927B 7C91 8083 9694 8572 23FC"
	$"0004 1676 8170 05FD 0009 4D83 8787 8D8D"
	$"9781 5515 FB00 0917 768D 9774 9697 9773"
	$"5FFC 0005 063D 7B85 920F FD00 070C 7D7B"
	$"8497 9685 1DF6 0008 3C8D 8788 7E83 877E"
	$"24FB 0005 3B84 857B 8E29 FE00 011F 96FF"
	$"9703 7361 1D02 F800 0B12 6C97 7B7B 967B"
	$"8497 7333 02FB 0008 4379 8E97 8D8D 9774"
	$"29ED 0005 3259 5A5A 5024 F611 121D 4F51"
	$"515A 513E 1117 4B6B 5A41 515A 4848 2816"
	$"F811 091F 445A 4847 484F 3B2D 15F9 1102"
	$"1E38 57FF 5A05 5051 4850 4E19 FC11 0612"
	$"2F50 5A51 5138 FC11 092A 5741 515A 4345"
	$"4428 15F9 110C 1B37 5848 4856 4B4F 5A57"
	$"5244 1EFC 1104 1C46 4844 13FD 1109 3551"
	$"4A54 5450 5A54 371C FB11 091C 4E5A 5A41"
	$"595A 5A40 3BFC 1105 142A 4851 6A18 FD11"
	$"0716 4D48 505A 5951 1EF8 11FF 1108 2D59"
	$"4B56 4B51 4950 22FB 1105 2F50 5148 5025"
	$"FE11 071E 595A 5A40 3C20 12F8 110B 1845"
	$"5A48 4859 4850 5A48 2A12 FB11 0231 4750"
	$"FD5A 0141 18F3 0003 0CFB 000D 0C99 B6B7"
	$"995B 78A4 B6A2 978F 755E FD5B 145C 7B8D"
	$"927B 5B6C AAC6 B7AF A5A6 B6A6 B7BF BFA9"
	$"8B6A FC5B 0C82 ADAF B6B2 AFBE AAB8 B5AA"
	$"8C64 FD5B 0D6A 99A5 B6AF B6B7 AEB5 B6B6"
	$"B79E 6EFE 5B08 65A1 9EBF B6B6 AFB0 68FE"
	$"5B0C 8BB6 AFA5 A6B6 A1BC B9B9 AE8E 65FD"
	$"5B0E 6A94 A7A8 B6A9 B5BF BBB8 B0B5 9FAF"
	$"9E09 905E 5B5B 63AB B2AF BD7F FD5B 0B5F"
	$"A0AF B0AF B4B6 A5B6 AE91 5FFE 5B0B 78B3"
	$"A5A6 B6BD B6BF B79E BF85 FE5B 0668 A6B8"
	$"B6C6 B790 FE5B 0866 ADBF BFB8 AFB6 9C72"
	$"FD5B 017B 5CFE 5B0B 6094 B8B5 AEB1 B2AF"
	$"AFB0 AE81 FE5B 075C 90B7 AEB5 B6B6 6CFE"
	$"5B0A 9BB6 BFB7 9EBF B6B3 9A82 67FC 5B0D"
	$"7FA2 A6B6 A6B7 BFBF B8AF B69C A46B FE5B"
	$"0A61 95B5 B6B6 B7A5 A6B6 BD0E ED00 0D09"
	$"6C8D 845B 0030 7982 765C 5027 05FD 0014"
	$"0232 4A5B 2C00 197A 9D8E 7B7C 7383 738E"
	$"9696 7046 19FC 000C 3E83 7B8B 907B 8A7C"
	$"968C 7F50 0EFD 000D 1759 7C83 7B8D 847A"
	$"9697 9784 701D FE00 080E 6D6B 9683 8D7B"
	$"8D13 FE00 0346 8C7B 7C08 7383 6E93 8A90"
	$"7851 0EFD 0018 1856 7E75 8579 8A94 9188"
	$"7E94 777E 7D57 0400 000C 7A8F 7B8A 37FD"
	$"000B 0768 7B7D 7C88 837C 8379 5306 FE00"
	$"0B30 7E7C 738D 9497 8C8E 6B96 3DFE 0006"
	$"1374 858D 9D8E 4EFE 0008 117E 9696 857B"
	$"9773 21FD 0001 3302 FE00 0B06 5996 8C85"
	$"8C92 807B 7D79 3BFE 0007 0252 847A 9697"
	$"9718 FE00 0160 9708 8C8E 6B96 8389 5C41"
	$"10FC 000D 3576 7383 738E 9696 857B 9773"
	$"6B1F FE00 0A09 5696 9797 847C 738D 940B"
	$"ED00 0D06 3F5A 5041 1128 4B4F 4637 3B29"
	$"13FD 1114 122B 323D 2811 1B50 6A50 4849"
	$"405A 4050 5959 3E30 1DFC 110C 2F50 4853"
	$"5648 5848 5D59 4E38 18FD 1104 1C43 495A"
	$"4808 5A50 5163 5A5A 5044 1DFE 1108 1841"
	$"3859 5A5A 4855 1BFE 110C 394F 4849 405A"
	$"3B56 5A5A 4537 18FD 1118 1C38 4B42 5845"
	$"4E59 564B 4B59 4C4A 4A3B 1311 1117 4B56"
	$"4858 2AFD 110B 1441 494A 4954 5A49 5947"
	$"3C14 FE11 0B28 4D49 405A 6B5A 5950 3859"
	$"33FE 1106 1B44 475A 6A50 34FE 1108 1849"
	$"5959 4748 5A4A 20FD 1101 2A12 FE11 0B14"
	$"385D 5951 5556 4C49 4A47 2EFE 1107 123C"
	$"5051 635A 5A1D FE11 0A4C 5A59 5038 595A"
	$"583A 3019 FC11 0D29 4640 5A40 5059 5947"
	$"485A 4A41 1FFE 110A 153E 635A 5A50 4940"
	$"5A6B 07F3 0003 17FA 000F 0CAD B67C 7BB7"
	$"AFBD BFAF B6AE A295 7B61 FC5B 2766 8FB5"
	$"B8B7 BFB7 A6AE B8AF A5B7 AEB7 BFB7 A170"
	$"5B63 99B7 AFB6 B2B2 B3AE B5AF B7B8 AFB4"
	$"895E 5C8D A9FE BF38 AFB7 B6BF B6B7 AFBD"
	$"BFAE 845B 6AAB B6B7 B6AE AEB6 A5AA 675C"
	$"93B7 BFB7 A6AE B8B4 B0B1 AEB6 AEB4 8A5E"
	$"5C8C B9B7 A8B0 B7B0 A8B5 AFB6 BEB7 BDBC"
	$"BE04 AFA2 695F A6FE B302 AFB1 66FD 5B04"
	$"6AB7 B5B6 AAFE BF27 AFB7 A76A 5C8B AFBD"
	$"BFAF B6AE A5B5 B6B7 B6AE 805B 6FB0 B6B8"
	$"B8B7 BFB7 845B 71AB A5B7 AEB7 BFB7 BF76"
	$"FD5B 3CAF AA7B 5B65 A2B5 AFB7 B8AF B8B6"
	$"B8B5 B6AA 9960 659A B7B6 BFB6 B7AC 5E5B"
	$"5B6F AEA5 B5B6 B7B6 AEAE B6A5 B798 6C5B"
	$"63A1 B7A6 AEB8 AFA5 B7AE B7BF B7BF BDBD"
	$"0C8D 5B6B AABF B6B7 AFBD BFAF 9945 EB00"
	$"0F09 7D97 2F35 847B 9496 7B8D 7A76 612E"
	$"09FC 0047 1056 8185 8496 8473 8585 7B7C"
	$"8485 8496 8469 2000 0D5A 847C 978F 908D"
	$"8095 878E 8E7C 8F4B 0402 4D75 8C8C 967B"
	$"8497 8C97 847B 9496 7940 0019 8583 8497"
	$"857A 977C 7114 0250 8496 8473 FF85 2481"
	$"8D85 7E90 857F 4C04 0248 8D84 7589 877F"
	$"7F83 8885 9585 9294 8D85 6814 067A 8F90"
	$"8C80 8E12 FD00 2F19 828D 8C77 8C8C 967B"
	$"847E 1502 447B 9496 7B8D 7A7C 9683 8497"
	$"8537 0021 7A97 8585 8496 8440 001F 757C"
	$"8485 8496 8496 28FD 0020 7C83 3400 106D"
	$"9587 8E8E 7C96 9684 8D8C 7757 070F 5C84"
	$"978C 9784 7705 0000 1E7A 7C28 9683 8497"
	$"857A 977C 8365 1900 0B69 8473 8585 7B7C"
	$"8485 8496 8496 948A 4B00 1683 8C97 847B"
	$"9496 7B77 30EB 000F 054C 5A29 2A50 486B"
	$"5948 5A51 4646 2B15 FC11 2717 3B45 4750"
	$"5950 4051 4748 4950 5150 5950 4324 1117"
	$"3950 485A 5555 5B4D 5852 505A 4957 3513"
	$"1239 44FE 5900 4842 505A 595A 5048 6B59"
	$"4732 111C 5A5A 505A 5151 5A49 3F1B 1232"
	$"5059 5040 5147 4D54 5151 574E 4736 1312"
	$"3454 5042 534A 4B4D 4F52 5058 5157 6959"
	$"5141 1B14 4D55 555A 4D55 1AFD 1104 1D4F"
	$"5A5A 45FE 5927 4850 4E1C 1232 486B 5948"
	$"5A51 4963 5A50 5A51 2E11 2043 5A47 4750"
	$"5950 2B11 1E45 4950 5150 5950 5929 FD11"
	$"0448 512A 1119 4444 5852 505A 495A 5950"
	$"5A5A 453E 1418 3A50 5A59 5A50 4614 1111"
	$"2151 4963 5A50 5A51 515A 4946 421B 1116"
	$"4350 4051 4748 4950 5150 5950 596B 5835"
	$"111C 5059 5A50 486B 5948 4C20 F200 0319"
	$"F900 1769 BF78 AEB6 A5B8 B6B7 B7BF A5B7"
	$"B6B6 AB94 8884 92BD AFAE B8FE B73C AEAF"
	$"B8AF A6B6 B7B6 BFA5 B7AF 9CAF AEA9 B1B2"
	$"AFB0 ACA5 BDBE B6B7 B6B3 B6AC 9DAF 9CA5"
	$"B69F B6AF BFB6 B7B6 A5B8 B6B7 B7A4 A2B7"
	$"B6B6 BDB6 B6A5 A5BF A89C B8FE B71C AEAF"
	$"B8B3 B5B6 B6AB ADB7 B1A5 A4B7 B5B4 AFB0"
	$"B6AF A7B3 B8B7 BEA8 B7B0 B80B B8A5 6497"
	$"B1B0 AFAD A6BD AF5F FD5B 1F8F AFAF 9CA5"
	$"B69F B6AF BFB0 A2B6 A5B8 B6B7 B7BF A5B7"
	$"B6B6 BDB6 B690 A4BF AFAE B8FE B70B AE99"
	$"B7AF A6B6 B7B6 BFA5 B772 FD5B 3CB1 B2AF"
	$"9EA4 A5BD BEB6 B7B6 B3B6 B6AF AF9C A5A5"
	$"97B6 AFBF B6B7 B68A 5B5B 64AD BFA5 B7B6"
	$"B6BD B6B6 A5A5 BFAF AE9C AEB7 B7AE AFB8"
	$"AFA6 B6B7 B6BF A5B7 AFB8 FF9F 0AAB BFB6"
	$"B7B6 A5B8 B68F 0E03 EA00 5B4A 962F 7797"
	$"7C85 8D84 848C 7C8E 8397 7959 4144 5D94"
	$"7B85 8584 848E 7A7B 857B 738D 8497 8C7C"
	$"847B 5D78 8576 818E 7B86 7B7C 908F 9684"
	$"8384 8D86 607B 7387 9776 977B 9697 8497"
	$"7C85 8D84 8467 768E 8397 948D 837C 7C96"
	$"7168 8584 848E 7A27 7B85 8C88 8D83 8581"
	$"8E7E 7368 8484 887C 7F83 7D75 8A86 968E"
	$"7D84 7C86 8775 0E5C 8D7D 857D 7C90 7A07"
	$"FD00 2E55 7B7B 7387 9776 977B 968D 6597"
	$"7C85 8D84 848C 7C8E 8397 948D 8359 7A96"
	$"7B85 8584 848E 7A5A 837B 738D 8497 8C7C"
	$"8421 FD00 2081 8E7B 696F 7C90 8F96 8483"
	$"848D 977B 7B73 877B 6997 7B96 9784 974F"
	$"0000 0D75 8C7C 288E 8397 948D 837C 7C96"
	$"7B85 5D77 848E 7A7B 857B 738D 8497 8C7C"
	$"847B 8576 7175 9697 8497 7C85 8D67 0A02"
	$"EA00 172B 5928 4A5A 4947 5A50 5059 4950"
	$"5A5A 5B3F 3530 3B58 4851 47FE 5024 5148"
	$"4748 405A 505A 5949 5048 3742 5143 505B"
	$"4952 4E49 535E 5A50 5953 5A52 3C48 4A49"
	$"5A2E 5A17 4859 5A50 5A49 475A 5050 4646"
	$"505A 5A6B 5A5A 4949 5943 4347 FE50 1A51"
	$"4847 535B 5A57 4F4E 544A 473B 4E50 4D51"
	$"4C47 4A43 5751 5B59 4A51 FD49 0917 3D5A"
	$"4A4F 4F49 5353 14FD 111F 3B48 484A 495A"
	$"2F5A 4859 5541 5A49 475A 5050 5949 505A"
	$"5A6B 5A5A 3948 5948 5147 FE50 0B51 3946"
	$"4840 5A50 5A59 4950 20FD 1104 505B 4944"
	$"4844 4953 5E5A 5059 535A 5A48 484A 494D"
	$"2B5A 4859 5A50 5A35 1111 1749 5949 505A"
	$"5A6B 5A5A 4949 5948 5137 4A50 5051 4847"
	$"4840 5A50 5A59 4950 4847 2E48 4559 5A50"
	$"5A49 475A 3E06 01F2 0003 14F9 001B 68B7"
	$"B6AF BFB6 9CAE BFA6 C6BF B6B6 B7AF B6AE"
	$"B6AE AFAF BFB7 BFB6 B6A5 FDAF 05A6 B8AF"
	$"B7AE B8FE AF0D BEB6 B6B7 B1B1 A5AA B6B0"
	$"BFBF AFBE FEB6 3DB8 AEB7 B8AF AFBF B7B6"
	$"AFBF B69C AEBF A6C6 BFB6 B6B7 AFB6 AEB6"
	$"AEAF AFBF B7BF B6B6 A5AF AFB4 AFB0 B1B4"
	$"B1AF B2BA B5BB B8B6 A9B1 AFAF ADA7 B8AF"
	$"B8B0 B7B1 B00C AC6D 92B5 B7B2 B1A6 ABB6"
	$"B0A7 60FE 5B23 6CB6 B8AE B7B8 AFAF BFB7"
	$"B6AF BFB6 9CAE BFA6 C6BF B6B6 B7AF B6AE"
	$"B6AE AFAF BFB7 BFB6 B6A5 FDAF 06A6 B8AF"
	$"B7AE B86F FD5B 0BB3 B7B1 B1A5 AAB6 B0BF"
	$"BFAF BEFE B621 B8AE B7B8 AFAF BFB7 B6AF"
	$"B562 5B66 B0A6 C6BF B6B6 B7AF B6AE B6AE"
	$"AFAF BFB7 BFB6 B6A5 FDAF 07A6 B8AF B7AE"
	$"B8AF AFFF AF0B BFB7 B6AF BFB6 9C88 0D01"
	$"0102 EB00 1B52 8E8D 7B96 977D 8596 739D"
	$"8C97 8D8E 7B97 858D 7A7B 7B96 8E96 838D"
	$"7CFD 7B05 7385 7B84 8585 FE7B 328C 9696"
	$"8E89 8A7B 858D 8496 967C 9197 8D83 8585"
	$"8E85 7B7B 968E 8D7B 9697 7D85 9673 9D8C"
	$"978D 8E7B 9785 8D7A 7B7B 968E 9683 8D7C"
	$"FF7B 2687 7B8A 8587 7D7E 7E8E 898F 858F"
	$"827F 7E7E 7B76 867C 8787 847E 7E77 1A59"
	$"958E 8989 7B86 8D84 7207 FE00 231A 8385"
	$"858E 857B 7B96 8E8D 7B96 977D 8596 739D"
	$"8C97 8D8E 7B97 858D 7A7B 7B96 8E96 838D"
	$"7CFD 7B06 7385 7B84 8585 1DFD 0020 918E"
	$"898A 7B85 8D84 9696 7C91 978D 8385 858E"
	$"857B 7B96 8E8D 7B87 0C00 1280 739D 8C0F"
	$"978D 8E7B 9785 8D7A 7B7B 968E 9683 8D7C"
	$"FD7B 0573 857B 8485 85FD 7B08 968E 8D7B"
	$"9697 7D68 0BFE 01EB 001B 3150 5A48 595A"
	$"4A51 5940 6A59 5A5A 5048 5A51 5A51 4848"
	$"5950 595A 5A49 FD48 0540 4748 5051 47FE"
	$"480D 595A 5A51 4F53 494D 5A50 5959 4A57"
	$"FE5A 0547 5150 4748 4844 5950 5A48 595A"
	$"4A51 5940 6A59 5A5A 5048 5A51 5A51 4848"
	$"5950 595A 5A49 4848 4D48 514E 5451 4B48"
	$"544E 555A 5A4D 4A49 4A48 424A 4951 5247"
	$"4A4A 471E 3C59 514E 5249 4E59 5047 14FE"
	$"1123 1E59 4851 5047 4848 5950 5A48 595A"
	$"4A51 5940 6A59 5A5A 5048 5A51 5A51 4848"
	$"5950 595A 5A49 FD48 0640 4748 5051 471E"
	$"FD11 0458 514F 5349 064D 5A50 5959 4A57"
	$"FE5A 2147 5150 4748 4859 505A 4852 1711"
	$"1A4E 406A 595A 5A50 485A 515A 5148 4859"
	$"5059 5A5A 49FD 4805 4047 4850 5147 FD48"
	$"0B59 505A 4859 5A4A 3F06 0000 01F3 0003"
	$"1DF9 0077 59B8 B6AF B6B6 B7BF B6B7 A5B7"
	$"BFB6 AFAE B8A5 B7B6 B6BF B6BF B6A5 B8A6"
	$"AFA3 B7AF B7B8 9DA6 AFB7 AEAF AFAD ADBB"
	$"A5AC B6A8 B5A5 ADBF B6A5 AEB6 B7AF BFB6"
	$"BFB8 BFBF AFB8 B6AF B6B6 B7BF B6B7 A5B7"
	$"BFB6 AFAE B8A5 B7B6 B6BF B6BF B6A5 B8A6"
	$"AFA3 B2AE B8AB AFB1 B4BD B4BB B4A7 B5AB"
	$"ADA5 B7AE B7B5 A0AA B0B5 AEAF 3E74 7594"
	$"8E7D 797D 7F92 9AAD BEA1 5F5B 5B71 AFBE"
	$"B6BF B8BF BFAF B8B6 AFB6 B6B7 BFB6 B7A5"
	$"B7BF B6AF AEB8 A5B7 B6B6 BFB6 BFB6 A5B8"
	$"A6AF A3B7 AFB7 B89D A6AF B761 FD5B 3CAB"
	$"A5AC B6A8 B5A5 ADBF B6A5 AEB6 B7AF BFB6"
	$"BFB8 BFBF AFB8 B6A7 695B 74B5 B6B7 A5B7"
	$"BFB6 AFAE B8A5 B7B6 B6BF B6BF B6A5 B8A6"
	$"AFA3 B7AF B7B8 9DA6 AFB7 AEAF FFBF 0AAF"
	$"B8B6 AFB6 B6B7 BF8E 0F08 EA00 5B3F 8597"
	$"7B97 978E 8C8D 8487 8496 977B 8585 7C8E"
	$"838D 9697 8C97 7C85 737B 8F84 7B84 8574"
	$"737B 8485 7B7B 838A 927C 8194 8E8A 7B7B"
	$"8C97 777A 978E 7B8C 978C 8596 8C7B 8597"
	$"7B97 978E 8C8D 8487 8496 977B 8585 7C8E"
	$"838D 9697 8C97 7C85 735A 7B8F 7E81 857F"
	$"867E 8891 9287 907E 867A 7B8C 877F 8583"
	$"7577 7F82 847C 2529 5E4E 382F 3642 5468"
	$"7C8B 7306 0000 217B 8C97 8C85 968C 7B85"
	$"977B 9797 8E8C 8D84 8784 9697 7B85 857C"
	$"8E83 8D96 978C 977C 8573 7B8F 847B 8485"
	$"7473 7B84 09FD 0020 7A7C 8194 8E8A 7B7B"
	$"8C97 777A 978E 7B8C 978C 8596 8C7B 8597"
	$"6F17 0026 7E8D 8487 8428 9697 7B85 857C"
	$"8E83 8D96 978C 977C 8573 7B8F 847B 8485"
	$"7473 7B84 857B 968C 7B85 977B 9797 8E8C"
	$"6E0B 07EA 003F 2547 5A48 5A5A 5059 5A50"
	$"4950 595A 4851 4749 505A 5A59 5A59 5A49"
	$"4740 485C 5048 5047 4140 4850 5148 4850"
	$"5165 494F 565B 5847 4859 5A49 515A 5048"
	$"595A 5947 5959 7648 475A 485A 5A50 595A"
	$"5049 5059 5A48 5147 4950 5A5A 595A 595A"
	$"4947 4048 5C4B 4E4A 484B 5255 5657 5455"
	$"4B49 4848 5951 4C51 4742 444A 4F51 4922"
	$"253D 3D2B 272A 343C 3E49 5849 1411 1120"
	$"4859 5A59 4759 5948 475A 485A 5A50 595A"
	$"5049 5059 5A48 5147 4950 5A5A 595A 595A"
	$"4947 4048 5C50 4850 4741 4048 5015 FD11"
	$"0457 494F 565B 4458 4748 595A 4951 5A50"
	$"4859 5A59 4759 5948 475A 431C 1122 525A"
	$"5049 5059 5A48 5147 4950 5A5A 595A 595A"
	$"4947 4048 5C50 4850 4741 4048 5051 4859"
	$"5948 475A 485A 5A50 5946 0604 F200 030A"
	$"F900 0426 B8B6 AFB6 FEAF 0DBF B8B6 AFAE"
	$"B7BF B7AE B6AE B6AE AFFE B72B A5B6 B6AE"
	$"B7AF AFBF AE9C B6A6 9DAF AFA9 B7B5 B4B5"
	$"B6B2 B7B6 B4A7 AFB6 BAAF A5B6 B6AE B7AF"
	$"BFA5 B6BF B8B6 AFB6 FEAF 0DBF B8B6 AFAE"
	$"B7BF B7AE B6AE B6AE AFFE B71E A5B6 B6AE"
	$"B7B9 B4B4 B3A8 B6AC AAB5 B5B3 A9B6 B6AF"
	$"B7B0 B0BD AF9E B5A8 A1AF 80F7 5B12 6482"
	$"AD8E 5B5C A1B6 AEB7 AFBF A5B6 BFB8 B6AF"
	$"B6FE AF0D BFB8 B6AF AEB7 BFB7 AEB6 AEB6"
	$"AEAF FEB7 3CA5 B6B6 AEB7 AFAF BFAE 9CB6"
	$"A689 5B5F 5C5B 5B96 B5B6 B2B7 B6B4 A7AF"
	$"B6BA AFA5 B6B6 AEB7 AFBF A5B6 BFB8 9F66"
	$"5F89 AFAF BFB8 B6AF AEB7 BFB7 AEB6 AEB6"
	$"AEAF FEB7 0EA5 B6B6 AEB7 AFAF BFAE 9CB6"
	$"A69D AFAF 06A5 B6BF B8B6 AFB6 FEAF 02BF"
	$"A46D EA00 041C 8597 7B8D FE7B 0D8C 8583"
	$"7B7A 8E96 847A 8D85 9785 7BFE 8E2B 7C97"
	$"9785 8E7B 7B8C 8573 8373 747B 7B75 8482"
	$"8489 887F 8C8F 927C 7B8D 977B 8783 9785"
	$"8E7B 967C 8D8C 8597 7B8D FE7B 0D8C 8583"
	$"7B7A 8E96 847A 8D85 9785 7BFE 8E02 7C97"
	$"971B 858E 8C81 808A 7F91 8079 8989 887E"
	$"9293 868D 7C7E 8D87 7482 7678 7B37 F700"
	$"120F 397F 5000 0264 9785 8E7B 967C 8D8C"
	$"8597 7B8D FE7B 0D8C 8583 7B7A 8E96 847A"
	$"8D85 9785 7BFE 8E32 7C97 9785 8E7B 7B8C"
	$"8573 8373 5100 0602 0000 5789 887F 8C8F"
	$"927C 7B8D 977B 8783 9785 8E7B 967C 8D8C"
	$"8571 1007 447B 7B8C 8583 7B09 7A8E 9684"
	$"7A8D 8597 857B FE8E 157C 9797 858E 7B7B"
	$"8C85 7383 7374 7B7B 7C8D 8C85 977B 8DFE"
	$"7B02 8C76 4FEA 0004 1247 5A48 5AFE 480D"
	$"5947 5A48 5150 5950 515A 515A 5148 FE50"
	$"2649 5A5A 5150 4848 5951 4A5A 4041 4848"
	$"3F4A 4D4C 4E51 4D5E 5A59 4A49 5A6B 4849"
	$"5A5A 5150 4859 495A 0459 475A 485A FE48"
	$"0D59 475A 4851 5059 5051 5A51 5A51 48FE"
	$"501E 495A 5A51 5053 4D54 574F 5A4C 464E"
	$"4E4C 4957 5750 5049 4C59 524A 5843 4648"
	$"2AF7 1112 182B 5340 1112 495A 5150 4859"
	$"495A 5947 5A48 5AFE 480D 5947 5A48 5150"
	$"5950 515A 515A 5148 FE50 1649 5A5A 5150"
	$"4848 5951 4A5A 4033 1114 1211 1138 4E51"
	$"4D5E 255A 594A 495A 6B48 495A 5A51 5048"
	$"5949 5A59 4748 1814 2F48 4859 475A 4851"
	$"5059 5051 5A51 5A51 48FE 5015 495A 5A51"
	$"5048 4859 514A 5A40 4148 4849 5A59 475A"
	$"485A FE48 0259 3F36 F200 0302 F900 7721"
	$"B8AF 9CC6 BDB7 B7BF B8A5 B6AE B7B5 B6A5"
	$"B7B6 AFB7 BFAF BFBF B6AF 9DB6 BFAF B7A5"
	$"95BD A5B8 B6AF AAB0 B3B9 B4B7 B7AE BBB7"
	$"B6B5 9DAF B7B8 B6AF BFBF B6BF B7B7 A5B6"
	$"B8AF 9CC6 BDB7 B7BF B8A5 B6AE B7B5 B6A5"
	$"B7B6 AFB7 BFAF BFBF B6AF 9DB6 BFB3 B6A5"
	$"ACB8 ACB7 BDAF BABB B5B1 A2B6 BDAF B8A8"
	$"9ABC A4B7 B68D 5BF5 5B73 5E5B 69A1 AFBF"
	$"BEB6 BFB7 B7A5 B6B8 AF9C C6BD B7B7 BFB8"
	$"A5B6 AEB7 B5B6 A5B7 B6AF B7BF AFBF BFB6"
	$"AF9D B6BF AFB7 A595 BDA5 AF67 669A 8D5B"
	$"5B71 B7B7 AEBB B7B6 B59D AFB7 B8B6 AFBF"
	$"BFB6 BFB7 B7A5 AA7D 5B74 BABD B7B7 BFB8"
	$"A5B6 AEB7 B5B6 A5B7 B6AF B7BF AFBF BFB6"
	$"AF9D B6BF AFB7 A595 BDA5 B8B6 AFAA 0CB7"
	$"A5B6 B8AF 9CC6 BDB7 B7BF B887 EA00 5B1B"
	$"857B 7D9D 948E 8E96 857C 9785 8E96 977C"
	$"8497 7B8E 8C7B 8C96 8D7B 748D 8C7B 847C"
	$"6294 7C85 977C 8185 838F 9484 8C7E 9584"
	$"8C96 747B 8E85 837B 9696 8D8C 8484 7C97"
	$"857B 7D9D 948E 8E96 857C 9785 8E96 977C"
	$"8497 7B8E 8C7B 8C96 8D7B 741A 8D8C 8D91"
	$"7C79 967B 8B8F 7B89 928B 7F7B 8B8C 7C87"
	$"7D69 947B 8496 49F4 0057 0400 1464 7C96"
	$"958D 8C84 847C 9785 7B7D 9D94 8E8E 9685"
	$"7C97 858E 9697 7C84 977B 8E8C 7B8C 968D"
	$"7B74 8D8C 7B84 7C62 947C 7814 1167 4E00"
	$"0025 848C 7E95 848C 9674 7B8E 8583 7B96"
	$"968D 8C84 847C 8331 0030 8B94 8E8E 9685"
	$"7C97 2885 8E96 977C 8497 7B8E 8C7B 8C96"
	$"8D7B 748D 8C7B 847C 6294 7C85 977C 8184"
	$"7C97 857B 7D9D 948E 8E96 8566 EA00 3F10"
	$"4748 4A6A 6B50 5059 4749 5A51 5063 5A49"
	$"505A 4850 5948 5959 5A48 415A 5948 5049"
	$"396B 4947 5A48 4C4F 4E52 584D 4F4B 5952"
	$"5559 4148 5047 5A48 5959 5A59 5050 4936"
	$"5A47 484A 6A6B 5050 5947 495A 5150 635A"
	$"4950 5A48 5059 4859 595A 4841 5A59 5A57"
	$"4949 5F48 4D59 4856 5757 4A46 5757 4952"
	$"4A3D 6848 4759 31F4 113B 1311 1949 4859"
	$"595A 5950 5049 5A47 484A 6A6B 5050 5947"
	$"495A 5150 635A 4950 5A48 5059 4859 595A"
	$"4841 5A59 4850 4939 6B49 421B 1840 3511"
	$"1123 4D4F 4B59 4452 5559 4148 5047 5A48"
	$"5959 5A59 5050 4951 2511 2760 6B50 5059"
	$"4749 5A51 5063 5A49 505A 4850 5948 5959"
	$"5A48 415A 5948 5049 396B 4947 5A48 4C50"
	$"495A 4748 4A6A 6B50 5059 473C F200 0314"
	$"F900 020E B8B8 FEB6 15A5 BF9C B6AF B6BF"
	$"B6A5 B6B7 AEB7 B6B7 B6B7 B8BF B7AF 9DFE"
	$"AF23 9CB6 9CA6 B7B7 B1B3 B9B1 AFB7 AAB6"
	$"B0BC B6AF B0B3 B6B4 BFB6 BFBD BFB7 AFB8"
	$"AEBF B69D B8B8 FEB6 31A5 BF9C B6AF B6BF"
	$"B6A5 B6B7 AEB7 B6B7 B6B7 B8BF B7AF 9DAF"
	$"AFA8 ADB7 A8B2 B6B7 B5B6 B8BC B5B1 A0B0"
	$"AFB1 A0B5 9FA8 B7B7 9C5C 5BFE 5B02 6467"
	$"62FB 5B0E 618F B3BF BCBF B7AF B8AE BFB6"
	$"9DB8 B8FE B615 A5BF 9CB6 AFB6 BFB6 A5B6"
	$"B7AE B7B6 B7B6 B7B8 BFB7 AF9D FEAF 239C"
	$"B69C A6B7 9E88 B0B9 B196 695B 8AB0 BCB6"
	$"AFB0 B3B6 B4BF B6BF BDBF B7AF B8AE AD7E"
	$"5D7D A7FE B615 A5BF 9CB6 AFB6 BFB6 A5B6"
	$"B7AE B7B6 B7B6 B7B8 BFB7 AF9D FEAF 089C"
	$"B69C A6B7 B7B1 B3B9 04BF B69D B8B8 FEB6"
	$"04A5 BF9C B68F EA00 1B0A 8585 8D8D 9787"
	$"8C7D 8D7B 8D96 8D7C 978E 858E 838E 9784"
	$"8596 847B 74FE 7B3C 738D 737C 8584 8D83"
	$"8F7E 8684 8188 808F 8C7C 848C 838C 968D"
	$"9694 968E 7B85 858C 8D74 8585 8D8D 9787"
	$"8C7D 8D7B 8D96 8D7C 978E 858E 838E 9784"
	$"8596 847B 74FF 7B18 7C8B 8E7F 8984 8B94"
	$"8487 9084 7D77 7E7C 7F77 8A76 7E85 8568"
	$"02FD 0002 0F12 0BFB 0027 094E 8996 9396"
	$"8E7B 8585 8C8D 7485 858D 8D97 878C 7D8D"
	$"7B8D 968D 7C97 8E85 8E83 8E97 8485 9684"
	$"7B74 FE7B 2C73 8D73 7C85 614A 7F8F 7E5E"
	$"1400 4780 8F8C 7C84 8C83 8C96 8D96 9496"
	$"8E7B 8585 7336 0431 6D8D 8D97 878C 7D8D"
	$"7B8D 0F96 8D7C 978E 858E 838E 9784 8596"
	$"847B 74FE 7B15 738D 737C 8584 8D83 8F8C"
	$"8D74 8585 8D8D 9787 8C7D 8D65 EA00 0206"
	$"4747 FE5A 1549 594A 5A48 5A59 5A49 5A50"
	$"5150 5A50 5A50 4759 5048 41FE 4820 4A5A"
	$"4A49 5150 5455 6049 5150 4A55 4D59 5A52"
	$"505A 5A54 595A 596B 5950 4847 5159 5A02"
	$"4147 47FE 5A30 4959 4A5A 485A 595A 495A"
	$"5051 505A 505A 5047 5950 4841 4848 4955"
	$"534F 4E57 5058 514D 5550 4A43 4B49 4B4D"
	$"594B 4B52 5143 12FD 1102 171A 16FB 110E"
	$"1536 5859 6A59 5048 4751 595A 4147 47FE"
	$"5A15 4959 4A5A 485A 595A 495A 5051 505A"
	$"505A 5047 5950 4841 FE48 104A 5A4A 4951"
	$"3F34 5360 493E 1B11 344D 595A 1252 505A"
	$"5A54 595A 596B 5950 4847 514C 2D13 253D"
	$"FE5A 1549 594A 5A48 5A59 5A49 5A50 5150"
	$"5A50 5A50 4759 5048 41FE 480D 4A5A 4A49"
	$"5150 5455 6059 5A41 4747 FE5A 0449 594A"
	$"5A3B F200 031D F800 1988 B7BD B7B6 B6B7"
	$"AFB7 AFB6 B7B6 AEAE B6B8 B7B6 AEA6 AFB7"
	$"AEAF A6FE AF1A A5BF AFAF A0B5 B6B7 B7BC"
	$"B5B0 B1B7 ACA7 AFAF A4AD B6AF B7B6 9DAE"
	$"BFFE B71E B8B6 B6AF C69C B7BD B7B6 B6B7"
	$"AFB7 AFB6 B7B6 AEAE B6B8 B7B6 AEA6 AFB7"
	$"AEAF A6FE AF19 ABB3 B4B5 B0B6 B0AA B1B8"
	$"B0AF A8B1 AEAE A7BC ADAF A3B4 B669 6883"
	$"1097 A3B1 B7AD A8AB 9A7F 6761 86B1 B69E"
	$"AEBF FEB7 1EB8 B6B6 AFC6 9CB7 BDB7 B6B6"
	$"B7AF B7AF B6B7 B6AE AEB6 B8B7 B6AE A6AF"
	$"B7AE AFA6 FEAF 1AA5 BFAF AFA0 B5B6 B7B7"
	$"BCB5 B0B0 986F 80AF AF88 6E8C AFB7 B676"
	$"7ABF FEB7 1EB8 9B66 85BA 9CB7 BDB7 B6B6"
	$"B7AF B7AF AA3A 70AE AEB6 B8B7 B6AE A6AF"
	$"B7AE AFA6 FEAF 09A5 BFAF AFA0 B5A4 74B7"
	$"BC0C B6AF C69C B79B 6267 A4B7 AFB7 92E9"
	$"0019 6D84 9484 8D8D 847B 8E7B 838E 8D85"
	$"858D 8584 9785 737B 8485 7B73 FE7B 0F7C"
	$"8C7B 7B7A 8C84 8587 9383 867C 857C 7DFE"
	$"7B2A 7D83 8884 8374 8596 848E 8E85 838D"
	$"7B9D 7D84 9484 8D8D 847B 8E7B 838E 8D85"
	$"858D 8584 9785 737B 8485 7B73 7BFF 7B11"
	$"8287 8782 8194 8578 7E88 857D 757D 7B7B"
	$"7C89 FE7B 378B 8414 143D 5870 7D86 7D7D"
	$"765C 3D13 0944 7B83 7585 9584 8E8E 8583"
	$"8D7B 9D7D 8494 848D 8D84 7B8E 7B83 8E8D"
	$"8585 8D85 8497 8573 7B84 857B 73FE 7B2D"
	$"7C8C 7B7B 7A8C 8485 8793 8386 7A59 1F3C"
	$"7B7B 664F 6588 8483 575D 9684 8E8E 855B"
	$"113E 8B7D 8494 848D 8D84 7B8E 7B7A 0E2D"
	$"5785 858D 8584 9785 737B 8485 7B73 FE7B"
	$"167C 8C7B 7B7A 8C77 5487 938D 7B9D 7D84"
	$"7946 507F 847B 8E67 E900 1941 506B 505A"
	$"5A50 4850 485A 505A 5151 5A47 505A 5140"
	$"4850 5148 40FE 4801 4959 FE48 0A59 514C"
	$"4B56 494E 4E4B 4B4A FE48 0754 5A51 4F5A"
	$"4151 59FE 5003 475A 5A48 1A6A 4A50 6B50"
	$"5A5A 5048 5048 5A50 5A51 515A 4750 5A51"
	$"4048 5051 4840 FE48 1C4E 5454 474E 5A51"
	$"4349 514F 4943 4949 4849 5648 4A4A 5851"
	$"1A19 2E37 444E FE4B 0A46 3A2D 1B16 324B"
	$"5A42 5159 FE50 1E47 5A5A 486A 4A50 6B50"
	$"5A5A 5048 5048 5A50 5A51 515A 4750 5A51"
	$"4048 5051 4840 FE48 0149 59FE 480C 5951"
	$"4C4B 5649 4E4D 3820 2C48 4808 3C35 4551"
	$"4F5A 3139 59FE 501E 4744 1A2D 604A 506B"
	$"505A 5A50 4850 4854 1937 5151 5A47 505A"
	$"5140 4850 5148 40FE 4801 4959 FE48 1159"
	$"4930 4B56 5A48 6A4A 5058 2B33 5150 4850"
	$"3CF2 0003 20F8 0076 95BF AEAE B6B6 B8A5"
	$"AFB5 AFA6 B6A5 B7B7 BFBF B6BF B8BF B7B7"
	$"AFB6 AFAF B8AF B7B7 AAA8 B6BB AEB7 B6A5"
	$"B4B2 B7A5 9DAF A6B2 B7AE BABD AEB6 AFB6"
	$"B7B8 AFB7 B7A3 AFB8 B6BF AEAE B6B6 B8A5"
	$"AFB5 AFA6 B6A5 B7B7 BFBF B6BF B8BF B7B7"
	$"AFB6 AFAF B8A8 B7B7 B9B9 B6BE B5BD B7B3"
	$"B0B5 B1AD B3AF B4B6 ACA9 B7BB AAB7 B57F"
	$"A7B4 B2B6 A69F AEA6 B2B7 ABBA BDAE B6AF"
	$"B6B7 B8AF B7B7 A3AF B8B6 BFAE AEB6 B6B8"
	$"A5AF B5AF A6B6 A5B7 B7BF BFB6 BFB8 BFB7"
	$"B7AF B6AF AFB8 AFB7 B7AA A8B6 BBAE B7B6"
	$"A5B4 B2B7 A59C AFA6 8800 1ABA BDAE 1B4B"
	$"B6B7 B8AF B7B6 A3AF B8B6 BFAE AEB6 B6B8"
	$"A5AF B58F 003A A5B7 B7BF BFB6 BFB8 BFB7"
	$"B7AF B6AF AFB8 AFB7 B7AA A865 1500 B7B6"
	$"0DA3 AFB8 B679 030C 060C 9DA5 AFB5 06EA"
	$"005A 7C96 8585 9797 857C 7B96 7B73 837C"
	$"848E 9696 8D96 8596 848E 7B97 7B7B 857B"
	$"8E8E 8579 918E 8584 947E 8184 847C 747B"
	$"7C84 8D7B 9194 858D 7B8D 8485 7B84 848F"
	$"7B85 9796 8585 9797 857C 7B96 7B73 837C"
	$"848E 9696 8D96 8596 848E 7B97 7B7F 7B85"
	$"7C87 8E91 8E8E 9485 9288 8A7C 937D 7B82"
	$"7B8B 8D86 7991 8F7F 8592 7F81 8483 7D75"
	$"7C7C 848D 7691 9486 8D7B 8D84 857B 8484"
	$"8F7B 8597 9685 8597 9785 7C7B 967B 7383"
	$"7C84 8E96 968D 9685 9684 8E7B 977B 7B85"
	$"7B8E 8E85 7991 8E85 8494 7E81 8484 7C72"
	$"7B7C 6500 1291 9485 1535 8D84 857B 8482"
	$"8F7B 8597 9685 8597 9785 7C7B 9665 2900"
	$"2A7C 848E 9696 8D96 8596 848E 7B97 7B7B"
	$"857B 8E8E 8579 5010 0084 948F 7B85 975F"
	$"0209 050A 717C 7B96 04EA 003E 4A59 5151"
	$"5A5A 4749 4863 4840 5A49 5050 5959 5A59"
	$"4759 5050 485A 4848 4748 5050 5341 5354"
	$"5047 594A 514A 5049 4148 494C 5A48 596B"
	$"515A 485A 5047 4850 505C 487F 475A 5951"
	$"515A 5A47 4948 6348 405A 4950 5059 595A"
	$"5947 5950 5048 5A48 4847 4950 5057 5258"
	$"5849 5552 4F4A 574A 4846 484F 4F54 4254"
	$"574D 4957 4B51 4A4F 4942 4949 4C5A 4659"
	$"6A51 5A48 5A50 4748 5050 5C48 475A 5951"
	$"515A 5A47 4948 6348 405A 4950 5059 595A"
	$"5947 5950 5048 5A48 4847 4850 5053 4153"
	$"5450 4759 4A51 4A50 4940 4849 453A 000B"
	$"596B 510D 1F5A 5047 4850 4F5C 4847 5A59"
	$"5151 5A5A 4749 4863 3B00 1D49 5050 5959"
	$"5A59 4759 5050 485A 4848 4748 5050 5341"
	$"2E0A 0047 595C 4847 5A39 0105 0306 3C49"
	$"4863 03F3 0003 20F8 0008 7DBD AFB6 A5A5"
	$"B6BF B6FE AFFF A526 BDB6 B7B7 B6B8 A5B8"
	$"B6AF B6C6 B7B6 B7A5 AFB5 B2B2 ADB0 B5B6"
	$"BAAF AFB1 B0BF AEA6 AFB6 B7C2 B6B6 AFFE"
	$"BF10 B7AF B6B7 AFAF B7B7 BFBD AFB6 A5A5"
	$"B6BF B6FE AFFF A510 BDB6 B7B7 B6B8 A5B8"
	$"B6AF B6C6 B7B6 B7A5 B9FE B614 B4B6 A9B8"
	$"B7AF B5C2 B6B8 B5A5 AFB5 B3B4 AEB1 B4B7"
	$"BAFF B01F B1B0 BEAE A6AF B6B7 C2B6 B6AF"
	$"BEBF BFB7 AFB6 B7AF AFB7 B7BF BDAF B6A5"
	$"A5B6 BFB6 FEAF FFA5 58BD B6B7 B7B6 B8A5"
	$"B8B6 AFB6 C6B7 B6B7 A5AF B5B2 B2AD B0B5"
	$"B6BA AFAF B1B0 BFAE A6AF B616 009C B68F"
	$"008C BFB7 9E79 779B AFB7 9693 B777 8BA5"
	$"A080 7995 AFA3 6782 A5BD B68F 7480 AFA5"
	$"B895 87B6 9477 AAB7 A5AF B5B2 B22F 0C00"
	$"B6BA 0DAF B7B7 BF13 08AA 7900 40BF B6AF"
	$"26EA 0008 6294 7B97 7C7C 978C 97FE 7BFF"
	$"7C3A 9497 8484 8D85 8785 8D7B 839D 8E83"
	$"8E7C 7B88 7D89 797D 9292 8B7B 7B82 7C96"
	$"8573 7C91 8795 868C 7B96 8C96 847B 8D84"
	$"7B7B 848E 9694 7B97 7C7C 978C 97FE 7BFF"
	$"7C0C 9497 8484 8D85 8785 8D7B 839D 8E3D"
	$"838E 7C8C 9382 8588 838A 888D 7B81 988B"
	$"868C 7B7B 897E 8B7B 7F90 928B 7D7C 817D"
	$"9584 737C 9188 9586 8C7B 958C 9684 7B8D"
	$"847B 7B84 8E96 947B 977C 7C97 8C97 FE7B"
	$"FF7C 3C94 9784 848D 8587 858D 7B83 9D8E"
	$"838E 7C7B 887D 8979 7D92 928B 7B7B 827C"
	$"9685 737C 9110 0073 8C65 0067 9684 6F5E"
	$"566D 7B84 7473 8F54 737C 786A 597C 7B73"
	$"2948 627C 9497 6754 637F 8785 745F 8376"
	$"5C7A 8E7C 7B88 7D89 2108 0092 8B7B 848E"
	$"960F 068D 5B00 358C 977B 1BEA 0008 3A6B"
	$"485A 4949 5A59 5AFE 48FF 4926 6B5A 5050"
	$"5A47 4947 5A48 5A6A 505A 5049 4852 4A50"
	$"4648 5756 5848 484F 4859 5140 4856 4A64"
	$"585A 48FE 5906 5048 5A50 4848 5009 5059"
	$"6B48 5A49 495A 595A FE48 FF49 366B 5A50"
	$"505A 4749 475A 485A 6A50 5A50 4960 584E"
	$"5055 474C 4A5A 4856 654E 5A50 4848 534A"
	$"5348 4A55 5658 4949 4E49 5850 4048 564B"
	$"6457 5A48 FE59 1050 485A 5048 4850 5059"
	$"6B48 5A49 495A 595A FE48 FF49 206B 5A50"
	$"505A 4749 475A 485A 6A50 5A50 4948 524A"
	$"5046 4857 5658 4848 4F48 5951 4048 4556"
	$"0900 4B5A 3B00 4159 5041 3C34 4048 5042"
	$"4468 3145 4947 3F39 4A48 432A 3A49 6B5A"
	$"3E33 3F44 4947 4A37 5A4F 3454 5049 4852"
	$"4A50 1305 0056 5848 5050 590A 0354 3600"
	$"2059 5A48 10F3 0003 20F8 0014 53BF B8BF"
	$"B7BF BFAE BFB6 AFA5 AFB7 BFB6 AEB6 AEB6"
	$"B8FE B6FF BF12 B7AF B6B5 AEB7 B6A7 B6B3"
	$"BCB7 B7AF AEA9 B6AE A6FE AF24 B8B3 B0B6"
	$"A5BF B7A3 AFBF B6B8 AEAF B8AF B7BF B8BF"
	$"B7BF BFAE BFB6 AFA5 AFB7 BFB6 AEB6 AEB6"
	$"B8FE B6FF BF1C B7AF B6B6 BAB6 B0B2 B0B5"
	$"B9B6 B6B5 BCBB B7AF B3B4 AEB6 B6A8 B5B3"
	$"BAB8 B7FF AE03 ABB6 AFA6 FEAF 24B8 B3B0"
	$"B6A5 BFB7 A3AF BFB6 B8AE AFB8 AFB7 BFB8"
	$"BFB7 BFBF AEBF B6AF A5AF B7BF B6AE B6AE"
	$"B6B8 FEB6 FFBF 12B7 AFB6 B5AE B7B6 A7B6"
	$"B3BC B7B7 AFAE A9B6 AEA6 FEAF 3647 0061"
	$"B650 10B4 A378 0612 2203 6FB8 2F00 2300"
	$"008C 3010 2F10 B687 0040 B7B9 3100 2B0C"
	$"0F90 B631 002C 0000 1EB6 B5AE B7B6 A7B6"
	$"3000 B7B7 0DAF B8AF 9600 28BF AE00 10AE"
	$"BFB6 6FEA 005A 3C96 8596 8496 9685 968D"
	$"7B7C 7B8E 968D 8597 8597 8583 8D8D 9696"
	$"847B 8389 7F8D 877C 8A88 898E 847B 8381"
	$"8E85 737B 7B7F 8581 7B8D 878C 848F 7B8C"
	$"9785 857B 857B 8496 8596 8496 9685 968D"
	$"7B7C 7B8E 968D 8597 8597 8583 8D8D 9696"
	$"847F 7B83 8C8F 8D86 9086 9386 858B 8992"
	$"9286 7D80 877E 8B87 7D88 8989 8E84 7D82"
	$"828F 8574 7B7B 7F85 827B 8D87 8C84 8F7B"
	$"8C97 8585 7B85 7B84 9685 9684 9696 8596"
	$"8D7B 7C7B 8E96 8D85 9785 9785 838D 8D96"
	$"9684 7B83 897F 8D87 7C8A 8889 8E84 7B83"
	$"818E 8573 7B7B 7F33 0044 8D42 0C82 8F54"
	$"040F 1902 4E85 2100 1C00 0065 260C 240C"
	$"8D5F 2900 2D8E 9126 0024 090C 6883 2600"
	$"2300 0015 8389 7F8D 877C 8A25 008E 847B"
	$"857B 6C00 1D96 7E00 0C85 968D 4EEA 0014"
	$"2459 4759 5059 5951 595A 4849 4850 595A"
	$"515A 515A 47FE 5AFF 5924 5048 594F 4D50"
	$"5A49 5055 5650 4648 504D 5A51 4048 4849"
	$"4957 495A 4959 505C 4859 5A47 5148 4715"
	$"4850 5947 5950 5959 5159 5A48 4948 5059"
	$"5A51 5A51 5A47 FE5A FF59 4A50 4859 5055"
	$"5753 5651 594B 5856 5657 5752 4A55 4E4C"
	$"4F58 4B4F 5655 5147 4A4F 4E5A 5041 4848"
	$"4949 5749 5A49 5950 5C48 595A 4751 4847"
	$"4850 5947 5950 5959 5159 5A48 4948 5059"
	$"5A51 5A51 5A47 FE5A FF59 1450 4859 4F4D"
	$"505A 4950 5556 5046 4850 4D5A 5140 4848"
	$"4549 1C00 285A 2307 4F5C 3103 090D 012E"
	$"4713 0010 0000 3D16 0716 075A 3700 1A50"
	$"5618 0015 0507 375A 1800 1500 000C 594F"
	$"4D50 5A49 5017 0050 4648 4748 4200 1059"
	$"4C00 0751 595A 2EF3 0003 1AF8 000D 20BF"
	$"AF9D BFB6 BFB6 B7BF B8B7 B7BD FDB6 3BB7"
	$"BFAF AEC6 BCB0 B7BB B4B7 AFAE AFBC B6B3"
	$"B6B7 AFB5 BEB4 A6AF B7A5 B7BF B6AE A6B6"
	$"B6AE B6AF B6AF BFAF AEBF B8AE 9DAF BFAF"
	$"9DBF B6BF B6B7 BFB8 B7B7 BDFD B61A B7BF"
	$"AFAE C6BC B0B7 BBB4 B7B9 B4B4 B8B6 B6BD"
	$"B1AE C2BC B1B4 B9B4 B4FE B006 BAB4 B3B6"
	$"B6B0 B426 BDB4 A8AF B6A6 B7BE B5AE A7B6"
	$"B5AE B6AF B6AF BFAF AEBF B8AE 9DAF BFAF"
	$"9DBF B6BF B6B7 BFB8 B7B7 BDFD B654 B7BF"
	$"AFAE C6BC B0B7 BBB4 B7AF AEAF BCB6 B3B6"
	$"B7AF B5BE B4A6 AFB7 A5B7 BFB6 8000 2BB6"
	$"1A46 AFB0 0C0D A3AE 330C A92A 0088 722A"
	$"7300 7CB6 B4BF 8D00 43BD 6200 4FB6 9900"
	$"1EAE 3600 6AB1 2000 A2AF AEAF BCB6 B331"
	$"00AF B50D B8AE 9D87 002F 9DBF 0000 B6B7"
	$"BFA4 EA00 5A16 8C7B 7496 838C 8D84 9685"
	$"8E8E 9497 978D 8D8E 967B 859D 9D7B 8488"
	$"8784 8C7F 7B94 8A94 9786 7B95 9186 7D7B"
	$"847C 8496 8386 7397 8D85 977B 8D7B 967B"
	$"8596 8585 747B 8C7B 7496 838C 8D84 9685"
	$"8E8E 9497 978D 8D8E 967B 859D 9D7B 8488"
	$"7F87 8492 908F 8F8C 8F96 7E83 9B9B 7D83"
	$"8687 838B 827C 9287 9496 867E 9391 857F"
	$"7B84 7D84 9582 8674 968C 8597 7B8D 7B96"
	$"7B85 9685 8574 7B8C 7B74 9683 8C8D 8496"
	$"858E 8E94 9797 8D8D 8E96 7B85 9D9D 7B84"
	$"8887 848C 7F7B 948A 9497 867B 9591 867D"
	$"7B84 7C84 9683 6200 248D 143A 7B89 080A"
	$"7385 2809 811F 0064 501F 5B00 5B8D 8296"
	$"6629 0034 9451 003D 8D77 0015 852A 004A"
	$"8017 0075 8C7F 7B94 8A94 2900 7B95 8585"
	$"745F 0021 7496 0000 8D84 9676 EA00 0D0D"
	$"5948 4159 5A59 5A50 5947 5050 6BFD 5A2C"
	$"5059 4851 6A74 4850 554D 4B4F 4C48 6950"
	$"585A 4848 5957 544B 4850 4950 595A 5140"
	$"5A5A 515A 485A 4859 4851 5947 510E 4148"
	$"5948 4159 5A59 5A50 5947 5050 6BFD 5A4B"
	$"5059 4851 6A74 4850 554D 4B63 5655 5E57"
	$"5259 484F 666E 4A4F 534D 4B4F 4E4A 664E"
	$"585A 494A 5857 534C 4850 4A50 5959 5141"
	$"5959 515A 485A 4859 4851 5947 5141 4859"
	$"4841 595A 595A 5059 4750 506B FD5A 1C50"
	$"5948 516A 7448 5055 4D4B 4F4C 4869 5058"
	$"5A48 4859 5754 4B48 5049 5059 455A 3B00"
	$"155A 0C23 4857 0506 4351 1805 4E12 0040"
	$"2F12 3600 3A5A 4F59 3700 1D6B 3000 275A"
	$"4300 0C51 1D00 2B4D 0E00 424F 4C48 6950"
	$"5818 0048 5947 5141 3700 1341 5900 005A"
	$"5059 3FF3 0003 11F7 000D 8FB6 B7B7 BFB7"
	$"BFBF AFBD AE9C AEB8 FDB6 FEB7 38A4 B7B8"
	$"AEB8 B9BC A3B0 AFB7 A5B6 BDB8 B8AF B2B8"
	$"A6BF B7AF 9CAF AFAE B6AE B7BF B6B6 AEBF"
	$"A5AE B6B8 BFB6 96B8 B7B6 B7B7 BFB7 BFBF"
	$"AFBD AE9C AEB8 FDB6 FEB7 20A4 B7B8 AEB8"
	$"B9BC ABB6 B4B6 B2B6 B8B7 B7A6 B6B8 ADB9"
	$"B9BA A2B0 AFB6 A7B5 BCB9 B8B0 27B2 B8A6"
	$"BEB7 AF9E AFAE AEB6 AEB7 BFB6 B6AE BFA5"
	$"AEB6 B8BF B696 B8B7 B6B7 B7BF B7BF BFAF"
	$"BDAE 9CAE B8FD B6FE B750 A4B7 B8AE B8B9"
	$"BCA3 B0AF B7A5 B6BD B8B8 AFB2 B8A6 BFB7"
	$"AF9C AFAF AB0F 038D 0080 B688 0016 575B"
	$"2E00 8F29 009F B6B7 B40D 002D 79AF 9100"
	$"39AE 3500 85B6 B615 00A5 2C00 9FAE 3200"
	$"A3A3 B0AF B7A5 B633 00B8 AF0D BFB6 968D"
	$"0031 B7B7 0000 BFBF AFA5 E900 5967 8D84"
	$"8E96 848C 8C7B 9485 7D85 858D 9797 8D84"
	$"8E8E 8F87 8585 8883 8B84 7D7B 847B 8C95"
	$"8885 7B7E 857C 8C84 7B7D 7B7B 8597 858E"
	$"968D 8D85 9687 8597 858C 9763 8584 8D84"
	$"8E96 848C 8C7B 9485 7D85 858D 9797 8D84"
	$"8E8E 8F87 8585 887F 838B 8583 8892 908D"
	$"888D 8C8B 8585 8389 8389 837D 7B84 7E8B"
	$"9489 867C 7F86 7D8C 857C 7E7C 7A85 9685"
	$"8E96 8D8D 8596 8785 9785 8C97 6385 848D"
	$"848E 9684 8C8C 7B94 857D 8585 8D97 978D"
	$"848E 8E8F 8785 8588 838B 847D 7B84 7B8C"
	$"9588 857B 7E85 7C8C 847B 7D7B 7B83 0C02"
	$"6D00 638D 6800 1242 4B21 0076 1B00 728D"
	$"848C 0A00 2159 7B72 2900 2E85 2600 6F97"
	$"8D0F 0080 2700 7385 2500 7884 7D7B 847B"
	$"8C28 0085 7B8C 9763 6600 2684 8E00 008C"
	$"8C7B 81E9 000D 3E5A 5050 5950 5959 486B"
	$"514A 5147 FD5A FE50 0D5C 5147 575A 4954"
	$"5048 4950 494F 57FE 4817 4750 4959 5048"
	$"4A48 4851 5A51 5059 5A5A 5159 4951 5A47"
	$"595A 0F2F 4750 5A50 5059 5059 5948 6B51"
	$"4A51 47FD 5AFE 5048 5C51 4757 5A49 5451"
	$"4756 5756 5752 4E4E 584F 4955 5A4A 524F"
	$"4849 504B 4F56 4A4A 4948 5149 5951 484B"
	$"4947 515A 5150 595A 5A51 5949 515A 4759"
	$"5A2F 4750 5A50 5059 5059 5948 6B51 4A51"
	$"47FD 5AFE 500D 5C51 4757 5A49 5450 4849"
	$"5049 4F57 FE48 0747 5049 5950 484A 4845"
	$"4850 0701 3D00 3F5A 4000 0A28 2D12 0047"
	$"0D00 455A 504F 0600 1539 4852 001B 5114"
	$"0042 5A5A 0900 4819 003E 5718 0049 5048"
	$"4950 494F 1800 4848 595A 2F37 0018 5050"
	$"0000 5959 485E F300 031D F700 3485 BFAF"
	$"B69C AEB8 B7AE AFB7 BFAF AEAF B6B6 A6B7"
	$"AFB0 AFB6 B3B9 B7B0 B6A3 9DBF AFBF B6B8"
	$"B7B1 BA9E A6B6 9CAF AEC6 B6AE A5BF BDAE"
	$"B79C FEAF FFBF 36B6 A5B7 B7AF B8B6 BFAF"
	$"B69C AEB8 B7AE AFB7 BFAF AEAF B6B6 A6B7"
	$"AFB0 AFB6 B3B9 B7B0 B6AC AAB3 B4B8 AAB7"
	$"B1B0 B1B2 B1B8 B3B0 B5A8 A0BD AEBF FEB7"
	$"01AF B90E 9FA7 B79E AFAE C5B6 AEA6 BFBD"
	$"AEB7 9CFE AFFF BF6B B6A5 B7B7 AFB8 B6BF"
	$"AFB6 9CAE B8B7 AEAF B7BF AFAE AFB6 B6A6"
	$"B7AF B0AF B6B3 B9B7 B0B6 A39D BFAF BFB6"
	$"B8B7 B1BA 9EA6 B69C AFAE C6B6 AEA5 4300"
	$"2209 97AF 8700 1346 423C 439C 2F00 9EBF"
	$"AFB6 7D3D 0600 7C87 0046 AF2F 008C B6A6"
	$"1800 992F 009B B932 009E A39D BFAF BFB6"
	$"3200 B1BA FFB7 0BAF 9700 2DAF B000 0CB8"
	$"B7AE 86E9 0034 6E8C 7B8D 7D85 858E 857B"
	$"8496 7B85 7B83 977C 847C 857B 8782 868A"
	$"858C 8F74 8C7B 8B8E 948E 8895 7473 9773"
	$"7B85 9D97 7A7C 9694 858E 7DFE 7BFF 961F"
	$"977C 848E 7B85 978C 7B8D 7D85 858E 857B"
	$"8496 7B85 7B83 977C 847C 857B 8782 868A"
	$"2A85 8C80 817F 8194 8088 8086 8083 7F89"
	$"8683 8B91 798A 7B8C 8F93 8E87 9375 7497"
	$"757D 859C 977A 7C96 9485 8E7D FE7B FF96"
	$"4F97 7C84 8E7B 8597 8C7B 8D7D 8585 8E85"
	$"7B84 967B 857B 8397 7C84 7C85 7B87 8286"
	$"8A85 8C8F 748C 7B8B 8E94 8E88 9574 7397"
	$"737B 859D 977A 7C35 001A 0779 7B5F 000F"
	$"3737 2D30 7921 0083 8C7B 8D64 2F04 005F"
	$"5F29 0037 7B24 0065 977C 1200 7321 0071"
	$"8625 0079 8F74 8C7B 8B8E 2800 8895 848E"
	$"7B6D 0021 7B89 0009 858E 855E E900 3442"
	$"5948 5A4A 5147 5051 4850 5948 5148 5A5A"
	$"494F 4852 4854 5552 5452 595C 4159 4859"
	$"5A5A 5054 6742 405A 4A48 516A 5A51 4959"
	$"6B51 504A FE48 FF59 035A 4950 5046 4847"
	$"5A59 485A 4A51 4750 5148 5059 4851 485A"
	$"5A49 4F48 5248 5455 5254 5259 4D4D 4C56"
	$"5A4D 514A 524E 5151 5352 5058 5E44 5848"
	$"595C 5950 5365 4241 5A4B 4951 695A 5149"
	$"596B 5150 4AFE 48FF 5933 5A49 5050 4847"
	$"5A59 485A 4A51 4750 5148 5059 4851 485A"
	$"5A49 4F48 5248 5455 5254 5259 5C41 5948"
	$"595A 5A50 5467 4240 5A4A 4851 6A5A 4551"
	$"491F 0010 0448 4837 0009 2021 1B1D 4413"
	$"004E 5948 5A3B 1D02 003A 3700 2048 1600"
	$"455A 490B 0047 1300 4A52 1700 4D5C 4159"
	$"4859 5A18 0054 6750 5048 3A00 1548 5700"
	$"0547 5051 37F3 0003 1DF7 0075 9FB7 B8B7"
	$"AE96 BFA5 AFB7 AEB8 A5A6 B7B7 AEB7 A4BA"
	$"9EA4 B4B7 B7B0 B9B7 AFA6 AFB0 B7AE B7BE"
	$"B6B6 B79D B6A5 AEB7 B8B6 A5A5 B6BF AEB6"
	$"B7B7 B6AF AFB6 AFBF AFB7 BFAF AFB7 B8B7"
	$"AE96 BFA5 AFB7 AEB8 A5A6 B7B7 AEB7 A4BA"
	$"9EA4 B4B7 B7B0 B9B7 A8A6 B5B5 B0B5 A8BB"
	$"A3A7 B5B3 B7AE B7B7 B0A8 AEAF B7B0 B6BD"
	$"B6B6 7FB7 9EB6 A6AE B7B8 B6A6 A5B6 BFAE"
	$"B6B7 B6B6 AFAF B6AF BFAF B7BF AFAF B7B8"
	$"B7AE 96BF A5AF B7AE B8A5 A6B7 B7AE B7A4"
	$"BA9E A4B4 B7B7 B0B9 B7AF A6AF B0B7 AEB7"
	$"BEB6 B6B7 9DB6 A5AE B7B8 B6A5 A57C 0000"
	$"40B7 B7A4 0015 B3AF BFAF B734 0098 B7B8"
	$"B7AE 9696 0057 8D00 43A5 4800 6BAE AB03"
	$"0C9C 2C00 9FB7 3000 9FAF A6AF B0B7 AE32"
	$"00B6 B60D 9E74 93AA 0C0C B290 002A BFA5"
	$"AF7B E900 596F 8E85 8E85 638C 7C7B 8E85"
	$"857C 7384 8485 8573 8D6C 7C8A 888E 808D"
	$"8C7B 737B 7A8F 7A8D 9096 978E 7497 7C85"
	$"8485 977C 878D 9685 9784 848D 7B7B 8D7B"
	$"8C7B 8E8C 7B7B 8E85 8E85 638C 7C7B 8E85"
	$"857C 7384 8485 8573 8D6C 7C8A 888E 807F"
	$"8D8C 7C73 8282 8783 798E 7481 8B85 8F7F"
	$"8C8B 7C78 7B7B 8F7D 8C91 9596 8E74 957D"
	$"8484 8597 7D87 8C96 8597 8483 8D7B 7B8D"
	$"7B8C 7B8E 8C7B 7B8E 858E 8563 8C7C 7B8E"
	$"8585 7C73 8484 8585 738D 6C7C 8A88 8E80"
	$"8D8C 7B73 7B7A 8F7A 8D90 9697 8E74 977C"
	$"8584 8597 7C87 6000 0035 8484 7F00 0E8B"
	$"7B8C 7B8E 2600 6B8E 858E 8563 6E00 3D6D"
	$"2900 317C 3200 4D85 7C02 096A 2200 768E"
	$"2300 797B 737B 7A8F 7A26 0096 976F 5A6C"
	$"7708 0981 6F00 1C8C 7C7B 60E9 000D 4150"
	$"4750 512F 5949 4850 5147 4940 FE50 2C52"
	$"3C55 4149 574A 524A 534F 4840 484A 5051"
	$"5061 5A5A 5041 5A49 5150 475A 4949 5A59"
	$"515A 5050 5A48 485A 4859 4850 0F59 4848"
	$"5047 5051 2F59 4948 5051 4749 40FE 504C"
	$"523C 5541 4957 4A52 4A53 4F49 404E 4F50"
	$"5240 5746 4C56 4853 4A53 4F48 4348 4A51"
	$"5250 6059 5951 4159 4A51 5047 5A4A 4959"
	$"5951 5A50 4F5A 4848 5A48 5948 5059 4848"
	$"5047 5051 2F59 4948 5051 4749 40FE 501C"
	$"523C 5541 4957 4A52 4A53 4F48 4048 4A50"
	$"5150 615A 5A50 415A 4951 5047 5AFF 4943"
	$"3D00 0020 5050 5100 0859 4859 4850 1800"
	$"3E50 4750 512F 4600 243D 001A 491C 002F"
	$"504D 0106 4014 0040 5214 0044 4840 484A"
	$"5051 1600 5A5A 4133 4446 0505 453F 000D"
	$"5949 4836 F300 0320 F800 3C10 A5B7 9CAF"
	$"AFB6 B89C B8AE B79C B6B6 B8A6 B2B6 B89E"
	$"B7B6 BCA5 B5B4 BDAF B89E AEAF BEB8 B3B7"
	$"AFB7 B8B6 AFAF B7AF A6B6 A3B6 B7B7 BFAF"
	$"AEB6 B7B6 B6B7 B0AF FEB6 36AE A5B7 9CAF"
	$"AFB6 B89C B8AE B79C B6B6 B8A6 B2B6 B89E"
	$"B7B6 BCA5 B5B4 BDAF B7B0 B6A8 B5B6 B7A3"
	$"B6B6 BBA8 B4B3 BCAF B6A1 ADB0 BDB8 B4B6"
	$"AFB7 15B8 B6AF AFB7 AFA7 B6A4 B6B7 B7BE"
	$"AFAE B6B7 B6B6 B7B0 AFFE B666 AEA5 B79C"
	$"AFAF B6B8 9CB8 AEB7 9CB6 B6B8 A6B2 B6B8"
	$"9EB7 B6BC A5B5 B4BD AFB8 9EAE AFBE B8B3"
	$"B7AF B7B8 B6AF AFB7 AFA6 B6A3 B6B1 0900"
	$"71AE B6B7 5100 2758 4343 B631 008F B79C"
	$"8738 5B2E 0290 8600 39B6 A112 0E53 2400"
	$"5CB7 3100 8FB5 3100 98B8 9EAE AFBE B830"
	$"00AF B70D 8C00 42AE 5B00 1A11 038F B89C"
	$"B86F EA00 5A0D 878E 7D7B 7B97 8573 8585"
	$"847D 8D8D 857E 8397 967F 8483 897C 8981"
	$"937B 856B 7B7B 9485 858B 7C8E 8597 7B7B"
	$"847B 7397 8F83 8E84 8C7B 8597 8E8D 838E"
	$"7C7B 9797 8385 878E 7D7B 7B97 8573 8585"
	$"847D 8D8D 857E 8397 967F 8483 897C 8981"
	$"7F93 7B8B 8583 7D87 9393 8183 8588 8087"
	$"8091 7B83 707D 7C93 8586 8A7D 8F86 967B"
	$"7C84 7B74 978F 838E 848C 7B85 978E 8D83"
	$"8E7C 7B97 9783 8587 8E7D 7B7B 9785 7385"
	$"8584 7D8D 8D85 7E83 9796 7F84 8389 7C89"
	$"8193 7B85 6B7B 7B94 8585 8B7C 8E85 977B"
	$"7B84 7B73 978F 838A 0600 5085 978E 3F00"
	$"1F3E 2F38 9723 0075 8E7D 5F27 4B21 0268"
	$"6629 002E 8D7D 0D0A 3D1E 004A 8423 006B"
	$"8923 006B 856B 7B7B 9485 2400 7C8E 7400"
	$"3085 4A00 150C 0276 8573 8554 EA00 3E08"
	$"4950 4A48 485A 474A 4852 504A 5A5A 474B"
	$"545A 5A4C 5059 5745 554C 6A48 4738 4848"
	$"5948 4750 4850 475A 4848 5048 405A 5C5A"
	$"5050 5948 515A 505A 5A50 4848 5A5A 4D5A"
	$"5149 504A 4848 5A47 4A48 5250 4A5A 5A47"
	$"4B54 5A5A 4C50 5957 4555 4C6A 4855 5247"
	$"4A55 5656 4D4F 5754 4853 4B66 4846 3C4A"
	$"4A58 4949 4F49 5148 5A49 4850 4841 5A5C"
	$"5A50 5059 4851 5A50 5A5A 5048 48FE 5A2E"
	$"5149 504A 4848 5A47 4A48 5250 4A5A 5A47"
	$"4B54 5A5A 4C50 5957 4555 4C6A 4847 3848"
	$"4859 4847 5048 5047 5A48 4850 4840 5A45"
	$"5C5A 4D04 002F 515A 5028 0011 241C 215A"
	$"1800 3F50 4A37 172D 1201 383F 001B 5A50"
	$"0706 2712 002C 5018 003C 5515 003E 4738"
	$"4848 5948 1300 4850 4500 2151 2800 0C07"
	$"0147 474A 4834 F300 0329 FB00 2A03 060F"
	$"A9BF BFB7 AFB7 B6B6 96BE B7B7 BEB5 B7B7"
	$"A3B1 B8BC B4B6 B2BA B2B7 AFB0 B6AF B6B6"
	$"B2B6 B0B7 AFB7 BFAF FEB6 4BAF B7B7 AFBC"
	$"B6A5 B6B7 AEAE AFB6 AEB7 B6B6 B4AF BFAF"
	$"B5BF BFB7 AFB7 B6B6 96BE B7B7 BEB5 B7B7"
	$"A3B1 B8BC B4B6 B2BA B2B7 AFB0 B6B4 B7B7"
	$"A6B2 B6BB B3B6 B4B8 B3B7 B0B0 B6B0 B5B7"
	$"B2B4 B1B7 AFB6 BE00 AFFE B63C AFB7 B7B0"
	$"BCB6 A6B6 B7AE AEAF B6AE B7B6 B6B4 AFBF"
	$"AFB5 BFBF B7AF B7B6 B696 BEB7 B7BE B5B7"
	$"B7A3 B1B8 BCB4 B6B2 BAB2 B7AF B0B6 AFB6"
	$"B6B2 B6B0 B7AF B7BF AFFE B63B AFB7 B7AF"
	$"BCB6 A574 5BA6 AEAF B6AE 804C 4258 8DBF"
	$"6F5A B2BF B7A1 5C42 4F76 BEA2 5B82 B5B7"
	$"A857 414F 90B4 B671 5DA6 B76F 58AA AFB6"
	$"B6B2 B6B0 7457 B7BF 0D9B 5F77 B5BF 8549"
	$"4B99 B6B6 96BE 5DED 002A 0205 0B85 968C"
	$"8E7B 8497 8E76 908D 8891 8D8E 847A 8B86"
	$"8B85 8D80 8586 847E 7F8D 7B8D 8D85 827B"
	$"8E84 848C 7BFE 832F 7B8E 847B 9D83 878D"
	$"8485 857B 8D85 8497 9282 7B8C 7B8F 968C"
	$"8E7B 8497 8E76 908D 8891 8D8E 847A 8B86"
	$"8B85 8D80 8586 847E 5C7F 8D89 8E86 7C89"
	$"848C 858B 8283 8684 7F7E 8D7C 8B8F 8582"
	$"7D8D 8484 8B7C 8383 847C 8D84 7C9C 8387"
	$"8D84 8585 7B8D 8584 9792 827B 8C7B 8F96"
	$"8C8E 7B84 978E 7690 8D88 918D 8E84 7A8B"
	$"868B 858D 8085 8684 7E7F 8D7B 8D8D 8582"
	$"7B8E 8484 8C7B FE83 1F7B 8E84 7B9D 8387"
	$"5A42 7F85 7B8D 855C 3F35 3F63 8C4E 478C"
	$"8C8E 7142 373D 5D90 7D29 4463 8D8E 7941"
	$"333A 6A85 8D51 427D 8450 3F84 7B8D 8D85"
	$"827B 5A42 848C 6D46 548F 9662 3935 6E97"
	$"8E76 9048 ED00 2A02 0306 4A59 5950 4850"
	$"5A5A 435D 505E 5759 5050 454F 4859 4A5A"
	$"4752 4C4D 474B 5048 5A59 4D47 4850 4F50"
	$"5948 FE5A 1348 5050 4874 5A49 5A50 5151"
	$"485A 5150 5A5A 474A 5978 484F 5959 5048"
	$"505A 5A43 5D50 5E57 5950 5045 4F48 594A"
	$"5A47 524C 4D47 4B50 5552 5247 4D48 574B"
	$"584A 504E 4F4A 4B50 4958 5C4E 474A 504F"
	$"5058 4959 595A 4950 5049 735A 495A 5051"
	$"5148 5A51 505A 5A47 4A59 484F 5959 5048"
	$"505A 5A43 5D50 5E57 5950 5045 4F48 594A"
	$"5A47 524C 4D47 4B50 485A 594D 4748 504F"
	$"5059 48FE 5A03 4850 5048 4574 5A49 3928"
	$"4D51 485A 5138 2521 233B 592E 2753 5950"
	$"4228 2127 355D 472F 3B59 5049 251D 1F44"
	$"4A5A 2D29 474D 2D25 4B48 5A59 4D47 4833"
	$"2750 5942 2C31 4F59 3E20 1F43 5A5A 435D"
	$"29F3 0003 26FA 0078 0206 40B9 B6AE B6B7"
	$"B8B6 B8AA ACBD A9BF 9FB6 9BBA AFB4 B6B2"
	$"B49D ACB5 B8B7 B1B6 B7B8 AFAE AFBE AEB6"
	$"AFBF A5AF B7B6 B7B8 B7AE AEB6 B5B6 AEB7"
	$"A6B8 B8A5 BDB6 A8B0 B7B6 B4B9 B6AE B6B7"
	$"B8B6 B8AA ACBD A9BF 9FB6 9BBA AFB4 B6B2"
	$"B49D ACB5 B8B7 B1BD A4B6 9FB8 AFB6 B5B3"
	$"B3A2 ABB4 B8B7 B2B6 B7B7 AFAF B0BD AEB6"
	$"AE7F BFA6 AEB7 B6B6 B8B7 AEAE B6B5 B6AE"
	$"B7A6 B8B8 A5BD B6A8 B0B7 B6B4 B9B6 AEB6"
	$"B7B8 B6B8 AAAC BDA9 BF9F B69B BAAF B4B6"
	$"B2B4 9DAC B5B8 B7B1 B6B7 B8AF AEAF BEAE"
	$"B6AF BFA5 AFB7 B6B7 B8B7 AEAE B6B5 B6AE"
	$"B7A6 B8B8 A5BD B6A8 B0B7 B6B4 B9B6 AEB6"
	$"B7B8 B6B8 AAAC BDA9 BF9F B69B BAAF B4B6"
	$"B2B4 9DAC B5B8 B7B1 B6B7 B8AF AEAF BEAE"
	$"B6AF 0DB0 B7B6 B4B9 B6AE B6B7 B8B6 B8AA"
	$"35EC 005C 0204 338B 8D85 978D 888F 8678"
	$"7F93 829C 6C8D 7B88 8685 9784 8774 7886"
	$"888D 7B97 8E85 7B7A 7B91 858D 7B8C 7C7B"
	$"8E97 8485 8485 858D 9697 8584 7385 857C"
	$"948E 787C 8E84 908B 8D85 978D 888F 8678"
	$"7F93 829C 6C8D 7B88 8685 9784 8774 7886"
	$"887F 8D7B 9B74 8B7B 8584 8794 8685 7879"
	$"8489 8E7C 958D 857C 7C7D 9185 8C7A 8C7C"
	$"7B8E 9784 8584 8585 8D96 9785 8473 8585"
	$"7C94 8E78 7C8E 8490 8B8D 8597 8D88 8F86"
	$"787F 9382 9C6C 8D7B 8886 8597 8487 7478"
	$"8688 8D7B 978E 857B 7A7B 9185 8D7B 8C7C"
	$"7B8E 9784 8584 8585 8D96 9785 8473 8585"
	$"7C94 8E78 7C8E 8490 8B8D 8597 8D88 8F86"
	$"787F 2993 829C 6C8D 7B88 8685 9784 8774"
	$"7886 888D 7B97 8E85 7B7A 7B91 858D 7B7C"
	$"8E84 908B 8D85 978D 888F 8678 27EC 0040"
	$"0103 1E54 5A51 5A5A 485A 5848 4A69 4E68"
	$"3A5A 474D 5249 5A4F 5642 4649 484C 4B5A"
	$"5047 4947 4860 515A 4859 4948 505A 5047"
	$"5051 515A 635A 5150 4047 4749 6B4F 4549"
	$"507F 5A56 545A 515A 5A48 5A58 484A 694E"
	$"683A 5A47 4D52 495A 4F56 4246 4948 4C4B"
	$"653F 5647 4C50 4D58 5154 4646 4949 4E4C"
	$"5850 484A 494A 6051 5947 5849 4851 5A50"
	$"4750 5151 5A63 5A51 5040 4747 496B 4F45"
	$"4950 5A56 545A 515A 5A48 5A58 484A 694E"
	$"683A 5A47 4D52 495A 4F56 4246 4948 4C4B"
	$"5A50 4749 4748 6051 5A48 5949 4850 5A50"
	$"4750 FF51 435A 635A 5150 4047 4749 6B4F"
	$"4549 505A 5654 5A51 5A5A 485A 5848 4A69"
	$"4E68 3A5A 474D 5249 5A4F 5642 4649 484C"
	$"4B5A 5047 4947 4860 515A 4849 505A 5654"
	$"5A51 5A5A 485A 5848 17F3 0003 20F8 0001"
	$"0FB8 FEB6 27BF B7B7 BAB7 B6B6 BEB6 ACB7"
	$"B6B5 B7BF AFB6 B4AF AEB5 B6A8 BFB7 B6B2"
	$"B9B6 AFBE B6AF BFBD AFAE B7A5 AEFE B611"
	$"BFB6 B6AE B8AF A5B6 AFB7 BFB0 B5A3 AEAF"
	$"A5B8 FEB6 31BF B7B7 BAB7 B6B6 BEB6 ACB7"
	$"B6B5 B7BF AFB6 B4AF AEB5 B6A8 BFB6 AEB6"
	$"B7B5 B5BF B0B5 B6B1 AEB4 B6A8 BDB7 B6B2"
	$"BAB6 B0BD B6AF BD1A BDAF AEB7 A5AE B5B6"
	$"B6BE B6B6 AEB8 AFA5 B6AF B7BF B0B5 A3AE"
	$"AFA5 B8FE B627 BFB7 B7BA B7B6 B6BE B6AC"
	$"B7B6 B5B7 BFAF B6B4 AFAE B5B6 A8BF B7B6"
	$"B2B9 B6AF BEB6 AFBF BDAF AEB7 A5AE FEB6"
	$"11BF B6B6 AEB8 AFA5 B6AF B7BF B0B5 A3AE"
	$"AFA5 B8FE B621 BFB7 B7BA B7B6 B6BE B6AC"
	$"B7B6 B5B7 BFAF B6B4 AFAE B5B6 A8BF B7B6"
	$"B2B9 B6AF BEB6 AFBF 04A3 AEAF A5B8 FEB6"
	$"05BF B7B7 BAB7 28EA 005A 0B85 8D96 8B96"
	$"898B 9688 9183 9589 8185 8D82 8E96 7B84"
	$"948C 7A89 9180 8C8A 8986 8A8D 8496 837B"
	$"8C94 7B85 847C 858D 9783 9697 8D85 857B"
	$"7C97 7B84 967B 9574 7980 7C85 8D96 8B96"
	$"898B 9688 9183 9589 8185 8D82 8E96 7B84"
	$"948C 7A89 917F 808C 8983 858C 848C 967C"
	$"8393 8D7A 888F 808B 8A8A 868B 8E85 9583"
	$"7B8B 947B 8585 7C86 8C96 8395 978D 8585"
	$"7B7C 977B 8496 7B95 7479 807C 858D 968B"
	$"9689 8B96 8891 8395 8981 858D 828E 967B"
	$"8494 8C7A 8991 808C 8A89 868A 8D84 9683"
	$"7B8C 947B 8584 7C85 8D97 8396 978D 8585"
	$"7B7C 977B 8496 7B95 7479 807C 858D 968B"
	$"9689 8B96 8891 2983 9589 8185 8D82 8E96"
	$"7B84 948C 7A89 9180 8C8A 8986 8A8D 8496"
	$"837B 8C74 7980 7C85 8D96 8B96 898B 9688"
	$"20EA 002C 0750 5559 5859 5252 5950 544F"
	$"5953 4E50 584B 5059 4859 5854 4850 564B"
	$"5850 5552 5355 4F59 5A48 596B 4851 5049"
	$"51FE 5A0E 595A 5A51 4748 495A 4850 5948"
	$"5F43 477F 5349 5055 5958 5952 5259 5054"
	$"4F59 534E 5058 4B50 5948 5958 5448 5056"
	$"4B58 5250 5057 4D50 594B 5658 5748 5055"
	$"4B57 5156 5354 5550 5859 4858 6A48 5150"
	$"4952 5959 5A59 5A5A 5147 4849 5A48 5059"
	$"485F 4347 5349 5055 5958 5952 5259 5054"
	$"4F59 534E 5058 4B50 5948 5958 5448 5056"
	$"4B58 5055 5253 554F 595A 4859 6B48 5150"
	$"4951 5A5A 455A 595A 5A51 4748 495A 4850"
	$"5948 5F43 4753 4950 5559 5859 5252 5950"
	$"544F 5953 4E50 584B 5059 4859 5854 4850"
	$"564B 5850 5552 5355 4F59 5A48 5943 4753"
	$"4950 5559 5859 5252 5950 12F3 0003 20F8"
	$"000A 0FBA B6B6 ACB6 B3A8 B7B6 B1FE B63C"
	$"BBA6 B6AF B4B6 AFB5 A8B7 AFB1 B6B5 B2BC"
	$"AEB0 B1BF BEA5 A5B8 B8BF B8AF B6B7 A6AC"
	$"BFBD B7AE B6A5 B7B5 B7B7 BFBD BFB6 ACAB"
	$"ABA5 A4BA B6B6 ACB6 B3A8 B7B6 B1FE B628"
	$"BBA6 B6AF B4B6 AFB5 A8B7 AFB1 B6B5 B2B7"
	$"B8A8 B5B2 B6B3 ADB5 AAB8 B0B1 B6B5 B1BA"
	$"B0B1 B2BE BDA5 A6B8 B823 BFB8 B0B6 B7A6"
	$"ACBE BCB7 AEB6 A5B7 B5B7 B7BF BDBF B6AC"
	$"ABAB A5A4 BAB6 B6AC B6B3 A8B7 B6B1 FEB6"
	$"3CBB A6B6 AFB4 B6AF B5A8 B7AF B1B6 B5B2"
	$"BCAE B0B1 BFBE A5A5 B8B8 BFB8 AFB6 B7A6"
	$"ACBF BDB7 AEB6 A5B7 B5B7 B7BF BDBF B6AC"
	$"ABAB A5A4 BAB6 B6AC B6B3 A8B7 B6B1 FEB6"
	$"18BB A6B6 AFB4 B6AF B5A8 B7AF B1B6 B5B2"
	$"BCAE B0B1 BFBE A5A5 B8B8 FFAB 0BA5 A4BA"
	$"B6B6 ACB6 B3A8 B7B6 41EA 005A 0B93 8D8D"
	$"7E84 7F83 848C 7D8A 978D 9278 9786 828A"
	$"7B8D 7785 7B7D 928D 7F91 857D 7E8B 8C7C"
	$"7C85 8596 857B 8384 738D 8C94 8485 8D87"
	$"8496 8484 9694 8C97 787B 7B7C 7C93 8D8D"
	$"7E84 7F83 848C 7D8A 978D 9278 9786 828A"
	$"7B8D 7785 7B7D 927F 8D7F 8E8F 7992 8784"
	$"887B 8C79 877C 7D90 8C7E 9186 7F7F 8B8C"
	$"7D7D 8685 9586 7C83 8573 8C8B 9384 858D"
	$"8784 9684 8496 948C 9778 7B7B 7C7C 938D"
	$"8D7E 847F 8384 8C7D 8A97 8D92 7897 8682"
	$"8A7B 8D77 857B 7D92 8D7F 9185 7D7E 8B8C"
	$"7C7C 8585 9685 7B83 8473 8D8C 9484 858D"
	$"8784 9684 8496 948C 9778 7B7B 7C7C 938D"
	$"8D7E 847F 8384 8C7D 298A 978D 9278 9786"
	$"828A 7B8D 7785 7B7D 928D 7F91 857D 7E8B"
	$"8C7C 7C85 857B 7B7C 7C93 8D8D 7E84 7F83"
	$"848C 2EEA 000A 0768 5454 465A 4748 475A"
	$"49FE 5A30 594F 5A51 575A 484F 4548 484A"
	$"5550 4D59 514A 4959 5949 4947 4759 4748"
	$"5A50 4064 596B 5051 5A49 5063 5050 596B"
	$"595A 4748 48FF 4909 6854 5446 5A47 4847"
	$"5A49 FE5A 2459 4F5A 5157 5A48 4F45 4848"
	$"4A55 504D 5A57 4E57 5357 5748 4E45 4A48"
	$"4A56 504C 5A52 4D4A 5859 FE49 2448 5948"
	$"4A5A 5040 6358 6A50 525A 4950 6350 5059"
	$"6B59 5A47 4848 4949 6854 5446 5A47 4847"
	$"5A49 FE5A 2059 4F5A 5157 5A48 4F45 4848"
	$"4A55 504D 5951 4A49 5959 4949 4747 5947"
	$"485A 5040 6459 1B6B 5051 5A49 5063 5050"
	$"596B 595A 4748 4849 4968 5454 465A 4748"
	$"475A 49FE 5A26 594F 5A51 575A 484F 4548"
	$"484A 5550 4D59 514A 4959 5949 4947 4748"
	$"4849 4968 5454 465A 4748 475A 1BF3 0003"
	$"20F8 0076 10AB B1A7 B2AA AA8F B3B2 A196"
	$"B8AC 8298 A5B4 A6A5 AFB7 AFB6 B8AE AEA7"
	$"A0B7 BEBF B7A6 B8B6 BFAE B8B6 A5B7 B8AF"
	$"AEBF AEB6 B7A3 A5BF C6AE B7B6 B8AE B8BA"
	$"A8AA A5A3 B5AB B1A7 B2AA B0B3 B3B2 BCB7"
	$"B8AF A3A7 A5B4 A6A5 AFB7 AFB6 B8AE AEA7"
	$"A0B1 A9AC A8B1 A9A8 B2B6 B0B6 B6AF AFA8"
	$"A1B8 BCBE B7A6 B7B7 BFAE B87F B6A6 B7B8"
	$"AFAE BEAE B5B7 A3A5 BFC6 AEB7 B6B8 AEB8"
	$"BAA8 AAA5 A3B5 ABB1 A7B2 AAB0 B3B3 B2BC"
	$"B7B8 AFA3 A7A5 B4A6 A5AF B7AF B6B8 AEAE"
	$"A7A0 B7BE BFB7 A6B8 B6BF AEB8 B6A5 B7B8"
	$"AFAE BFAE B6B7 A3A5 BFC6 AEB7 B6B8 AEB8"
	$"BAA8 AAA5 A3B5 ABB1 A7B2 AAB0 B3B3 B2BC"
	$"B7B8 AFA3 A7A5 B4A6 A5AF B7AF B6B8 AEAE"
	$"A7A0 B7BE BFB7 A6B8 B6BF AEB8 0DAA A5A3"
	$"B5AB B1A7 B2AA B0B3 B3B2 29EA 0037 0D87"
	$"868B 937E 8B69 8084 7D6F 8579 666E 7788"
	$"747C 7B8E 7B97 857C 8B75 7988 9596 8E73"
	$"8597 9685 8597 7C84 857B 8596 858D 848F"
	$"8796 9D85 848D FE85 1F95 8075 7C70 8D87"
	$"868B 937E 9083 8084 9287 857B 7F79 7788"
	$"747C 7B8E 7B97 857C 8B2C 7579 7E83 7F7B"
	$"8477 807F 8D7C 9784 7D8A 767A 8993 958D"
	$"7585 9796 8585 967C 8485 7C85 9585 8C84"
	$"8F87 969D 8584 8DFE 853C 9580 757C 708D"
	$"8786 8B93 7E90 8380 8492 8785 7B7F 7977"
	$"8874 7C7B 8E7B 9785 7C8B 7579 8895 968E"
	$"7385 9796 8585 977C 8485 7B85 9685 8D84"
	$"8F87 969D 8584 8DFE 850F 9580 757C 708D"
	$"8786 8B93 7E90 8380 8492 2987 857B 7F79"
	$"7788 747C 7B8E 7B97 857C 8B75 7988 9596"
	$"8E73 8597 9685 8575 7C70 8D87 868B 937E"
	$"9083 8084 20EA 003E 074F 5453 574A 5138"
	$"5350 4C42 4747 4047 5158 4449 4850 485A"
	$"4748 5545 424A 5D59 5040 475A 5951 475A"
	$"4950 4748 5159 515A 505C 4959 6A51 505A"
	$"4751 4758 5142 497F 4350 4F54 5357 4A54"
	$"4653 5059 5047 4850 4E51 5844 4948 5048"
	$"5A47 4855 4542 4853 5051 5445 4C4B 5048"
	$"5A47 4953 4544 4B5C 5950 4247 5A5A 5147"
	$"5A49 5047 4951 5851 5950 5C49 596A 5150"
	$"5A47 5147 5851 4249 4350 4F54 5357 4A54"
	$"4653 5059 5047 4850 4E51 5844 4948 5048"
	$"5A47 4855 4542 4A5D 5950 4047 5A59 5147"
	$"5A49 5047 4851 5951 455A 505C 4959 6A51"
	$"505A 4751 4758 5142 4943 504F 5453 574A"
	$"5446 5350 5950 4748 504E 5158 4449 4850"
	$"485A 4748 5545 424A 5D59 5040 475A 5951"
	$"4742 4943 504F 5453 574A 5446 5350 14F3"
	$"0003 22F8 0008 26B3 B2B5 B6B1 6400 0AFE"
	$"0022 1910 0006 2E59 9184 7B3F 2425 2128"
	$"4C67 8593 ABB7 B8B7 AEAF AFB6 B263 698C"
	$"A2B7 B6A5 BFFE B617 A5B8 AFBF B7B6 B7A5"
	$"AFB4 BEB8 B6B2 BDB3 B2B5 B6B7 BEB8 B5B6"
	$"FEAE 29B1 B6B4 94AE B5A5 B7B7 B6B7 A6B8"
	$"B4AB B7B2 B32E 84B0 B4A7 B6B7 B6B8 A7B7"
	$"B4AC B7B3 BAB7 B8B7 ADB0 AFB6 B607 BFAF"
	$"AFB6 B7B6 A6BF FEB6 17A5 B8AF BFB7 B6B7"
	$"A5AF B4BE B8B6 B2BD B3B2 B5B6 B7BE B8B5"
	$"B6FE AE21 B1B6 B494 AEB5 A5B7 B7B6 B7A6"
	$"B8B4 ABB7 B4BA B7B8 B7AE AFAF B6B6 BFAF"
	$"AFB6 B7B6 A5BF FEB6 17A5 B8AF BFB7 B6B7"
	$"A5AF B4BE B8B6 B2BD B3B2 B5B6 B7BE B8B5"
	$"B6FE AE19 B1B6 B494 AEB5 A5B7 B7B6 B7A6"
	$"B8B4 ABB7 B4BA B7B8 B7AE AFAF B6B6 0EB8"
	$"B6B2 BDB3 B2B5 B6B7 BEB8 B5B6 4C0F EB00"
	$"081D 9490 908A 864E 0007 FE00 4E12 0C00"
	$"0424 3E71 6C60 311E 1C17 1D3B 4760 6985"
	$"8485 8485 7B7B 9793 484A 627E 848D 7C96"
	$"9797 8D7C 857B 9684 9784 7C7B 8495 858C"
	$"8D93 9490 908A 8B94 8884 8D85 857A 8897"
	$"8C75 7A8D 878E 8E97 8E73 858C 7F76 8487"
	$"9323 677C 8C85 8B8F 978E 7484 8C77 8581"
	$"9186 8685 847C 7B97 968D 7B7B 8C84 8D7C"
	$"9697 978D 7C85 7B96 8497 847C 7B84 9585"
	$"8C8D 9394 9090 8A8B 9488 848D 8585 7A88"
	$"978C 757A 8D87 8E8E 978E 7385 8C76 8481"
	$"9084 8584 857B 7B97 978C 7B7B 8D84 8D7C"
	$"9697 978D 7C85 7B96 8497 847C 7B84 9585"
	$"8C8D 9394 9090 8A8B 9488 848D 852A 857A"
	$"8897 8C75 7A8D 878E 8E97 8E73 858C 7684"
	$"8190 8485 8485 7B7B 9797 858C 8D93 9490"
	$"908A 8B94 8884 8D3A 0CEB 0008 1558 5558"
	$"4E49 2F00 04FE 0022 0A09 0003 1625 483A"
	$"361C 1210 0D10 252B 3440 5050 4750 5148"
	$"485A 582E 2B3A 5050 5A49 59FE 5A0C 4947"
	$"4859 505A 5049 484E 5848 4F3F 4F6A 5855"
	$"584E 4C59 5050 5B51 5148 635A 4E46 485A"
	$"4950 505A 5040 4859 4847 5F57 143C 4959"
	$"494F 515A 5141 4859 4949 4E57 5148 5150"
	$"4848 5A59 5948 4859 505A 4959 FE5A 3C49"
	$"4748 5950 5A50 4948 4E58 484F 4F6A 5855"
	$"584E 4C59 5050 5B51 5148 635A 4E46 485A"
	$"4950 505A 5040 4859 4847 4E57 5047 5051"
	$"4848 5A5A 5948 485A 505A 4959 FE5A 4349"
	$"4748 5950 5A50 4948 4E58 484F 4F6A 5855"
	$"584E 4C59 5050 5B51 5148 635A 4E46 485A"
	$"4950 505A 5040 4859 4847 4E57 5047 5051"
	$"4848 5A5A 484F 4F6A 5855 584E 4C59 5050"
	$"5B23 07F4 0002 DBF8 0001 6FB8 FEB6 0062"
	$"E800 075E B7B6 A5B7 B6BB 5DFC 004A 2633"
	$"496A 7692 B0AF BFAE BDA5 AEAE B6BF AFBD"
	$"AD93 7C4D 4CB2 B6B3 B3B0 B6A6 B5B6 B0B0"
	$"B5BD ABAE AFAF B8B6 AFBD B1AF AEAF B8AE"
	$"2C00 2696 ADB0 B8B7 B0BC B1AF AFB0 B9B3"
	$"A0B8 B6B6 A6B6 B7BE B71A B7AF AEB6 B6BE"
	$"AFB6 B5AF B6B6 AFBF AEBD A5AE AEB6 BFAF"
	$"BDAD 9CAE B8FE B6FF B33A B0B6 A6B5 B6B0"
	$"B0B5 BDAB AEAF AFB8 B6AF BDB1 AFAE AFB8"
	$"B39E B8B7 B6A5 B7B6 BFB7 B8AF AEB6 B6BF"
	$"AFA2 9276 5D49 59B5 AEBD A5AE AEB6 BFAF"
	$"BDAD 9CAE B8FE B6FF B31F B0B6 A6B5 B6B0"
	$"805C 97AB AEAF AFB8 B6AF BDB1 AFAE AFB8"
	$"B39E B8B7 B6A5 B7B6 BFB7 04BD AD9C AEB8"
	$"FEB6 07B3 938D A8A6 B54F 23EC 0005 5484"
	$"8D97 974C E800 0744 8483 7C8E 8D89 48FC"
	$"0024 1C24 3C52 5379 927B 8C85 947C 8585"
	$"978C 7B94 8576 5E37 3B94 978B 807D 8D73"
	$"9683 8692 9793 83FE 7B06 8596 7B94 897B"
	$"8545 7B85 8B24 001D 6A7B 7E86 957D 9287"
	$"7C86 7E86 807E 8683 847E 8D8D 8C8E 857B"
	$"858D 978B 7C97 8D7B 9797 7B8C 8594 7C85"
	$"8597 8C7B 9485 7D85 848D 9797 8B80 7D8D"
	$"7396 8386 9297 9383 FE7B 3685 967B 9489"
	$"7B85 7B85 807C 8584 837C 8E8D 8C8E 857B"
	$"858D 978C 7B86 7153 4D3C 3F84 8594 7C85"
	$"8597 8C7B 9485 7D85 848D 9797 8B80 7D8D"
	$"7396 0583 866A 4D76 83FE 7B22 8596 7B94"
	$"897B 857B 8580 7C85 8483 7C8E 8D8C 8E94"
	$"857D 8584 8D97 978B 6964 8273 9639 1BEC"
	$"0001 3347 FE5A 0030 E800 0724 505A 4950"
	$"5A57 28FC 0012 1215 2434 3148 5748 5951"
	$"6B49 5151 5A59 486B 5011 4639 1E26 585A"
	$"584C 4A5A 4063 5A4B 575A 6A50 FD48 3C5A"
	$"4858 5948 5149 4752 1600 1140 4849 4B5A"
	$"4956 5749 524B 4947 4C48 4F5A 4A4F 5A59"
	$"5147 4851 5A5A 5849 5A5A 485A 5A48 5951"
	$"6B49 5151 5A59 486B 504A 5147 FE5A 0B58"
	$"4C4A 5A40 635A 4B57 5A6A 50FD 4819 5A48"
	$"5859 4851 4947 474B 4750 5A49 505A 5950"
	$"4748 515A 5A59 4850 1248 312E 2425 5451"
	$"6B49 5151 5A59 486B 504A 5147 FE5A 0B58"
	$"4C4A 5A40 635A 4B3F 2E55 50FD 4816 5A48"
	$"5859 4851 4947 474B 4750 5A49 505A 5950"
	$"6B50 4A51 47FE 5A07 583E 3B53 4063 270F"
	$"F500 02B1 F800 0423 2223 241A E600 0559"
	$"BDB7 B6B6 A7F4 000B 0A23 3C4F 5C51 3D2B"
	$"6388 5008 FD00 1A34 845E 2D22 85B6 AFB6"
	$"AABB B5B6 B3AF AE96 6D6A 697C B5AF AFA6"
	$"A543 FE00 1580 AFAD B6B1 AFAF B6AF B0A7"
	$"A7B3 B0AF AFBD B7B6 B6B8 AF08 B6BF AFB6"
	$"AFB6 AEB6 B7FE B639 B5AF AFB6 B7B6 AFB6"
	$"B5AE AFAF BEA5 5326 355D 97B2 9DAE B6AF"
	$"B6AA BBB5 B6B3 AFAE ABB6 B0AF AEB5 AFAF"
	$"A6A5 B3AF AEAF BDB7 B6B6 B8AF B6BF 9659"
	$"361E FA00 3215 89B6 B7B6 AFB6 B5AE AFAF"
	$"BEAF AAAF B6B6 A6B2 9DAE A86F 4C0F 0000"
	$"428F AFAE ABB6 B0AF AEB5 AFAF A6A5 B3AF"
	$"AEAF BDB7 B6B6 B8AF FFAF 0DBE AFAA 994C"
	$"2406 0000 0C5D A5B6 AAEC 0004 191A 191A"
	$"16E6 0005 3F94 8E97 9779 F400 0B08 192A"
	$"4247 3F2B 244D 6838 06FD 0017 256D 4720"
	$"1B5D 8E7B 8C76 8996 8494 7B7B 6953 4A4A"
	$"5783 7B7B 0273 7D31 FE00 5B5C 7E7C 8C7D"
	$"7B7E 857B 7C74 7E7D 7D86 7D94 8F97 9584"
	$"7C97 967B 847C 8385 8D8E 9697 9796 7B7B"
	$"978E 8D7B 978D 857B 7E96 743F 1B26 4C73"
	$"7F7D 7A8E 7B8C 7689 9684 947B 7B78 8A7C"
	$"7B7B 837B 7B73 7D7C 7C85 7B94 8E97 9785"
	$"7B97 9669 4026 16FA 0016 0F60 978E 8D7B"
	$"978D 857B 7E96 7B81 7B83 967E 7F7D 7A83"
	$"4E2B 3B0B 0000 3076 7B7B 788A 7C7B 7B83"
	$"7B7B 737D 7C7C 857B 948E 9797 857B 7B7E"
	$"967B 816C 371E 0400 0008 4874 8C76 EC00"
	$"040E 100E 120D E600 0525 6B50 5A5A 41F4"
	$"000B 050E 1927 2828 1915 2B3F 2104 FD00"
	$"1A19 412A 1410 3E4F 485A 4559 5A46 6248"
	$"483C 302C 2B33 4F48 4840 4920 FE00 1E38"
	$"4948 5149 484A 5048 4A41 4B51 4951 496A"
	$"515B 5947 495A 5948 5A48 5A51 5A50 FE5A"
	$"3B63 4848 5A50 5A48 5A4F 5149 4C59 4426"
	$"101A 2D43 4D4A 514F 485A 4559 5A46 6248"
	$"4845 5049 4848 4F48 4840 4951 4851 486B"
	$"505A 5A47 485A 593E 2C16 0F00 00FC 0042"
	$"0938 5A50 5A48 5A4F 5149 4C59 484E 4859"
	$"594A 4D4A 5149 2E26 0600 0019 4E48 4845"
	$"5049 4848 4F48 4840 4951 4851 486B 505A"
	$"5A47 4849 4C59 484E 3F25 1203 0000 0628"
	$"445A 45F5 0002 3BE6 0001 1706 F400 041B"
	$"93B7 BFA7 DF00 0A0A 7CAC B3AE B5B7 B5B5"
	$"7416 FC00 0409 75AF 8F33 FD00 1529 AC95"
	$"95AD AFB4 A7A4 AFB0 B9B8 9FB0 AFB6 A6B7"
	$"BEB8 B81A AFB8 BFAF B7BF BFBC B7B5 AFAE"
	$"AEAF B8BF B6B7 B6AF A5B1 B6A6 A54B 03FE"
	$"0023 1876 B7B3 A2AC B3AE B5B7 B5B5 9CAD"
	$"908E ABAE B5A5 A1AF AFB8 B79C AFAF A963"
	$"4950 6E64 2617 F500 1403 64B6 B7B6 AF93"
	$"4704 5EAF A2A5 B7B7 ABB7 A6B1 5E08 FB00"
	$"1652 3E45 3A39 7FAE B5A5 A1AF AFB8 B79C"
	$"AFAF B7A5 B7BF B8B8 0498 6750 4115 F900"
	$"0253 A9AE DA00 0110 05F4 0004 136E 8E96"
	$"79DF 000A 075A 8D89 9495 848D 8255 0FFC"
	$"0002 0752 7B01 6522 FD00 301E 796B 6C74"
	$"7C92 8174 7B7C 7E85 807C 7D83 7D8E 9585"
	$"857C 858C 7B85 9596 948E 957B 8585 7B85"
	$"8C97 8483 7B7A 838A 8078 3802 FE00 2312"
	$"558F 8076 8D89 9495 848D 8272 7965 6572"
	$"7B95 8171 7B7B 7C84 7E7B 7B7A 4A39 3F50"
	$"481B 11F5 0015 024A 9784 837B 6D34 0348"
	$"7F7A 7384 8482 8678 8A43 0600 FC00 1B3B"
	$"2E30 2828 557B 9581 717B 7B7C 847E 7B7B"
	$"847C 8E96 8585 734F 3A31 0EF9 0002 4481"
	$"94DA 0001 0A03 F400 040C 4150 5941 E800"
	$"F800 0A04 3655 5858 5A50 4F59 3709 FC00"
	$"0404 2E48 3B14 FD00 3013 483C 4144 485E"
	$"4E42 4848 494E 4D49 4A4F 4950 5847 4849"
	$"4759 4847 5959 6A50 6248 5151 4847 595A"
	$"505A 4847 4F4F 4D3F 2101 FE00 140B 2D57"
	$"4E47 5558 585A 504F 594A 4839 3D43 4861"
	$"4F3F FE48 0B4D 4A48 484A 2C20 252B 2710"
	$"09FB 00FB 0014 012F 5A50 5A48 3F20 022B"
	$"4347 404F 504D 5240 5429 04FB 0009 281E"
	$"1D17 1832 4861 4F3F FE48 0E4D 4A48 4850"
	$"4950 5947 4742 301E 1C08 F900 0229 5358"
	$"F500 01C1 D600 0013 FE49 DE00 070B 1B42"
	$"4949 4C47 24F8 0000 1BFA 0014 2AB5 AFBD"
	$"B59F B0B1 B0B7 B0B5 A49F BEB0 BFB6 B6B7"
	$"AE19 B6B0 BE9C A5AF 9992 9192 9992 8BB0"
	$"B6AE BFBF AFAF A1BC B3B7 9606 FB00 1A17"
	$"5681 BCAD B6B6 BFB6 B4B6 9F9B 7872 6D5E"
	$"6A69 6953 290A 000C 3709 EC00 042D 6179"
	$"6608 FE00 0836 AAB6 B8A6 B2B6 7111 F300"
	$"1006 77B0 AFAF A670 4521 3FBF AFBF 8E5D"
	$"320D F300 015E 77CA 0003 0E38 3C39 DE00"
	$"0708 152F 3534 3834 1AF8 0000 13FA 002E"
	$"2183 8194 8381 7C7D 7C86 818C 8F76 8C7D"
	$"8C8C 968E 8597 7C95 7088 7C6C 7178 7278"
	$"6A62 7E8D 8596 967B 7B7E 9189 8479 05FB"
	$"001A 123D 5A93 7B84 838C 8483 847F 6F57"
	$"594F 4C4A 494A 3C1E 0800 0929 06EC 0004"
	$"234C 5547 06FE 0008 2B84 8C85 7E84 965C"
	$"0DFE 00F6 0010 0560 7C7A 7B78 5236 1D2E"
	$"8C7B 8C6E 4D27 0AF3 0001 4356 CA00 0309"
	$"2424 20E8 00F7 0007 040D 1B24 2423 1F10"
	$"F800 000B FA00 2E14 5145 5859 4C48 494A"
	$"514D 595C 4358 4959 5A5A 5051 5A49 584C"
	$"5249 3F48 4840 4740 4157 5A51 5959 4848"
	$"4965 5650 4703 FB00 100B 2433 5747 5A5A"
	$"584F 5150 4C44 2E35 362C FE2B 0624 1205"
	$"0005 1A04 F400 F900 0415 2D32 2A04 FE00"
	$"081A 5359 484B 5458 3808 F300 1003 3948"
	$"4748 4931 2212 1A59 4859 462E 1606 F300"
	$"0127 3BF5 0000 EE95 0013 4047 4C40 4143"
	$"4949 473D 2423 499B B0B7 AEB7 BEB6 02B7"
	$"A24D F700 0C27 6F8C 9992 8C8C 8684 8792"
	$"9942 F800 0706 9FAD B6B2 A1B6 3BD3 0005"
	$"0F74 9296 6519 F000 0304 6D49 17FC 0002"
	$"464C 0EFD 0081 00F9 0016 2D32 382C 292F"
	$"3838 342E 1C19 336D 7C8E 7B8E 8B8C 8E7F"
	$"38F7 000C 1E52 6270 7962 6261 5D69 6F76"
	$"33F8 0007 047D 7F8F 8578 8B2A D300 050C"
	$"596A 714D 12FC 00F5 0003 034B 3912 FC00"
	$"0231 360B 9900 DD00 161B 1D24 1814 1B20"
	$"201E 1B10 0F1D 404A 5051 5058 5950 5B1E"
	$"F700 0C13 2E3A 4748 3A3A 3831 3C46 461F"
	$"F800 0703 4448 5A54 4155 19E4 00F0 0005"
	$"0732 403F 2B0A F000 0301 2A20 0AFC 0002"
	$"1D1F 06E1 0000 4687 0005 135B 90B8 B7A6"
	$"0043 DE00 0506 ACB6 BDAE 3FAB 0081 00EB"
	$"0006 0E47 6886 847A 2FDE 0005 047D 9794"
	$"852E C700 8100 CF00 0608 2A37 4850 4D1B"
	$"DE00 0503 4B5A 6952 19E3 00AD 0000 3484"
	$"0002 213C 00DC 0004 3696 B7A5 10AB 0081"
	$"00E8 0001 1A2C DB00 0426 6984 7C0C C700"
	$"8100 CC00 010E 17DB 0004 163E 5049 08E3"
	$"00AD 0000 2381 00D8 0003 1000 1206 AE00"
	$"8100 BC00 030C 000E 05CA 0081 00A0 0003"
	$"0700 0903 E600 AD00 000E 8100 8100 8100"
	$"8100 8100 8100 AD00 000E 8100 8100 8100"
	$"8100 8100 8100 AD00 000E 8100 8100 8100"
	$"8100 8100 8100 AD00 000E 8100 8100 8100"
	$"8100 8100 8100 AD00 000E 8100 8100 8100"
	$"8100 8100 8100 AD00 000E 8100 8100 8100"
	$"8100 8100 8100 AD00 000E 8100 8100 8100"
	$"8100 8100 8100 AD00 000E 8100 8100 8100"
	$"8100 8100 8100 AD00 000E 8100 8100 8100"
	$"8100 8100 8100 AD00 000E 8100 8100 8100"
	$"8100 8100 8100 AD00 00FF"
};

resource 'PICT' (129, "About Mask") {
	6356,
	{0, 0, 88, 284},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0058 011C 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0058"
	$"011C 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0058 011C 0098 811C 0000 0000 0058"
	$"011C 0000 0000 0000 0000 0048 0000 0048"
	$"0000 0000 0008 0001 0008 0000 0000 0000"
	$"0000 0000 0000 004B 80D1 0000 0085 0000"
	$"FFFF FFFF FFFF 0001 1313 1111 0F0F 0002"
	$"1818 1717 1616 0003 1616 1515 1515 0004"
	$"3C3C 3B3B 3B3B 0005 FDFD FDFD FDFD 0006"
	$"FBFB FBFB FBFB 0007 F8F8 F8F8 F8F8 0008"
	$"F7F7 F7F7 F7F7 0009 F5F5 F5F5 F5F5 000A"
	$"F2F2 F2F2 F2F2 000B F1F1 F1F1 F1F1 000C"
	$"EFEF EFEF EFEF 000D ECEC ECEC ECEC 000E"
	$"EBEB EBEB EBEB 000F E9E9 E9E9 E9E9 0010"
	$"E6E6 E6E6 E6E6 0011 E5E5 E5E5 E5E5 0012"
	$"E3E3 E3E3 E3E3 0013 E0E0 E0E0 E0E0 0014"
	$"DEDE DEDE DEDE 0015 DDDD DDDD DDDD 0016"
	$"DADA DADA DADA 0017 D8D8 D8D8 D8D8 0018"
	$"D7D7 D7D7 D7D7 0019 D4D4 D4D4 D4D4 001A"
	$"D2D2 D2D2 D2D2 001B D1D1 D1D1 D1D1 001C"
	$"CFCF CFCF CFCF 001D CDCD CDCD CDCD 001E"
	$"CBCB CBCB CBCB 001F C9C9 C9C9 C9C9 0020"
	$"C7C7 C7C7 C7C7 0021 C5C5 C5C5 C5C5 0022"
	$"C2C2 C2C2 C2C2 0023 C0C0 C0C0 C0C0 0024"
	$"BFBF BFBF BFBF 0025 BCBC BCBC BCBC 0026"
	$"BBBB BBBB BBBB 0027 B9B9 B9B9 B9B9 0028"
	$"B7B7 B7B7 B7B7 0029 B5B5 B5B5 B5B5 002A"
	$"B3B3 B3B3 B3B3 002B B0B0 B0B0 B0B0 002C"
	$"AFAF AFAF AFAF 002D ACAC ACAC ACAC 002E"
	$"AAAA AAAA AAAA 002F A9A9 A9A9 A9A9 0030"
	$"A7A7 A7A7 A7A7 0031 A4A4 A4A4 A4A4 0032"
	$"A3A3 A3A3 A3A3 0033 A1A1 A1A1 A1A1 0034"
	$"9E9E 9E9E 9E9E 0035 9C9C 9C9C 9C9C 0036"
	$"9B9B 9B9B 9B9B 0037 9898 9898 9898 0038"
	$"9797 9797 9797 0039 9595 9595 9595 003A"
	$"9292 9292 9292 003B 9191 9191 9191 003C"
	$"8F8F 8F8F 8F8F 003D 8C8C 8C8C 8C8C 003E"
	$"8B8B 8B8B 8B8B 003F 8989 8989 8989 0040"
	$"8686 8686 8686 0041 8585 8585 8585 0042"
	$"8383 8383 8383 0043 8282 8282 8282 0044"
	$"8080 8080 8080 0045 7E7E 7E7E 7E7E 0046"
	$"7D7D 7D7D 7D7D 0047 7A7A 7A7A 7A7A 0048"
	$"7878 7878 7878 0049 7777 7777 7777 004A"
	$"7474 7474 7474 004B 7272 7272 7272 004C"
	$"7171 7171 7171 004D 6E6E 6E6E 6E6E 004E"
	$"6D6D 6D6D 6D6D 004F 6B6B 6B6B 6B6B 0050"
	$"6868 6868 6868 0051 6666 6666 6666 0052"
	$"6565 6565 6565 0053 6262 6262 6262 0054"
	$"6161 6161 6161 0055 5F5F 5F5F 5F5F 0056"
	$"5C5C 5C5C 5C5C 0057 5A5A 5A5A 5A5A 0058"
	$"5959 5959 5959 0059 5757 5757 5757 005A"
	$"5454 5454 5454 005B 5353 5353 5353 005C"
	$"5050 5050 5050 005D 4F4F 4F4F 4F4F 005E"
	$"4C4C 4C4C 4C4C 005F 4A4A 4A4A 4A4A 0060"
	$"4848 4848 4848 0061 4747 4747 4747 0062"
	$"4444 4444 4444 0063 4343 4343 4343 0064"
	$"4040 4040 4040 0065 3F3F 3F3F 3F3F 0066"
	$"3D3D 3D3D 3D3D 0067 3A3A 3A3A 3A3A 0068"
	$"3838 3838 3838 0069 3737 3737 3737 006A"
	$"3434 3434 3434 006B 3232 3232 3232 006C"
	$"3131 3131 3131 006D 2F2F 2F2F 2F2F 006E"
	$"2D2D 2D2D 2D2D 006F 2B2B 2B2B 2B2B 0070"
	$"2828 2828 2828 0071 2727 2727 2727 0072"
	$"2424 2424 2424 0073 2323 2323 2323 0074"
	$"2020 2020 2020 0075 1F1F 1F1F 1F1F 0076"
	$"1D1D 1D1D 1D1D 0077 1B1B 1B1B 1B1B 0078"
	$"1919 1919 1919 0079 1616 1616 1616 007A"
	$"1515 1515 1515 007B 1313 1313 1313 007C"
	$"1010 1010 1010 007D 0F0F 0F0F 0F0F 007E"
	$"0C0C 0C0C 0C0C 007F 0A0A 0A0A 0A0A 0080"
	$"0909 0909 0909 0081 0606 0606 0606 0082"
	$"0404 0404 0404 0083 0303 0303 0303 0084"
	$"0101 0101 0101 0085 0000 0000 0000 0000"
	$"0000 0058 011C 0000 0000 0058 011C 0000"
	$"0006 8100 8100 E500 000A D200 FD05 B400"
	$"8100 E500 001A D800 FD05 FF06 FD07 FF06"
	$"FF05 CD00 F605 F700 C200 FA05 C700 E500"
	$"0053 FA00 0005 FD06 FF05 FB00 FF05 F706"
	$"FE07 FC06 FE07 015D 84FE 8506 760D 0C0B"
	$"0908 07FC 06FE 05FA 00FE 0500 06FE 05FC"
	$"00FD 05F7 00F9 05FF 06F5 07FF 06FC 05FE"
	$"00C4 0008 052C 3030 3108 0807 07FA 06FF"
	$"05D0 00E5 0000 9FFD 0000 22FE 7000 65FE"
	$"0902 0706 06FD 0508 5257 5858 351F 0A12"
	$"53FC 7104 240B 2350 6FFE 7C02 5E0C 83FC"
	$"851D 713D 3C56 5554 4B1C 0A09 0908 0807"
	$"0706 0605 0527 3334 3425 0908 0807 0606"
	$"FE18 0014 FE07 FF06 FC05 FE06 FC07 0114"
	$"5DFE 7E05 7841 596B 7480 FE84 056F 0D0C"
	$"0B09 08FD 07FE 0600 05EB 00FF 05FF 06FF"
	$"05EB 00FD 05FD 0001 0E7B FC85 0E4A 0E0C"
	$"2F71 7071 471B 0A09 0807 0606 FD05 FB06"
	$"FF05 DE00 E500 00B7 FD00 0122 83FE 8509"
	$"2B10 0F0D 0A09 0707 4C7A FC85 0282 6083"
	$"FB85 0181 83FB 8502 6D19 84F4 850A 8480"
	$"807C 340C 0B0A 0907 69FC 8505 680F 0D0C"
	$"0A43 FD83 123B 0D0C 0A09 0807 072C 7B7F"
	$"7F80 7E6C 3B67 7E84 F385 016E 6DFE 72FF"
	$"7104 5C30 0B0A 0904 0706 0605 05F2 000A"
	$"1A45 4949 4A09 0908 0706 05FD 00FA 05FC"
	$"00FF 05FF 06FC 07FE 0600 6AFB 8503 6D18"
	$"156D FD85 1382 4810 0E0C 0A08 0734 3B04"
	$"0467 5617 0A09 0807 06FB 05FB 06FE 05EE"
	$"00FC 00FF 05FF 06FE 07FE 06FF 05F6 0000"
	$"AAFD 0001 2283 FE85 0784 8080 7A4E 0F29"
	$"65E9 8501 7E51 EE85 0471 3C3A 1666 FA85"
	$"0380 5F5C 70FB 8506 817B 593A 383E 76DF"
	$"8502 6730 0F04 0D0B 0907 07F7 06FF 05FF"
	$"0001 057D FD85 0552 0F0D 0B09 07FD 06FF"
	$"07FF 08FE 07FD 0602 333B 6EFE 8407 6F11"
	$"0C0B 0A09 097B FB85 0371 2520 6FFB 8505"
	$"7F73 6C4A 4A81 FB85 087B 1910 0D0B 0908"
	$"0730 FD34 FF35 FE09 FF08 FF07 FF06 FA05"
	$"FC06 FF05 FF00 0000 FE05 006D FE76 FD59"
	$"053B 0D09 0807 06FD 05FB 0000 85FD 0001"
	$"0B83 F985 0081 9185 007F 076E 5623 0D3D"
	$"5959 58FE 5908 5023 0A09 0807 0706 46FC"
	$"8508 791D 1613 0F0B 3C7A 84FE 8508 837C"
	$"2D0D 0C0A 0A34 81FA 8500 81FE 84FF 80FA"
	$"8503 7534 2D71 EE85 0683 795F 3C4D 7584"
	$"F985 0C80 7B68 2D0C 0B0A 0908 0807 0724"
	$"FE58 0031 FE09 FF07 FF06 0306 0707 34FA"
	$"850D 8343 130F 0D0B 0908 0807 0706 0605"
	$"FE00 004F FE00 0205 076E 8785 F585 0683"
	$"3B10 0E0C 2074 FA85 0481 7562 7582 F885"
	$"0182 80E9 8503 7842 397A DB85 FE80 047E"
	$"715C 677E FC85 0680 540F 0D64 7F7F 027F"
	$"8184 F985 0282 807F FB80 0743 0C0A 0907"
	$"0500 0000 27FE 0002 0507 6C87 85BF 8502"
	$"817B 82CB 8504 1D16 6685 85FC 85FC 8400"
	$"83F8 8507 7A14 110E 0A07 0500 001F FE00"
	$"0205 0737 8785 C085 0084 C885 0444 2A83"
	$"8585 ED85 077B 211C 160F 0A07 0500 1AFE"
	$"0003 0507 0C58 8885 8585 0080 FE85 ED85"
	$"077D 2F28 1E15 0D08 0500 17FD 0003 060A"
	$"1383 8985 8185 EE85 087A 473C 3225 190F"
	$"0906 0017 FD00 0206 094E 8885 8185 EF85"
	$"0983 5E4D 4437 291B 100A 0600 18FD 0002"
	$"0508 8188 8581 85F0 850A 815E 5750 4637"
	$"281A 1009 0600 17FD 0001 0543 8785 8185"
	$"F085 0A61 5C56 4D40 3122 160D 0805 0017"
	$"FD00 0105 6A87 8581 85F0 850A 615B 5246"
	$"3729 1C12 0A07 0500 17FD 0001 056A 8785"
	$"8185 F085 0A5F 574C 3D2E 2015 0D08 0600"
	$"0017 FD00 0106 6F87 8581 85F0 850A 5E53"
	$"4636 2618 0F09 0605 0000 18FD 0001 0683"
	$"8785 8185 F185 0B02 5A50 402F 1F13 0B07"
	$"0500 0000 18FE 0002 0507 8387 8581 85F1"
	$"8508 0458 4C3C 2A1B 1009 06FE 0000 19FE"
	$"0002 0507 8387 8581 85F2 8509 845E 5649"
	$"3726 180D 0805 FE00 0019 FE00 0205 0779"
	$"8785 8185 F285 0984 5C53 4634 2215 0C07"
	$"05FE 0000 17FE 0002 051D 8387 8581 85F1"
	$"8507 5E53 4331 2013 0B06 FD00 0015 FE00"
	$"0105 3E86 8581 85F0 8506 6941 301F 120A"
	$"06FD 0000 16FE 0001 053F 8685 8185 F085"
	$"0770 4331 2113 0B07 05FE 0000 16FE 0001"
	$"063F 8685 8185 F085 077E 4634 2416 0D08"
	$"05FE 0000 16FE 0001 0634 8685 8185 F085"
	$"0783 4A3A 291A 0F09 06FE 0000 15FE 0001"
	$"0635 8685 8185 EF85 064F 3F2E 1F12 0A06"
	$"FE00 0016 FE00 0106 1E86 8581 85EF 8509"
	$"5344 3322 150C 0705 0000 0017 FE00 0206"
	$"0980 8785 8185 EF85 0955 4836 2516 0C07"
	$"0500 0000 18FE 0002 0609 5A87 8581 85F0"
	$"850A 7A56 4937 2617 0D07 0500 0000 1AFE"
	$"0003 0508 0E79 8885 8185 F185 0B7E 5D55"
	$"4937 2516 0D07 0500 0000 1AFE 0003 0507"
	$"0D6E 8885 8185 F185 0B66 5C53 4533 2215"
	$"0C07 0500 0000 1AFE 0003 0507 0B6D 8885"
	$"8185 F285 0984 5F59 4F3F 2E1F 120A 06FE"
	$"0000 17FD 0001 0626 8785 8185 F185 085F"
	$"564A 3928 190F 0906 FE00 0017 FD00 0106"
	$"2687 8581 85F1 8508 7253 4634 2416 0D07"
	$"05FE 0000 16FD 0001 0525 8785 8185 F185"
	$"077A 5142 3120 130B 07FD 0000 16FD 0001"
	$"0631 8785 8185 F185 077A 5041 2F1F 120A"
	$"06FD 0000 16FD 0001 0639 8785 8185 F185"
	$"077A 5041 2F1F 120A 06FD 0000 17FD 0001"
	$"0653 8785 8185 F285 0883 6150 4130 1F12"
	$"0A06 FD00 0017 FD00 0106 6587 8581 85F2"
	$"8508 7F5B 5040 2F1F 120A 06FD 0000 17FD"
	$"0001 2F80 8785 8185 F285 0883 5A4F 3F2D"
	$"1E11 0A06 FD00 0017 FE00 0105 7F86 8581"
	$"85F2 8508 8359 4E3D 2C1C 1009 06FD 0000"
	$"17FE 0001 0684 8685 8185 F285 0883 584C"
	$"3C2A 1A0F 0905 FD00 0017 FE00 0106 8486"
	$"8581 85F2 8508 8358 4B3A 2819 0E08 05FD"
	$"0000 17FE 0001 0784 8685 8185 F285 087A"
	$"564A 3927 180D 0805 FD00 0018 FF00 0205"
	$"0773 8685 8185 F285 0870 5649 3726 160D"
	$"0705 FD00 0019 FF00 0305 0730 8387 8581"
	$"85F2 8508 6355 4735 2416 0C07 05FD 0000"
	$"1AFF 0004 0507 0C25 8488 8581 85F3 8508"
	$"835C 5344 3322 130B 07FC 0000 19FE 0003"
	$"060A 1374 8885 8185 F385 087D 5B50 402F"
	$"1F12 0A06 FC00 0019 FE00 0306 0910 6E88"
	$"8581 85F3 8508 7E59 4E3D 2C1C 1009 06FC"
	$"0000 19FE 0003 0507 0D6A 8885 8185 F385"
	$"0883 584C 3B2A 190F 0805 FC00 0018 FD00"
	$"0206 0A3A 8885 8185 F385 0883 564A 3928"
	$"180E 0805 FC00 0018 FD00 0206 0834 8885"
	$"8185 F385 0883 564A 3827 180D 0805 FC00"
	$"0017 FD00 0205 0720 8885 8185 F285 075A"
	$"4A39 2718 0D08 05FC 0000 17FC 0002 060A"
	$"8289 8581 85F2 8507 694C 3A28 190E 0805"
	$"FC00 0017 FC00 0206 0981 8985 8185 F285"
	$"077E 4D3C 2A1B 0F09 05FC 0000 17FC 0002"
	$"0609 7789 8581 85F2 8507 844F 3F2D 1D10"
	$"0906 FC00 0017 FC00 0205 0861 8985 8185"
	$"F285 0784 5242 301F 120A 06FC 0000 18FC"
	$"0002 0507 3489 8581 85F2 8508 8453 4633"
	$"2215 0C07 05FD 0000 19FC 0003 0507 0C83"
	$"8A85 8185 F285 0884 5548 3625 160C 0705"
	$"FD00 0018 FC00 0205 0721 8985 8185 F285"
	$"0882 564A 3827 170D 0705 FD00 0018 FC00"
	$"020E 6484 8985 8185 F285 0880 574A 3927"
	$"180D 0705 FD00 0017 FC00 010E 0488 8581"
	$"85F2 8508 7F57 4A39 2718 0D07 05FD 0000"
	$"19FC 0003 0E64 8484 8A85 8185 F285 087B"
	$"564A 3826 170D 0705 FD00 0018 FC00 0206"
	$"3453 8985 8185 F285 0875 5649 3725 160D"
	$"0705 FD00 0018 FC00 0206 0924 8985 8185"
	$"F285 0875 5547 3625 160D 0705 FD00 0018"
	$"FC00 0206 0939 8985 8185 F285 0878 664C"
	$"3625 160D 0805 FD00 0019 FC00 0206 0875"
	$"8985 8185 F385 0984 8585 8338 2719 0F09"
	$"06FD 0000 16FC 0002 0508 7E89 8581 85EF"
	$"8506 3C2C 1E13 0B07 05FE 0000 38FC 0002"
	$"0507 7EF9 8509 7D65 645E 6704 6662 717A"
	$"FD83 0880 746C 6D77 7E81 8384 F785 0183"
	$"84B4 8599 8500 84EA 85EF 8506 4233 2418"
	$"0F09 06FE 0000 55FC 0002 0507 7EFA 8506"
	$"8369 5D5A 5654 52FD 500D 6A01 0277 5859"
	$"5856 5553 5354 5579 F985 0984 6261 5F6B"
	$"7075 7D80 83F1 8500 81E4 8500 81EA 85B9"
	$"8503 8483 807B E685 0083 E985 F485 0084"
	$"FD85 064A 3B2C 1E12 0A06 FE00 008B FC00"
	$"2305 0720 3C46 5059 6166 6459 5855 504B"
	$"4642 403F 3F40 4245 494C 4D4E 4C4A 4746"
	$"4446 474A 02FA 850E 8460 5D59 5652 5050"
	$"5253 545B 6771 77FE 7A01 787C FE82 0402"
	$"615D 5C6F FE81 017D 82F5 8502 847E 81FA"
	$"8501 7681 EA85 E685 FF7C 0084 DC85 0A84"
	$"7B73 6A5D 5C5B 5959 6282 EB85 0380 7866"
	$"02E9 85FB 8505 8478 6D61 637B FB85 094F"
	$"4232 2215 0C07 0500 0000 ACFB 0024 060A"
	$"121E 2C39 444A 4D4E 4C48 423B 3531 2E2D"
	$"2D2E 3034 383C 3E3F 3D39 3634 3334 3639"
	$"3D54 84FC 8515 835C 5751 4A45 4241 4244"
	$"4649 4A4D 4E50 5152 5353 5454 FE55 0154"
	$"52FE 5002 5153 5CF7 8506 8168 5E5D 5B5E"
	$"81FE 8504 8370 5E5C 6DEB 85E6 8503 7761"
	$"6981 E485 FD7E 0E7C 6D66 5C5A 5956 5552"
	$"504E 4D4C 4E78 FB85 0184 7EF6 850B 7D64"
	$"5E5C 596B 7B7A 7B74 7581 EF85 0C85 837F"
	$"7977 045C 5B59 5655 537A FC85 0952 4736"
	$"2617 0D07 0500 0000 E0FB 001C 0609 1019"
	$"242F 373C 3D3D 3B37 312B 2520 1E1D 1D1E"
	$"2023 272B 2E2F 2D29 25FE 221E 2427 2C32"
	$"4A6D 7072 7475 6855 4F46 3D35 3130 3132"
	$"3437 393B 3D3F 4143 4445 46FD 4721 4643"
	$"4140 4042 4447 6062 7073 7475 7576 756A"
	$"5B59 5755 524F 4E5E 5F53 5556 5653 517D"
	$"EC85 FA85 0084 FD83 F285 0675 5D59 5561"
	$"7882 F685 0184 81FB 7E02 026D 62FE 701C"
	$"5F5A 5958 5656 5553 5250 4D4A 4743 403D"
	$"3C3B 3C3E 5E76 7F80 807D 605C 73F9 850F"
	$"7F67 5E5B 5853 4F4B 4949 4A4D 5052 5781"
	$"FC85 0284 8077 FC85 0283 7C71 0C63 5D5B"
	$"5958 5553 504D 4A47 4571 FE85 0B7E 6C50"
	$"4636 2618 0D07 0500 0001 07FB 0051 0508"
	$"0C13 1B22 282B 2D2C 2A27 221C 1713 1110"
	$"1011 1316 191D 1F20 1E1B 1715 1415 1618"
	$"1C22 2A33 3C44 4A4E 4E4A 4339 2F27 211F"
	$"2021 2325 282A 2C2D 3031 3233 3434 3536"
	$"3534 3130 2E2F 3033 3639 3C41 474C 4F50"
	$"FE52 1650 4F4C 4743 3F3D 3F41 4649 4A49"
	$"4643 4A6A 6F71 7374 7575 FD76 0272 7884"
	$"FA85 FF85 0B84 785F 5E5D 5B5A 5958 5869"
	$"81F5 8308 7B5C 5650 4B47 4749 51F9 852F"
	$"837A 655F 5D5B 5856 5655 5554 5353 5251"
	$"504F 4E4C 4A49 4746 4340 3D39 3531 2E2C"
	$"2A29 2A2D 333A 4249 4F52 5353 525A 7E82"
	$"FE84 117D 685C 5A56 524C 463F 3B38 383A"
	$"3D40 4446 53FE 7E04 7464 5B5B 5AFE 8004"
	$"7761 5B5A 591B 5654 514E 4B48 4541 3D39"
	$"3633 3437 3D45 4A4D 4A40 3324 160C 0705"
	$"0000 0110 FB00 0605 0609 0D12 1619 FE1C"
	$"121B 1815 110D 0B0A 0909 0A0B 0D0F 1213"
	$"1312 100E FD0C 0F0E 1115 1C24 2D34 3A3E"
	$"3E3B 342C 221A 15FE 130B 1516 1819 1B1D"
	$"1F20 2122 2223 FE24 2722 211F 1E1E 2022"
	$"2528 2B30 363B 3F41 4243 4241 3E3B 3631"
	$"2D2C 2D30 3437 3938 3633 3234 3A40 484D"
	$"50FE 52FC 5302 5E77 82FD 8513 8476 5E5D"
	$"5A57 5451 4F4E 4D4C 4C4D 4F50 5355 5656"
	$"FD57 FF56 0955 524D 453D 3837 393E 04FA"
	$"8554 8403 625B 5652 4D4A 4947 4746 4644"
	$"4241 403F 3D3B 3937 3533 312E 2B28 2421"
	$"1E1C 1A19 1B1E 222A 3239 3F43 4544 4343"
	$"4447 4B50 5355 5554 504C 453D 362F 2A27"
	$"2729 2D30 3234 383C 4147 4D50 5150 4F4E"
	$"4D4E 5050 5150 4D1B 4A46 423E 3A36 3330"
	$"2B28 2422 2327 2D36 3D40 3E37 2B1E 130B"
	$"0705 0000 010F FA00 0505 0609 0B0D 0FFE"
	$"1005 0F0E 0C0A 0807 FD06 FF07 0609 0A0C"
	$"0C0B 0A08 FD07 0F08 0A0D 1218 1E25 2A2D"
	$"2D2B 261F 1811 0DFE 0B09 0C0D 0D0F 1011"
	$"1213 1314 FE15 1016 1515 1312 1112 1314"
	$"1619 1C21 252A 2D30 FE31 1730 2D2A 2521"
	$"1E1C 1D20 2326 2827 2624 2427 2C32 393E"
	$"4143 43FC 4407 4546 494C 606E 6F70 FF59"
	$"1057 5450 4C47 423F 3D3B 3A3B 3C3E 4144"
	$"4749 FA4A 0B48 443F 372F 2927 292D 346A"
	$"83FC 851F 8278 5D53 4C44 3E3A 3736 3534"
	$"3332 3130 2E2D 2C2A 2826 2422 201E 1B18"
	$"1613 1110 FE0F 3112 161C 2229 2E32 3333"
	$"3231 3236 3B40 4648 4846 413B 342D 251F"
	$"1B19 191A 1D1F 2224 272B 3137 3D40 4241"
	$"3F3D 3D3E 4042 4240 3D18 3934 302C 2925"
	$"221F 1C19 1615 1619 1F27 2D31 302A 2118"
	$"0F09 06FE 0001 06F9 0003 0506 0708 FC09"
	$"0408 0706 0505 FD00 FF05 0006 FD07 0006"
	$"FB05 1006 080A 0E13 171B 1D1E 1C19 140F"
	$"0B08 0706 FE07 FF08 FF09 FF0A FF0B FB0C"
	$"000B FD0A 080C 0D0E 1013 171B 1D1F FE20"
	$"0A1F 1D1A 1613 1210 1113 1518 FC19 071C"
	$"2025 2A2D 3031 31FC 3207 3334 373B 3F44"
	$"494C FF4D 114B 4741 3B35 312D 2B2A 2929"
	$"2A2D 3033 3537 38FC 3966 3837 342F 2821"
	$"1C19 1A1E 242C 343E 4959 5D5E 5655 5049"
	$"3F36 2E29 2625 2422 2221 201F 1E1D 1C1A"
	$"1816 1615 1312 100E 0C0B 0A09 0908 090A"
	$"0D11 161A 1E21 2222 2121 2225 2A30 3436"
	$"3634 302B 241E 1813 100E 0E0F 1113 1416"
	$"181C 2127 2C2F 3030 2D2C 2B2D 2F30 302F"
	$"2B18 2824 201C 1916 1412 100E 0D0C 0D10"
	$"1419 1F21 211D 1711 0B07 05FE 0000 EFF8"
	$"0000 05FA 06FF 05F7 00FD 05F9 0010 0507"
	$"090B 0D10 1112 110F 0C0A 0706 0500 00FD"
	$"05FC 06FA 07FC 06FF 0706 080A 0C0D 1011"
	$"12FE 1316 1211 0F0D 0B0A 090A 0B0C 0E0F"
	$"1010 1213 1517 191C 1E1F 20FB 2107 2223"
	$"262A 2E33 373B FF3D 073A 3631 2A25 201D"
	$"1BFE 1905 1A1C 1F22 2426 FA27 2D26 2420"
	$"1B16 120F 1012 161E 2630 3942 474A 4B49"
	$"433B 3128 201B 1816 1515 1413 1212 1110"
	$"100F 0E0D 0C0C 0B0A 0908 07FE 06FF 05FF"
	$"0630 080A 0D0F 1213 1414 1313 1517 1B1F"
	$"2325 2524 201C 1612 0E0B 0908 0809 0A0A"
	$"0B0C 0E10 1519 1C1F 201F 1D1C 1C1D 1E20"
	$"201E 1C17 1916 1310 0F0D 0C0A 0908 0707"
	$"0809 0C10 1314 1412 0F0B 0806 FD00 00D2"
	$"F800 0005 FC06 FF05 E800 0405 0607 0809"
	$"FE0A 0309 0706 05F3 00FB 05FC 00FE 0503"
	$"0607 0809 FB0A FF09 0108 07FD 060B 0708"
	$"090A 0C0E 0F10 1111 1212 F813 0615 171A"
	$"1E22 262A FF2B 0729 2521 1B16 1310 0FFE"
	$"0E06 0F10 1213 1616 17FB 181E 1615 1310"
	$"0D0A 0909 0B0E 1319 212A 3137 3A3A 3834"
	$"2D24 1C15 100E 0D0C 0C0B 0BFE 0AFE 0900"
	$"08FE 07FE 06FF 05FA 0004 0506 0709 0AFC"
	$"0B10 0C0D 1013 1516 1615 1310 0D0A 0907"
	$"0605 05FE 06FF 0710 080A 0C0F 1112 1312"
	$"1110 1011 1213 1312 1008 0E0C 0A09 0807"
	$"0706 06FD 0509 0607 090B 0C0C 0A09 0706"
	$"FC00 00A4 F900 0105 06FD 07FF 0600 05E6"
	$"00FF 05FC 06FF 05E3 00FF 05F8 06FF 05FD"
	$"000C 0506 0708 0A0B 0C0D 0C0B 0B0A 0AF9"
	$"0B06 0C0D 0F12 1518 19FF 1B07 1917 1310"
	$"0D0B 0909 FE08 FF09 020A 0B0C F80D 180C"
	$"0B09 0807 0606 0709 0C10 161C 2226 2829"
	$"2824 1F18 120D 0A08 FD07 FB06 FC05 F300"
	$"0205 0606 FB07 0C08 090A 0C0C 0D0C 0B09"
	$"0807 0605 FB00 FE05 0206 0709 FC0A FE09"
	$"FD0A 0009 0308 0706 06FE 05FA 0007 0506"
	$"0607 0706 0605 FB00 006D FA00 0305 0607"
	$"08FE 0902 0706 05AC 0009 0506 0809 0A09"
	$"0908 0707 F906 FF07 0508 090A 0C0D 0FFF"
	$"1006 0F0D 0B09 0806 06FC 05FF 06F4 070C"
	$"0605 0500 0005 0607 0A0D 1115 17FE 1906"
	$"1613 0F0C 0906 06FE 05E3 0000 05FE 00FF"
	$"05FF 06FD 07FF 06FF 05F5 0000 05F3 06FF"
	$"05F2 00FF 05F8 0000 48FA 000A 0506 0709"
	$"0A0A 0908 0706 05AC 0001 0506 FE07 FF06"
	$"FF05 F800 FF05 FF06 0207 0809 FE09 0308"
	$"0706 05F7 00F6 05F9 0005 0506 080A 0C0D"
	$"FE0E 050D 0B09 0706 05D7 00FD 05E2 00E5"
	$"0000 2CFA 0003 0506 0708 FE09 0308 0706"
	$"05AB 00FC 05F1 00FE 05FE 06FF 05E0 0003"
	$"0506 0707 FE08 FF07 0106 05B2 00E5 0000"
	$"17F9 0009 0506 0708 0807 0706 0505 9300"
	$"D900 FA05 B000 E500 000E F800 0005 FC06"
	$"FF05 9200 8100 E500 00FF"
};

resource 'PICT' (2051, "Graycale Picker") {
	22792,
	{0, 0, 129, 129},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0081 0081 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0081"
	$"0081 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0081 0081 009A 0000 00FF 8204 0000"
	$"0000 0081 0081 0000 0004 0000 0000 0048"
	$"0000 0048 0000 0010 0020 0003 0008 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0081"
	$"0081 0000 0000 0081 0081 0040 000A 8101"
	$"0001 8200 8100 FE00 00BC 0001 FA00 F801"
	$"FA02 0001 FA03 0001 FA04 0001 FA05 0001"
	$"FA06 0001 FA07 0001 FA08 0001 FA09 0001"
	$"FA0A 0001 FA0B 0001 FA0C 0001 FA0D 0001"
	$"FA0E 0001 FA0F 0001 F800 FA01 0000 FA02"
	$"0000 FA03 0000 FA04 0000 FA05 0000 FA06"
	$"0000 FA07 0000 FA08 0000 FA09 0000 FA0A"
	$"0000 FA0B 0000 FA0C 0000 FA0D 0000 FA0E"
	$"0000 FB0F 000F F700 FA01 0000 FA02 0000"
	$"FA03 0000 FA04 0000 FA05 0000 FA06 0000"
	$"FA07 0000 FA08 0000 FA09 0000 FA0A 0000"
	$"FA0B 0000 FA0C 0000 FA0D 0000 FA0E 0000"
	$"FC0F FF0F 0000 00BC 0001 FA00 F801 FA02"
	$"0001 FA03 0001 FA04 0001 FA05 0001 FA06"
	$"0001 FA07 0001 FA08 0001 FA09 0001 FA0A"
	$"0001 FA0B 0001 FA0C 0001 FA0D 0001 FA0E"
	$"0001 FA0F 0001 F800 FA01 0000 FA02 0000"
	$"FA03 0000 FA04 0000 FA05 0000 FA06 0000"
	$"FA07 0000 FA08 0000 FA09 0000 FA0A 0000"
	$"FA0B 0000 FA0C 0000 FA0D 0000 FA0E 0000"
	$"FB0F 000F F700 FA01 0000 FA02 0000 FA03"
	$"0000 FA04 0000 FA05 0000 FA06 0000 FA07"
	$"0000 FA08 0000 FA09 0000 FA0A 0000 FA0B"
	$"0000 FA0C 0000 FA0D 0000 FA0E 0000 FC0F"
	$"FF0F 0000 00BC 0001 FA00 F801 FA02 0001"
	$"FA03 0001 FA04 0001 FA05 0001 FA06 0001"
	$"FA07 0001 FA08 0001 FA09 0001 FA0A 0001"
	$"FA0B 0001 FA0C 0001 FA0D 0001 FA0E 0001"
	$"FA0F 0001 F800 FA01 0000 FA02 0000 FA03"
	$"0000 FA04 0000 FA05 0000 FA06 0000 FA07"
	$"0000 FA08 0000 FA09 0000 FA0A 0000 FA0B"
	$"0000 FA0C 0000 FA0D 0000 FA0E 0000 FB0F"
	$"000F F700 FA01 0000 FA02 0000 FA03 0000"
	$"FA04 0000 FA05 0000 FA06 0000 FA07 0000"
	$"FA08 0000 FA09 0000 FA0A 0000 FA0B 0000"
	$"FA0C 0000 FA0D 0000 FA0E 0000 FC0F FF0F"
	$"0000 00BC 0001 FA00 F801 FA02 0001 FA03"
	$"0001 FA04 0001 FA05 0001 FA06 0001 FA07"
	$"0001 FA08 0001 FA09 0001 FA0A 0001 FA0B"
	$"0001 FA0C 0001 FA0D 0001 FA0E 0001 FA0F"
	$"0001 F800 FA01 0000 FA02 0000 FA03 0000"
	$"FA04 0000 FA05 0000 FA06 0000 FA07 0000"
	$"FA08 0000 FA09 0000 FA0A 0000 FA0B 0000"
	$"FA0C 0000 FA0D 0000 FA0E 0000 FB0F 000F"
	$"F700 FA01 0000 FA02 0000 FA03 0000 FA04"
	$"0000 FA05 0000 FA06 0000 FA07 0000 FA08"
	$"0000 FA09 0000 FA0A 0000 FA0B 0000 FA0C"
	$"0000 FA0D 0000 FA0E 0000 FC0F FF0F 0000"
	$"00BC 0001 FA00 F801 FA02 0001 FA03 0001"
	$"FA04 0001 FA05 0001 FA06 0001 FA07 0001"
	$"FA08 0001 FA09 0001 FA0A 0001 FA0B 0001"
	$"FA0C 0001 FA0D 0001 FA0E 0001 FA0F 0001"
	$"F800 FA01 0000 FA02 0000 FA03 0000 FA04"
	$"0000 FA05 0000 FA06 0000 FA07 0000 FA08"
	$"0000 FA09 0000 FA0A 0000 FA0B 0000 FA0C"
	$"0000 FA0D 0000 FA0E 0000 FB0F 000F F700"
	$"FA01 0000 FA02 0000 FA03 0000 FA04 0000"
	$"FA05 0000 FA06 0000 FA07 0000 FA08 0000"
	$"FA09 0000 FA0A 0000 FA0B 0000 FA0C 0000"
	$"FA0D 0000 FA0E 0000 FC0F FF0F 0000 00BC"
	$"0001 FA00 F801 FA02 0001 FA03 0001 FA04"
	$"0001 FA05 0001 FA06 0001 FA07 0001 FA08"
	$"0001 FA09 0001 FA0A 0001 FA0B 0001 FA0C"
	$"0001 FA0D 0001 FA0E 0001 FA0F 0001 F800"
	$"FA01 0000 FA02 0000 FA03 0000 FA04 0000"
	$"FA05 0000 FA06 0000 FA07 0000 FA08 0000"
	$"FA09 0000 FA0A 0000 FA0B 0000 FA0C 0000"
	$"FA0D 0000 FA0E 0000 FB0F 000F F700 FA01"
	$"0000 FA02 0000 FA03 0000 FA04 0000 FA05"
	$"0000 FA06 0000 FA07 0000 FA08 0000 FA09"
	$"0000 FA0A 0000 FA0B 0000 FA0C 0000 FA0D"
	$"0000 FA0E 0000 FC0F FF0F 0000 00BC 0001"
	$"FA00 F801 FA02 0001 FA03 0001 FA04 0001"
	$"FA05 0001 FA06 0001 FA07 0001 FA08 0001"
	$"FA09 0001 FA0A 0001 FA0B 0001 FA0C 0001"
	$"FA0D 0001 FA0E 0001 FA0F 0001 F800 FA01"
	$"0000 FA02 0000 FA03 0000 FA04 0000 FA05"
	$"0000 FA06 0000 FA07 0000 FA08 0000 FA09"
	$"0000 FA0A 0000 FA0B 0000 FA0C 0000 FA0D"
	$"0000 FA0E 0000 FB0F 000F F700 FA01 0000"
	$"FA02 0000 FA03 0000 FA04 0000 FA05 0000"
	$"FA06 0000 FA07 0000 FA08 0000 FA09 0000"
	$"FA0A 0000 FA0B 0000 FA0C 0000 FA0D 0000"
	$"FA0E 0000 FC0F FF0F 0000 000A 8101 0001"
	$"8200 8100 FE00 00C7 0001 FA10 0001 FA11"
	$"0001 FA12 0001 FA13 0001 FA14 0001 FA15"
	$"0001 FA16 0001 FA17 0001 FA18 0001 FA19"
	$"0001 FA1A 0001 FA1B 0001 FA1C 0001 FA1D"
	$"0001 FA1E 0001 FA1F 0101 00FA 1000 00FA"
	$"1100 00FA 1200 00FA 1300 00FA 1400 00FA"
	$"1500 00FA 1600 00FA 1700 00FA 1800 00FA"
	$"1900 00FA 1A00 00FA 1B00 00FA 1C00 00FA"
	$"1D00 00FA 1E00 00FB 1F02 1F00 00FA 1000"
	$"00FA 1100 00FA 1200 00FA 1300 00FA 1400"
	$"00FA 1500 00FA 1600 00FA 1700 00FA 1800"
	$"00FA 1900 00FA 1A00 00FA 1B00 00FA 1C00"
	$"00FA 1D00 00FA 1E00 00FC 1FFF 1F00 0000"
	$"C700 01FA 1000 01FA 1100 01FA 1200 01FA"
	$"1300 01FA 1400 01FA 1500 01FA 1600 01FA"
	$"1700 01FA 1800 01FA 1900 01FA 1A00 01FA"
	$"1B00 01FA 1C00 01FA 1D00 01FA 1E00 01FA"
	$"1F01 0100 FA10 0000 FA11 0000 FA12 0000"
	$"FA13 0000 FA14 0000 FA15 0000 FA16 0000"
	$"FA17 0000 FA18 0000 FA19 0000 FA1A 0000"
	$"FA1B 0000 FA1C 0000 FA1D 0000 FA1E 0000"
	$"FB1F 021F 0000 FA10 0000 FA11 0000 FA12"
	$"0000 FA13 0000 FA14 0000 FA15 0000 FA16"
	$"0000 FA17 0000 FA18 0000 FA19 0000 FA1A"
	$"0000 FA1B 0000 FA1C 0000 FA1D 0000 FA1E"
	$"0000 FC1F FF1F 0000 00C7 0001 FA10 0001"
	$"FA11 0001 FA12 0001 FA13 0001 FA14 0001"
	$"FA15 0001 FA16 0001 FA17 0001 FA18 0001"
	$"FA19 0001 FA1A 0001 FA1B 0001 FA1C 0001"
	$"FA1D 0001 FA1E 0001 FA1F 0101 00FA 1000"
	$"00FA 1100 00FA 1200 00FA 1300 00FA 1400"
	$"00FA 1500 00FA 1600 00FA 1700 00FA 1800"
	$"00FA 1900 00FA 1A00 00FA 1B00 00FA 1C00"
	$"00FA 1D00 00FA 1E00 00FB 1F02 1F00 00FA"
	$"1000 00FA 1100 00FA 1200 00FA 1300 00FA"
	$"1400 00FA 1500 00FA 1600 00FA 1700 00FA"
	$"1800 00FA 1900 00FA 1A00 00FA 1B00 00FA"
	$"1C00 00FA 1D00 00FA 1E00 00FC 1FFF 1F00"
	$"0000 C700 01FA 1000 01FA 1100 01FA 1200"
	$"01FA 1300 01FA 1400 01FA 1500 01FA 1600"
	$"01FA 1700 01FA 1800 01FA 1900 01FA 1A00"
	$"01FA 1B00 01FA 1C00 01FA 1D00 01FA 1E00"
	$"01FA 1F01 0100 FA10 0000 FA11 0000 FA12"
	$"0000 FA13 0000 FA14 0000 FA15 0000 FA16"
	$"0000 FA17 0000 FA18 0000 FA19 0000 FA1A"
	$"0000 FA1B 0000 FA1C 0000 FA1D 0000 FA1E"
	$"0000 FB1F 021F 0000 FA10 0000 FA11 0000"
	$"FA12 0000 FA13 0000 FA14 0000 FA15 0000"
	$"FA16 0000 FA17 0000 FA18 0000 FA19 0000"
	$"FA1A 0000 FA1B 0000 FA1C 0000 FA1D 0000"
	$"FA1E 0000 FC1F FF1F 0000 00C7 0001 FA10"
	$"0001 FA11 0001 FA12 0001 FA13 0001 FA14"
	$"0001 FA15 0001 FA16 0001 FA17 0001 FA18"
	$"0001 FA19 0001 FA1A 0001 FA1B 0001 FA1C"
	$"0001 FA1D 0001 FA1E 0001 FA1F 0101 00FA"
	$"1000 00FA 1100 00FA 1200 00FA 1300 00FA"
	$"1400 00FA 1500 00FA 1600 00FA 1700 00FA"
	$"1800 00FA 1900 00FA 1A00 00FA 1B00 00FA"
	$"1C00 00FA 1D00 00FA 1E00 00FB 1F02 1F00"
	$"00FA 1000 00FA 1100 00FA 1200 00FA 1300"
	$"00FA 1400 00FA 1500 00FA 1600 00FA 1700"
	$"00FA 1800 00FA 1900 00FA 1A00 00FA 1B00"
	$"00FA 1C00 00FA 1D00 00FA 1E00 00FC 1FFF"
	$"1F00 0000 C700 01FA 1000 01FA 1100 01FA"
	$"1200 01FA 1300 01FA 1400 01FA 1500 01FA"
	$"1600 01FA 1700 01FA 1800 01FA 1900 01FA"
	$"1A00 01FA 1B00 01FA 1C00 01FA 1D00 01FA"
	$"1E00 01FA 1F01 0100 FA10 0000 FA11 0000"
	$"FA12 0000 FA13 0000 FA14 0000 FA15 0000"
	$"FA16 0000 FA17 0000 FA18 0000 FA19 0000"
	$"FA1A 0000 FA1B 0000 FA1C 0000 FA1D 0000"
	$"FA1E 0000 FB1F 021F 0000 FA10 0000 FA11"
	$"0000 FA12 0000 FA13 0000 FA14 0000 FA15"
	$"0000 FA16 0000 FA17 0000 FA18 0000 FA19"
	$"0000 FA1A 0000 FA1B 0000 FA1C 0000 FA1D"
	$"0000 FA1E 0000 FC1F FF1F 0000 00C7 0001"
	$"FA10 0001 FA11 0001 FA12 0001 FA13 0001"
	$"FA14 0001 FA15 0001 FA16 0001 FA17 0001"
	$"FA18 0001 FA19 0001 FA1A 0001 FA1B 0001"
	$"FA1C 0001 FA1D 0001 FA1E 0001 FA1F 0101"
	$"00FA 1000 00FA 1100 00FA 1200 00FA 1300"
	$"00FA 1400 00FA 1500 00FA 1600 00FA 1700"
	$"00FA 1800 00FA 1900 00FA 1A00 00FA 1B00"
	$"00FA 1C00 00FA 1D00 00FA 1E00 00FB 1F02"
	$"1F00 00FA 1000 00FA 1100 00FA 1200 00FA"
	$"1300 00FA 1400 00FA 1500 00FA 1600 00FA"
	$"1700 00FA 1800 00FA 1900 00FA 1A00 00FA"
	$"1B00 00FA 1C00 00FA 1D00 00FA 1E00 00FC"
	$"1FFF 1F00 0000 0A81 0100 0182 0081 00FE"
	$"0000 C700 01FA 2000 01FA 2100 01FA 2200"
	$"01FA 2300 01FA 2400 01FA 2500 01FA 2600"
	$"01FA 2700 01FA 2800 01FA 2900 01FA 2A00"
	$"01FA 2B00 01FA 2C00 01FA 2D00 01FA 2E00"
	$"01FA 2F01 0100 FA20 0000 FA21 0000 FA22"
	$"0000 FA23 0000 FA24 0000 FA25 0000 FA26"
	$"0000 FA27 0000 FA28 0000 FA29 0000 FA2A"
	$"0000 FA2B 0000 FA2C 0000 FA2D 0000 FA2E"
	$"0000 FB2F 022F 0000 FA20 0000 FA21 0000"
	$"FA22 0000 FA23 0000 FA24 0000 FA25 0000"
	$"FA26 0000 FA27 0000 FA28 0000 FA29 0000"
	$"FA2A 0000 FA2B 0000 FA2C 0000 FA2D 0000"
	$"FA2E 0000 FC2F FF2F 0000 00C7 0001 FA20"
	$"0001 FA21 0001 FA22 0001 FA23 0001 FA24"
	$"0001 FA25 0001 FA26 0001 FA27 0001 FA28"
	$"0001 FA29 0001 FA2A 0001 FA2B 0001 FA2C"
	$"0001 FA2D 0001 FA2E 0001 FA2F 0101 00FA"
	$"2000 00FA 2100 00FA 2200 00FA 2300 00FA"
	$"2400 00FA 2500 00FA 2600 00FA 2700 00FA"
	$"2800 00FA 2900 00FA 2A00 00FA 2B00 00FA"
	$"2C00 00FA 2D00 00FA 2E00 00FB 2F02 2F00"
	$"00FA 2000 00FA 2100 00FA 2200 00FA 2300"
	$"00FA 2400 00FA 2500 00FA 2600 00FA 2700"
	$"00FA 2800 00FA 2900 00FA 2A00 00FA 2B00"
	$"00FA 2C00 00FA 2D00 00FA 2E00 00FC 2FFF"
	$"2F00 0000 C700 01FA 2000 01FA 2100 01FA"
	$"2200 01FA 2300 01FA 2400 01FA 2500 01FA"
	$"2600 01FA 2700 01FA 2800 01FA 2900 01FA"
	$"2A00 01FA 2B00 01FA 2C00 01FA 2D00 01FA"
	$"2E00 01FA 2F01 0100 FA20 0000 FA21 0000"
	$"FA22 0000 FA23 0000 FA24 0000 FA25 0000"
	$"FA26 0000 FA27 0000 FA28 0000 FA29 0000"
	$"FA2A 0000 FA2B 0000 FA2C 0000 FA2D 0000"
	$"FA2E 0000 FB2F 022F 0000 FA20 0000 FA21"
	$"0000 FA22 0000 FA23 0000 FA24 0000 FA25"
	$"0000 FA26 0000 FA27 0000 FA28 0000 FA29"
	$"0000 FA2A 0000 FA2B 0000 FA2C 0000 FA2D"
	$"0000 FA2E 0000 FC2F FF2F 0000 00C7 0001"
	$"FA20 0001 FA21 0001 FA22 0001 FA23 0001"
	$"FA24 0001 FA25 0001 FA26 0001 FA27 0001"
	$"FA28 0001 FA29 0001 FA2A 0001 FA2B 0001"
	$"FA2C 0001 FA2D 0001 FA2E 0001 FA2F 0101"
	$"00FA 2000 00FA 2100 00FA 2200 00FA 2300"
	$"00FA 2400 00FA 2500 00FA 2600 00FA 2700"
	$"00FA 2800 00FA 2900 00FA 2A00 00FA 2B00"
	$"00FA 2C00 00FA 2D00 00FA 2E00 00FB 2F02"
	$"2F00 00FA 2000 00FA 2100 00FA 2200 00FA"
	$"2300 00FA 2400 00FA 2500 00FA 2600 00FA"
	$"2700 00FA 2800 00FA 2900 00FA 2A00 00FA"
	$"2B00 00FA 2C00 00FA 2D00 00FA 2E00 00FC"
	$"2FFF 2F00 0000 C700 01FA 2000 01FA 2100"
	$"01FA 2200 01FA 2300 01FA 2400 01FA 2500"
	$"01FA 2600 01FA 2700 01FA 2800 01FA 2900"
	$"01FA 2A00 01FA 2B00 01FA 2C00 01FA 2D00"
	$"01FA 2E00 01FA 2F01 0100 FA20 0000 FA21"
	$"0000 FA22 0000 FA23 0000 FA24 0000 FA25"
	$"0000 FA26 0000 FA27 0000 FA28 0000 FA29"
	$"0000 FA2A 0000 FA2B 0000 FA2C 0000 FA2D"
	$"0000 FA2E 0000 FB2F 022F 0000 FA20 0000"
	$"FA21 0000 FA22 0000 FA23 0000 FA24 0000"
	$"FA25 0000 FA26 0000 FA27 0000 FA28 0000"
	$"FA29 0000 FA2A 0000 FA2B 0000 FA2C 0000"
	$"FA2D 0000 FA2E 0000 FC2F FF2F 0000 00C7"
	$"0001 FA20 0001 FA21 0001 FA22 0001 FA23"
	$"0001 FA24 0001 FA25 0001 FA26 0001 FA27"
	$"0001 FA28 0001 FA29 0001 FA2A 0001 FA2B"
	$"0001 FA2C 0001 FA2D 0001 FA2E 0001 FA2F"
	$"0101 00FA 2000 00FA 2100 00FA 2200 00FA"
	$"2300 00FA 2400 00FA 2500 00FA 2600 00FA"
	$"2700 00FA 2800 00FA 2900 00FA 2A00 00FA"
	$"2B00 00FA 2C00 00FA 2D00 00FA 2E00 00FB"
	$"2F02 2F00 00FA 2000 00FA 2100 00FA 2200"
	$"00FA 2300 00FA 2400 00FA 2500 00FA 2600"
	$"00FA 2700 00FA 2800 00FA 2900 00FA 2A00"
	$"00FA 2B00 00FA 2C00 00FA 2D00 00FA 2E00"
	$"00FC 2FFF 2F00 0000 C700 01FA 2000 01FA"
	$"2100 01FA 2200 01FA 2300 01FA 2400 01FA"
	$"2500 01FA 2600 01FA 2700 01FA 2800 01FA"
	$"2900 01FA 2A00 01FA 2B00 01FA 2C00 01FA"
	$"2D00 01FA 2E00 01FA 2F01 0100 FA20 0000"
	$"FA21 0000 FA22 0000 FA23 0000 FA24 0000"
	$"FA25 0000 FA26 0000 FA27 0000 FA28 0000"
	$"FA29 0000 FA2A 0000 FA2B 0000 FA2C 0000"
	$"FA2D 0000 FA2E 0000 FB2F 022F 0000 FA20"
	$"0000 FA21 0000 FA22 0000 FA23 0000 FA24"
	$"0000 FA25 0000 FA26 0000 FA27 0000 FA28"
	$"0000 FA29 0000 FA2A 0000 FA2B 0000 FA2C"
	$"0000 FA2D 0000 FA2E 0000 FC2F FF2F 0000"
	$"000A 8101 0001 8200 8100 FE00 00C7 0001"
	$"FA30 0001 FA31 0001 FA32 0001 FA33 0001"
	$"FA34 0001 FA35 0001 FA36 0001 FA37 0001"
	$"FA38 0001 FA39 0001 FA3A 0001 FA3B 0001"
	$"FA3C 0001 FA3D 0001 FA3E 0001 FA3F 0101"
	$"00FA 3000 00FA 3100 00FA 3200 00FA 3300"
	$"00FA 3400 00FA 3500 00FA 3600 00FA 3700"
	$"00FA 3800 00FA 3900 00FA 3A00 00FA 3B00"
	$"00FA 3C00 00FA 3D00 00FA 3E00 00FB 3F02"
	$"3F00 00FA 3000 00FA 3100 00FA 3200 00FA"
	$"3300 00FA 3400 00FA 3500 00FA 3600 00FA"
	$"3700 00FA 3800 00FA 3900 00FA 3A00 00FA"
	$"3B00 00FA 3C00 00FA 3D00 00FA 3E00 00FC"
	$"3FFF 3F00 0000 C700 01FA 3000 01FA 3100"
	$"01FA 3200 01FA 3300 01FA 3400 01FA 3500"
	$"01FA 3600 01FA 3700 01FA 3800 01FA 3900"
	$"01FA 3A00 01FA 3B00 01FA 3C00 01FA 3D00"
	$"01FA 3E00 01FA 3F01 0100 FA30 0000 FA31"
	$"0000 FA32 0000 FA33 0000 FA34 0000 FA35"
	$"0000 FA36 0000 FA37 0000 FA38 0000 FA39"
	$"0000 FA3A 0000 FA3B 0000 FA3C 0000 FA3D"
	$"0000 FA3E 0000 FB3F 023F 0000 FA30 0000"
	$"FA31 0000 FA32 0000 FA33 0000 FA34 0000"
	$"FA35 0000 FA36 0000 FA37 0000 FA38 0000"
	$"FA39 0000 FA3A 0000 FA3B 0000 FA3C 0000"
	$"FA3D 0000 FA3E 0000 FC3F FF3F 0000 00C7"
	$"0001 FA30 0001 FA31 0001 FA32 0001 FA33"
	$"0001 FA34 0001 FA35 0001 FA36 0001 FA37"
	$"0001 FA38 0001 FA39 0001 FA3A 0001 FA3B"
	$"0001 FA3C 0001 FA3D 0001 FA3E 0001 FA3F"
	$"0101 00FA 3000 00FA 3100 00FA 3200 00FA"
	$"3300 00FA 3400 00FA 3500 00FA 3600 00FA"
	$"3700 00FA 3800 00FA 3900 00FA 3A00 00FA"
	$"3B00 00FA 3C00 00FA 3D00 00FA 3E00 00FB"
	$"3F02 3F00 00FA 3000 00FA 3100 00FA 3200"
	$"00FA 3300 00FA 3400 00FA 3500 00FA 3600"
	$"00FA 3700 00FA 3800 00FA 3900 00FA 3A00"
	$"00FA 3B00 00FA 3C00 00FA 3D00 00FA 3E00"
	$"00FC 3FFF 3F00 0000 C700 01FA 3000 01FA"
	$"3100 01FA 3200 01FA 3300 01FA 3400 01FA"
	$"3500 01FA 3600 01FA 3700 01FA 3800 01FA"
	$"3900 01FA 3A00 01FA 3B00 01FA 3C00 01FA"
	$"3D00 01FA 3E00 01FA 3F01 0100 FA30 0000"
	$"FA31 0000 FA32 0000 FA33 0000 FA34 0000"
	$"FA35 0000 FA36 0000 FA37 0000 FA38 0000"
	$"FA39 0000 FA3A 0000 FA3B 0000 FA3C 0000"
	$"FA3D 0000 FA3E 0000 FB3F 023F 0000 FA30"
	$"0000 FA31 0000 FA32 0000 FA33 0000 FA34"
	$"0000 FA35 0000 FA36 0000 FA37 0000 FA38"
	$"0000 FA39 0000 FA3A 0000 FA3B 0000 FA3C"
	$"0000 FA3D 0000 FA3E 0000 FC3F FF3F 0000"
	$"00C7 0001 FA30 0001 FA31 0001 FA32 0001"
	$"FA33 0001 FA34 0001 FA35 0001 FA36 0001"
	$"FA37 0001 FA38 0001 FA39 0001 FA3A 0001"
	$"FA3B 0001 FA3C 0001 FA3D 0001 FA3E 0001"
	$"FA3F 0101 00FA 3000 00FA 3100 00FA 3200"
	$"00FA 3300 00FA 3400 00FA 3500 00FA 3600"
	$"00FA 3700 00FA 3800 00FA 3900 00FA 3A00"
	$"00FA 3B00 00FA 3C00 00FA 3D00 00FA 3E00"
	$"00FB 3F02 3F00 00FA 3000 00FA 3100 00FA"
	$"3200 00FA 3300 00FA 3400 00FA 3500 00FA"
	$"3600 00FA 3700 00FA 3800 00FA 3900 00FA"
	$"3A00 00FA 3B00 00FA 3C00 00FA 3D00 00FA"
	$"3E00 00FC 3FFF 3F00 0000 C700 01FA 3000"
	$"01FA 3100 01FA 3200 01FA 3300 01FA 3400"
	$"01FA 3500 01FA 3600 01FA 3700 01FA 3800"
	$"01FA 3900 01FA 3A00 01FA 3B00 01FA 3C00"
	$"01FA 3D00 01FA 3E00 01FA 3F01 0100 FA30"
	$"0000 FA31 0000 FA32 0000 FA33 0000 FA34"
	$"0000 FA35 0000 FA36 0000 FA37 0000 FA38"
	$"0000 FA39 0000 FA3A 0000 FA3B 0000 FA3C"
	$"0000 FA3D 0000 FA3E 0000 FB3F 023F 0000"
	$"FA30 0000 FA31 0000 FA32 0000 FA33 0000"
	$"FA34 0000 FA35 0000 FA36 0000 FA37 0000"
	$"FA38 0000 FA39 0000 FA3A 0000 FA3B 0000"
	$"FA3C 0000 FA3D 0000 FA3E 0000 FC3F FF3F"
	$"0000 00C7 0001 FA30 0001 FA31 0001 FA32"
	$"0001 FA33 0001 FA34 0001 FA35 0001 FA36"
	$"0001 FA37 0001 FA38 0001 FA39 0001 FA3A"
	$"0001 FA3B 0001 FA3C 0001 FA3D 0001 FA3E"
	$"0001 FA3F 0101 00FA 3000 00FA 3100 00FA"
	$"3200 00FA 3300 00FA 3400 00FA 3500 00FA"
	$"3600 00FA 3700 00FA 3800 00FA 3900 00FA"
	$"3A00 00FA 3B00 00FA 3C00 00FA 3D00 00FA"
	$"3E00 00FB 3F02 3F00 00FA 3000 00FA 3100"
	$"00FA 3200 00FA 3300 00FA 3400 00FA 3500"
	$"00FA 3600 00FA 3700 00FA 3800 00FA 3900"
	$"00FA 3A00 00FA 3B00 00FA 3C00 00FA 3D00"
	$"00FA 3E00 00FC 3FFF 3F00 0000 0A81 0100"
	$"0182 0081 00FE 0000 C700 01FA 4000 01FA"
	$"4100 01FA 4200 01FA 4300 01FA 4400 01FA"
	$"4500 01FA 4600 01FA 4700 01FA 4800 01FA"
	$"4900 01FA 4A00 01FA 4B00 01FA 4C00 01FA"
	$"4D00 01FA 4E00 01FA 4F01 0100 FA40 0000"
	$"FA41 0000 FA42 0000 FA43 0000 FA44 0000"
	$"FA45 0000 FA46 0000 FA47 0000 FA48 0000"
	$"FA49 0000 FA4A 0000 FA4B 0000 FA4C 0000"
	$"FA4D 0000 FA4E 0000 FB4F 024F 0000 FA40"
	$"0000 FA41 0000 FA42 0000 FA43 0000 FA44"
	$"0000 FA45 0000 FA46 0000 FA47 0000 FA48"
	$"0000 FA49 0000 FA4A 0000 FA4B 0000 FA4C"
	$"0000 FA4D 0000 FA4E 0000 FC4F FF4F 0000"
	$"00C7 0001 FA40 0001 FA41 0001 FA42 0001"
	$"FA43 0001 FA44 0001 FA45 0001 FA46 0001"
	$"FA47 0001 FA48 0001 FA49 0001 FA4A 0001"
	$"FA4B 0001 FA4C 0001 FA4D 0001 FA4E 0001"
	$"FA4F 0101 00FA 4000 00FA 4100 00FA 4200"
	$"00FA 4300 00FA 4400 00FA 4500 00FA 4600"
	$"00FA 4700 00FA 4800 00FA 4900 00FA 4A00"
	$"00FA 4B00 00FA 4C00 00FA 4D00 00FA 4E00"
	$"00FB 4F02 4F00 00FA 4000 00FA 4100 00FA"
	$"4200 00FA 4300 00FA 4400 00FA 4500 00FA"
	$"4600 00FA 4700 00FA 4800 00FA 4900 00FA"
	$"4A00 00FA 4B00 00FA 4C00 00FA 4D00 00FA"
	$"4E00 00FC 4FFF 4F00 0000 C700 01FA 4000"
	$"01FA 4100 01FA 4200 01FA 4300 01FA 4400"
	$"01FA 4500 01FA 4600 01FA 4700 01FA 4800"
	$"01FA 4900 01FA 4A00 01FA 4B00 01FA 4C00"
	$"01FA 4D00 01FA 4E00 01FA 4F01 0100 FA40"
	$"0000 FA41 0000 FA42 0000 FA43 0000 FA44"
	$"0000 FA45 0000 FA46 0000 FA47 0000 FA48"
	$"0000 FA49 0000 FA4A 0000 FA4B 0000 FA4C"
	$"0000 FA4D 0000 FA4E 0000 FB4F 024F 0000"
	$"FA40 0000 FA41 0000 FA42 0000 FA43 0000"
	$"FA44 0000 FA45 0000 FA46 0000 FA47 0000"
	$"FA48 0000 FA49 0000 FA4A 0000 FA4B 0000"
	$"FA4C 0000 FA4D 0000 FA4E 0000 FC4F FF4F"
	$"0000 00C7 0001 FA40 0001 FA41 0001 FA42"
	$"0001 FA43 0001 FA44 0001 FA45 0001 FA46"
	$"0001 FA47 0001 FA48 0001 FA49 0001 FA4A"
	$"0001 FA4B 0001 FA4C 0001 FA4D 0001 FA4E"
	$"0001 FA4F 0101 00FA 4000 00FA 4100 00FA"
	$"4200 00FA 4300 00FA 4400 00FA 4500 00FA"
	$"4600 00FA 4700 00FA 4800 00FA 4900 00FA"
	$"4A00 00FA 4B00 00FA 4C00 00FA 4D00 00FA"
	$"4E00 00FB 4F02 4F00 00FA 4000 00FA 4100"
	$"00FA 4200 00FA 4300 00FA 4400 00FA 4500"
	$"00FA 4600 00FA 4700 00FA 4800 00FA 4900"
	$"00FA 4A00 00FA 4B00 00FA 4C00 00FA 4D00"
	$"00FA 4E00 00FC 4FFF 4F00 0000 C700 01FA"
	$"4000 01FA 4100 01FA 4200 01FA 4300 01FA"
	$"4400 01FA 4500 01FA 4600 01FA 4700 01FA"
	$"4800 01FA 4900 01FA 4A00 01FA 4B00 01FA"
	$"4C00 01FA 4D00 01FA 4E00 01FA 4F01 0100"
	$"FA40 0000 FA41 0000 FA42 0000 FA43 0000"
	$"FA44 0000 FA45 0000 FA46 0000 FA47 0000"
	$"FA48 0000 FA49 0000 FA4A 0000 FA4B 0000"
	$"FA4C 0000 FA4D 0000 FA4E 0000 FB4F 024F"
	$"0000 FA40 0000 FA41 0000 FA42 0000 FA43"
	$"0000 FA44 0000 FA45 0000 FA46 0000 FA47"
	$"0000 FA48 0000 FA49 0000 FA4A 0000 FA4B"
	$"0000 FA4C 0000 FA4D 0000 FA4E 0000 FC4F"
	$"FF4F 0000 00C7 0001 FA40 0001 FA41 0001"
	$"FA42 0001 FA43 0001 FA44 0001 FA45 0001"
	$"FA46 0001 FA47 0001 FA48 0001 FA49 0001"
	$"FA4A 0001 FA4B 0001 FA4C 0001 FA4D 0001"
	$"FA4E 0001 FA4F 0101 00FA 4000 00FA 4100"
	$"00FA 4200 00FA 4300 00FA 4400 00FA 4500"
	$"00FA 4600 00FA 4700 00FA 4800 00FA 4900"
	$"00FA 4A00 00FA 4B00 00FA 4C00 00FA 4D00"
	$"00FA 4E00 00FB 4F02 4F00 00FA 4000 00FA"
	$"4100 00FA 4200 00FA 4300 00FA 4400 00FA"
	$"4500 00FA 4600 00FA 4700 00FA 4800 00FA"
	$"4900 00FA 4A00 00FA 4B00 00FA 4C00 00FA"
	$"4D00 00FA 4E00 00FC 4FFF 4F00 0000 C700"
	$"01FA 4000 01FA 4100 01FA 4200 01FA 4300"
	$"01FA 4400 01FA 4500 01FA 4600 01FA 4700"
	$"01FA 4800 01FA 4900 01FA 4A00 01FA 4B00"
	$"01FA 4C00 01FA 4D00 01FA 4E00 01FA 4F01"
	$"0100 FA40 0000 FA41 0000 FA42 0000 FA43"
	$"0000 FA44 0000 FA45 0000 FA46 0000 FA47"
	$"0000 FA48 0000 FA49 0000 FA4A 0000 FA4B"
	$"0000 FA4C 0000 FA4D 0000 FA4E 0000 FB4F"
	$"024F 0000 FA40 0000 FA41 0000 FA42 0000"
	$"FA43 0000 FA44 0000 FA45 0000 FA46 0000"
	$"FA47 0000 FA48 0000 FA49 0000 FA4A 0000"
	$"FA4B 0000 FA4C 0000 FA4D 0000 FA4E 0000"
	$"FC4F FF4F 0000 000A 8101 0001 8200 8100"
	$"FE00 00C7 0001 FA50 0001 FA51 0001 FA52"
	$"0001 FA53 0001 FA54 0001 FA55 0001 FA56"
	$"0001 FA57 0001 FA58 0001 FA59 0001 FA5A"
	$"0001 FA5B 0001 FA5C 0001 FA5D 0001 FA5E"
	$"0001 FA5F 0101 00FA 5000 00FA 5100 00FA"
	$"5200 00FA 5300 00FA 5400 00FA 5500 00FA"
	$"5600 00FA 5700 00FA 5800 00FA 5900 00FA"
	$"5A00 00FA 5B00 00FA 5C00 00FA 5D00 00FA"
	$"5E00 00FB 5F02 5F00 00FA 5000 00FA 5100"
	$"00FA 5200 00FA 5300 00FA 5400 00FA 5500"
	$"00FA 5600 00FA 5700 00FA 5800 00FA 5900"
	$"00FA 5A00 00FA 5B00 00FA 5C00 00FA 5D00"
	$"00FA 5E00 00FC 5FFF 5F00 0000 C700 01FA"
	$"5000 01FA 5100 01FA 5200 01FA 5300 01FA"
	$"5400 01FA 5500 01FA 5600 01FA 5700 01FA"
	$"5800 01FA 5900 01FA 5A00 01FA 5B00 01FA"
	$"5C00 01FA 5D00 01FA 5E00 01FA 5F01 0100"
	$"FA50 0000 FA51 0000 FA52 0000 FA53 0000"
	$"FA54 0000 FA55 0000 FA56 0000 FA57 0000"
	$"FA58 0000 FA59 0000 FA5A 0000 FA5B 0000"
	$"FA5C 0000 FA5D 0000 FA5E 0000 FB5F 025F"
	$"0000 FA50 0000 FA51 0000 FA52 0000 FA53"
	$"0000 FA54 0000 FA55 0000 FA56 0000 FA57"
	$"0000 FA58 0000 FA59 0000 FA5A 0000 FA5B"
	$"0000 FA5C 0000 FA5D 0000 FA5E 0000 FC5F"
	$"FF5F 0000 00C7 0001 FA50 0001 FA51 0001"
	$"FA52 0001 FA53 0001 FA54 0001 FA55 0001"
	$"FA56 0001 FA57 0001 FA58 0001 FA59 0001"
	$"FA5A 0001 FA5B 0001 FA5C 0001 FA5D 0001"
	$"FA5E 0001 FA5F 0101 00FA 5000 00FA 5100"
	$"00FA 5200 00FA 5300 00FA 5400 00FA 5500"
	$"00FA 5600 00FA 5700 00FA 5800 00FA 5900"
	$"00FA 5A00 00FA 5B00 00FA 5C00 00FA 5D00"
	$"00FA 5E00 00FB 5F02 5F00 00FA 5000 00FA"
	$"5100 00FA 5200 00FA 5300 00FA 5400 00FA"
	$"5500 00FA 5600 00FA 5700 00FA 5800 00FA"
	$"5900 00FA 5A00 00FA 5B00 00FA 5C00 00FA"
	$"5D00 00FA 5E00 00FC 5FFF 5F00 0000 C700"
	$"01FA 5000 01FA 5100 01FA 5200 01FA 5300"
	$"01FA 5400 01FA 5500 01FA 5600 01FA 5700"
	$"01FA 5800 01FA 5900 01FA 5A00 01FA 5B00"
	$"01FA 5C00 01FA 5D00 01FA 5E00 01FA 5F01"
	$"0100 FA50 0000 FA51 0000 FA52 0000 FA53"
	$"0000 FA54 0000 FA55 0000 FA56 0000 FA57"
	$"0000 FA58 0000 FA59 0000 FA5A 0000 FA5B"
	$"0000 FA5C 0000 FA5D 0000 FA5E 0000 FB5F"
	$"025F 0000 FA50 0000 FA51 0000 FA52 0000"
	$"FA53 0000 FA54 0000 FA55 0000 FA56 0000"
	$"FA57 0000 FA58 0000 FA59 0000 FA5A 0000"
	$"FA5B 0000 FA5C 0000 FA5D 0000 FA5E 0000"
	$"FC5F FF5F 0000 00C7 0001 FA50 0001 FA51"
	$"0001 FA52 0001 FA53 0001 FA54 0001 FA55"
	$"0001 FA56 0001 FA57 0001 FA58 0001 FA59"
	$"0001 FA5A 0001 FA5B 0001 FA5C 0001 FA5D"
	$"0001 FA5E 0001 FA5F 0101 00FA 5000 00FA"
	$"5100 00FA 5200 00FA 5300 00FA 5400 00FA"
	$"5500 00FA 5600 00FA 5700 00FA 5800 00FA"
	$"5900 00FA 5A00 00FA 5B00 00FA 5C00 00FA"
	$"5D00 00FA 5E00 00FB 5F02 5F00 00FA 5000"
	$"00FA 5100 00FA 5200 00FA 5300 00FA 5400"
	$"00FA 5500 00FA 5600 00FA 5700 00FA 5800"
	$"00FA 5900 00FA 5A00 00FA 5B00 00FA 5C00"
	$"00FA 5D00 00FA 5E00 00FC 5FFF 5F00 0000"
	$"C700 01FA 5000 01FA 5100 01FA 5200 01FA"
	$"5300 01FA 5400 01FA 5500 01FA 5600 01FA"
	$"5700 01FA 5800 01FA 5900 01FA 5A00 01FA"
	$"5B00 01FA 5C00 01FA 5D00 01FA 5E00 01FA"
	$"5F01 0100 FA50 0000 FA51 0000 FA52 0000"
	$"FA53 0000 FA54 0000 FA55 0000 FA56 0000"
	$"FA57 0000 FA58 0000 FA59 0000 FA5A 0000"
	$"FA5B 0000 FA5C 0000 FA5D 0000 FA5E 0000"
	$"FB5F 025F 0000 FA50 0000 FA51 0000 FA52"
	$"0000 FA53 0000 FA54 0000 FA55 0000 FA56"
	$"0000 FA57 0000 FA58 0000 FA59 0000 FA5A"
	$"0000 FA5B 0000 FA5C 0000 FA5D 0000 FA5E"
	$"0000 FC5F FF5F 0000 00C7 0001 FA50 0001"
	$"FA51 0001 FA52 0001 FA53 0001 FA54 0001"
	$"FA55 0001 FA56 0001 FA57 0001 FA58 0001"
	$"FA59 0001 FA5A 0001 FA5B 0001 FA5C 0001"
	$"FA5D 0001 FA5E 0001 FA5F 0101 00FA 5000"
	$"00FA 5100 00FA 5200 00FA 5300 00FA 5400"
	$"00FA 5500 00FA 5600 00FA 5700 00FA 5800"
	$"00FA 5900 00FA 5A00 00FA 5B00 00FA 5C00"
	$"00FA 5D00 00FA 5E00 00FB 5F02 5F00 00FA"
	$"5000 00FA 5100 00FA 5200 00FA 5300 00FA"
	$"5400 00FA 5500 00FA 5600 00FA 5700 00FA"
	$"5800 00FA 5900 00FA 5A00 00FA 5B00 00FA"
	$"5C00 00FA 5D00 00FA 5E00 00FC 5FFF 5F00"
	$"0000 0A81 0100 0182 0081 00FE 0000 C700"
	$"01FA 6000 01FA 6100 01FA 6200 01FA 6300"
	$"01FA 6400 01FA 6500 01FA 6600 01FA 6700"
	$"01FA 6800 01FA 6900 01FA 6A00 01FA 6B00"
	$"01FA 6C00 01FA 6D00 01FA 6E00 01FA 6F01"
	$"0100 FA60 0000 FA61 0000 FA62 0000 FA63"
	$"0000 FA64 0000 FA65 0000 FA66 0000 FA67"
	$"0000 FA68 0000 FA69 0000 FA6A 0000 FA6B"
	$"0000 FA6C 0000 FA6D 0000 FA6E 0000 FB6F"
	$"026F 0000 FA60 0000 FA61 0000 FA62 0000"
	$"FA63 0000 FA64 0000 FA65 0000 FA66 0000"
	$"FA67 0000 FA68 0000 FA69 0000 FA6A 0000"
	$"FA6B 0000 FA6C 0000 FA6D 0000 FA6E 0000"
	$"FC6F FF6F 0000 00C7 0001 FA60 0001 FA61"
	$"0001 FA62 0001 FA63 0001 FA64 0001 FA65"
	$"0001 FA66 0001 FA67 0001 FA68 0001 FA69"
	$"0001 FA6A 0001 FA6B 0001 FA6C 0001 FA6D"
	$"0001 FA6E 0001 FA6F 0101 00FA 6000 00FA"
	$"6100 00FA 6200 00FA 6300 00FA 6400 00FA"
	$"6500 00FA 6600 00FA 6700 00FA 6800 00FA"
	$"6900 00FA 6A00 00FA 6B00 00FA 6C00 00FA"
	$"6D00 00FA 6E00 00FB 6F02 6F00 00FA 6000"
	$"00FA 6100 00FA 6200 00FA 6300 00FA 6400"
	$"00FA 6500 00FA 6600 00FA 6700 00FA 6800"
	$"00FA 6900 00FA 6A00 00FA 6B00 00FA 6C00"
	$"00FA 6D00 00FA 6E00 00FC 6FFF 6F00 0000"
	$"C700 01FA 6000 01FA 6100 01FA 6200 01FA"
	$"6300 01FA 6400 01FA 6500 01FA 6600 01FA"
	$"6700 01FA 6800 01FA 6900 01FA 6A00 01FA"
	$"6B00 01FA 6C00 01FA 6D00 01FA 6E00 01FA"
	$"6F01 0100 FA60 0000 FA61 0000 FA62 0000"
	$"FA63 0000 FA64 0000 FA65 0000 FA66 0000"
	$"FA67 0000 FA68 0000 FA69 0000 FA6A 0000"
	$"FA6B 0000 FA6C 0000 FA6D 0000 FA6E 0000"
	$"FB6F 026F 0000 FA60 0000 FA61 0000 FA62"
	$"0000 FA63 0000 FA64 0000 FA65 0000 FA66"
	$"0000 FA67 0000 FA68 0000 FA69 0000 FA6A"
	$"0000 FA6B 0000 FA6C 0000 FA6D 0000 FA6E"
	$"0000 FC6F FF6F 0000 00C7 0001 FA60 0001"
	$"FA61 0001 FA62 0001 FA63 0001 FA64 0001"
	$"FA65 0001 FA66 0001 FA67 0001 FA68 0001"
	$"FA69 0001 FA6A 0001 FA6B 0001 FA6C 0001"
	$"FA6D 0001 FA6E 0001 FA6F 0101 00FA 6000"
	$"00FA 6100 00FA 6200 00FA 6300 00FA 6400"
	$"00FA 6500 00FA 6600 00FA 6700 00FA 6800"
	$"00FA 6900 00FA 6A00 00FA 6B00 00FA 6C00"
	$"00FA 6D00 00FA 6E00 00FB 6F02 6F00 00FA"
	$"6000 00FA 6100 00FA 6200 00FA 6300 00FA"
	$"6400 00FA 6500 00FA 6600 00FA 6700 00FA"
	$"6800 00FA 6900 00FA 6A00 00FA 6B00 00FA"
	$"6C00 00FA 6D00 00FA 6E00 00FC 6FFF 6F00"
	$"0000 C700 01FA 6000 01FA 6100 01FA 6200"
	$"01FA 6300 01FA 6400 01FA 6500 01FA 6600"
	$"01FA 6700 01FA 6800 01FA 6900 01FA 6A00"
	$"01FA 6B00 01FA 6C00 01FA 6D00 01FA 6E00"
	$"01FA 6F01 0100 FA60 0000 FA61 0000 FA62"
	$"0000 FA63 0000 FA64 0000 FA65 0000 FA66"
	$"0000 FA67 0000 FA68 0000 FA69 0000 FA6A"
	$"0000 FA6B 0000 FA6C 0000 FA6D 0000 FA6E"
	$"0000 FB6F 026F 0000 FA60 0000 FA61 0000"
	$"FA62 0000 FA63 0000 FA64 0000 FA65 0000"
	$"FA66 0000 FA67 0000 FA68 0000 FA69 0000"
	$"FA6A 0000 FA6B 0000 FA6C 0000 FA6D 0000"
	$"FA6E 0000 FC6F FF6F 0000 00C7 0001 FA60"
	$"0001 FA61 0001 FA62 0001 FA63 0001 FA64"
	$"0001 FA65 0001 FA66 0001 FA67 0001 FA68"
	$"0001 FA69 0001 FA6A 0001 FA6B 0001 FA6C"
	$"0001 FA6D 0001 FA6E 0001 FA6F 0101 00FA"
	$"6000 00FA 6100 00FA 6200 00FA 6300 00FA"
	$"6400 00FA 6500 00FA 6600 00FA 6700 00FA"
	$"6800 00FA 6900 00FA 6A00 00FA 6B00 00FA"
	$"6C00 00FA 6D00 00FA 6E00 00FB 6F02 6F00"
	$"00FA 6000 00FA 6100 00FA 6200 00FA 6300"
	$"00FA 6400 00FA 6500 00FA 6600 00FA 6700"
	$"00FA 6800 00FA 6900 00FA 6A00 00FA 6B00"
	$"00FA 6C00 00FA 6D00 00FA 6E00 00FC 6FFF"
	$"6F00 0000 C700 01FA 6000 01FA 6100 01FA"
	$"6200 01FA 6300 01FA 6400 01FA 6500 01FA"
	$"6600 01FA 6700 01FA 6800 01FA 6900 01FA"
	$"6A00 01FA 6B00 01FA 6C00 01FA 6D00 01FA"
	$"6E00 01FA 6F01 0100 FA60 0000 FA61 0000"
	$"FA62 0000 FA63 0000 FA64 0000 FA65 0000"
	$"FA66 0000 FA67 0000 FA68 0000 FA69 0000"
	$"FA6A 0000 FA6B 0000 FA6C 0000 FA6D 0000"
	$"FA6E 0000 FB6F 026F 0000 FA60 0000 FA61"
	$"0000 FA62 0000 FA63 0000 FA64 0000 FA65"
	$"0000 FA66 0000 FA67 0000 FA68 0000 FA69"
	$"0000 FA6A 0000 FA6B 0000 FA6C 0000 FA6D"
	$"0000 FA6E 0000 FC6F FF6F 0000 000A 8101"
	$"0001 8200 8100 FE00 00C7 0001 FA70 0001"
	$"FA71 0001 FA72 0001 FA73 0001 FA74 0001"
	$"FA75 0001 FA76 0001 FA77 0001 FA78 0001"
	$"FA79 0001 FA7A 0001 FA7B 0001 FA7C 0001"
	$"FA7D 0001 FA7E 0001 FA7F 0101 00FA 7000"
	$"00FA 7100 00FA 7200 00FA 7300 00FA 7400"
	$"00FA 7500 00FA 7600 00FA 7700 00FA 7800"
	$"00FA 7900 00FA 7A00 00FA 7B00 00FA 7C00"
	$"00FA 7D00 00FA 7E00 00FB 7F02 7F00 00FA"
	$"7000 00FA 7100 00FA 7200 00FA 7300 00FA"
	$"7400 00FA 7500 00FA 7600 00FA 7700 00FA"
	$"7800 00FA 7900 00FA 7A00 00FA 7B00 00FA"
	$"7C00 00FA 7D00 00FA 7E00 00FC 7FFF 7F00"
	$"0000 C700 01FA 7000 01FA 7100 01FA 7200"
	$"01FA 7300 01FA 7400 01FA 7500 01FA 7600"
	$"01FA 7700 01FA 7800 01FA 7900 01FA 7A00"
	$"01FA 7B00 01FA 7C00 01FA 7D00 01FA 7E00"
	$"01FA 7F01 0100 FA70 0000 FA71 0000 FA72"
	$"0000 FA73 0000 FA74 0000 FA75 0000 FA76"
	$"0000 FA77 0000 FA78 0000 FA79 0000 FA7A"
	$"0000 FA7B 0000 FA7C 0000 FA7D 0000 FA7E"
	$"0000 FB7F 027F 0000 FA70 0000 FA71 0000"
	$"FA72 0000 FA73 0000 FA74 0000 FA75 0000"
	$"FA76 0000 FA77 0000 FA78 0000 FA79 0000"
	$"FA7A 0000 FA7B 0000 FA7C 0000 FA7D 0000"
	$"FA7E 0000 FC7F FF7F 0000 00C7 0001 FA70"
	$"0001 FA71 0001 FA72 0001 FA73 0001 FA74"
	$"0001 FA75 0001 FA76 0001 FA77 0001 FA78"
	$"0001 FA79 0001 FA7A 0001 FA7B 0001 FA7C"
	$"0001 FA7D 0001 FA7E 0001 FA7F 0101 00FA"
	$"7000 00FA 7100 00FA 7200 00FA 7300 00FA"
	$"7400 00FA 7500 00FA 7600 00FA 7700 00FA"
	$"7800 00FA 7900 00FA 7A00 00FA 7B00 00FA"
	$"7C00 00FA 7D00 00FA 7E00 00FB 7F02 7F00"
	$"00FA 7000 00FA 7100 00FA 7200 00FA 7300"
	$"00FA 7400 00FA 7500 00FA 7600 00FA 7700"
	$"00FA 7800 00FA 7900 00FA 7A00 00FA 7B00"
	$"00FA 7C00 00FA 7D00 00FA 7E00 00FC 7FFF"
	$"7F00 0000 C700 01FA 7000 01FA 7100 01FA"
	$"7200 01FA 7300 01FA 7400 01FA 7500 01FA"
	$"7600 01FA 7700 01FA 7800 01FA 7900 01FA"
	$"7A00 01FA 7B00 01FA 7C00 01FA 7D00 01FA"
	$"7E00 01FA 7F01 0100 FA70 0000 FA71 0000"
	$"FA72 0000 FA73 0000 FA74 0000 FA75 0000"
	$"FA76 0000 FA77 0000 FA78 0000 FA79 0000"
	$"FA7A 0000 FA7B 0000 FA7C 0000 FA7D 0000"
	$"FA7E 0000 FB7F 027F 0000 FA70 0000 FA71"
	$"0000 FA72 0000 FA73 0000 FA74 0000 FA75"
	$"0000 FA76 0000 FA77 0000 FA78 0000 FA79"
	$"0000 FA7A 0000 FA7B 0000 FA7C 0000 FA7D"
	$"0000 FA7E 0000 FC7F FF7F 0000 00C7 0001"
	$"FA70 0001 FA71 0001 FA72 0001 FA73 0001"
	$"FA74 0001 FA75 0001 FA76 0001 FA77 0001"
	$"FA78 0001 FA79 0001 FA7A 0001 FA7B 0001"
	$"FA7C 0001 FA7D 0001 FA7E 0001 FA7F 0101"
	$"00FA 7000 00FA 7100 00FA 7200 00FA 7300"
	$"00FA 7400 00FA 7500 00FA 7600 00FA 7700"
	$"00FA 7800 00FA 7900 00FA 7A00 00FA 7B00"
	$"00FA 7C00 00FA 7D00 00FA 7E00 00FB 7F02"
	$"7F00 00FA 7000 00FA 7100 00FA 7200 00FA"
	$"7300 00FA 7400 00FA 7500 00FA 7600 00FA"
	$"7700 00FA 7800 00FA 7900 00FA 7A00 00FA"
	$"7B00 00FA 7C00 00FA 7D00 00FA 7E00 00FC"
	$"7FFF 7F00 0000 C700 01FA 7000 01FA 7100"
	$"01FA 7200 01FA 7300 01FA 7400 01FA 7500"
	$"01FA 7600 01FA 7700 01FA 7800 01FA 7900"
	$"01FA 7A00 01FA 7B00 01FA 7C00 01FA 7D00"
	$"01FA 7E00 01FA 7F01 0100 FA70 0000 FA71"
	$"0000 FA72 0000 FA73 0000 FA74 0000 FA75"
	$"0000 FA76 0000 FA77 0000 FA78 0000 FA79"
	$"0000 FA7A 0000 FA7B 0000 FA7C 0000 FA7D"
	$"0000 FA7E 0000 FB7F 027F 0000 FA70 0000"
	$"FA71 0000 FA72 0000 FA73 0000 FA74 0000"
	$"FA75 0000 FA76 0000 FA77 0000 FA78 0000"
	$"FA79 0000 FA7A 0000 FA7B 0000 FA7C 0000"
	$"FA7D 0000 FA7E 0000 FC7F FF7F 0000 00C7"
	$"0001 FA70 0001 FA71 0001 FA72 0001 FA73"
	$"0001 FA74 0001 FA75 0001 FA76 0001 FA77"
	$"0001 FA78 0001 FA79 0001 FA7A 0001 FA7B"
	$"0001 FA7C 0001 FA7D 0001 FA7E 0001 FA7F"
	$"0101 00FA 7000 00FA 7100 00FA 7200 00FA"
	$"7300 00FA 7400 00FA 7500 00FA 7600 00FA"
	$"7700 00FA 7800 00FA 7900 00FA 7A00 00FA"
	$"7B00 00FA 7C00 00FA 7D00 00FA 7E00 00FB"
	$"7F02 7F00 00FA 7000 00FA 7100 00FA 7200"
	$"00FA 7300 00FA 7400 00FA 7500 00FA 7600"
	$"00FA 7700 00FA 7800 00FA 7900 00FA 7A00"
	$"00FA 7B00 00FA 7C00 00FA 7D00 00FA 7E00"
	$"00FC 7FFF 7F00 0000 0A81 0100 0182 0081"
	$"00FE 0000 C700 01FA 8000 01FA 8100 01FA"
	$"8200 01FA 8300 01FA 8400 01FA 8500 01FA"
	$"8600 01FA 8700 01FA 8800 01FA 8900 01FA"
	$"8A00 01FA 8B00 01FA 8C00 01FA 8D00 01FA"
	$"8E00 01FA 8F01 0100 FA80 0000 FA81 0000"
	$"FA82 0000 FA83 0000 FA84 0000 FA85 0000"
	$"FA86 0000 FA87 0000 FA88 0000 FA89 0000"
	$"FA8A 0000 FA8B 0000 FA8C 0000 FA8D 0000"
	$"FA8E 0000 FB8F 028F 0000 FA80 0000 FA81"
	$"0000 FA82 0000 FA83 0000 FA84 0000 FA85"
	$"0000 FA86 0000 FA87 0000 FA88 0000 FA89"
	$"0000 FA8A 0000 FA8B 0000 FA8C 0000 FA8D"
	$"0000 FA8E 0000 FC8F FF8F 0000 00C7 0001"
	$"FA80 0001 FA81 0001 FA82 0001 FA83 0001"
	$"FA84 0001 FA85 0001 FA86 0001 FA87 0001"
	$"FA88 0001 FA89 0001 FA8A 0001 FA8B 0001"
	$"FA8C 0001 FA8D 0001 FA8E 0001 FA8F 0101"
	$"00FA 8000 00FA 8100 00FA 8200 00FA 8300"
	$"00FA 8400 00FA 8500 00FA 8600 00FA 8700"
	$"00FA 8800 00FA 8900 00FA 8A00 00FA 8B00"
	$"00FA 8C00 00FA 8D00 00FA 8E00 00FB 8F02"
	$"8F00 00FA 8000 00FA 8100 00FA 8200 00FA"
	$"8300 00FA 8400 00FA 8500 00FA 8600 00FA"
	$"8700 00FA 8800 00FA 8900 00FA 8A00 00FA"
	$"8B00 00FA 8C00 00FA 8D00 00FA 8E00 00FC"
	$"8FFF 8F00 0000 C700 01FA 8000 01FA 8100"
	$"01FA 8200 01FA 8300 01FA 8400 01FA 8500"
	$"01FA 8600 01FA 8700 01FA 8800 01FA 8900"
	$"01FA 8A00 01FA 8B00 01FA 8C00 01FA 8D00"
	$"01FA 8E00 01FA 8F01 0100 FA80 0000 FA81"
	$"0000 FA82 0000 FA83 0000 FA84 0000 FA85"
	$"0000 FA86 0000 FA87 0000 FA88 0000 FA89"
	$"0000 FA8A 0000 FA8B 0000 FA8C 0000 FA8D"
	$"0000 FA8E 0000 FB8F 028F 0000 FA80 0000"
	$"FA81 0000 FA82 0000 FA83 0000 FA84 0000"
	$"FA85 0000 FA86 0000 FA87 0000 FA88 0000"
	$"FA89 0000 FA8A 0000 FA8B 0000 FA8C 0000"
	$"FA8D 0000 FA8E 0000 FC8F FF8F 0000 00C7"
	$"0001 FA80 0001 FA81 0001 FA82 0001 FA83"
	$"0001 FA84 0001 FA85 0001 FA86 0001 FA87"
	$"0001 FA88 0001 FA89 0001 FA8A 0001 FA8B"
	$"0001 FA8C 0001 FA8D 0001 FA8E 0001 FA8F"
	$"0101 00FA 8000 00FA 8100 00FA 8200 00FA"
	$"8300 00FA 8400 00FA 8500 00FA 8600 00FA"
	$"8700 00FA 8800 00FA 8900 00FA 8A00 00FA"
	$"8B00 00FA 8C00 00FA 8D00 00FA 8E00 00FB"
	$"8F02 8F00 00FA 8000 00FA 8100 00FA 8200"
	$"00FA 8300 00FA 8400 00FA 8500 00FA 8600"
	$"00FA 8700 00FA 8800 00FA 8900 00FA 8A00"
	$"00FA 8B00 00FA 8C00 00FA 8D00 00FA 8E00"
	$"00FC 8FFF 8F00 0000 C700 01FA 8000 01FA"
	$"8100 01FA 8200 01FA 8300 01FA 8400 01FA"
	$"8500 01FA 8600 01FA 8700 01FA 8800 01FA"
	$"8900 01FA 8A00 01FA 8B00 01FA 8C00 01FA"
	$"8D00 01FA 8E00 01FA 8F01 0100 FA80 0000"
	$"FA81 0000 FA82 0000 FA83 0000 FA84 0000"
	$"FA85 0000 FA86 0000 FA87 0000 FA88 0000"
	$"FA89 0000 FA8A 0000 FA8B 0000 FA8C 0000"
	$"FA8D 0000 FA8E 0000 FB8F 028F 0000 FA80"
	$"0000 FA81 0000 FA82 0000 FA83 0000 FA84"
	$"0000 FA85 0000 FA86 0000 FA87 0000 FA88"
	$"0000 FA89 0000 FA8A 0000 FA8B 0000 FA8C"
	$"0000 FA8D 0000 FA8E 0000 FC8F FF8F 0000"
	$"00C7 0001 FA80 0001 FA81 0001 FA82 0001"
	$"FA83 0001 FA84 0001 FA85 0001 FA86 0001"
	$"FA87 0001 FA88 0001 FA89 0001 FA8A 0001"
	$"FA8B 0001 FA8C 0001 FA8D 0001 FA8E 0001"
	$"FA8F 0101 00FA 8000 00FA 8100 00FA 8200"
	$"00FA 8300 00FA 8400 00FA 8500 00FA 8600"
	$"00FA 8700 00FA 8800 00FA 8900 00FA 8A00"
	$"00FA 8B00 00FA 8C00 00FA 8D00 00FA 8E00"
	$"00FB 8F02 8F00 00FA 8000 00FA 8100 00FA"
	$"8200 00FA 8300 00FA 8400 00FA 8500 00FA"
	$"8600 00FA 8700 00FA 8800 00FA 8900 00FA"
	$"8A00 00FA 8B00 00FA 8C00 00FA 8D00 00FA"
	$"8E00 00FC 8FFF 8F00 0000 C700 01FA 8000"
	$"01FA 8100 01FA 8200 01FA 8300 01FA 8400"
	$"01FA 8500 01FA 8600 01FA 8700 01FA 8800"
	$"01FA 8900 01FA 8A00 01FA 8B00 01FA 8C00"
	$"01FA 8D00 01FA 8E00 01FA 8F01 0100 FA80"
	$"0000 FA81 0000 FA82 0000 FA83 0000 FA84"
	$"0000 FA85 0000 FA86 0000 FA87 0000 FA88"
	$"0000 FA89 0000 FA8A 0000 FA8B 0000 FA8C"
	$"0000 FA8D 0000 FA8E 0000 FB8F 028F 0000"
	$"FA80 0000 FA81 0000 FA82 0000 FA83 0000"
	$"FA84 0000 FA85 0000 FA86 0000 FA87 0000"
	$"FA88 0000 FA89 0000 FA8A 0000 FA8B 0000"
	$"FA8C 0000 FA8D 0000 FA8E 0000 FC8F FF8F"
	$"0000 000A 8101 0001 8200 8100 FE00 00C7"
	$"0001 FA90 0001 FA91 0001 FA92 0001 FA93"
	$"0001 FA94 0001 FA95 0001 FA96 0001 FA97"
	$"0001 FA98 0001 FA99 0001 FA9A 0001 FA9B"
	$"0001 FA9C 0001 FA9D 0001 FA9E 0001 FA9F"
	$"0101 00FA 9000 00FA 9100 00FA 9200 00FA"
	$"9300 00FA 9400 00FA 9500 00FA 9600 00FA"
	$"9700 00FA 9800 00FA 9900 00FA 9A00 00FA"
	$"9B00 00FA 9C00 00FA 9D00 00FA 9E00 00FB"
	$"9F02 9F00 00FA 9000 00FA 9100 00FA 9200"
	$"00FA 9300 00FA 9400 00FA 9500 00FA 9600"
	$"00FA 9700 00FA 9800 00FA 9900 00FA 9A00"
	$"00FA 9B00 00FA 9C00 00FA 9D00 00FA 9E00"
	$"00FC 9FFF 9F00 0000 C700 01FA 9000 01FA"
	$"9100 01FA 9200 01FA 9300 01FA 9400 01FA"
	$"9500 01FA 9600 01FA 9700 01FA 9800 01FA"
	$"9900 01FA 9A00 01FA 9B00 01FA 9C00 01FA"
	$"9D00 01FA 9E00 01FA 9F01 0100 FA90 0000"
	$"FA91 0000 FA92 0000 FA93 0000 FA94 0000"
	$"FA95 0000 FA96 0000 FA97 0000 FA98 0000"
	$"FA99 0000 FA9A 0000 FA9B 0000 FA9C 0000"
	$"FA9D 0000 FA9E 0000 FB9F 029F 0000 FA90"
	$"0000 FA91 0000 FA92 0000 FA93 0000 FA94"
	$"0000 FA95 0000 FA96 0000 FA97 0000 FA98"
	$"0000 FA99 0000 FA9A 0000 FA9B 0000 FA9C"
	$"0000 FA9D 0000 FA9E 0000 FC9F FF9F 0000"
	$"00C7 0001 FA90 0001 FA91 0001 FA92 0001"
	$"FA93 0001 FA94 0001 FA95 0001 FA96 0001"
	$"FA97 0001 FA98 0001 FA99 0001 FA9A 0001"
	$"FA9B 0001 FA9C 0001 FA9D 0001 FA9E 0001"
	$"FA9F 0101 00FA 9000 00FA 9100 00FA 9200"
	$"00FA 9300 00FA 9400 00FA 9500 00FA 9600"
	$"00FA 9700 00FA 9800 00FA 9900 00FA 9A00"
	$"00FA 9B00 00FA 9C00 00FA 9D00 00FA 9E00"
	$"00FB 9F02 9F00 00FA 9000 00FA 9100 00FA"
	$"9200 00FA 9300 00FA 9400 00FA 9500 00FA"
	$"9600 00FA 9700 00FA 9800 00FA 9900 00FA"
	$"9A00 00FA 9B00 00FA 9C00 00FA 9D00 00FA"
	$"9E00 00FC 9FFF 9F00 0000 C700 01FA 9000"
	$"01FA 9100 01FA 9200 01FA 9300 01FA 9400"
	$"01FA 9500 01FA 9600 01FA 9700 01FA 9800"
	$"01FA 9900 01FA 9A00 01FA 9B00 01FA 9C00"
	$"01FA 9D00 01FA 9E00 01FA 9F01 0100 FA90"
	$"0000 FA91 0000 FA92 0000 FA93 0000 FA94"
	$"0000 FA95 0000 FA96 0000 FA97 0000 FA98"
	$"0000 FA99 0000 FA9A 0000 FA9B 0000 FA9C"
	$"0000 FA9D 0000 FA9E 0000 FB9F 029F 0000"
	$"FA90 0000 FA91 0000 FA92 0000 FA93 0000"
	$"FA94 0000 FA95 0000 FA96 0000 FA97 0000"
	$"FA98 0000 FA99 0000 FA9A 0000 FA9B 0000"
	$"FA9C 0000 FA9D 0000 FA9E 0000 FC9F FF9F"
	$"0000 00C7 0001 FA90 0001 FA91 0001 FA92"
	$"0001 FA93 0001 FA94 0001 FA95 0001 FA96"
	$"0001 FA97 0001 FA98 0001 FA99 0001 FA9A"
	$"0001 FA9B 0001 FA9C 0001 FA9D 0001 FA9E"
	$"0001 FA9F 0101 00FA 9000 00FA 9100 00FA"
	$"9200 00FA 9300 00FA 9400 00FA 9500 00FA"
	$"9600 00FA 9700 00FA 9800 00FA 9900 00FA"
	$"9A00 00FA 9B00 00FA 9C00 00FA 9D00 00FA"
	$"9E00 00FB 9F02 9F00 00FA 9000 00FA 9100"
	$"00FA 9200 00FA 9300 00FA 9400 00FA 9500"
	$"00FA 9600 00FA 9700 00FA 9800 00FA 9900"
	$"00FA 9A00 00FA 9B00 00FA 9C00 00FA 9D00"
	$"00FA 9E00 00FC 9FFF 9F00 0000 C700 01FA"
	$"9000 01FA 9100 01FA 9200 01FA 9300 01FA"
	$"9400 01FA 9500 01FA 9600 01FA 9700 01FA"
	$"9800 01FA 9900 01FA 9A00 01FA 9B00 01FA"
	$"9C00 01FA 9D00 01FA 9E00 01FA 9F01 0100"
	$"FA90 0000 FA91 0000 FA92 0000 FA93 0000"
	$"FA94 0000 FA95 0000 FA96 0000 FA97 0000"
	$"FA98 0000 FA99 0000 FA9A 0000 FA9B 0000"
	$"FA9C 0000 FA9D 0000 FA9E 0000 FB9F 029F"
	$"0000 FA90 0000 FA91 0000 FA92 0000 FA93"
	$"0000 FA94 0000 FA95 0000 FA96 0000 FA97"
	$"0000 FA98 0000 FA99 0000 FA9A 0000 FA9B"
	$"0000 FA9C 0000 FA9D 0000 FA9E 0000 FC9F"
	$"FF9F 0000 00C7 0001 FA90 0001 FA91 0001"
	$"FA92 0001 FA93 0001 FA94 0001 FA95 0001"
	$"FA96 0001 FA97 0001 FA98 0001 FA99 0001"
	$"FA9A 0001 FA9B 0001 FA9C 0001 FA9D 0001"
	$"FA9E 0001 FA9F 0101 00FA 9000 00FA 9100"
	$"00FA 9200 00FA 9300 00FA 9400 00FA 9500"
	$"00FA 9600 00FA 9700 00FA 9800 00FA 9900"
	$"00FA 9A00 00FA 9B00 00FA 9C00 00FA 9D00"
	$"00FA 9E00 00FB 9F02 9F00 00FA 9000 00FA"
	$"9100 00FA 9200 00FA 9300 00FA 9400 00FA"
	$"9500 00FA 9600 00FA 9700 00FA 9800 00FA"
	$"9900 00FA 9A00 00FA 9B00 00FA 9C00 00FA"
	$"9D00 00FA 9E00 00FC 9FFF 9F00 0000 0A81"
	$"0100 0182 0081 00FE 0000 C700 01FA A000"
	$"01FA A100 01FA A200 01FA A300 01FA A400"
	$"01FA A500 01FA A600 01FA A700 01FA A800"
	$"01FA A900 01FA AA00 01FA AB00 01FA AC00"
	$"01FA AD00 01FA AE00 01FA AF01 0100 FAA0"
	$"0000 FAA1 0000 FAA2 0000 FAA3 0000 FAA4"
	$"0000 FAA5 0000 FAA6 0000 FAA7 0000 FAA8"
	$"0000 FAA9 0000 FAAA 0000 FAAB 0000 FAAC"
	$"0000 FAAD 0000 FAAE 0000 FBAF 02AF 0000"
	$"FAA0 0000 FAA1 0000 FAA2 0000 FAA3 0000"
	$"FAA4 0000 FAA5 0000 FAA6 0000 FAA7 0000"
	$"FAA8 0000 FAA9 0000 FAAA 0000 FAAB 0000"
	$"FAAC 0000 FAAD 0000 FAAE 0000 FCAF FFAF"
	$"0000 00C7 0001 FAA0 0001 FAA1 0001 FAA2"
	$"0001 FAA3 0001 FAA4 0001 FAA5 0001 FAA6"
	$"0001 FAA7 0001 FAA8 0001 FAA9 0001 FAAA"
	$"0001 FAAB 0001 FAAC 0001 FAAD 0001 FAAE"
	$"0001 FAAF 0101 00FA A000 00FA A100 00FA"
	$"A200 00FA A300 00FA A400 00FA A500 00FA"
	$"A600 00FA A700 00FA A800 00FA A900 00FA"
	$"AA00 00FA AB00 00FA AC00 00FA AD00 00FA"
	$"AE00 00FB AF02 AF00 00FA A000 00FA A100"
	$"00FA A200 00FA A300 00FA A400 00FA A500"
	$"00FA A600 00FA A700 00FA A800 00FA A900"
	$"00FA AA00 00FA AB00 00FA AC00 00FA AD00"
	$"00FA AE00 00FC AFFF AF00 0000 C700 01FA"
	$"A000 01FA A100 01FA A200 01FA A300 01FA"
	$"A400 01FA A500 01FA A600 01FA A700 01FA"
	$"A800 01FA A900 01FA AA00 01FA AB00 01FA"
	$"AC00 01FA AD00 01FA AE00 01FA AF01 0100"
	$"FAA0 0000 FAA1 0000 FAA2 0000 FAA3 0000"
	$"FAA4 0000 FAA5 0000 FAA6 0000 FAA7 0000"
	$"FAA8 0000 FAA9 0000 FAAA 0000 FAAB 0000"
	$"FAAC 0000 FAAD 0000 FAAE 0000 FBAF 02AF"
	$"0000 FAA0 0000 FAA1 0000 FAA2 0000 FAA3"
	$"0000 FAA4 0000 FAA5 0000 FAA6 0000 FAA7"
	$"0000 FAA8 0000 FAA9 0000 FAAA 0000 FAAB"
	$"0000 FAAC 0000 FAAD 0000 FAAE 0000 FCAF"
	$"FFAF 0000 00C7 0001 FAA0 0001 FAA1 0001"
	$"FAA2 0001 FAA3 0001 FAA4 0001 FAA5 0001"
	$"FAA6 0001 FAA7 0001 FAA8 0001 FAA9 0001"
	$"FAAA 0001 FAAB 0001 FAAC 0001 FAAD 0001"
	$"FAAE 0001 FAAF 0101 00FA A000 00FA A100"
	$"00FA A200 00FA A300 00FA A400 00FA A500"
	$"00FA A600 00FA A700 00FA A800 00FA A900"
	$"00FA AA00 00FA AB00 00FA AC00 00FA AD00"
	$"00FA AE00 00FB AF02 AF00 00FA A000 00FA"
	$"A100 00FA A200 00FA A300 00FA A400 00FA"
	$"A500 00FA A600 00FA A700 00FA A800 00FA"
	$"A900 00FA AA00 00FA AB00 00FA AC00 00FA"
	$"AD00 00FA AE00 00FC AFFF AF00 0000 C700"
	$"01FA A000 01FA A100 01FA A200 01FA A300"
	$"01FA A400 01FA A500 01FA A600 01FA A700"
	$"01FA A800 01FA A900 01FA AA00 01FA AB00"
	$"01FA AC00 01FA AD00 01FA AE00 01FA AF01"
	$"0100 FAA0 0000 FAA1 0000 FAA2 0000 FAA3"
	$"0000 FAA4 0000 FAA5 0000 FAA6 0000 FAA7"
	$"0000 FAA8 0000 FAA9 0000 FAAA 0000 FAAB"
	$"0000 FAAC 0000 FAAD 0000 FAAE 0000 FBAF"
	$"02AF 0000 FAA0 0000 FAA1 0000 FAA2 0000"
	$"FAA3 0000 FAA4 0000 FAA5 0000 FAA6 0000"
	$"FAA7 0000 FAA8 0000 FAA9 0000 FAAA 0000"
	$"FAAB 0000 FAAC 0000 FAAD 0000 FAAE 0000"
	$"FCAF FFAF 0000 00C7 0001 FAA0 0001 FAA1"
	$"0001 FAA2 0001 FAA3 0001 FAA4 0001 FAA5"
	$"0001 FAA6 0001 FAA7 0001 FAA8 0001 FAA9"
	$"0001 FAAA 0001 FAAB 0001 FAAC 0001 FAAD"
	$"0001 FAAE 0001 FAAF 0101 00FA A000 00FA"
	$"A100 00FA A200 00FA A300 00FA A400 00FA"
	$"A500 00FA A600 00FA A700 00FA A800 00FA"
	$"A900 00FA AA00 00FA AB00 00FA AC00 00FA"
	$"AD00 00FA AE00 00FB AF02 AF00 00FA A000"
	$"00FA A100 00FA A200 00FA A300 00FA A400"
	$"00FA A500 00FA A600 00FA A700 00FA A800"
	$"00FA A900 00FA AA00 00FA AB00 00FA AC00"
	$"00FA AD00 00FA AE00 00FC AFFF AF00 0000"
	$"C700 01FA A000 01FA A100 01FA A200 01FA"
	$"A300 01FA A400 01FA A500 01FA A600 01FA"
	$"A700 01FA A800 01FA A900 01FA AA00 01FA"
	$"AB00 01FA AC00 01FA AD00 01FA AE00 01FA"
	$"AF01 0100 FAA0 0000 FAA1 0000 FAA2 0000"
	$"FAA3 0000 FAA4 0000 FAA5 0000 FAA6 0000"
	$"FAA7 0000 FAA8 0000 FAA9 0000 FAAA 0000"
	$"FAAB 0000 FAAC 0000 FAAD 0000 FAAE 0000"
	$"FBAF 02AF 0000 FAA0 0000 FAA1 0000 FAA2"
	$"0000 FAA3 0000 FAA4 0000 FAA5 0000 FAA6"
	$"0000 FAA7 0000 FAA8 0000 FAA9 0000 FAAA"
	$"0000 FAAB 0000 FAAC 0000 FAAD 0000 FAAE"
	$"0000 FCAF FFAF 0000 000A 8101 0001 8200"
	$"8100 FE00 00C7 0001 FAB0 0001 FAB1 0001"
	$"FAB2 0001 FAB3 0001 FAB4 0001 FAB5 0001"
	$"FAB6 0001 FAB7 0001 FAB8 0001 FAB9 0001"
	$"FABA 0001 FABB 0001 FABC 0001 FABD 0001"
	$"FABE 0001 FABF 0101 00FA B000 00FA B100"
	$"00FA B200 00FA B300 00FA B400 00FA B500"
	$"00FA B600 00FA B700 00FA B800 00FA B900"
	$"00FA BA00 00FA BB00 00FA BC00 00FA BD00"
	$"00FA BE00 00FB BF02 BF00 00FA B000 00FA"
	$"B100 00FA B200 00FA B300 00FA B400 00FA"
	$"B500 00FA B600 00FA B700 00FA B800 00FA"
	$"B900 00FA BA00 00FA BB00 00FA BC00 00FA"
	$"BD00 00FA BE00 00FC BFFF BF00 0000 C700"
	$"01FA B000 01FA B100 01FA B200 01FA B300"
	$"01FA B400 01FA B500 01FA B600 01FA B700"
	$"01FA B800 01FA B900 01FA BA00 01FA BB00"
	$"01FA BC00 01FA BD00 01FA BE00 01FA BF01"
	$"0100 FAB0 0000 FAB1 0000 FAB2 0000 FAB3"
	$"0000 FAB4 0000 FAB5 0000 FAB6 0000 FAB7"
	$"0000 FAB8 0000 FAB9 0000 FABA 0000 FABB"
	$"0000 FABC 0000 FABD 0000 FABE 0000 FBBF"
	$"02BF 0000 FAB0 0000 FAB1 0000 FAB2 0000"
	$"FAB3 0000 FAB4 0000 FAB5 0000 FAB6 0000"
	$"FAB7 0000 FAB8 0000 FAB9 0000 FABA 0000"
	$"FABB 0000 FABC 0000 FABD 0000 FABE 0000"
	$"FCBF FFBF 0000 00C7 0001 FAB0 0001 FAB1"
	$"0001 FAB2 0001 FAB3 0001 FAB4 0001 FAB5"
	$"0001 FAB6 0001 FAB7 0001 FAB8 0001 FAB9"
	$"0001 FABA 0001 FABB 0001 FABC 0001 FABD"
	$"0001 FABE 0001 FABF 0101 00FA B000 00FA"
	$"B100 00FA B200 00FA B300 00FA B400 00FA"
	$"B500 00FA B600 00FA B700 00FA B800 00FA"
	$"B900 00FA BA00 00FA BB00 00FA BC00 00FA"
	$"BD00 00FA BE00 00FB BF02 BF00 00FA B000"
	$"00FA B100 00FA B200 00FA B300 00FA B400"
	$"00FA B500 00FA B600 00FA B700 00FA B800"
	$"00FA B900 00FA BA00 00FA BB00 00FA BC00"
	$"00FA BD00 00FA BE00 00FC BFFF BF00 0000"
	$"C700 01FA B000 01FA B100 01FA B200 01FA"
	$"B300 01FA B400 01FA B500 01FA B600 01FA"
	$"B700 01FA B800 01FA B900 01FA BA00 01FA"
	$"BB00 01FA BC00 01FA BD00 01FA BE00 01FA"
	$"BF01 0100 FAB0 0000 FAB1 0000 FAB2 0000"
	$"FAB3 0000 FAB4 0000 FAB5 0000 FAB6 0000"
	$"FAB7 0000 FAB8 0000 FAB9 0000 FABA 0000"
	$"FABB 0000 FABC 0000 FABD 0000 FABE 0000"
	$"FBBF 02BF 0000 FAB0 0000 FAB1 0000 FAB2"
	$"0000 FAB3 0000 FAB4 0000 FAB5 0000 FAB6"
	$"0000 FAB7 0000 FAB8 0000 FAB9 0000 FABA"
	$"0000 FABB 0000 FABC 0000 FABD 0000 FABE"
	$"0000 FCBF FFBF 0000 00C7 0001 FAB0 0001"
	$"FAB1 0001 FAB2 0001 FAB3 0001 FAB4 0001"
	$"FAB5 0001 FAB6 0001 FAB7 0001 FAB8 0001"
	$"FAB9 0001 FABA 0001 FABB 0001 FABC 0001"
	$"FABD 0001 FABE 0001 FABF 0101 00FA B000"
	$"00FA B100 00FA B200 00FA B300 00FA B400"
	$"00FA B500 00FA B600 00FA B700 00FA B800"
	$"00FA B900 00FA BA00 00FA BB00 00FA BC00"
	$"00FA BD00 00FA BE00 00FB BF02 BF00 00FA"
	$"B000 00FA B100 00FA B200 00FA B300 00FA"
	$"B400 00FA B500 00FA B600 00FA B700 00FA"
	$"B800 00FA B900 00FA BA00 00FA BB00 00FA"
	$"BC00 00FA BD00 00FA BE00 00FC BFFF BF00"
	$"0000 C700 01FA B000 01FA B100 01FA B200"
	$"01FA B300 01FA B400 01FA B500 01FA B600"
	$"01FA B700 01FA B800 01FA B900 01FA BA00"
	$"01FA BB00 01FA BC00 01FA BD00 01FA BE00"
	$"01FA BF01 0100 FAB0 0000 FAB1 0000 FAB2"
	$"0000 FAB3 0000 FAB4 0000 FAB5 0000 FAB6"
	$"0000 FAB7 0000 FAB8 0000 FAB9 0000 FABA"
	$"0000 FABB 0000 FABC 0000 FABD 0000 FABE"
	$"0000 FBBF 02BF 0000 FAB0 0000 FAB1 0000"
	$"FAB2 0000 FAB3 0000 FAB4 0000 FAB5 0000"
	$"FAB6 0000 FAB7 0000 FAB8 0000 FAB9 0000"
	$"FABA 0000 FABB 0000 FABC 0000 FABD 0000"
	$"FABE 0000 FCBF FFBF 0000 00C7 0001 FAB0"
	$"0001 FAB1 0001 FAB2 0001 FAB3 0001 FAB4"
	$"0001 FAB5 0001 FAB6 0001 FAB7 0001 FAB8"
	$"0001 FAB9 0001 FABA 0001 FABB 0001 FABC"
	$"0001 FABD 0001 FABE 0001 FABF 0101 00FA"
	$"B000 00FA B100 00FA B200 00FA B300 00FA"
	$"B400 00FA B500 00FA B600 00FA B700 00FA"
	$"B800 00FA B900 00FA BA00 00FA BB00 00FA"
	$"BC00 00FA BD00 00FA BE00 00FB BF02 BF00"
	$"00FA B000 00FA B100 00FA B200 00FA B300"
	$"00FA B400 00FA B500 00FA B600 00FA B700"
	$"00FA B800 00FA B900 00FA BA00 00FA BB00"
	$"00FA BC00 00FA BD00 00FA BE00 00FC BFFF"
	$"BF00 0000 0A81 0100 0182 0081 00FE 0000"
	$"C700 01FA C000 01FA C100 01FA C200 01FA"
	$"C300 01FA C400 01FA C500 01FA C600 01FA"
	$"C700 01FA C800 01FA C900 01FA CA00 01FA"
	$"CB00 01FA CC00 01FA CD00 01FA CE00 01FA"
	$"CF01 0100 FAC0 0000 FAC1 0000 FAC2 0000"
	$"FAC3 0000 FAC4 0000 FAC5 0000 FAC6 0000"
	$"FAC7 0000 FAC8 0000 FAC9 0000 FACA 0000"
	$"FACB 0000 FACC 0000 FACD 0000 FACE 0000"
	$"FBCF 02CF 0000 FAC0 0000 FAC1 0000 FAC2"
	$"0000 FAC3 0000 FAC4 0000 FAC5 0000 FAC6"
	$"0000 FAC7 0000 FAC8 0000 FAC9 0000 FACA"
	$"0000 FACB 0000 FACC 0000 FACD 0000 FACE"
	$"0000 FCCF FFCF 0000 00C7 0001 FAC0 0001"
	$"FAC1 0001 FAC2 0001 FAC3 0001 FAC4 0001"
	$"FAC5 0001 FAC6 0001 FAC7 0001 FAC8 0001"
	$"FAC9 0001 FACA 0001 FACB 0001 FACC 0001"
	$"FACD 0001 FACE 0001 FACF 0101 00FA C000"
	$"00FA C100 00FA C200 00FA C300 00FA C400"
	$"00FA C500 00FA C600 00FA C700 00FA C800"
	$"00FA C900 00FA CA00 00FA CB00 00FA CC00"
	$"00FA CD00 00FA CE00 00FB CF02 CF00 00FA"
	$"C000 00FA C100 00FA C200 00FA C300 00FA"
	$"C400 00FA C500 00FA C600 00FA C700 00FA"
	$"C800 00FA C900 00FA CA00 00FA CB00 00FA"
	$"CC00 00FA CD00 00FA CE00 00FC CFFF CF00"
	$"0000 C700 01FA C000 01FA C100 01FA C200"
	$"01FA C300 01FA C400 01FA C500 01FA C600"
	$"01FA C700 01FA C800 01FA C900 01FA CA00"
	$"01FA CB00 01FA CC00 01FA CD00 01FA CE00"
	$"01FA CF01 0100 FAC0 0000 FAC1 0000 FAC2"
	$"0000 FAC3 0000 FAC4 0000 FAC5 0000 FAC6"
	$"0000 FAC7 0000 FAC8 0000 FAC9 0000 FACA"
	$"0000 FACB 0000 FACC 0000 FACD 0000 FACE"
	$"0000 FBCF 02CF 0000 FAC0 0000 FAC1 0000"
	$"FAC2 0000 FAC3 0000 FAC4 0000 FAC5 0000"
	$"FAC6 0000 FAC7 0000 FAC8 0000 FAC9 0000"
	$"FACA 0000 FACB 0000 FACC 0000 FACD 0000"
	$"FACE 0000 FCCF FFCF 0000 00C7 0001 FAC0"
	$"0001 FAC1 0001 FAC2 0001 FAC3 0001 FAC4"
	$"0001 FAC5 0001 FAC6 0001 FAC7 0001 FAC8"
	$"0001 FAC9 0001 FACA 0001 FACB 0001 FACC"
	$"0001 FACD 0001 FACE 0001 FACF 0101 00FA"
	$"C000 00FA C100 00FA C200 00FA C300 00FA"
	$"C400 00FA C500 00FA C600 00FA C700 00FA"
	$"C800 00FA C900 00FA CA00 00FA CB00 00FA"
	$"CC00 00FA CD00 00FA CE00 00FB CF02 CF00"
	$"00FA C000 00FA C100 00FA C200 00FA C300"
	$"00FA C400 00FA C500 00FA C600 00FA C700"
	$"00FA C800 00FA C900 00FA CA00 00FA CB00"
	$"00FA CC00 00FA CD00 00FA CE00 00FC CFFF"
	$"CF00 0000 C700 01FA C000 01FA C100 01FA"
	$"C200 01FA C300 01FA C400 01FA C500 01FA"
	$"C600 01FA C700 01FA C800 01FA C900 01FA"
	$"CA00 01FA CB00 01FA CC00 01FA CD00 01FA"
	$"CE00 01FA CF01 0100 FAC0 0000 FAC1 0000"
	$"FAC2 0000 FAC3 0000 FAC4 0000 FAC5 0000"
	$"FAC6 0000 FAC7 0000 FAC8 0000 FAC9 0000"
	$"FACA 0000 FACB 0000 FACC 0000 FACD 0000"
	$"FACE 0000 FBCF 02CF 0000 FAC0 0000 FAC1"
	$"0000 FAC2 0000 FAC3 0000 FAC4 0000 FAC5"
	$"0000 FAC6 0000 FAC7 0000 FAC8 0000 FAC9"
	$"0000 FACA 0000 FACB 0000 FACC 0000 FACD"
	$"0000 FACE 0000 FCCF FFCF 0000 00C7 0001"
	$"FAC0 0001 FAC1 0001 FAC2 0001 FAC3 0001"
	$"FAC4 0001 FAC5 0001 FAC6 0001 FAC7 0001"
	$"FAC8 0001 FAC9 0001 FACA 0001 FACB 0001"
	$"FACC 0001 FACD 0001 FACE 0001 FACF 0101"
	$"00FA C000 00FA C100 00FA C200 00FA C300"
	$"00FA C400 00FA C500 00FA C600 00FA C700"
	$"00FA C800 00FA C900 00FA CA00 00FA CB00"
	$"00FA CC00 00FA CD00 00FA CE00 00FB CF02"
	$"CF00 00FA C000 00FA C100 00FA C200 00FA"
	$"C300 00FA C400 00FA C500 00FA C600 00FA"
	$"C700 00FA C800 00FA C900 00FA CA00 00FA"
	$"CB00 00FA CC00 00FA CD00 00FA CE00 00FC"
	$"CFFF CF00 0000 C700 01FA C000 01FA C100"
	$"01FA C200 01FA C300 01FA C400 01FA C500"
	$"01FA C600 01FA C700 01FA C800 01FA C900"
	$"01FA CA00 01FA CB00 01FA CC00 01FA CD00"
	$"01FA CE00 01FA CF01 0100 FAC0 0000 FAC1"
	$"0000 FAC2 0000 FAC3 0000 FAC4 0000 FAC5"
	$"0000 FAC6 0000 FAC7 0000 FAC8 0000 FAC9"
	$"0000 FACA 0000 FACB 0000 FACC 0000 FACD"
	$"0000 FACE 0000 FBCF 02CF 0000 FAC0 0000"
	$"FAC1 0000 FAC2 0000 FAC3 0000 FAC4 0000"
	$"FAC5 0000 FAC6 0000 FAC7 0000 FAC8 0000"
	$"FAC9 0000 FACA 0000 FACB 0000 FACC 0000"
	$"FACD 0000 FACE 0000 FCCF FFCF 0000 000A"
	$"8101 0001 8200 8100 FE00 00C7 0001 FAD0"
	$"0001 FAD1 0001 FAD2 0001 FAD3 0001 FAD4"
	$"0001 FAD5 0001 FAD6 0001 FAD7 0001 FAD8"
	$"0001 FAD9 0001 FADA 0001 FADB 0001 FADC"
	$"0001 FADD 0001 FADE 0001 FADF 0101 00FA"
	$"D000 00FA D100 00FA D200 00FA D300 00FA"
	$"D400 00FA D500 00FA D600 00FA D700 00FA"
	$"D800 00FA D900 00FA DA00 00FA DB00 00FA"
	$"DC00 00FA DD00 00FA DE00 00FB DF02 DF00"
	$"00FA D000 00FA D100 00FA D200 00FA D300"
	$"00FA D400 00FA D500 00FA D600 00FA D700"
	$"00FA D800 00FA D900 00FA DA00 00FA DB00"
	$"00FA DC00 00FA DD00 00FA DE00 00FC DFFF"
	$"DF00 0000 C700 01FA D000 01FA D100 01FA"
	$"D200 01FA D300 01FA D400 01FA D500 01FA"
	$"D600 01FA D700 01FA D800 01FA D900 01FA"
	$"DA00 01FA DB00 01FA DC00 01FA DD00 01FA"
	$"DE00 01FA DF01 0100 FAD0 0000 FAD1 0000"
	$"FAD2 0000 FAD3 0000 FAD4 0000 FAD5 0000"
	$"FAD6 0000 FAD7 0000 FAD8 0000 FAD9 0000"
	$"FADA 0000 FADB 0000 FADC 0000 FADD 0000"
	$"FADE 0000 FBDF 02DF 0000 FAD0 0000 FAD1"
	$"0000 FAD2 0000 FAD3 0000 FAD4 0000 FAD5"
	$"0000 FAD6 0000 FAD7 0000 FAD8 0000 FAD9"
	$"0000 FADA 0000 FADB 0000 FADC 0000 FADD"
	$"0000 FADE 0000 FCDF FFDF 0000 00C7 0001"
	$"FAD0 0001 FAD1 0001 FAD2 0001 FAD3 0001"
	$"FAD4 0001 FAD5 0001 FAD6 0001 FAD7 0001"
	$"FAD8 0001 FAD9 0001 FADA 0001 FADB 0001"
	$"FADC 0001 FADD 0001 FADE 0001 FADF 0101"
	$"00FA D000 00FA D100 00FA D200 00FA D300"
	$"00FA D400 00FA D500 00FA D600 00FA D700"
	$"00FA D800 00FA D900 00FA DA00 00FA DB00"
	$"00FA DC00 00FA DD00 00FA DE00 00FB DF02"
	$"DF00 00FA D000 00FA D100 00FA D200 00FA"
	$"D300 00FA D400 00FA D500 00FA D600 00FA"
	$"D700 00FA D800 00FA D900 00FA DA00 00FA"
	$"DB00 00FA DC00 00FA DD00 00FA DE00 00FC"
	$"DFFF DF00 0000 C700 01FA D000 01FA D100"
	$"01FA D200 01FA D300 01FA D400 01FA D500"
	$"01FA D600 01FA D700 01FA D800 01FA D900"
	$"01FA DA00 01FA DB00 01FA DC00 01FA DD00"
	$"01FA DE00 01FA DF01 0100 FAD0 0000 FAD1"
	$"0000 FAD2 0000 FAD3 0000 FAD4 0000 FAD5"
	$"0000 FAD6 0000 FAD7 0000 FAD8 0000 FAD9"
	$"0000 FADA 0000 FADB 0000 FADC 0000 FADD"
	$"0000 FADE 0000 FBDF 02DF 0000 FAD0 0000"
	$"FAD1 0000 FAD2 0000 FAD3 0000 FAD4 0000"
	$"FAD5 0000 FAD6 0000 FAD7 0000 FAD8 0000"
	$"FAD9 0000 FADA 0000 FADB 0000 FADC 0000"
	$"FADD 0000 FADE 0000 FCDF FFDF 0000 00C7"
	$"0001 FAD0 0001 FAD1 0001 FAD2 0001 FAD3"
	$"0001 FAD4 0001 FAD5 0001 FAD6 0001 FAD7"
	$"0001 FAD8 0001 FAD9 0001 FADA 0001 FADB"
	$"0001 FADC 0001 FADD 0001 FADE 0001 FADF"
	$"0101 00FA D000 00FA D100 00FA D200 00FA"
	$"D300 00FA D400 00FA D500 00FA D600 00FA"
	$"D700 00FA D800 00FA D900 00FA DA00 00FA"
	$"DB00 00FA DC00 00FA DD00 00FA DE00 00FB"
	$"DF02 DF00 00FA D000 00FA D100 00FA D200"
	$"00FA D300 00FA D400 00FA D500 00FA D600"
	$"00FA D700 00FA D800 00FA D900 00FA DA00"
	$"00FA DB00 00FA DC00 00FA DD00 00FA DE00"
	$"00FC DFFF DF00 0000 C700 01FA D000 01FA"
	$"D100 01FA D200 01FA D300 01FA D400 01FA"
	$"D500 01FA D600 01FA D700 01FA D800 01FA"
	$"D900 01FA DA00 01FA DB00 01FA DC00 01FA"
	$"DD00 01FA DE00 01FA DF01 0100 FAD0 0000"
	$"FAD1 0000 FAD2 0000 FAD3 0000 FAD4 0000"
	$"FAD5 0000 FAD6 0000 FAD7 0000 FAD8 0000"
	$"FAD9 0000 FADA 0000 FADB 0000 FADC 0000"
	$"FADD 0000 FADE 0000 FBDF 02DF 0000 FAD0"
	$"0000 FAD1 0000 FAD2 0000 FAD3 0000 FAD4"
	$"0000 FAD5 0000 FAD6 0000 FAD7 0000 FAD8"
	$"0000 FAD9 0000 FADA 0000 FADB 0000 FADC"
	$"0000 FADD 0000 FADE 0000 FCDF FFDF 0000"
	$"00C7 0001 FAD0 0001 FAD1 0001 FAD2 0001"
	$"FAD3 0001 FAD4 0001 FAD5 0001 FAD6 0001"
	$"FAD7 0001 FAD8 0001 FAD9 0001 FADA 0001"
	$"FADB 0001 FADC 0001 FADD 0001 FADE 0001"
	$"FADF 0101 00FA D000 00FA D100 00FA D200"
	$"00FA D300 00FA D400 00FA D500 00FA D600"
	$"00FA D700 00FA D800 00FA D900 00FA DA00"
	$"00FA DB00 00FA DC00 00FA DD00 00FA DE00"
	$"00FB DF02 DF00 00FA D000 00FA D100 00FA"
	$"D200 00FA D300 00FA D400 00FA D500 00FA"
	$"D600 00FA D700 00FA D800 00FA D900 00FA"
	$"DA00 00FA DB00 00FA DC00 00FA DD00 00FA"
	$"DE00 00FC DFFF DF00 0000 0A81 0100 0182"
	$"0081 00FE 0000 C700 01FA E000 01FA E100"
	$"01FA E200 01FA E300 01FA E400 01FA E500"
	$"01FA E600 01FA E700 01FA E800 01FA E900"
	$"01FA EA00 01FA EB00 01FA EC00 01FA ED00"
	$"01FA EE00 01FA EF01 0100 FAE0 0000 FAE1"
	$"0000 FAE2 0000 FAE3 0000 FAE4 0000 FAE5"
	$"0000 FAE6 0000 FAE7 0000 FAE8 0000 FAE9"
	$"0000 FAEA 0000 FAEB 0000 FAEC 0000 FAED"
	$"0000 FAEE 0000 FBEF 02EF 0000 FAE0 0000"
	$"FAE1 0000 FAE2 0000 FAE3 0000 FAE4 0000"
	$"FAE5 0000 FAE6 0000 FAE7 0000 FAE8 0000"
	$"FAE9 0000 FAEA 0000 FAEB 0000 FAEC 0000"
	$"FAED 0000 FAEE 0000 FCEF FFEF 0000 00C7"
	$"0001 FAE0 0001 FAE1 0001 FAE2 0001 FAE3"
	$"0001 FAE4 0001 FAE5 0001 FAE6 0001 FAE7"
	$"0001 FAE8 0001 FAE9 0001 FAEA 0001 FAEB"
	$"0001 FAEC 0001 FAED 0001 FAEE 0001 FAEF"
	$"0101 00FA E000 00FA E100 00FA E200 00FA"
	$"E300 00FA E400 00FA E500 00FA E600 00FA"
	$"E700 00FA E800 00FA E900 00FA EA00 00FA"
	$"EB00 00FA EC00 00FA ED00 00FA EE00 00FB"
	$"EF02 EF00 00FA E000 00FA E100 00FA E200"
	$"00FA E300 00FA E400 00FA E500 00FA E600"
	$"00FA E700 00FA E800 00FA E900 00FA EA00"
	$"00FA EB00 00FA EC00 00FA ED00 00FA EE00"
	$"00FC EFFF EF00 0000 C700 01FA E000 01FA"
	$"E100 01FA E200 01FA E300 01FA E400 01FA"
	$"E500 01FA E600 01FA E700 01FA E800 01FA"
	$"E900 01FA EA00 01FA EB00 01FA EC00 01FA"
	$"ED00 01FA EE00 01FA EF01 0100 FAE0 0000"
	$"FAE1 0000 FAE2 0000 FAE3 0000 FAE4 0000"
	$"FAE5 0000 FAE6 0000 FAE7 0000 FAE8 0000"
	$"FAE9 0000 FAEA 0000 FAEB 0000 FAEC 0000"
	$"FAED 0000 FAEE 0000 FBEF 02EF 0000 FAE0"
	$"0000 FAE1 0000 FAE2 0000 FAE3 0000 FAE4"
	$"0000 FAE5 0000 FAE6 0000 FAE7 0000 FAE8"
	$"0000 FAE9 0000 FAEA 0000 FAEB 0000 FAEC"
	$"0000 FAED 0000 FAEE 0000 FCEF FFEF 0000"
	$"00C7 0001 FAE0 0001 FAE1 0001 FAE2 0001"
	$"FAE3 0001 FAE4 0001 FAE5 0001 FAE6 0001"
	$"FAE7 0001 FAE8 0001 FAE9 0001 FAEA 0001"
	$"FAEB 0001 FAEC 0001 FAED 0001 FAEE 0001"
	$"FAEF 0101 00FA E000 00FA E100 00FA E200"
	$"00FA E300 00FA E400 00FA E500 00FA E600"
	$"00FA E700 00FA E800 00FA E900 00FA EA00"
	$"00FA EB00 00FA EC00 00FA ED00 00FA EE00"
	$"00FB EF02 EF00 00FA E000 00FA E100 00FA"
	$"E200 00FA E300 00FA E400 00FA E500 00FA"
	$"E600 00FA E700 00FA E800 00FA E900 00FA"
	$"EA00 00FA EB00 00FA EC00 00FA ED00 00FA"
	$"EE00 00FC EFFF EF00 0000 C700 01FA E000"
	$"01FA E100 01FA E200 01FA E300 01FA E400"
	$"01FA E500 01FA E600 01FA E700 01FA E800"
	$"01FA E900 01FA EA00 01FA EB00 01FA EC00"
	$"01FA ED00 01FA EE00 01FA EF01 0100 FAE0"
	$"0000 FAE1 0000 FAE2 0000 FAE3 0000 FAE4"
	$"0000 FAE5 0000 FAE6 0000 FAE7 0000 FAE8"
	$"0000 FAE9 0000 FAEA 0000 FAEB 0000 FAEC"
	$"0000 FAED 0000 FAEE 0000 FBEF 02EF 0000"
	$"FAE0 0000 FAE1 0000 FAE2 0000 FAE3 0000"
	$"FAE4 0000 FAE5 0000 FAE6 0000 FAE7 0000"
	$"FAE8 0000 FAE9 0000 FAEA 0000 FAEB 0000"
	$"FAEC 0000 FAED 0000 FAEE 0000 FCEF FFEF"
	$"0000 00C7 0001 FAE0 0001 FAE1 0001 FAE2"
	$"0001 FAE3 0001 FAE4 0001 FAE5 0001 FAE6"
	$"0001 FAE7 0001 FAE8 0001 FAE9 0001 FAEA"
	$"0001 FAEB 0001 FAEC 0001 FAED 0001 FAEE"
	$"0001 FAEF 0101 00FA E000 00FA E100 00FA"
	$"E200 00FA E300 00FA E400 00FA E500 00FA"
	$"E600 00FA E700 00FA E800 00FA E900 00FA"
	$"EA00 00FA EB00 00FA EC00 00FA ED00 00FA"
	$"EE00 00FB EF02 EF00 00FA E000 00FA E100"
	$"00FA E200 00FA E300 00FA E400 00FA E500"
	$"00FA E600 00FA E700 00FA E800 00FA E900"
	$"00FA EA00 00FA EB00 00FA EC00 00FA ED00"
	$"00FA EE00 00FC EFFF EF00 0000 C700 01FA"
	$"E000 01FA E100 01FA E200 01FA E300 01FA"
	$"E400 01FA E500 01FA E600 01FA E700 01FA"
	$"E800 01FA E900 01FA EA00 01FA EB00 01FA"
	$"EC00 01FA ED00 01FA EE00 01FA EF01 0100"
	$"FAE0 0000 FAE1 0000 FAE2 0000 FAE3 0000"
	$"FAE4 0000 FAE5 0000 FAE6 0000 FAE7 0000"
	$"FAE8 0000 FAE9 0000 FAEA 0000 FAEB 0000"
	$"FAEC 0000 FAED 0000 FAEE 0000 FBEF 02EF"
	$"0000 FAE0 0000 FAE1 0000 FAE2 0000 FAE3"
	$"0000 FAE4 0000 FAE5 0000 FAE6 0000 FAE7"
	$"0000 FAE8 0000 FAE9 0000 FAEA 0000 FAEB"
	$"0000 FAEC 0000 FAED 0000 FAEE 0000 FCEF"
	$"FFEF 0000 000A 8101 0001 8200 8100 FE00"
	$"00C7 0001 FAF0 0001 FAF1 0001 FAF2 0001"
	$"FAF3 0001 FAF4 0001 FAF5 0001 FAF6 0001"
	$"FAF7 0001 FAF8 0001 FAF9 0001 FAFA 0001"
	$"FAFB 0001 FAFC 0001 FAFD 0001 FAFE 0001"
	$"FAFF 0101 00FA F000 00FA F100 00FA F200"
	$"00FA F300 00FA F400 00FA F500 00FA F600"
	$"00FA F700 00FA F800 00FA F900 00FA FA00"
	$"00FA FB00 00FA FC00 00FA FD00 00FA FE00"
	$"00FB FF02 FF00 00FA F000 00FA F100 00FA"
	$"F200 00FA F300 00FA F400 00FA F500 00FA"
	$"F600 00FA F700 00FA F800 00FA F900 00FA"
	$"FA00 00FA FB00 00FA FC00 00FA FD00 00FA"
	$"FE00 00FC FFFF FF00 0000 C700 01FA F000"
	$"01FA F100 01FA F200 01FA F300 01FA F400"
	$"01FA F500 01FA F600 01FA F700 01FA F800"
	$"01FA F900 01FA FA00 01FA FB00 01FA FC00"
	$"01FA FD00 01FA FE00 01FA FF01 0100 FAF0"
	$"0000 FAF1 0000 FAF2 0000 FAF3 0000 FAF4"
	$"0000 FAF5 0000 FAF6 0000 FAF7 0000 FAF8"
	$"0000 FAF9 0000 FAFA 0000 FAFB 0000 FAFC"
	$"0000 FAFD 0000 FAFE 0000 FBFF 02FF 0000"
	$"FAF0 0000 FAF1 0000 FAF2 0000 FAF3 0000"
	$"FAF4 0000 FAF5 0000 FAF6 0000 FAF7 0000"
	$"FAF8 0000 FAF9 0000 FAFA 0000 FAFB 0000"
	$"FAFC 0000 FAFD 0000 FAFE 0000 FCFF FFFF"
	$"0000 00C7 0001 FAF0 0001 FAF1 0001 FAF2"
	$"0001 FAF3 0001 FAF4 0001 FAF5 0001 FAF6"
	$"0001 FAF7 0001 FAF8 0001 FAF9 0001 FAFA"
	$"0001 FAFB 0001 FAFC 0001 FAFD 0001 FAFE"
	$"0001 FAFF 0101 00FA F000 00FA F100 00FA"
	$"F200 00FA F300 00FA F400 00FA F500 00FA"
	$"F600 00FA F700 00FA F800 00FA F900 00FA"
	$"FA00 00FA FB00 00FA FC00 00FA FD00 00FA"
	$"FE00 00FB FF02 FF00 00FA F000 00FA F100"
	$"00FA F200 00FA F300 00FA F400 00FA F500"
	$"00FA F600 00FA F700 00FA F800 00FA F900"
	$"00FA FA00 00FA FB00 00FA FC00 00FA FD00"
	$"00FA FE00 00FC FFFF FF00 0000 C700 01FA"
	$"F000 01FA F100 01FA F200 01FA F300 01FA"
	$"F400 01FA F500 01FA F600 01FA F700 01FA"
	$"F800 01FA F900 01FA FA00 01FA FB00 01FA"
	$"FC00 01FA FD00 01FA FE00 01FA FF01 0100"
	$"FAF0 0000 FAF1 0000 FAF2 0000 FAF3 0000"
	$"FAF4 0000 FAF5 0000 FAF6 0000 FAF7 0000"
	$"FAF8 0000 FAF9 0000 FAFA 0000 FAFB 0000"
	$"FAFC 0000 FAFD 0000 FAFE 0000 FBFF 02FF"
	$"0000 FAF0 0000 FAF1 0000 FAF2 0000 FAF3"
	$"0000 FAF4 0000 FAF5 0000 FAF6 0000 FAF7"
	$"0000 FAF8 0000 FAF9 0000 FAFA 0000 FAFB"
	$"0000 FAFC 0000 FAFD 0000 FAFE 0000 FCFF"
	$"FFFF 0000 00C7 0001 FAF0 0001 FAF1 0001"
	$"FAF2 0001 FAF3 0001 FAF4 0001 FAF5 0001"
	$"FAF6 0001 FAF7 0001 FAF8 0001 FAF9 0001"
	$"FAFA 0001 FAFB 0001 FAFC 0001 FAFD 0001"
	$"FAFE 0001 FAFF 0101 00FA F000 00FA F100"
	$"00FA F200 00FA F300 00FA F400 00FA F500"
	$"00FA F600 00FA F700 00FA F800 00FA F900"
	$"00FA FA00 00FA FB00 00FA FC00 00FA FD00"
	$"00FA FE00 00FB FF02 FF00 00FA F000 00FA"
	$"F100 00FA F200 00FA F300 00FA F400 00FA"
	$"F500 00FA F600 00FA F700 00FA F800 00FA"
	$"F900 00FA FA00 00FA FB00 00FA FC00 00FA"
	$"FD00 00FA FE00 00FC FFFF FF00 0000 C700"
	$"01FA F000 01FA F100 01FA F200 01FA F300"
	$"01FA F400 01FA F500 01FA F600 01FA F700"
	$"01FA F800 01FA F900 01FA FA00 01FA FB00"
	$"01FA FC00 01FA FD00 01FA FE00 01FA FF01"
	$"0100 FAF0 0000 FAF1 0000 FAF2 0000 FAF3"
	$"0000 FAF4 0000 FAF5 0000 FAF6 0000 FAF7"
	$"0000 FAF8 0000 FAF9 0000 FAFA 0000 FAFB"
	$"0000 FAFC 0000 FAFD 0000 FAFE 0000 FBFF"
	$"02FF 0000 FAF0 0000 FAF1 0000 FAF2 0000"
	$"FAF3 0000 FAF4 0000 FAF5 0000 FAF6 0000"
	$"FAF7 0000 FAF8 0000 FAF9 0000 FAFA 0000"
	$"FAFB 0000 FAFC 0000 FAFD 0000 FAFE 0000"
	$"FCFF FFFF 0000 00C7 0001 FAF0 0001 FAF1"
	$"0001 FAF2 0001 FAF3 0001 FAF4 0001 FAF5"
	$"0001 FAF6 0001 FAF7 0001 FAF8 0001 FAF9"
	$"0001 FAFA 0001 FAFB 0001 FAFC 0001 FAFD"
	$"0001 FAFE 0001 FAFF 0101 00FA F000 00FA"
	$"F100 00FA F200 00FA F300 00FA F400 00FA"
	$"F500 00FA F600 00FA F700 00FA F800 00FA"
	$"F900 00FA FA00 00FA FB00 00FA FC00 00FA"
	$"FD00 00FA FE00 00FB FF02 FF00 00FA F000"
	$"00FA F100 00FA F200 00FA F300 00FA F400"
	$"00FA F500 00FA F600 00FA F700 00FA F800"
	$"00FA F900 00FA FA00 00FA FB00 00FA FC00"
	$"00FA FD00 00FA FE00 00FC FFFF FF00 0000"
	$"0A81 0100 0182 0081 00FE 0000 00FF"
};

resource 'PICT' (2053, "1 Bit Picker") {
	390,
	{0, 0, 17, 33},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0011 0021 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0011"
	$"0021 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0011 0021 0098 800C 0000 0000 0011"
	$"0021 0000 0000 0000 0000 0048 0000 0048"
	$"0000 0000 0002 0001 0002 0000 0000 0000"
	$"0000 0000 0000 004A 5686 0000 0002 0000"
	$"FFFF FFFF FFFF 0001 0101 0000 0000 0002"
	$"0000 0000 0000 0000 0000 0011 0021 0000"
	$"0000 0011 0021 0000 06F9 5500 01FE 000C"
	$"0040 FE00 006A FEAA 0001 FE00 0C00 40FE"
	$"0000 6AFE AA00 01FE 000C 0040 FE00 006A"
	$"FEAA 0001 FE00 0C00 40FE 0000 6AFE AA00"
	$"01FE 000C 0040 FE00 006A FEAA 0001 FE00"
	$"0C00 40FE 0000 6AFE AA00 01FE 000C 0040"
	$"FE00 006A FEAA 0001 FE00 0C00 40FE 0000"
	$"6AFE AA00 01FE 000C 0040 FE00 006A FEAA"
	$"0001 FE00 0C00 40FE 0000 6AFE AA00 01FE"
	$"000C 0040 FE00 006A FEAA 0001 FE00 0C00"
	$"40FE 0000 6AFE AA00 01FE 000C 0040 FE00"
	$"006A FEAA 0001 FE00 0C00 40FE 0000 6AFE"
	$"AA00 01FE 000C 0040 FE00 006A FEAA 0001"
	$"FE00 06F9 5500 01FE 0000 00FF"
};

resource 'PICT' (2052, "4 Bit Picker") {
	1242,
	{0, 0, 49, 49},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0031 0031 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0031"
	$"0031 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0031 0031 0098 8034 0000 0000 0031"
	$"0031 0000 0000 0000 0000 0048 0000 0048"
	$"0000 0000 0008 0001 0008 0000 0000 0000"
	$"0000 0000 0000 004A A7F0 0000 0010 0000"
	$"FFFF FFFF FFFF 0001 F2F2 0808 8484 0002"
	$"4646 0000 A5A5 0003 0000 0000 D4D4 0004"
	$"0202 ABAB EAEA 0005 0000 6464 1111 0006"
	$"1F1F B7B7 1414 0007 FCFC F3F3 0505 0008"
	$"9090 7171 3A3A 0009 5656 2C2C 0505 000A"
	$"FFFF 6464 0202 000B 0101 0000 0000 000C"
	$"DDDD 0808 0606 000D C0C0 C0C0 C0C0 000E"
	$"8080 8080 8080 000F 4040 4040 4040 0010"
	$"0000 0000 0000 0000 0000 0031 0031 0000"
	$"0000 0031 0031 0000 04D0 0BFE 0014 000B"
	$"F600 000B F607 000B F60A 000B F60C 000B"
	$"FE00 1400 0BF6 0000 0BF6 0700 0BF6 0A00"
	$"0BF6 0C00 0BFE 0014 000B F600 000B F607"
	$"000B F60A 000B F60C 000B FE00 1400 0BF6"
	$"0000 0BF6 0700 0BF6 0A00 0BF6 0C00 0BFE"
	$"0014 000B F600 000B F607 000B F60A 000B"
	$"F60C 000B FE00 1400 0BF6 0000 0BF6 0700"
	$"0BF6 0A00 0BF6 0C00 0BFE 0014 000B F600"
	$"000B F607 000B F60A 000B F60C 000B FE00"
	$"1400 0BF6 0000 0BF6 0700 0BF6 0A00 0BF6"
	$"0C00 0BFE 0014 000B F600 000B F607 000B"
	$"F60A 000B F60C 000B FE00 1400 0BF6 0000"
	$"0BF6 0700 0BF6 0A00 0BF6 0C00 0BFE 0014"
	$"000B F600 000B F607 000B F60A 000B F60C"
	$"000B FE00 04D0 0BFE 0014 000B F601 000B"
	$"F602 000B F603 000B F604 000B FE00 1400"
	$"0BF6 0100 0BF6 0200 0BF6 0300 0BF6 0400"
	$"0BFE 0014 000B F601 000B F602 000B F603"
	$"000B F604 000B FE00 1400 0BF6 0100 0BF6"
	$"0200 0BF6 0300 0BF6 0400 0BFE 0014 000B"
	$"F601 000B F602 000B F603 000B F604 000B"
	$"FE00 1400 0BF6 0100 0BF6 0200 0BF6 0300"
	$"0BF6 0400 0BFE 0014 000B F601 000B F602"
	$"000B F603 000B F604 000B FE00 1400 0BF6"
	$"0100 0BF6 0200 0BF6 0300 0BF6 0400 0BFE"
	$"0014 000B F601 000B F602 000B F603 000B"
	$"F604 000B FE00 1400 0BF6 0100 0BF6 0200"
	$"0BF6 0300 0BF6 0400 0BFE 0014 000B F601"
	$"000B F602 000B F603 000B F604 000B FE00"
	$"04D0 0BFE 0014 000B F606 000B F605 000B"
	$"F609 000B F608 000B FE00 1400 0BF6 0600"
	$"0BF6 0500 0BF6 0900 0BF6 0800 0BFE 0014"
	$"000B F606 000B F605 000B F609 000B F608"
	$"000B FE00 1400 0BF6 0600 0BF6 0500 0BF6"
	$"0900 0BF6 0800 0BFE 0014 000B F606 000B"
	$"F605 000B F609 000B F608 000B FE00 1400"
	$"0BF6 0600 0BF6 0500 0BF6 0900 0BF6 0800"
	$"0BFE 0014 000B F606 000B F605 000B F609"
	$"000B F608 000B FE00 1400 0BF6 0600 0BF6"
	$"0500 0BF6 0900 0BF6 0800 0BFE 0014 000B"
	$"F606 000B F605 000B F609 000B F608 000B"
	$"FE00 1400 0BF6 0600 0BF6 0500 0BF6 0900"
	$"0BF6 0800 0BFE 0014 000B F606 000B F605"
	$"000B F609 000B F608 000B FE00 04D0 0BFE"
	$"0014 000B F60D 000B F60E 000B F60F 000B"
	$"F610 000B FE00 1400 0BF6 0D00 0BF6 0E00"
	$"0BF6 0F00 0BF6 1000 0BFE 0014 000B F60D"
	$"000B F60E 000B F60F 000B F610 000B FE00"
	$"1400 0BF6 0D00 0BF6 0E00 0BF6 0F00 0BF6"
	$"1000 0BFE 0014 000B F60D 000B F60E 000B"
	$"F60F 000B F610 000B FE00 1400 0BF6 0D00"
	$"0BF6 0E00 0BF6 0F00 0BF6 1000 0BFE 0014"
	$"000B F60D 000B F60E 000B F60F 000B F610"
	$"000B FE00 1400 0BF6 0D00 0BF6 0E00 0BF6"
	$"0F00 0BF6 1000 0BFE 0014 000B F60D 000B"
	$"F60E 000B F60F 000B F610 000B FE00 1400"
	$"0BF6 0D00 0BF6 0E00 0BF6 0F00 0BF6 1000"
	$"0BFE 0014 000B F60D 000B F60E 000B F60F"
	$"000B F610 000B FE00 04D0 0BFE 0000 00FF"
};

resource 'PICT' (2050, "System Palette Picker") {
	23472,
	{0, 0, 145, 129},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0091 0081 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0091"
	$"0081 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0091 0081 8201 0000 0854 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 4000"
	$"0000 0000 0821 0000 0000 0091 0081 0000"
	$"0056 726C 6520 0000 0000 0000 0000 0001"
	$"0001 6170 706C 0000 0000 0000 0400 0081"
	$"0091 0048 0000 0048 0000 0000 07CB 0001"
	$"0941 6E69 6D61 7469 6F6E 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0028 0028 4000 07CB 0008 0000 0000 0091"
	$"0000 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01F4"
	$"FFFF FFFF 01FF 0000 00F9 0000 0000 F4FF"
	$"FFFF FF01 FF00 0000 FF01 F4FF FFFF FF01"
	$"FF00 0000 F900 0000 00F4 FFFF FFFF 01FF"
	$"0000 00FF 01F4 FFFF FFFF 01FF 0000 00F9"
	$"0000 0000 F4FF FFFF FF01 FF00 0000 FF01"
	$"F4FF FFFF FF01 FF00 0000 F900 0000 00F4"
	$"FFFF FFFF 01FF 0000 00FF 01F4 FFFF FFFF"
	$"01FF 0000 00F9 0000 0000 F4FF FFFF FF01"
	$"FF00 0000 FF01 F4FF FFFF FF01 FF00 0000"
	$"F900 0000 00F4 FFFF FFFF 01FF 0000 00FF"
	$"01F4 FFFF FFFF 01FF 0000 00F9 0000 0000"
	$"F4FF FFFF FF01 FF00 0000 FF01 F4FF FFFF"
	$"FF01 FF00 0000 F900 0000 00F4 FFFF FFFF"
	$"01FF 0000 00FF 01F4 FFFF FFFF 01FF 0000"
	$"00F9 0000 0000 F4FF FFFF FF01 FF00 0000"
	$"FF01 F4FF FFFF FF01 FF00 0000 F900 0000"
	$"00F4 FFFF FFFF 01FF 0000 00FF 01F4 FFFF"
	$"FFFF 01FF 0000 00F9 0000 0000 F4FF FFFF"
	$"FF01 FF00 0000 FF01 F4FF FFFF FF01 FF00"
	$"0000 F900 0000 00F4 FFFF FFFF 01FF 0000"
	$"00FF 01F4 FFFF FFFF 01FF 0000 00F9 0000"
	$"0000 F4FF FFFF FF01 FF00 0000 FF01 F4FF"
	$"FFFF FF01 FF00 0000 F900 0000 00F4 FFFF"
	$"FFFF 01FF 0000 00FF 01F4 FFFF FFFF 01FF"
	$"0000 00F9 0000 0000 F4FF FFFF FF01 FF00"
	$"0000 FF01 F4FF FFFF FF01 FF00 0000 F900"
	$"0000 00F4 FFFF FFFF 01FF 0000 00FF 0000"
	$"009A 0000 00FF 8204 0000 0000 0091 0081"
	$"0000 0004 0000 0000 0048 0000 0048 0000"
	$"0010 0020 0003 0008 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0091 0081 0000 0000"
	$"0091 0081 0040 000A 8101 0001 8200 8100"
	$"FE00 0097 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FA00 0001 FA00 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0101 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FFF8 00FA"
	$"FFF8 00FA FFD2 00FE 00FA FF00 00FA CC00"
	$"00FA 9900 00FA 6600 00FA 33E8 00FA FF00"
	$"00FA FFF8 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FC FFFF FF00 0000 9700 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA 0000 01FA"
	$"0000 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA FF01 0100"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF F800 FAFF F800 FAFF D200"
	$"FE00 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 E800 FAFF 0000 FAFF F800 FA33"
	$"0000 FA66 0000 FA99 0000 FACC 0000 FCFF"
	$"FFFF 0000 0097 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FA00 0001 FA00 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0101 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FFF8"
	$"00FA FFF8 00FA FFD2 00FE 00FA FF00 00FA"
	$"CC00 00FA 9900 00FA 6600 00FA 33E8 00FA"
	$"FF00 00FA FFF8 00FA 3300 00FA 6600 00FA"
	$"9900 00FA CC00 00FC FFFF FF00 0000 9700"
	$"01FA FF00 01FA FF00 01FA FF00 01FA FF00"
	$"01FA FF00 01FA FF00 01FA FF00 01FA 0000"
	$"01FA 0000 01FA FF00 01FA FF00 01FA FF00"
	$"01FA FF00 01FA FF00 01FA FF00 01FA FF01"
	$"0100 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FAFF F800 FAFF F800 FAFF"
	$"D200 FE00 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 E800 FAFF 0000 FAFF F800"
	$"FA33 0000 FA66 0000 FA99 0000 FACC 0000"
	$"FCFF FFFF 0000 0097 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FA00 0001 FA00 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0101 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FFF8 00FA FFF8 00FA FFD2 00FE 00FA FF00"
	$"00FA CC00 00FA 9900 00FA 6600 00FA 33E8"
	$"00FA FF00 00FA FFF8 00FA 3300 00FA 6600"
	$"00FA 9900 00FA CC00 00FC FFFF FF00 0000"
	$"9700 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"0000 01FA 0000 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"FF01 0100 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FAFF F800 FAFF F800"
	$"FAFF D200 FE00 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 E800 FAFF 0000 FAFF"
	$"F800 FA33 0000 FA66 0000 FA99 0000 FACC"
	$"0000 FCFF FFFF 0000 0097 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FA00 0001 FA00 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0101 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FFF8 00FA FFF8 00FA FFD2 00FE 00FA"
	$"FF00 00FA CC00 00FA 9900 00FA 6600 00FA"
	$"33E8 00FA FF00 00FA FFF8 00FA 3300 00FA"
	$"6600 00FA 9900 00FA CC00 00FC FFFF FF00"
	$"0000 0A81 0100 0182 0081 00FE 0000 9700"
	$"01FA CC00 01FA CC00 01FA CC00 01FA CC00"
	$"01FA CC00 01FA CC00 01FA EE00 01FA 0000"
	$"01FA 0000 01FA EE00 01FA CC00 01FA CC00"
	$"01FA CC00 01FA CC00 01FA CC00 01FA CC01"
	$"0100 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FAFF F800 FAEE F800 FAEE"
	$"D200 FE00 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 E800 FAEE 0000 FAEE F800"
	$"FA33 0000 FA66 0000 FA99 0000 FACC 0000"
	$"FCFF FFFF 0000 0097 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FAEE 0001 FA00 0001 FA00 0001 FAEE"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0101 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FFF8 00FA EEF8 00FA EED2 00FE 00FA FF00"
	$"00FA CC00 00FA 9900 00FA 6600 00FA 33E8"
	$"00FA EE00 00FA EEF8 00FA 3300 00FA 6600"
	$"00FA 9900 00FA CC00 00FC FFFF FF00 0000"
	$"9700 01FA CC00 01FA CC00 01FA CC00 01FA"
	$"CC00 01FA CC00 01FA CC00 01FA EE00 01FA"
	$"0000 01FA 0000 01FA EE00 01FA CC00 01FA"
	$"CC00 01FA CC00 01FA CC00 01FA CC00 01FA"
	$"CC01 0100 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FAFF F800 FAEE F800"
	$"FAEE D200 FE00 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 E800 FAEE 0000 FAEE"
	$"F800 FA33 0000 FA66 0000 FA99 0000 FACC"
	$"0000 FCFF FFFF 0000 0097 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FAEE 0001 FA00 0001 FA00 0001"
	$"FAEE 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0101 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FFF8 00FA EEF8 00FA EED2 00FE 00FA"
	$"FF00 00FA CC00 00FA 9900 00FA 6600 00FA"
	$"33E8 00FA EE00 00FA EEF8 00FA 3300 00FA"
	$"6600 00FA 9900 00FA CC00 00FC FFFF FF00"
	$"0000 9700 01FA CC00 01FA CC00 01FA CC00"
	$"01FA CC00 01FA CC00 01FA CC00 01FA EE00"
	$"01FA 0000 01FA 0000 01FA EE00 01FA CC00"
	$"01FA CC00 01FA CC00 01FA CC00 01FA CC00"
	$"01FA CC01 0100 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF F800 FAEE"
	$"F800 FAEE D200 FE00 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 E800 FAEE 0000"
	$"FAEE F800 FA33 0000 FA66 0000 FA99 0000"
	$"FACC 0000 FCFF FFFF 0000 0097 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FAEE 0001 FA00 0001 FA00"
	$"0001 FAEE 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0101 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FFF8 00FA EEF8 00FA EED2 00FE"
	$"00FA FF00 00FA CC00 00FA 9900 00FA 6600"
	$"00FA 33E8 00FA EE00 00FA EEF8 00FA 3300"
	$"00FA 6600 00FA 9900 00FA CC00 00FC FFFF"
	$"FF00 0000 9700 01FA CC00 01FA CC00 01FA"
	$"CC00 01FA CC00 01FA CC00 01FA CC00 01FA"
	$"EE00 01FA 0000 01FA 0000 01FA EE00 01FA"
	$"CC00 01FA CC00 01FA CC00 01FA CC00 01FA"
	$"CC00 01FA CC01 0100 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FAFF F800"
	$"FAEE F800 FAEE D200 FE00 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 E800 FAEE"
	$"0000 FAEE F800 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FCFF FFFF 0000 000A 8101"
	$"0001 8200 8100 FE00 0097 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FADD 0001 FA00 0001 FA00 0001"
	$"FADD 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0101 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FFF8 00FA DDF8 00FA DDD2 00FE 00FA"
	$"FF00 00FA CC00 00FA 9900 00FA 6600 00FA"
	$"33E8 00FA DD00 00FA DDF8 00FA 3300 00FA"
	$"6600 00FA 9900 00FA CC00 00FC FFFF FF00"
	$"0000 9700 01FA 9900 01FA 9900 01FA 9900"
	$"01FA 9900 01FA 9900 01FA 9900 01FA DD00"
	$"01FA 0000 01FA 0000 01FA DD00 01FA 9900"
	$"01FA 9900 01FA 9900 01FA 9900 01FA 9900"
	$"01FA 9901 0100 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF F800 FADD"
	$"F800 FADD D200 FE00 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 E800 FADD 0000"
	$"FADD F800 FA33 0000 FA66 0000 FA99 0000"
	$"FACC 0000 FCFF FFFF 0000 0097 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FADD 0001 FA00 0001 FA00"
	$"0001 FADD 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0101 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FFF8 00FA DDF8 00FA DDD2 00FE"
	$"00FA FF00 00FA CC00 00FA 9900 00FA 6600"
	$"00FA 33E8 00FA DD00 00FA DDF8 00FA 3300"
	$"00FA 6600 00FA 9900 00FA CC00 00FC FFFF"
	$"FF00 0000 9700 01FA 9900 01FA 9900 01FA"
	$"9900 01FA 9900 01FA 9900 01FA 9900 01FA"
	$"DD00 01FA 0000 01FA 0000 01FA DD00 01FA"
	$"9900 01FA 9900 01FA 9900 01FA 9900 01FA"
	$"9900 01FA 9901 0100 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FAFF F800"
	$"FADD F800 FADD D200 FE00 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 E800 FADD"
	$"0000 FADD F800 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FCFF FFFF 0000 0097 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FADD 0001 FA00 0001"
	$"FA00 0001 FADD 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0101"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FFF8 00FA DDF8 00FA DDD2"
	$"00FE 00FA FF00 00FA CC00 00FA 9900 00FA"
	$"6600 00FA 33E8 00FA DD00 00FA DDF8 00FA"
	$"3300 00FA 6600 00FA 9900 00FA CC00 00FC"
	$"FFFF FF00 0000 9700 01FA 9900 01FA 9900"
	$"01FA 9900 01FA 9900 01FA 9900 01FA 9900"
	$"01FA DD00 01FA 0000 01FA 0000 01FA DD00"
	$"01FA 9900 01FA 9900 01FA 9900 01FA 9900"
	$"01FA 9900 01FA 9901 0100 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"F800 FADD F800 FADD D200 FE00 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 E800"
	$"FADD 0000 FADD F800 FA33 0000 FA66 0000"
	$"FA99 0000 FACC 0000 FCFF FFFF 0000 0097"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FADD 0001 FA00"
	$"0001 FA00 0001 FADD 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0101 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FFF8 00FA DDF8 00FA"
	$"DDD2 00FE 00FA FF00 00FA CC00 00FA 9900"
	$"00FA 6600 00FA 33E8 00FA DD00 00FA DDF8"
	$"00FA 3300 00FA 6600 00FA 9900 00FA CC00"
	$"00FC FFFF FF00 0000 0A81 0100 0182 0081"
	$"00FE 0000 9700 01FA 6600 01FA 6600 01FA"
	$"6600 01FA 6600 01FA 6600 01FA 6600 01FA"
	$"CC00 01FA 0000 01FA 0000 01FA CC00 01FA"
	$"6600 01FA 6600 01FA 6600 01FA 6600 01FA"
	$"6600 01FA 6601 0100 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FAFF F800"
	$"FACC F800 FACC D200 FE00 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 E800 FACC"
	$"0000 FACC F800 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FCFF FFFF 0000 0097 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FACC 0001 FA00 0001"
	$"FA00 0001 FACC 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0101"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FFF8 00FA CCF8 00FA CCD2"
	$"00FE 00FA FF00 00FA CC00 00FA 9900 00FA"
	$"6600 00FA 33E8 00FA CC00 00FA CCF8 00FA"
	$"3300 00FA 6600 00FA 9900 00FA CC00 00FC"
	$"FFFF FF00 0000 9700 01FA 6600 01FA 6600"
	$"01FA 6600 01FA 6600 01FA 6600 01FA 6600"
	$"01FA CC00 01FA 0000 01FA 0000 01FA CC00"
	$"01FA 6600 01FA 6600 01FA 6600 01FA 6600"
	$"01FA 6600 01FA 6601 0100 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"F800 FACC F800 FACC D200 FE00 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 E800"
	$"FACC 0000 FACC F800 FA33 0000 FA66 0000"
	$"FA99 0000 FACC 0000 FCFF FFFF 0000 0097"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FACC 0001 FA00"
	$"0001 FA00 0001 FACC 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0101 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FFF8 00FA CCF8 00FA"
	$"CCD2 00FE 00FA FF00 00FA CC00 00FA 9900"
	$"00FA 6600 00FA 33E8 00FA CC00 00FA CCF8"
	$"00FA 3300 00FA 6600 00FA 9900 00FA CC00"
	$"00FC FFFF FF00 0000 9700 01FA 6600 01FA"
	$"6600 01FA 6600 01FA 6600 01FA 6600 01FA"
	$"6600 01FA CC00 01FA 0000 01FA 0000 01FA"
	$"CC00 01FA 6600 01FA 6600 01FA 6600 01FA"
	$"6600 01FA 6600 01FA 6601 0100 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FAFF F800 FACC F800 FACC D200 FE00 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"E800 FACC 0000 FACC F800 FA33 0000 FA66"
	$"0000 FA99 0000 FACC 0000 FCFF FFFF 0000"
	$"0097 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FACC 0001"
	$"FA00 0001 FA00 0001 FACC 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0101 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FFF8 00FA CCF8"
	$"00FA CCD2 00FE 00FA FF00 00FA CC00 00FA"
	$"9900 00FA 6600 00FA 33E8 00FA CC00 00FA"
	$"CCF8 00FA 3300 00FA 6600 00FA 9900 00FA"
	$"CC00 00FC FFFF FF00 0000 9700 01FA 6600"
	$"01FA 6600 01FA 6600 01FA 6600 01FA 6600"
	$"01FA 6600 01FA CC00 01FA 0000 01FA 0000"
	$"01FA CC00 01FA 6600 01FA 6600 01FA 6600"
	$"01FA 6600 01FA 6600 01FA 6601 0100 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FAFF F800 FACC F800 FACC D200 FE00"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 E800 FACC 0000 FACC F800 FA33 0000"
	$"FA66 0000 FA99 0000 FACC 0000 FCFF FFFF"
	$"0000 000A 8101 0001 8200 8100 FE00 0097"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FABB 0001 FA00"
	$"0001 FA00 0001 FABB 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0101 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FFF8 00FA BBF8 00FA"
	$"BBD2 00FE 00FA FF00 00FA CC00 00FA 9900"
	$"00FA 6600 00FA 33E8 00FA BB00 00FA BBF8"
	$"00FA 3300 00FA 6600 00FA 9900 00FA CC00"
	$"00FC FFFF FF00 0000 9700 01FA 3300 01FA"
	$"3300 01FA 3300 01FA 3300 01FA 3300 01FA"
	$"3300 01FA BB00 01FA 0000 01FA 0000 01FA"
	$"BB00 01FA 3300 01FA 3300 01FA 3300 01FA"
	$"3300 01FA 3300 01FA 3301 0100 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FAFF F800 FABB F800 FABB D200 FE00 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"E800 FABB 0000 FABB F800 FA33 0000 FA66"
	$"0000 FA99 0000 FACC 0000 FCFF FFFF 0000"
	$"0097 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FABB 0001"
	$"FA00 0001 FA00 0001 FABB 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0101 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FFF8 00FA BBF8"
	$"00FA BBD2 00FE 00FA FF00 00FA CC00 00FA"
	$"9900 00FA 6600 00FA 33E8 00FA BB00 00FA"
	$"BBF8 00FA 3300 00FA 6600 00FA 9900 00FA"
	$"CC00 00FC FFFF FF00 0000 9700 01FA 3300"
	$"01FA 3300 01FA 3300 01FA 3300 01FA 3300"
	$"01FA 3300 01FA BB00 01FA 0000 01FA 0000"
	$"01FA BB00 01FA 3300 01FA 3300 01FA 3300"
	$"01FA 3300 01FA 3300 01FA 3301 0100 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FAFF F800 FABB F800 FABB D200 FE00"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 E800 FABB 0000 FABB F800 FA33 0000"
	$"FA66 0000 FA99 0000 FACC 0000 FCFF FFFF"
	$"0000 0097 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FABB"
	$"0001 FA00 0001 FA00 0001 FABB 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0101 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FFF8 00FA"
	$"BBF8 00FA BBD2 00FE 00FA FF00 00FA CC00"
	$"00FA 9900 00FA 6600 00FA 33E8 00FA BB00"
	$"00FA BBF8 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FC FFFF FF00 0000 9700 01FA"
	$"3300 01FA 3300 01FA 3300 01FA 3300 01FA"
	$"3300 01FA 3300 01FA BB00 01FA 0000 01FA"
	$"0000 01FA BB00 01FA 3300 01FA 3300 01FA"
	$"3300 01FA 3300 01FA 3300 01FA 3301 0100"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF F800 FABB F800 FABB D200"
	$"FE00 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 E800 FABB 0000 FABB F800 FA33"
	$"0000 FA66 0000 FA99 0000 FACC 0000 FCFF"
	$"FFFF 0000 0097 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FABB 0001 FA00 0001 FA00 0001 FABB 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0101 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FFF8"
	$"00FA BBF8 00FA BBD2 00FE 00FA FF00 00FA"
	$"CC00 00FA 9900 00FA 6600 00FA 33E8 00FA"
	$"BB00 00FA BBF8 00FA 3300 00FA 6600 00FA"
	$"9900 00FA CC00 00FC FFFF FF00 0000 0A81"
	$"0100 0182 0081 00FE 0000 9700 01FA 0000"
	$"01FA 0000 01FA 0000 01FA 0000 01FA 0000"
	$"01FA 0000 01FA AA00 01FA 0000 01FA 0000"
	$"01FA AA00 01FA 0000 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 0000 01FA 0001 0100 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FAFF F800 FAAA F800 FAAA D200 FE00"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 E800 FAAA 0000 FAAA F800 FA33 0000"
	$"FA66 0000 FA99 0000 FACC 0000 FCFF FFFF"
	$"0000 0097 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FAAA"
	$"0001 FA00 0001 FA00 0001 FAAA 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0101 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FFF8 00FA"
	$"AAF8 00FA AAD2 00FE 00FA FF00 00FA CC00"
	$"00FA 9900 00FA 6600 00FA 33E8 00FA AA00"
	$"00FA AAF8 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FC FFFF FF00 0000 9700 01FA"
	$"0000 01FA 0000 01FA 0000 01FA 0000 01FA"
	$"0000 01FA 0000 01FA AA00 01FA 0000 01FA"
	$"0000 01FA AA00 01FA 0000 01FA 0000 01FA"
	$"0000 01FA 0000 01FA 0000 01FA 0001 0100"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF F800 FAAA F800 FAAA D200"
	$"FE00 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 E800 FAAA 0000 FAAA F800 FA33"
	$"0000 FA66 0000 FA99 0000 FACC 0000 FCFF"
	$"FFFF 0000 0097 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FAAA 0001 FA00 0001 FA00 0001 FAAA 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0101 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FFF8"
	$"00FA AAF8 00FA AAD2 00FE 00FA FF00 00FA"
	$"CC00 00FA 9900 00FA 6600 00FA 33E8 00FA"
	$"AA00 00FA AAF8 00FA 3300 00FA 6600 00FA"
	$"9900 00FA CC00 00FC FFFF FF00 0000 9700"
	$"01FA 0000 01FA 0000 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 0000 01FA AA00 01FA 0000"
	$"01FA 0000 01FA AA00 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 0000 01FA 0000 01FA 0001"
	$"0100 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FAFF F800 FAAA F800 FAAA"
	$"D200 FE00 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 E800 FAAA 0000 FAAA F800"
	$"FA33 0000 FA66 0000 FA99 0000 FACC 0000"
	$"FCFF FFFF 0000 0097 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FAAA 0001 FA00 0001 FA00 0001 FAAA"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0101 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FFF8 00FA AAF8 00FA AAD2 00FE 00FA FF00"
	$"00FA CC00 00FA 9900 00FA 6600 00FA 33E8"
	$"00FA AA00 00FA AAF8 00FA 3300 00FA 6600"
	$"00FA 9900 00FA CC00 00FC FFFF FF00 0000"
	$"9700 01FA 0000 01FA 0000 01FA 0000 01FA"
	$"0000 01FA 0000 01FA 0000 01FA AA00 01FA"
	$"0000 01FA 0000 01FA AA00 01FA 0000 01FA"
	$"0000 01FA 0000 01FA 0000 01FA 0000 01FA"
	$"0001 0100 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FAFF F800 FAAA F800"
	$"FAAA D200 FE00 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 E800 FAAA 0000 FAAA"
	$"F800 FA33 0000 FA66 0000 FA99 0000 FACC"
	$"0000 FCFF FFFF 0000 000A 8101 0001 8200"
	$"8100 FE00 00AF 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA99 0001 FA00 0001 FA00 0001 FA99 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0101 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CCF8"
	$"00FA 99F8 00FA 9900 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 3300 00FB 3302"
	$"3300 00FA FF00 00FA CC00 00FA 9900 00FA"
	$"6600 00FA 33E8 00FA 9900 00FA 99F8 00FA"
	$"3300 00FA 6600 00FA 9900 00FA CC00 00FC"
	$"FFFF FF00 0000 AF00 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 0000 01FA 0000 01FA 0000"
	$"01FA 9900 01FA 0000 01FA 0000 01FA 9900"
	$"01FA 0000 01FA 0000 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 0001 0100 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"F800 FA99 F800 FA99 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FB33"
	$"0233 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 E800 FA99 0000 FA99 F800"
	$"FA33 0000 FA66 0000 FA99 0000 FACC 0000"
	$"FCFF FFFF 0000 00AF 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA99 0001 FA00 0001 FA00 0001 FA99"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0101 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CCF8 00FA 99F8 00FA 9900 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FB"
	$"3302 3300 00FA FF00 00FA CC00 00FA 9900"
	$"00FA 6600 00FA 33E8 00FA 9900 00FA 99F8"
	$"00FA 3300 00FA 6600 00FA 9900 00FA CC00"
	$"00FC FFFF FF00 0000 AF00 01FA 0000 01FA"
	$"0000 01FA 0000 01FA 0000 01FA 0000 01FA"
	$"0000 01FA 9900 01FA 0000 01FA 0000 01FA"
	$"9900 01FA 0000 01FA 0000 01FA 0000 01FA"
	$"0000 01FA 0000 01FA 0001 0100 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC F800 FA99 F800 FA99 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FB33 0233 0000 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 E800 FA99 0000 FA99"
	$"F800 FA33 0000 FA66 0000 FA99 0000 FACC"
	$"0000 FCFF FFFF 0000 00AF 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA99 0001 FA00 0001 FA00 0001"
	$"FA99 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0101 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CCF8 00FA 99F8 00FA 9900 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FB 3302 3300 00FA FF00 00FA CC00 00FA"
	$"9900 00FA 6600 00FA 33E8 00FA 9900 00FA"
	$"99F8 00FA 3300 00FA 6600 00FA 9900 00FA"
	$"CC00 00FC FFFF FF00 0000 AF00 01FA 0000"
	$"01FA 0000 01FA 0000 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 9900 01FA 0000 01FA 0000"
	$"01FA 9900 01FA 0000 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 0000 01FA 0001 0100 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC F800 FA99 F800 FA99 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FB33 0233 0000 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 E800 FA99 0000"
	$"FA99 F800 FA33 0000 FA66 0000 FA99 0000"
	$"FACC 0000 FCFF FFFF 0000 00AF 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA99 0001 FA00 0001 FA00"
	$"0001 FA99 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0101 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CCF8 00FA 99F8 00FA 9900 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FB 3302 3300 00FA FF00 00FA CC00"
	$"00FA 9900 00FA 6600 00FA 33E8 00FA 9900"
	$"00FA 99F8 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FC FFFF FF00 0000 0A81 0100"
	$"0182 0081 00FE 0000 AF00 01FA 3300 01FA"
	$"3300 01FA 3300 01FA 3300 01FA 3300 01FA"
	$"3300 01FA 8800 01FA 0000 01FA 0000 01FA"
	$"8800 01FA 3300 01FA 3300 01FA 3300 01FA"
	$"3300 01FA 3300 01FA 3301 0100 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC F800 FA88 F800 FA88 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FB33 0233 0000 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 E800 FA88 0000 FA88"
	$"F800 FA33 0000 FA66 0000 FA99 0000 FACC"
	$"0000 FCFF FFFF 0000 00AF 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA88 0001 FA00 0001 FA00 0001"
	$"FA88 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0101 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CCF8 00FA 88F8 00FA 8800 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FB 3302 3300 00FA FF00 00FA CC00 00FA"
	$"9900 00FA 6600 00FA 33E8 00FA 8800 00FA"
	$"88F8 00FA 3300 00FA 6600 00FA 9900 00FA"
	$"CC00 00FC FFFF FF00 0000 AF00 01FA 3300"
	$"01FA 3300 01FA 3300 01FA 3300 01FA 3300"
	$"01FA 3300 01FA 8800 01FA 0000 01FA 0000"
	$"01FA 8800 01FA 3300 01FA 3300 01FA 3300"
	$"01FA 3300 01FA 3300 01FA 3301 0100 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC F800 FA88 F800 FA88 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FB33 0233 0000 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 E800 FA88 0000"
	$"FA88 F800 FA33 0000 FA66 0000 FA99 0000"
	$"FACC 0000 FCFF FFFF 0000 00AF 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA88 0001 FA00 0001 FA00"
	$"0001 FA88 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0101 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CCF8 00FA 88F8 00FA 8800 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FB 3302 3300 00FA FF00 00FA CC00"
	$"00FA 9900 00FA 6600 00FA 33E8 00FA 8800"
	$"00FA 88F8 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FC FFFF FF00 0000 AF00 01FA"
	$"3300 01FA 3300 01FA 3300 01FA 3300 01FA"
	$"3300 01FA 3300 01FA 8800 01FA 0000 01FA"
	$"0000 01FA 8800 01FA 3300 01FA 3300 01FA"
	$"3300 01FA 3300 01FA 3300 01FA 3301 0100"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC F800 FA88 F800 FA88 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FB33 0233 0000 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 E800 FA88"
	$"0000 FA88 F800 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FCFF FFFF 0000 00AF 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA88 0001 FA00 0001"
	$"FA00 0001 FA88 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0101"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CCF8 00FA 88F8 00FA 8800"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FB 3302 3300 00FA FF00 00FA"
	$"CC00 00FA 9900 00FA 6600 00FA 33E8 00FA"
	$"8800 00FA 88F8 00FA 3300 00FA 6600 00FA"
	$"9900 00FA CC00 00FC FFFF FF00 0000 AF00"
	$"01FA 3300 01FA 3300 01FA 3300 01FA 3300"
	$"01FA 3300 01FA 3300 01FA 8800 01FA 0000"
	$"01FA 0000 01FA 8800 01FA 3300 01FA 3300"
	$"01FA 3300 01FA 3300 01FA 3300 01FA 3301"
	$"0100 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC F800 FA88 F800 FA88"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FB33 0233 0000 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 E800"
	$"FA88 0000 FA88 F800 FA33 0000 FA66 0000"
	$"FA99 0000 FACC 0000 FCFF FFFF 0000 000A"
	$"8101 0001 8200 8100 FE00 00AF 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA77 0001 FA00 0001 FA00"
	$"0001 FA77 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0101 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CCF8 00FA 77F8 00FA 7700 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FB 3302 3300 00FA FF00 00FA CC00"
	$"00FA 9900 00FA 6600 00FA 33E8 00FA 7700"
	$"00FA 77F8 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FC FFFF FF00 0000 AF00 01FA"
	$"6600 01FA 6600 01FA 6600 01FA 6600 01FA"
	$"6600 01FA 6600 01FA 7700 01FA 0000 01FA"
	$"0000 01FA 7700 01FA 6600 01FA 6600 01FA"
	$"6600 01FA 6600 01FA 6600 01FA 6601 0100"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC F800 FA77 F800 FA77 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FB33 0233 0000 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 E800 FA77"
	$"0000 FA77 F800 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FCFF FFFF 0000 00AF 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA77 0001 FA00 0001"
	$"FA00 0001 FA77 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0101"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CCF8 00FA 77F8 00FA 7700"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FB 3302 3300 00FA FF00 00FA"
	$"CC00 00FA 9900 00FA 6600 00FA 33E8 00FA"
	$"7700 00FA 77F8 00FA 3300 00FA 6600 00FA"
	$"9900 00FA CC00 00FC FFFF FF00 0000 AF00"
	$"01FA 6600 01FA 6600 01FA 6600 01FA 6600"
	$"01FA 6600 01FA 6600 01FA 7700 01FA 0000"
	$"01FA 0000 01FA 7700 01FA 6600 01FA 6600"
	$"01FA 6600 01FA 6600 01FA 6600 01FA 6601"
	$"0100 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC F800 FA77 F800 FA77"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FB33 0233 0000 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 E800"
	$"FA77 0000 FA77 F800 FA33 0000 FA66 0000"
	$"FA99 0000 FACC 0000 FCFF FFFF 0000 00AF"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA77 0001 FA00"
	$"0001 FA00 0001 FA77 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0101 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CCF8 00FA 77F8 00FA"
	$"7700 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FB 3302 3300 00FA FF00"
	$"00FA CC00 00FA 9900 00FA 6600 00FA 33E8"
	$"00FA 7700 00FA 77F8 00FA 3300 00FA 6600"
	$"00FA 9900 00FA CC00 00FC FFFF FF00 0000"
	$"AF00 01FA 6600 01FA 6600 01FA 6600 01FA"
	$"6600 01FA 6600 01FA 6600 01FA 7700 01FA"
	$"0000 01FA 0000 01FA 7700 01FA 6600 01FA"
	$"6600 01FA 6600 01FA 6600 01FA 6600 01FA"
	$"6601 0100 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC F800 FA77 F800"
	$"FA77 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FB33 0233 0000 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"E800 FA77 0000 FA77 F800 FA33 0000 FA66"
	$"0000 FA99 0000 FACC 0000 FCFF FFFF 0000"
	$"00AF 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA77 0001"
	$"FA00 0001 FA00 0001 FA77 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0101 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CCF8 00FA 77F8"
	$"00FA 7700 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FB 3302 3300 00FA"
	$"FF00 00FA CC00 00FA 9900 00FA 6600 00FA"
	$"33E8 00FA 7700 00FA 77F8 00FA 3300 00FA"
	$"6600 00FA 9900 00FA CC00 00FC FFFF FF00"
	$"0000 0A81 0100 0182 0081 00FE 0000 B300"
	$"01FA 9900 01FA 9900 01FA 9900 01FA 9900"
	$"01FA 9900 01FA 9900 01FA 6600 01FA 0000"
	$"01FA 0000 01FA 6600 01FA 9900 01FA 9900"
	$"01FA 9900 01FA 9900 01FA 9900 01FA 9901"
	$"0100 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC F800 FA66 F800 FA66"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FB33 0233 0000 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F000"
	$"FA33 0000 FA66 0000 FA66 F800 FA33 0000"
	$"FA66 0000 FA99 0000 FACC 0000 FCFF FFFF"
	$"0000 00B3 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA66"
	$"0001 FA00 0001 FA00 0001 FA66 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0101 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CCF8 00FA"
	$"66F8 00FA 6600 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FB 3302 3300"
	$"00FA FF00 00FA CC00 00FA 9900 00FA 6600"
	$"00FA 33F0 00FA 3300 00FA 6600 00FA 66F8"
	$"00FA 3300 00FA 6600 00FA 9900 00FA CC00"
	$"00FC FFFF FF00 0000 B300 01FA 9900 01FA"
	$"9900 01FA 9900 01FA 9900 01FA 9900 01FA"
	$"9900 01FA 6600 01FA 0000 01FA 0000 01FA"
	$"6600 01FA 9900 01FA 9900 01FA 9900 01FA"
	$"9900 01FA 9900 01FA 9901 0100 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC F800 FA66 F800 FA66 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FB33 0233 0000 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F000 FA33 0000 FA66"
	$"0000 FA66 F800 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FCFF FFFF 0000 00B3 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA66 0001 FA00 0001"
	$"FA00 0001 FA66 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0101"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CCF8 00FA 66F8 00FA 6600"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FB 3302 3300 00FA FF00 00FA"
	$"CC00 00FA 9900 00FA 6600 00FA 33F0 00FA"
	$"3300 00FA 6600 00FA 66F8 00FA 3300 00FA"
	$"6600 00FA 9900 00FA CC00 00FC FFFF FF00"
	$"0000 B300 01FA 9900 01FA 9900 01FA 9900"
	$"01FA 9900 01FA 9900 01FA 9900 01FA 6600"
	$"01FA 0000 01FA 0000 01FA 6600 01FA 9900"
	$"01FA 9900 01FA 9900 01FA 9900 01FA 9900"
	$"01FA 9901 0100 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC F800 FA66"
	$"F800 FA66 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FB33 0233 0000"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F000 FA33 0000 FA66 0000 FA66 F800"
	$"FA33 0000 FA66 0000 FA99 0000 FACC 0000"
	$"FCFF FFFF 0000 00B3 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA66 0001 FA00 0001 FA00 0001 FA66"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0101 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CCF8 00FA 66F8 00FA 6600 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FB"
	$"3302 3300 00FA FF00 00FA CC00 00FA 9900"
	$"00FA 6600 00FA 33F0 00FA 3300 00FA 6600"
	$"00FA 66F8 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FC FFFF FF00 0000 B300 01FA"
	$"9900 01FA 9900 01FA 9900 01FA 9900 01FA"
	$"9900 01FA 9900 01FA 6600 01FA 0000 01FA"
	$"0000 01FA 6600 01FA 9900 01FA 9900 01FA"
	$"9900 01FA 9900 01FA 9900 01FA 9901 0100"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC F800 FA66 F800 FA66 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FB33 0233 0000 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F000 FA33"
	$"0000 FA66 0000 FA66 F800 FA33 0000 FA66"
	$"0000 FA99 0000 FACC 0000 FCFF FFFF 0000"
	$"000A 8101 0001 8200 8100 FE00 00AF 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FA55 0001 FA00 0001"
	$"FA00 0001 FA55 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0101"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CCF8 00FA 55F8 00FA 5500"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FB 3302 3300 00FA FF00 00FA"
	$"CC00 00FA 9900 00FA 6600 00FA 33E8 00FA"
	$"5500 00FA 55F8 00FA 3300 00FA 6600 00FA"
	$"9900 00FA CC00 00FC FFFF FF00 0000 AF00"
	$"01FA CC00 01FA CC00 01FA CC00 01FA CC00"
	$"01FA CC00 01FA CC00 01FA 5500 01FA 0000"
	$"01FA 0000 01FA 5500 01FA CC00 01FA CC00"
	$"01FA CC00 01FA CC00 01FA CC00 01FA CC01"
	$"0100 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC F800 FA55 F800 FA55"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FB33 0233 0000 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 E800"
	$"FA55 0000 FA55 F800 FA33 0000 FA66 0000"
	$"FA99 0000 FACC 0000 FCFF FFFF 0000 00AF"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FA55 0001 FA00"
	$"0001 FA00 0001 FA55 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0101 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CCF8 00FA 55F8 00FA"
	$"5500 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FB 3302 3300 00FA FF00"
	$"00FA CC00 00FA 9900 00FA 6600 00FA 33E8"
	$"00FA 5500 00FA 55F8 00FA 3300 00FA 6600"
	$"00FA 9900 00FA CC00 00FC FFFF FF00 0000"
	$"AF00 01FA CC00 01FA CC00 01FA CC00 01FA"
	$"CC00 01FA CC00 01FA CC00 01FA 5500 01FA"
	$"0000 01FA 0000 01FA 5500 01FA CC00 01FA"
	$"CC00 01FA CC00 01FA CC00 01FA CC00 01FA"
	$"CC01 0100 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC F800 FA55 F800"
	$"FA55 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FB33 0233 0000 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"E800 FA55 0000 FA55 F800 FA33 0000 FA66"
	$"0000 FA99 0000 FACC 0000 FCFF FFFF 0000"
	$"00AF 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FA55 0001"
	$"FA00 0001 FA00 0001 FA55 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0101 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CCF8 00FA 55F8"
	$"00FA 5500 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FB 3302 3300 00FA"
	$"FF00 00FA CC00 00FA 9900 00FA 6600 00FA"
	$"33E8 00FA 5500 00FA 55F8 00FA 3300 00FA"
	$"6600 00FA 9900 00FA CC00 00FC FFFF FF00"
	$"0000 AF00 01FA CC00 01FA CC00 01FA CC00"
	$"01FA CC00 01FA CC00 01FA CC00 01FA 5500"
	$"01FA 0000 01FA 0000 01FA 5500 01FA CC00"
	$"01FA CC00 01FA CC00 01FA CC00 01FA CC00"
	$"01FA CC01 0100 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC F800 FA55"
	$"F800 FA55 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FB33 0233 0000"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 E800 FA55 0000 FA55 F800 FA33 0000"
	$"FA66 0000 FA99 0000 FACC 0000 FCFF FFFF"
	$"0000 00AF 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FA55"
	$"0001 FA00 0001 FA00 0001 FA55 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0101 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CCF8 00FA"
	$"55F8 00FA 5500 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FB 3302 3300"
	$"00FA FF00 00FA CC00 00FA 9900 00FA 6600"
	$"00FA 33E8 00FA 5500 00FA 55F8 00FA 3300"
	$"00FA 6600 00FA 9900 00FA CC00 00FC FFFF"
	$"FF00 0000 0A81 0100 0182 0081 00FE 0000"
	$"AF00 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA 4400 01FA"
	$"0000 01FA 0000 01FA 4400 01FA FF00 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"FF01 0100 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC F800 FA44 F800"
	$"FA44 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FB33 0233 0000 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"E800 FA44 0000 FA44 F800 FA33 0000 FA66"
	$"0000 FA99 0000 FACC 0000 FCFF FFFF 0000"
	$"00AF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FA44 0001"
	$"FA00 0001 FA00 0001 FA44 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0101 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CCF8 00FA 44F8"
	$"00FA 4400 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FB 3302 3300 00FA"
	$"FF00 00FA CC00 00FA 9900 00FA 6600 00FA"
	$"33E8 00FA 4400 00FA 44F8 00FA 3300 00FA"
	$"6600 00FA 9900 00FA CC00 00FC FFFF FF00"
	$"0000 AF00 01FA FF00 01FA FF00 01FA FF00"
	$"01FA FF00 01FA FF00 01FA FF00 01FA 4400"
	$"01FA 0000 01FA 0000 01FA 4400 01FA FF00"
	$"01FA FF00 01FA FF00 01FA FF00 01FA FF00"
	$"01FA FF01 0100 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC F800 FA44"
	$"F800 FA44 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FB33 0233 0000"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 E800 FA44 0000 FA44 F800 FA33 0000"
	$"FA66 0000 FA99 0000 FACC 0000 FCFF FFFF"
	$"0000 00AF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FA44"
	$"0001 FA00 0001 FA00 0001 FA44 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0101 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CCF8 00FA"
	$"44F8 00FA 4400 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FB 3302 3300"
	$"00FA FF00 00FA CC00 00FA 9900 00FA 6600"
	$"00FA 33E8 00FA 4400 00FA 44F8 00FA 3300"
	$"00FA 6600 00FA 9900 00FA CC00 00FC FFFF"
	$"FF00 0000 AF00 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"4400 01FA 0000 01FA 0000 01FA 4400 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA FF01 0100 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC F800"
	$"FA44 F800 FA44 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FB33 0233"
	$"0000 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 E800 FA44 0000 FA44 F800 FA33"
	$"0000 FA66 0000 FA99 0000 FACC 0000 FCFF"
	$"FFFF 0000 00AF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FA44 0001 FA00 0001 FA00 0001 FA44 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0101 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CCF8"
	$"00FA 44F8 00FA 4400 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 3300 00FB 3302"
	$"3300 00FA FF00 00FA CC00 00FA 9900 00FA"
	$"6600 00FA 33E8 00FA 4400 00FA 44F8 00FA"
	$"3300 00FA 6600 00FA 9900 00FA CC00 00FC"
	$"FFFF FF00 0000 AF00 01FA FF00 01FA FF00"
	$"01FA FF00 01FA FF00 01FA FF00 01FA FF00"
	$"01FA 4400 01FA 0000 01FA 0000 01FA 4400"
	$"01FA FF00 01FA FF00 01FA FF00 01FA FF00"
	$"01FA FF00 01FA FF01 0100 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"F800 FA44 F800 FA44 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FB33"
	$"0233 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 E800 FA44 0000 FA44 F800"
	$"FA33 0000 FA66 0000 FA99 0000 FACC 0000"
	$"FCFF FFFF 0000 000A 8101 0001 8200 8100"
	$"FE00 00AF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FA33"
	$"0001 FA00 0001 FA00 0001 FA33 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0101 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 99F8 00FA"
	$"33F8 00FA 3300 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FB 6602 6600"
	$"00FA FF00 00FA CC00 00FA 9900 00FA 6600"
	$"00FA 33E8 00FA 3300 00FA 33F8 00FA 3300"
	$"00FA 6600 00FA 9900 00FA CC00 00FC FFFF"
	$"FF00 0000 AF00 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"3300 01FA 0000 01FA 0000 01FA 3300 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA FF01 0100 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 F800"
	$"FA33 F800 FA33 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FB66 0266"
	$"0000 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 E800 FA33 0000 FA33 F800 FA33"
	$"0000 FA66 0000 FA99 0000 FACC 0000 FCFF"
	$"FFFF 0000 00AF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FA33 0001 FA00 0001 FA00 0001 FA33 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0101 00FA 9900 00FA 9900"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 99F8"
	$"00FA 33F8 00FA 3300 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FB 6602"
	$"6600 00FA FF00 00FA CC00 00FA 9900 00FA"
	$"6600 00FA 33E8 00FA 3300 00FA 33F8 00FA"
	$"3300 00FA 6600 00FA 9900 00FA CC00 00FC"
	$"FFFF FF00 0000 AF00 01FA FF00 01FA FF00"
	$"01FA FF00 01FA FF00 01FA FF00 01FA FF00"
	$"01FA 3300 01FA 0000 01FA 0000 01FA 3300"
	$"01FA FF00 01FA FF00 01FA FF00 01FA FF00"
	$"01FA FF00 01FA FF01 0100 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"F800 FA33 F800 FA33 0000 FA66 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FB66"
	$"0266 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 E800 FA33 0000 FA33 F800"
	$"FA33 0000 FA66 0000 FA99 0000 FACC 0000"
	$"FCFF FFFF 0000 00AF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FA33 0001 FA00 0001 FA00 0001 FA33"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0101 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"99F8 00FA 33F8 00FA 3300 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FB"
	$"6602 6600 00FA FF00 00FA CC00 00FA 9900"
	$"00FA 6600 00FA 33E8 00FA 3300 00FA 33F8"
	$"00FA 3300 00FA 6600 00FA 9900 00FA CC00"
	$"00FC FFFF FF00 0000 AF00 01FA FF00 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA 3300 01FA 0000 01FA 0000 01FA"
	$"3300 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA FF00 01FA FF01 0100 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 F800 FA33 F800 FA33 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FB66 0266 0000 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 E800 FA33 0000 FA33"
	$"F800 FA33 0000 FA66 0000 FA99 0000 FACC"
	$"0000 FCFF FFFF 0000 00AF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FA33 0001 FA00 0001 FA00 0001"
	$"FA33 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0101 00FA 9900"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 99F8 00FA 33F8 00FA 3300 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FB 6602 6600 00FA FF00 00FA CC00 00FA"
	$"9900 00FA 6600 00FA 33E8 00FA 3300 00FA"
	$"33F8 00FA 3300 00FA 6600 00FA 9900 00FA"
	$"CC00 00FC FFFF FF00 0000 0A81 0100 0182"
	$"0081 00FE 0000 AF00 01FA CC00 01FA CC00"
	$"01FA CC00 01FA CC00 01FA CC00 01FA CC00"
	$"01FA 2200 01FA 0000 01FA 0000 01FA 2200"
	$"01FA CC00 01FA CC00 01FA CC00 01FA CC00"
	$"01FA CC00 01FA CC01 0100 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"F800 FA22 F800 FA22 0000 FA66 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FB66"
	$"0266 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 E800 FA22 0000 FA22 F800"
	$"FA33 0000 FA66 0000 FA99 0000 FACC 0000"
	$"FCFF FFFF 0000 00AF 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FA22 0001 FA00 0001 FA00 0001 FA22"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0101 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"99F8 00FA 22F8 00FA 2200 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FB"
	$"6602 6600 00FA FF00 00FA CC00 00FA 9900"
	$"00FA 6600 00FA 33E8 00FA 2200 00FA 22F8"
	$"00FA 3300 00FA 6600 00FA 9900 00FA CC00"
	$"00FC FFFF FF00 0000 AF00 01FA CC00 01FA"
	$"CC00 01FA CC00 01FA CC00 01FA CC00 01FA"
	$"CC00 01FA 2200 01FA 0000 01FA 0000 01FA"
	$"2200 01FA CC00 01FA CC00 01FA CC00 01FA"
	$"CC00 01FA CC00 01FA CC01 0100 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 F800 FA22 F800 FA22 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FB66 0266 0000 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 E800 FA22 0000 FA22"
	$"F800 FA33 0000 FA66 0000 FA99 0000 FACC"
	$"0000 FCFF FFFF 0000 00AF 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FA22 0001 FA00 0001 FA00 0001"
	$"FA22 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0101 00FA 9900"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 99F8 00FA 22F8 00FA 2200 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FB 6602 6600 00FA FF00 00FA CC00 00FA"
	$"9900 00FA 6600 00FA 33E8 00FA 2200 00FA"
	$"22F8 00FA 3300 00FA 6600 00FA 9900 00FA"
	$"CC00 00FC FFFF FF00 0000 AF00 01FA CC00"
	$"01FA CC00 01FA CC00 01FA CC00 01FA CC00"
	$"01FA CC00 01FA 2200 01FA 0000 01FA 0000"
	$"01FA 2200 01FA CC00 01FA CC00 01FA CC00"
	$"01FA CC00 01FA CC00 01FA CC01 0100 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 F800 FA22 F800 FA22 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FA66"
	$"0000 FB66 0266 0000 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 E800 FA22 0000"
	$"FA22 F800 FA33 0000 FA66 0000 FA99 0000"
	$"FACC 0000 FCFF FFFF 0000 00AF 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FA22 0001 FA00 0001 FA00"
	$"0001 FA22 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0101 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 99F8 00FA 22F8 00FA 2200 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FB 6602 6600 00FA FF00 00FA CC00"
	$"00FA 9900 00FA 6600 00FA 33E8 00FA 2200"
	$"00FA 22F8 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FC FFFF FF00 0000 AF00 01FA"
	$"CC00 01FA CC00 01FA CC00 01FA CC00 01FA"
	$"CC00 01FA CC00 01FA 2200 01FA 0000 01FA"
	$"0000 01FA 2200 01FA CC00 01FA CC00 01FA"
	$"CC00 01FA CC00 01FA CC00 01FA CC01 0100"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 F800 FA22 F800 FA22 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FB66 0266 0000 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 E800 FA22"
	$"0000 FA22 F800 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FCFF FFFF 0000 000A 8101"
	$"0001 8200 8100 FE00 00AF 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA11 0001 FA00 0001 FA00 0001"
	$"FA11 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0101 00FA 9900"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 99F8 00FA 11F8 00FA 1100 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FB 6602 6600 00FA FF00 00FA CC00 00FA"
	$"9900 00FA 6600 00FA 33E8 00FA 1100 00FA"
	$"11F8 00FA 3300 00FA 6600 00FA 9900 00FA"
	$"CC00 00FC FFFF FF00 0000 AF00 01FA 9900"
	$"01FA 9900 01FA 9900 01FA 9900 01FA 9900"
	$"01FA 9900 01FA 1100 01FA 0000 01FA 0000"
	$"01FA 1100 01FA 9900 01FA 9900 01FA 9900"
	$"01FA 9900 01FA 9900 01FA 9901 0100 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 F800 FA11 F800 FA11 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FA66"
	$"0000 FB66 0266 0000 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 E800 FA11 0000"
	$"FA11 F800 FA33 0000 FA66 0000 FA99 0000"
	$"FACC 0000 FCFF FFFF 0000 00AF 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA11 0001 FA00 0001 FA00"
	$"0001 FA11 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0101 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 99F8 00FA 11F8 00FA 1100 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FB 6602 6600 00FA FF00 00FA CC00"
	$"00FA 9900 00FA 6600 00FA 33E8 00FA 1100"
	$"00FA 11F8 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FC FFFF FF00 0000 AF00 01FA"
	$"9900 01FA 9900 01FA 9900 01FA 9900 01FA"
	$"9900 01FA 9900 01FA 1100 01FA 0000 01FA"
	$"0000 01FA 1100 01FA 9900 01FA 9900 01FA"
	$"9900 01FA 9900 01FA 9900 01FA 9901 0100"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 F800 FA11 F800 FA11 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FB66 0266 0000 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 E800 FA11"
	$"0000 FA11 F800 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FCFF FFFF 0000 00AF 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA11 0001 FA00 0001"
	$"FA00 0001 FA11 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0101"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 9900 00FA 99F8 00FA 11F8 00FA 1100"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FB 6602 6600 00FA FF00 00FA"
	$"CC00 00FA 9900 00FA 6600 00FA 33E8 00FA"
	$"1100 00FA 11F8 00FA 3300 00FA 6600 00FA"
	$"9900 00FA CC00 00FC FFFF FF00 0000 AF00"
	$"01FA 9900 01FA 9900 01FA 9900 01FA 9900"
	$"01FA 9900 01FA 9900 01FA 1100 01FA 0000"
	$"01FA 0000 01FA 1100 01FA 9900 01FA 9900"
	$"01FA 9900 01FA 9900 01FA 9900 01FA 9901"
	$"0100 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 F800 FA11 F800 FA11"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FA66"
	$"0000 FA66 0000 FB66 0266 0000 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 E800"
	$"FA11 0000 FA11 F800 FA33 0000 FA66 0000"
	$"FA99 0000 FACC 0000 FCFF FFFF 0000 00AF"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA11 0001 FA00"
	$"0001 FA00 0001 FA11 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0101 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 99F8 00FA 11F8 00FA"
	$"1100 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FB 6602 6600 00FA FF00"
	$"00FA CC00 00FA 9900 00FA 6600 00FA 33E8"
	$"00FA 1100 00FA 11F8 00FA 3300 00FA 6600"
	$"00FA 9900 00FA CC00 00FC FFFF FF00 0000"
	$"0A81 0100 0182 0081 00FE 0000 9F00 01FA"
	$"6600 01FA 6600 01FA 6600 01FA 6600 01FA"
	$"6600 01FA 6600 01FA 0000 01FA 0000 01FA"
	$"0000 01FA 0000 01FA 6600 01FA 6600 01FA"
	$"6600 01FA 6600 01FA 6600 01FA 6601 0100"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 E000 FA66 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FB66 0266"
	$"0000 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 D000 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FCFF FFFF 0000 009F 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0101"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 9900 00FA 99E0 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FB 6602"
	$"6600 00FA FF00 00FA CC00 00FA 9900 00FA"
	$"6600 00FA 33D0 00FA 3300 00FA 6600 00FA"
	$"9900 00FA CC00 00FC FFFF FF00 0000 9F00"
	$"01FA 6600 01FA 6600 01FA 6600 01FA 6600"
	$"01FA 6600 01FA 6600 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 0000 01FA 6600 01FA 6600"
	$"01FA 6600 01FA 6600 01FA 6600 01FA 6601"
	$"0100 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 E000 FA66 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FB66"
	$"0266 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 D000 FA33 0000 FA66 0000"
	$"FA99 0000 FACC 0000 FCFF FFFF 0000 009F"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0101 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 99E0 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FB"
	$"6602 6600 00FA FF00 00FA CC00 00FA 9900"
	$"00FA 6600 00FA 33D0 00FA 3300 00FA 6600"
	$"00FA 9900 00FA CC00 00FC FFFF FF00 0000"
	$"9F00 01FA 6600 01FA 6600 01FA 6600 01FA"
	$"6600 01FA 6600 01FA 6600 01FA 0000 01FA"
	$"0000 01FA 0000 01FA 0000 01FA 6600 01FA"
	$"6600 01FA 6600 01FA 6600 01FA 6600 01FA"
	$"6601 0100 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 E000 FA66 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FB66 0266 0000 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 D000 FA33 0000 FA66"
	$"0000 FA99 0000 FACC 0000 FCFF FFFF 0000"
	$"009F 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0101 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 9900 00FA 9900 00FA 99E0 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FB 6602 6600 00FA FF00 00FA CC00 00FA"
	$"9900 00FA 6600 00FA 33D0 00FA 3300 00FA"
	$"6600 00FA 9900 00FA CC00 00FC FFFF FF00"
	$"0000 9F00 01FA 6600 01FA 6600 01FA 6600"
	$"01FA 6600 01FA 6600 01FA 6600 01FA 0000"
	$"01FA 0000 01FA 0000 01FA 0000 01FA 6600"
	$"01FA 6600 01FA 6600 01FA 6600 01FA 6600"
	$"01FA 6601 0100 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 E000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FA66"
	$"0000 FB66 0266 0000 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 D000 FA33 0000"
	$"FA66 0000 FA99 0000 FACC 0000 FCFF FFFF"
	$"0000 000A 8101 0001 8200 8100 FE00 009B"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 E2FF 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0101 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00E2"
	$"FF00 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FB 6602 6600 00FA FF00"
	$"00FA CC00 00FA 9900 00FA 6600 00FA 33F8"
	$"00E2 FFF8 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FC FFFF FF00 0000 9B00 01FA"
	$"3300 01FA 3300 01FA 3300 01FA 3300 01FA"
	$"3300 01FA 3300 01E2 FF00 01FA 3300 01FA"
	$"3300 01FA 3300 01FA 3300 01FA 3300 01FA"
	$"3301 0100 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 E2FF 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FB66 0266 0000 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 E2FF"
	$"F800 FA33 0000 FA66 0000 FA99 0000 FACC"
	$"0000 FCFF FFFF 0000 009B 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 E2FF 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0101"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 9900 00FA 9900 00E2 FF00 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FB 6602 6600 00FA FF00 00FA CC00 00FA"
	$"9900 00FA 6600 00FA 33F8 00E2 FFF8 00FA"
	$"3300 00FA 6600 00FA 9900 00FA CC00 00FC"
	$"FFFF FF00 0000 9B00 01FA 3300 01FA 3300"
	$"01FA 3300 01FA 3300 01FA 3300 01FA 3300"
	$"01E2 FF00 01FA 3300 01FA 3300 01FA 3300"
	$"01FA 3300 01FA 3300 01FA 3301 0100 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 E2FF 0000 FA66 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FB66"
	$"0266 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 E2FF F800 FA33 0000"
	$"FA66 0000 FA99 0000 FACC 0000 FCFF FFFF"
	$"0000 009B 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 E2FF"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0101 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"9900 00E2 FF00 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FB 6602 6600"
	$"00FA FF00 00FA CC00 00FA 9900 00FA 6600"
	$"00FA 33F8 00E2 FFF8 00FA 3300 00FA 6600"
	$"00FA 9900 00FA CC00 00FC FFFF FF00 0000"
	$"9B00 01FA 3300 01FA 3300 01FA 3300 01FA"
	$"3300 01FA 3300 01FA 3300 01E2 FF00 01FA"
	$"3300 01FA 3300 01FA 3300 01FA 3300 01FA"
	$"3300 01FA 3301 0100 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"E2FF 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FB66 0266 0000 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 E2FF F800 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FCFF FFFF 0000 009B 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 E2FF 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0101 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 9900 00FA 9900 00FA 9900 00E2 FF00"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FB 6602 6600 00FA FF00 00FA"
	$"CC00 00FA 9900 00FA 6600 00FA 33F8 00E2"
	$"FFF8 00FA 3300 00FA 6600 00FA 9900 00FA"
	$"CC00 00FC FFFF FF00 0000 16D0 01E2 FFD1"
	$"0100 01D0 00E2 FFD2 00CE 00E2 FFD3 00FE"
	$"0000 9B00 01FA 0000 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 0000 01FA 0000 01E2 FF00"
	$"01FA 0000 01FA 0000 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 0001 0100 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 E2FF 0000 FA66 0000 FA66 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FB66 0266 0000"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 E2FF F800 FA33 0000 FA66 0000"
	$"FA99 0000 FACC 0000 FCFF FFFF 0000 009B"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 E2FF 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0101 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00E2"
	$"FF00 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FB 6602 6600 00FA FF00"
	$"00FA CC00 00FA 9900 00FA 6600 00FA 33F8"
	$"00E2 FFF8 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FC FFFF FF00 0000 9B00 01FA"
	$"0000 01FA 0000 01FA 0000 01FA 0000 01FA"
	$"0000 01FA 0000 01E2 FF00 01FA 0000 01FA"
	$"0000 01FA 0000 01FA 0000 01FA 0000 01FA"
	$"0001 0100 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 E2FF 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FB66 0266 0000 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 E2FF"
	$"F800 FA33 0000 FA66 0000 FA99 0000 FACC"
	$"0000 FCFF FFFF 0000 009B 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 E2FF 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0101"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 9900 00FA 9900 00E2 FF00 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FB 6602 6600 00FA FF00 00FA CC00 00FA"
	$"9900 00FA 6600 00FA 33F8 00E2 FFF8 00FA"
	$"3300 00FA 6600 00FA 9900 00FA CC00 00FC"
	$"FFFF FF00 0000 9B00 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 0000 01FA 0000 01FA 0000"
	$"01E2 FF00 01FA 0000 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 0000 01FA 0001 0100 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 E2FF 0000 FA66 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FB66"
	$"0266 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 E2FF F800 FA33 0000"
	$"FA66 0000 FA99 0000 FACC 0000 FCFF FFFF"
	$"0000 009B 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 E2FF"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0101 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"9900 00E2 FF00 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FB 6602 6600"
	$"00FA FF00 00FA CC00 00FA 9900 00FA 6600"
	$"00FA 33F8 00E2 FFF8 00FA 3300 00FA 6600"
	$"00FA 9900 00FA CC00 00FC FFFF FF00 0000"
	$"9B00 01FA 0000 01FA 0000 01FA 0000 01FA"
	$"0000 01FA 0000 01FA 0000 01E2 FF00 01FA"
	$"0000 01FA 0000 01FA 0000 01FA 0000 01FA"
	$"0000 01FA 0001 0100 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"E2FF 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FB66 0266 0000 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 E2FF F800 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FCFF FFFF 0000 0016 D001"
	$"E2FF D101 0001 D000 E2FF D200 CE00 E2FF"
	$"D300 FE00 00FF"
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
		134
	}
};

resource 'ics#' (-16455, "Item Icon ") {
	{	/* array: 2 elements */
		/* [1] */
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF",
		/* [2] */
		$"0000 0FCC 1390 01B0 01B0 01B0 07B0 0FB0"
		$"01B0 01B8 0198 0198 0F10 1F10 01E0"
	}
};

resource 'ics#' (128) {
	{	/* array: 2 elements */
		/* [1] */
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF",
		/* [2] */
		$"0000 0FCC 1390 01B0 01B0 01B0 07B0 0FB0"
		$"01B0 01B8 0198 0198 0F10 1F10 01E0"
	}
};

resource 'ics4' (-16455, "Item Icon ") {
	$"AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA"
	$"AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA"
	$"AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA"
	$"AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA"
	$"AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA"
	$"AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA"
	$"AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA"
	$"AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA"
};

resource 'ics4' (128) {
	$"AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA"
	$"AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA"
	$"AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA"
	$"AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA"
	$"AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA"
	$"AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA"
	$"AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA"
	$"AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA"
};

resource 'ics8' (128) {
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
};

resource 'ics8' (-16455, "Item Icon ") {
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
};

data 'Pref' (128) {
	$"0000 0001 0E4E 6F74 2072 6567 6973 7465"            /* .....Not registe */
	$"7265 640B 02EA 000C 02EB 000C 02EB 000D"            /* red..Í...Î...Î.. */
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
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
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
	$"0DB1 1CD0 0000 0000 001E 8010 0DCF B6A0"            /* .±.–......Ä..œ∂† */
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
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
};

resource 'icns' (-16455, "Item Icon") {
	{	/* array elementArray: 10 elements */
		/* [1] */
		'ICN#',
		$"4001 8038 F7BF F66C 7DB2 3D34 2264 A2B8"
		$"6916 9E68 3AFB 7CD0 35ED CBE0 332D 93C0"
		$"2956 6E60 1A9E CC90 255D 3D28 3AAD 761C"
		$"257E F84E 2AFD 010C 652F D42E C95D F88C"
		$"D55E EFDE 6AAD D77C 355E EE9D 1A95 6F22"
		$"357A DC08 2BF5 AD00 657A D600 2A46 8E00"
		$"55B3 5600 2A4C AB00 6BB6 5600 3FFF FF80"
		$"76DB DB00 0CA5 3200 0200 8400 0000 0000"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF 7FFF FFFE"
		$"7FFF FFFE 7FFF FFFF 7FFF FFFF 7FFF FFFF"
		$"7FFF FFFF 7FFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF 7FFF FFFF 7FFF FFDE FFFF FF80"
		$"FFFF FFC0 FFFF FFC0 FFFF FFC0 FFFF FFC0"
		$"FFFF FFE0 FFFF FFE0 FFFF FFC0 FFFF FFC0",
		/* [2] */
		'icl4',
		$"CEC0 00CC 0000 000E EC00 0000 0CEA FC00"
		$"DFFE CFAF F0EF FAEF EFFD CED0 CE4C EDC0"
		$"0EFE FEDD ADFE DDEB DCBF FAFC E1F3 FDC0"
		$"0DE2 DBCB DAC2 CBDB CB2C DDFE 1CFF DCC0"
		$"0EFC 1D2C BCBD 2D14 BBBA BFE1 DFAE DC00"
		$"00AB 51DB AAA3 EBAE 2BEE FA1C AFED CC00"
		$"0CEE CB2A EE3E BA3D EFCB A1BF FDDC 0000"
		$"00EE 2BD4 D2DD E3DE AC2F 1CFA FECC C000"
		$"00FD DDBB 2DD2 EEBE C2E1 DFAD CAD0 0000"
		$"00EB 2C2D BCBE 3EEC 291D EF2D 1DED C000"
		$"00FD D1DD C2BA FACB E1BE FFC2 00BE DC00"
		$"00DA DBDB 2D25 AF2E 1BFF BEDC C10D EFC0"
		$"00FB C2BC BAE3 EAF1 EAFF EC1C CCC2 FED0"
		$"0CAD DBCA AE3F AF1A CDC0 C1CC CC1C FFCC"
		$"DFEC 2DBB B2DA AEEE FE2B CDC1 CCC2 9FDC"
		$"AEC2 C1BD 2DDB FFAA FAFA AC2C D1CC FFDC"
		$"DFBC BDC2 DBD2 FFEE AFEE EFAF AD2D AFD0"
		$"CAEA CB2D BD2D AABD AABB BEFE E9EA FFDC"
		$"0DEF 2DB2 CBDB EABB E3EB BAFD CDDF FECC"
		$"00CE 92BC BCBD 3EBD 3ABD AFFD C0CC CDCC"
		$"00DF DCB2 A3EA E2DB EEBB FEEC 0C0C 0C00"
		$"0CFB CB3E AAF3 BBDB 3B2B FADC C000 0000"
		$"0DED 2DEB BBEA EB3E DBDD EFD0 0000 0000"
		$"0ED2 CBB2 D2DB E3BD 2DDB BEEC 0000 0000"
		$"0EEC BDBD BD2D 2DBB D2C2 DEF0 C000 0000"
		$"0CFB D2CD 2BD2 DBBC 2CBB DBFD 0000 0000"
		$"0DFD 2DBB DBEB DABB BBBD 2BAE C000 0000"
		$"0DFA 9FAF FFAF FAFF EAFA F9FF C000 0000"
		$"0EEE AEFE FEEE EEEA FEEE EEEE C000 0000"
		$"00CD DDCD DDCD CDDD DDDD CDDC CC00 0000"
		$"00CC CCCC CCC0 C0CC CCCC 0CCC 0000 0000"
		$"0000 0000 0000 0C00 0000 C000 0000 0000",
		/* [3] */
		'icl8',
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFD FBFB FBFB FFFF B2FD FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"E0FF FFFF FFFF FFFF FFAD 3838 DFFF FFFF"
		$"FFFE E0FD FFFF 575D FFFF FFFD 8282 AD82"
		$"3357 88FF FFE0 FFFF AD2F 886A DFFF FFFF"
		$"FFFF FE33 5D33 3333 5EFE 3357 3333 3333"
		$"3333 3357 575E FFAD 2F34 E0FF FFFF FFFF"
		$"FFFF FE33 3333 3333 3333 3333 3333 3357"
		$"3333 5E5E 82FE AD2F 34FE FFFF FFFF FFFF"
		$"FBE0 E082 3333 335E 8FDD 8F8E 8888 8F64"
		$"3388 FEFD FFAD 2F34 FEFF FFFF FFFF FFFD"
		$"FBFF FFAD 3333 578F 8888 8F8F 648F 645E"
		$"89FD 2C5D AD2F 34FE FFFF FFFF FFFF FFFB"
		$"00FF FF82 3333 5E5D 5D5D 5D57 648F 5788"
		$"AD2C 33AD 2F34 FEE0 E0FF FFFF FFFF FB00"
		$"00FF FF82 3333 5D5D 5D33 575D DD88 5EFD"
		$"2C33 AD2F 34FE FE33 33FE FFFF FFFF FB00"
		$"00FF FF82 3333 5E5D 5E57 5788 DD88 AC2C"
		$"33AD 2F34 FEFF 5733 0932 FDFF FFFF FFFF"
		$"00FF FF82 3333 5D33 5757 5D88 DEAD 2C33"
		$"AD2F 34FE FFE0 3333 0808 2CAD FFFF FFFF"
		$"00FF E0FD 3333 5D5D 5757 578F DEAD 5D89"
		$"5334 E0FF 82AD 3308 0808 0832 FEFF FFFF"
		$"00FF FFAC 5733 5D5E 5E88 88DD DD88 AD2F"
		$"83FD FEFE AC2C 0808 0808 0833 E0FF FFFF"
		$"00FF FF57 335E 335E DD8F DDDD DEAD 2F89"
		$"5732 0808 0808 0808 0808 0833 E0FF FFFF"
		$"FFFF AC33 3333 5788 5E5E 5E8F DEDF 58FE"
		$"FEAC 3333 3333 0808 0808 0833 E0FF FFFF"
		$"FFAD 3333 3333 5E57 3433 335E FFFF FEAD"
		$"DFDF E0E0 FE5D 3333 3308 0833 E0FF FFFF"
		$"FFAD 3333 3333 3333 3357 575E E0DF 8888"
		$"B3DE 8888 ACE0 E0E0 FE57 3357 E0FF FFFF"
		$"FFFF FE82 3333 345E 5E5D 3357 DEDE 885E"
		$"DDDD 885E 82FD FFFF FFE0 E0E0 FFFF FFFF"
		$"FFFF FEFF 8234 345E 3333 5D5D DDDD 5E57"
		$"8EDD 5E5D 5E88 FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF AC33 3A33 3333 5D5E DD88 5757"
		$"88DD 5E5E ADFE FFFF FFFF FFFF FFFF FFFF"
		$"FBFF FFFF 5733 585E 888F 8F8F 8257 3358"
		$"888F 5E88 FFE0 FFFF FFFF FFFF FFFF FFFF"
		$"00FF FF82 3333 64DD DDDD DDDD 645E 3333"
		$"8F5E 575E FFFF FFFF FFFD FFFF FFFF FFFF"
		$"00FF FE33 335E 885E 5E5E 88DD DD88 648E"
		$"5E5E 3333 ACFF FFFF FFFB 00FB FBFB FB00"
		$"FBFF AC33 335E 5E33 5D5E 5E5E 5E64 5E33"
		$"3333 3358 57E0 FFFF FF00 0000 0000 0000"
		$"FDFF FC33 335E 5E57 5E5E 335E 335E 3A5E"
		$"3334 3358 57AD FFFF FFFB 0000 0000 0000"
		$"FDFF FF57 5D5E 5E57 5E5E 5E5E 5857 5E33"
		$"5E33 575E 5788 FFFF FFFB 0000 0000 0000"
		$"FBFF FF5D 575D 5E5E 5E82 825E 5E88 885E"
		$"585E 5E5E 5E5E E0FF FFFF 0000 0000 0000"
		$"FBFF FFAD FFE0 DFE0 E0FF E0FF FFFF FFFE"
		$"ACFD E0E0 E0FE E0FF FFFF 0000 0000 0000"
		$"FBFF E0FD FEE0 E0E0 E0FF FFFF DFFF E0E0"
		$"E0E0 E0E0 DFAD E0FF FFFF FB00 0000 0000"
		$"FDFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FB00 0000 0000"
		$"FBFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF 0000 0000 0000"
		$"FBFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFD 0000 0000 0000",
		/* [4] */
		'il32',
		$"1302 0204 0004 0903 050A 0404 0100 0004"
		$"0303 0407 2081 5B24 0C00 2520 0400 0001"
		$"0600 0104 0603 0708 0700 0501 0504 060A"
		$"1002 0105 0703 0500 0030 C4D2 2181 001B"
		$"1F1B 2702 0EA8 9906 000B 2F7F 6D31 75BB"
		$"AD5F 0807 1304 003C C25B AA22 8100 1B0B"
		$"20B9 ABBA C5BB 8626 CCA9 C5BB B3B4 B4B8"
		$"B6AA AB81 0230 DFC1 110E 0280 0019 0409"
		$"23B6 C7BE BFBA B7BB B2B1 B5B4 B3AA B3B1"
		$"998A 7F20 32DE C627 8300 185B 1113 64B5"
		$"B9B7 906D 5C61 6B79 7B6A 8BB0 662F 2D0D"
		$"34DE C625 8300 1820 5B00 0935 B5B7 A963"
		$"716F 676B 806A 8AA6 563F D795 35D7 C620"
		$"8300 1A0C 5BFF 0B03 6BB0 BF8C A6A9 A9A8"
		$"AF86 69AB 633C DCB4 4CD7 C51E 1016 8100"
		$"1C0C 5BFF FF00 0D79 BAB8 A8AB A1B0 AEA6"
		$"5E7C 8041 DCB2 3FCC C522 1DB4 B426 8000"
		$"1D0C 5BFF FF01 0B6D B1B0 ACA2 9BAE AD7B"
		$"596C 47DC B13F CDC5 1F0F ADDC E6D0 2E80"
		$"0039 045B FF00 0B7A BEB7 ABB1 AFAD A870"
		$"4D33 D8B3 48CF C628 0A15 BCDF F6FF CF30"
		$"0200 0001 FF04 112E BEB7 9AA0 ADAF AD65"
		$"4C35 9A52 AEB4 1B05 5533 BEFD 80FF 01CB"
		$"1D80 0016 FF01 0844 A9B6 AAA1 A07C 705D"
		$"5553 44B3 612D 1E20 45CE F981 FF01 CB1B"
		$"8000 14FF 0F05 A8BF A1B2 925E 665C 5A4F"
		$"39B9 52A5 D2E6 E4E7 83FF 01BD 1780 0015"
		$"0902 46C7 C6B8 AB7B A5A3 A266 4129 A520"
		$"203E B9CF C9DF 82FF 01BF 1780 001C 0533"
		$"C0BC BEB5 A4AB B5B1 B18F 0B09 2435 2420"
		$"1E1D 2AA9 C7BC C7FD FFC9 1980 001C 0C31"
		$"BDB9 B7BE B5B4 B5AB A9A2 112D 5363 3D40"
		$"5659 421B 1712 26AE D0AA 1880 0015 0C0B"
		$"2764 BEB6 B8AE 94AC B8AA 4F46 6989 5651"
		$"7885 7F2F 8000 0311 1A18 0481 0014 0824"
		$"087A B9B9 A4B4 B1A8 975C 518B 936A 598E"
		$"A286 538A 0013 0445 BCB1 B4B3 B29A 8C5A"
		$"70A4 A778 5B97 9440 2101 8600 165B 000C"
		$"0598 BEA7 9475 6D61 6C7F ADB2 A47C 66A8"
		$"5F02 1B05 8600 06FF 0C04 7EB8 BE81 815B"
		$"105F 81A2 B3B1 668C AE83 0204 0200 0020"
		$"0C01 8000 1B04 FF0F 18BF CAA8 759F 968F"
		$"735C 5B72 836E 8EAE B6B0 4100 0300 005B"
		$"FF81 5B19 FF5B 0B4F C5C6 86A8 B5A2 A1A9"
		$"AC94 8592 BDB0 B7B3 AEAB 1F01 0000 84FF"
		$"1520 0D4B C8B2 A49D AAA1 99B2 9AB4 ADB3"
		$"AFBE B4B5 A3AD 3780 0000 5B83 FF15 200E"
		$"09A4 9BA9 96AD A3A2 A4A4 ABA8 A9BA A5B2"
		$"ADA5 A554 8000 005B 83FF 195B 0D0E A2A4"
		$"A2A4 908D 7672 818D 5B5E 9BA1 9696 9890"
		$"9B15 0000 0183 FF16 5B09 0B35 0F1A 2211"
		$"1609 1A0C 0609 0C28 4F2E 151A 1523 1980"
		$"0083 FF0D 5B0B 172B 2717 1F15 190D 060D"
		$"2200 801F 0516 1D1C 2334 1780 0000 5B82"
		$"FF00 2096 0000 5B82 FF00 5B96 0083 FF01"
		$"5B04 9400 0020 83FF 1302 0204 0004 0903"
		$"050A 0404 0100 0004 0303 0407 2081 5B24"
		$"0C00 0F13 0300 0001 0600 0104 0603 0607"
		$"0600 0501 0404 0609 0D02 0105 0703 0500"
		$"0023 5751 0C81 001B 1B16 2202 0C92 7F05"
		$"0009 2663 5F27 5D94 874C 0606 1004 003F"
		$"C639 0F03 8100 190B 1C96 7D93 9DA2 651F"
		$"A392 9B92 9294 8B8C 8880 8C6A 0233 DCA4"
		$"0D82 0019 0408 1C8B 9AA3 9295 92A1 9186"
		$"8985 8687 8481 776C 601C 34DA A517 8300"
		$"185B 100F 5286 8993 611C 0209 1D32 3717"
		$"4F89 2F1C 2109 38DA A617 8300 1820 5B00"
		$"0928 8591 870E 2022 1219 3F1B 4E7A 212A"
		$"B16F 36D6 A613 8300 1A0C 5BFF 0B03 5383"
		$"9050 737D 7D7C 8C4A 1688 3725 B689 47D6"
		$"A412 0C10 8100 1C0C 5BFF FF00 0C64 8D89"
		$"737D 7F85 9478 0437 5F2E B688 3CCD A414"
		$"1687 861D 8000 1D0C 5BFF FF01 0A5F 8681"
		$"7E7F 788D 843E 0046 3CB5 873C CEA4 120A"
		$"82A4 B1AD 2580 003E 045B FF00 0A6A 9392"
		$"7E8F 868C 7D23 0023 B18A 43D0 A519 0D10"
		$"8CA9 C6DF B127 0100 0001 FF04 1024 938B"
		$"787F 8C84 8312 0024 724A B497 0F08 592C"
		$"8FCE CFCE DDAB 1580 001C FF01 083A 879A"
		$"7E76 6E34 2104 0029 42B5 5C21 181A 3AB2"
		$"D0CE CDCD D29C 1380 001C FF0F 0585 A673"
		$"8457 0413 0200 0028 B84C 88AD BCBF BBD0"
		$"D3CF CECF CF8D 1180 001C 0902 39A0 A292"
		$"8432 6F74 6D12 001D 8216 1730 90A2 9AA7"
		$"CED3 D0D1 D290 1180 001C 0529 9A91 8F8F"
		$"7D84 848C 8353 0002 1925 0000 1415 1E7E"
		$"978D 97CD D997 1280 001C 0C2B A49F 9095"
		$"9683 8486 8677 0000 394D 0000 3740 3315"
		$"110C 1D84 9F80 1280 0015 0C09 1F54 9683"
		$"857C 777E 9489 0D00 4674 0B00 4867 6425"
		$"8000 030C 1312 0381 0014 071D 0659 8786"
		$"7D97 967E 7D0B 0064 841C 0059 7968 3E8A"
		$"0013 043B 8C7E 8D8D 857F 5B00 2C80 8131"
		$"006B 7430 1801 8600 165B 000C 0585 9981"
		$"5728 1D0B 1B51 8982 8632 137F 4A01 1505"
		$"8600 06FF 0C04 6B98 A240 8100 1006 4E7B"
		$"8C82 1155 935F 0204 0200 0020 0C01 8000"
		$"1B04 FF0F 1599 9F73 2766 6750 2502 0023"
		$"3B1D 587D 848F 3500 0300 005B FF81 5B19"
		$"FF5B 0A3F 9DA1 5875 8F7E 757A 795D 4456"
		$"9085 8488 8186 1701 0000 84FF 1520 0C41"
		$"A58C 7E6C 847D 7482 7C95 7A7F 7B94 808E"
		$"8581 2780 0000 5B83 FF15 200E 078D 7779"
		$"7A90 7E7C 7D75 8388 7787 7991 867E 8246"
		$"8000 005B 83FF 195B 0D0C 7D84 7F78 6E63"
		$"5551 6B72 4A4A 7285 7374 7566 7F11 0000"
		$"0183 FF16 5B09 092A 0C12 190C 1106 130A"
		$"0407 091E 3C23 1113 0F1A 1480 0083 FF16"
		$"5B09 1223 1E11 160F 130B 050A 1A00 1718"
		$"1811 1716 1928 1380 0000 5B82 FF00 2096"
		$"0000 5B82 FF00 5B96 0083 FF01 5B04 9400"
		$"0020 83FF 1302 0204 0004 0903 050A 0404"
		$"0100 0004 0303 0407 2081 5B24 0C04 2324"
		$"0500 0001 0600 0004 0603 0505 0600 0501"
		$"0404 0606 0A02 0105 0703 0500 0011 A2A4"
		$"1481 001B 130F 1702 0965 5A04 0006 1C47"
		$"401D 406B 6836 0505 0B04 0000 1025 2404"
		$"8100 190B 1569 5670 6D70 4417 7D6B 6967"
		$"686A 6160 5B55 5E4A 0200 1C48 0882 001A"
		$"0408 1461 6D70 5E68 676E 685B 5C59 595A"
		$"5851 4D46 4612 001C 4B1D 0382 0018 5B0E"
		$"0B3F 5759 593F 1F12 1620 2C2F 1A36 5323"
		$"1518 0600 1C4C 1C83 0018 205B 0009 1C56"
		$"5758 1922 241A 1E33 1F44 4F1E 2084 5805"
		$"1A4B 1983 001A 0C5B FF0B 033C 5762 3E56"
		$"5253 5262 391D 5724 1E87 6D14 1A4A 1809"
		$"0B81 001C 0C5B FFFF 000A 4661 5956 5053"
		$"5962 5313 2E3E 2387 6B0C 154A 1A10 5959"
		$"1580 001D 0C5B FFFF 010A 455A 524F 534E"
		$"5A62 3011 3329 876B 0C16 4A17 0956 6C79"
		$"821C 8000 3E04 5BFF 0009 4B67 5B51 5A5A"
		$"6253 230F 1B85 6D10 174A 1D09 0A5C 7393"
		$"A885 1E01 0000 01FF 040F 1A67 5554 5462"
		$"5157 1A0E 1A57 1504 3F15 063B 1E63 989D"
		$"9BA6 8010 8000 1CFF 0108 2C65 6651 4B46"
		$"2D22 1310 200A 021A 2114 142B 869C 9B99"
		$"9B9C 6C0D 8000 1CFF 0F04 6274 4657 3D13"
		$"1A12 110F 0B0D 1372 848B 8D8B 9BA0 9C9B"
		$"9C9A 5F0A 8000 1C09 022C 726F 5855 294A"
		$"4647 1A0C 0F45 1315 2362 6F69 7298 9D9A"
		$"9F9D 620A 8000 1C05 1F73 6855 5F4C 544B"
		$"5D5F 3B02 0417 1A07 060D 0C13 5366 5F67"
		$"98A0 660B 8000 1C0C 1F73 695F 5A5B 5154"
		$"575A 4E03 0927 300B 0C26 2C20 0D0B 0712"
		$"596B 560C 8000 150C 0616 355A 5247 4B48"
		$"5062 6014 0D31 4A15 0F35 4147 1680 0003"
		$"070B 0C02 8100 1406 1404 384B 484C 5F61"
		$"5354 160F 4459 2011 4A50 4124 8A00 1204"
		$"2752 4C5D 5E58 5442 1127 5253 2A11 4C4C"
		$"1D10 8700 165B 000C 055E 6B4F 4024 1F17"
		$"1F37 5C52 4A29 1A4B 2D01 0D03 8600 06FF"
		$"0C04 4F70 6B30 8111 1014 374B 5B52 1939"
		$"5C3D 0204 0200 0020 0C01 8000 1B04 FF0F"
		$"1072 744B 2641 4537 2612 1124 2C20 414D"
		$"5359 2400 0300 005B FF81 5B19 FF5B 0A2F"
		$"736A 3848 5551 494D 443F 323A 6152 515B"
		$"4E53 0F01 0000 84FF 1520 0C2E 725C 4B3B"
		$"554E 4550 4A59 4746 4859 4E5B 4C53 1880"
		$"0000 5B83 FF15 200E 055F 5147 4857 4F4D"
		$"4D45 4E51 4556 465A 554E 5129 8000 005B"
		$"83FF 195B 0D0A 5854 5D4E 453B 342F 4043"
		$"2C30 444E 4642 4A3D 4C0A 0000 0183 FF16"
		$"5B09 071E 080B 0D06 0A04 0C06 0204 0612"
		$"2317 0A0C 0A10 0D80 0083 FF16 5B08 0D18"
		$"110A 0D09 0C06 0306 0F00 0E0E 0F0A 0E0D"
		$"0F18 0B80 0000 5B82 FF00 2096 0000 5B82"
		$"FF00 5B96 0083 FF01 5B04 9400 0020 83FF",
		/* [5] */
		'l8mk',
		$"46B6 5509 041B 4049 1A04 0406 0A07 04A1"
		$"B136 1E02 0101 0101 0341 DDF3 DC43 1306"
		$"67FF FFB5 45D8 E6EA C71D B1F3 D5D3 BFF6"
		$"E9F4 F083 54BD 7C0A 3CD5 FFFF F36F 2B0D"
		$"0ABA FBEF F8EC FBFD F858 FCF0 EAE2 E3F9"
		$"FEF8 D7E9 F6ED D956 D7FF FFFF EA80 3710"
		$"0998 EDFF FBFA FFFF DEF3 FFFF FFFF FFFF"
		$"FFFF FFFA FFF3 F9E7 FFFF FFEE AA67 300D"
		$"04BF F8FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FEFF FFFF EEAD 7545 1C07"
		$"012C ECFD FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FEEF AD76 4922 0B02"
		$"0110 B6F2 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF F7B4 7B4A 220C 0301"
		$"0017 F1ED FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF F7A8 5E2B 0F03 0100"
		$"0009 DDFD FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FEEA 7D2B 0F03 0100"
		$"0006 D1F5 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF E66D 230D 0401"
		$"0008 D9FB FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFE5 733B 1006"
		$"0004 B1F8 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF F2D2 2E13"
		$"0006 D1E8 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFEF 5624"
		$"0053 F3FC FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFF0 6F30"
		$"69F3 DEFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFF1 7734"
		$"D6E8 FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFF1 7834"
		$"9EF5 FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFA F8FF FFFF FFF1 7834"
		$"45F7 FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFF9 F6C0 B0E6 F6FF FFF4 7634"
		$"105D D1FD FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFF6 F78F 5E68 90E2 F0E0 6B2F"
		$"0720 4BDF F7FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF F873 3025 364E 6366 4C22"
		$"010A 7EF3 F5FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFB FEF6 CA55 1E0B 101C 282B 210F"
		$"0034 F1E4 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFF8 F6CC 7A40 1402 0306 090A 0804"
		$"007A E9FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF ECFA 8D2B 0A01 0001 0101 0100"
		$"01C2 E7FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FEE8 CC25 0700 0000 0000 0000"
		$"02B2 F7FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFEF D434 0B01 0000 0000 0000"
		$"0265 FBFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFEE F66E 1301 0000 0000 0000"
		$"017A F1FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFE E6CB 2005 0000 0000 0000"
		$"01A5 FAFF FFFF FFFF FFFE FDFE FFFD FEFF"
		$"FFFF FFFF FFFF FAE2 340B 0000 0000 0000"
		$"01AB F2EB D7E3 ECD7 F8D0 AABA E9C5 D7F2"
		$"F7EF CEC8 CDE6 F2B5 4110 0100 0000 0000"
		$"0214 4170 827E 7B7D 807F 7165 6A72 757B"
		$"8587 7E72 6E75 7A66 370E 0100 0000 0000"
		$"010D 263D 4038 3638 3B3A 3026 282F 3237"
		$"4041 392E 2B30 3831 1B07 0000 0000 0000"
		$"0104 0C11 100C 0B0C 0D0D 0A07 0709 0A0D"
		$"0F10 0D08 0709 0C0C 0702 0000 0000 0000",
		/* [6] */
		'ics#',
		$"0000 0FDC 1BF0 11B0 03B0 03B0 0FB0 0FB8"
		$"1BB8 01F8 01F8 01D8 1F98 1F30 33E0 0000"
		$"0000 0FDC 1BF0 11B0 03B0 03B0 0FB0 0FB8"
		$"1BB8 01F8 01F8 01D8 1F98 1F30 33E0 0000",
		/* [7] */
		'ics4',
		$"0000 0000 0000 0000 0000 AAAA AA0A AA00"
		$"000A A0AA AAAA 0000 000A 000A A0AA 0000"
		$"0000 00AA A0AA 0000 0000 00AA A0AA 0000"
		$"0000 AAAA A0AA 0000 0000 AAAA A0AA A000"
		$"000A A0AA A0AA A000 0000 000A AAAA A000"
		$"0000 000A AAAA A000 0000 000A AA0A A000"
		$"000A AAAA A00A A000 000A AAAA 00AA 0000"
		$"00AA 00AA AAA0 0000 0000 0000 0000 0000",
		/* [8] */
		'ics8',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 DDDD DDDD DDDD 00DD DDDD 0000"
		$"0000 00DD DD00 DDDD DDDD DDDD 0000 0000"
		$"0000 00DD 0000 00DD DD00 DDDD 0000 0000"
		$"0000 0000 0000 DDDD DD00 DDDD 0000 0000"
		$"0000 0000 0000 DDDD DD00 DDDD 0000 0000"
		$"0000 0000 DDDD DDDD DD00 DDDD 0000 0000"
		$"0000 0000 DDDD DDDD DD00 DDDD DD00 0000"
		$"0000 00DD DD00 DDDD DD00 DDDD DD00 0000"
		$"0000 0000 0000 00DD DDDD DDDD DD00 0000"
		$"0000 0000 0000 00DD DDDD DDDD DD00 0000"
		$"0000 0000 0000 00DD DDDD 00DD DD00 0000"
		$"0000 00DD DDDD DDDD DD00 00DD DD00 0000"
		$"0000 00DD DDDD DDDD 0000 DDDD 0000 0000"
		$"0000 DDDD 0000 DDDD DDDD DD00 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000",
		/* [9] */
		'is32',
		$"91FF 835D 00FF 805D 82FF 025D 5DFF 835D"
		$"84FF 005D 80FF 045D 5DFF 5D5D 87FF 805D"
		$"02FF 5D5D 87FF 805D 02FF 5D5D 85FF 825D"
		$"02FF 5D5D 85FF 825D 00FF 805D 83FF 025D"
		$"5DFF 805D 00FF 805D 87FF 835D 87FF 835D"
		$"87FF 805D 02FF 5D5D 83FF 835D 03FF FF5D"
		$"5D83 FF82 5D03 FFFF 5D5D 83FF 035D 5DFF"
		$"FF82 5D92 FF91 FF83 0400 FF80 0482 FF02"
		$"0404 FF83 0484 FF00 0480 FF04 0404 FF04"
		$"0487 FF80 0402 FF04 0487 FF80 0402 FF04"
		$"0485 FF82 0402 FF04 0485 FF82 0400 FF80"
		$"0483 FF02 0404 FF80 0400 FF80 0487 FF83"
		$"0487 FF83 0487 FF80 0402 FF04 0483 FF83"
		$"0403 FFFF 0404 83FF 8204 03FF FF04 0483"
		$"FF03 0404 FFFF 8204 92FF 91FF 8313 00FF"
		$"8013 82FF 0213 13FF 8313 84FF 0013 80FF"
		$"0413 13FF 1313 87FF 8013 02FF 1313 87FF"
		$"8013 02FF 1313 85FF 8213 02FF 1313 85FF"
		$"8213 00FF 8013 83FF 0213 13FF 8013 00FF"
		$"8013 87FF 8313 87FF 8313 87FF 8013 02FF"
		$"1313 83FF 8313 03FF FF13 1383 FF82 1303"
		$"FFFF 1313 83FF 0313 13FF FF82 1392 FF",
		/* [10] */
		's8mk',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 8EFF FFAA 8EC6 0055 C639 0000"
		$"0000 0071 1C00 5555 E339 55E3 0000 0000"
		$"0000 0039 0000 00C6 C600 C6AA 0000 0000"
		$"0000 0000 0000 1CFF AA00 FFAA 0000 0000"
		$"0000 0000 0000 55FF AA00 FFE3 0000 0000"
		$"0000 0000 1C8E C6FF AA00 FFFF 0000 0000"
		$"0000 0000 E3AA E3FF E300 AAFF 5500 0000"
		$"0000 001C 1C00 1CFF FF00 AAFF 5500 0000"
		$"0000 0000 0000 00C6 FF55 55FF AA00 0000"
		$"0000 0000 0000 00AA FF55 55FF AA00 0000"
		$"0000 0000 0000 00C6 FF1C 00FF AA00 0000"
		$"0000 001C 8EAA E3AA 3900 00FF 5500 0000"
		$"0000 00C6 AAE3 FFAA 0000 39AA 0000 0000"
		$"0000 3971 0000 39AA E38E 8E00 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
	}
};

data 'hmnu' (128, "Apple", purgeable) {
	$"0002 0000 0000 0000 0000 0003 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 0097 0001 0097 0002"            /* .........ó...ó.. */
	$"0000 0000 0000 0000 0014 0003 0097 0003"            /* .............ó.. */
	$"0097 0004 0000 0000 0000 0000"                      /* .ó.......... */
};

data 'hmnu' (130, "Edit", purgeable) {
	$"0002 0000 0000 0000 0000 000C 0004 0100"            /* ................ */
	$"0014 0003 0099 0001 0099 0002 0000 0000"            /* .....ô...ô...... */
	$"0099 0002 0014 0003 0099 0003 0099 0004"            /* .ô.......ô...ô.. */
	$"0000 0000 0000 0000 0014 0003 0099 0005"            /* .............ô.. */
	$"0099 0006 0000 0000 0000 0000 0004 0100"            /* .ô.............. */
	$"0014 0003 0099 0007 0099 0008 0000 0000"            /* .....ô...ô...... */
	$"0000 0000 0014 0003 0099 0009 0087 000A"            /* .........ô...á.. */
	$"0000 0000 0000 0000 0014 0003 0099 000B"            /* .............ô.. */
	$"0099 000C 0000 0000 0000 0000 0014 0003"            /* .ô.............. */
	$"0099 000D 0099 000E 0000 0000 0000 0000"            /* .ô...ô.......... */
	$"0014 0003 0099 000F 0099 0010 0000 0000"            /* .....ô...ô...... */
	$"0000 0000 0014 0003 0099 0011 0099 0012"            /* .........ô...ô.. */
	$"0000 0000 0000 0000 0004 0100 0014 0003"            /* ................ */
	$"0099 0013 0099 0014 0000 0000 0000 0000"            /* .ô...ô.......... */
};

data 'hmnu' (131, "Select", purgeable) {
	$"0002 0000 0000 0000 0000 0005 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009A 0001 009A 0002"            /* .........ö...ö.. */
	$"0000 0000 0000 0000 0014 0003 009A 0003"            /* .............ö.. */
	$"009A 0004 0000 0000 0000 0000 0014 0003"            /* .ö.............. */
	$"009A 0005 009A 0006 0000 0000 0000 0000"            /* .ö...ö.......... */
	$"0014 0003 009A 0007 009A 0008 0000 0000"            /* .....ö...ö...... */
	$"0000 0000"                                          /* .... */
};

data 'hmnu' (132, "Transform", purgeable) {
	$"0002 0000 0000 0000 0000 0008 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009B 0001 0000 0000"            /* .........õ...... */
	$"0000 0000 0000 0000 0014 0003 009B 0002"            /* .............õ.. */
	$"0000 0000 0000 0000 0000 0000 0004 0100"            /* ................ */
	$"0014 0003 009B 0003 0000 0000 0000 0000"            /* .....õ.......... */
	$"0000 0000 0014 0003 009B 0004 0000 0000"            /* .........õ...... */
	$"0000 0000 0000 0000 0004 0100 0014 0003"            /* ................ */
	$"009B 0005 0000 0000 0000 0000 0000 0000"            /* .õ.............. */
};

data 'hmnu' (133, "Paste", purgeable) {
	$"0002 0000 0000 0000 0000 0004 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009C 0001 0000 0000"            /* .........ú...... */
	$"0000 0000 0000 0000 0014 0003 009C 0002"            /* .............ú.. */
	$"0000 0000 0000 0000 0000 0000 0014 0003"            /* ................ */
	$"009C 0003 009C 0004 0000 0000 0000 0000"            /* .ú...ú.......... */
};

data 'hmnu' (134, "View", purgeable) {
	$"0002 0000 0000 0000 0000 0003 0004 0100"            /* ................ */
	$"0014 0003 009D 0001 009D 0002 0000 0000"            /* .....ù...ù...... */
	$"009D 0002 0014 0003 009D 0003 009D 0004"            /* .ù.......ù...ù.. */
	$"0000 0000 0000 0000 0014 0003 009D 0005"            /* .............ù.. */
	$"009D 0006 0000 0000 0000 0000"                      /* .ù.......... */
};

data 'hmnu' (129, "File", purgeable) {
	$"0002 0000 0000 0000 0000 0009 0004 0100"            /* ................ */
	$"0014 0003 0098 0001 0098 0002 0000 0000"            /* .....ò...ò...... */
	$"0098 0002 0014 0003 0098 0003 0098 0004"            /* .ò.......ò...ò.. */
	$"0000 0000 0000 0000 0014 0003 0098 0005"            /* .............ò.. */
	$"0098 0006 0000 0000 0000 0000 0014 0003"            /* .ò.............. */
	$"0098 0007 0098 0008 0000 0000 0000 0000"            /* .ò...ò.......... */
	$"0004 0100 0014 0003 0098 0009 0098 000A"            /* .........ò...ò.. */
	$"0000 0000 0000 0000 0014 0003 0098 000B"            /* .............ò.. */
	$"0098 000C 0000 0000 0000 0000 0004 0100"            /* .ò.............. */
	$"0014 0003 0098 000D 0098 000E 0000 0000"            /* .....ò...ò...... */
	$"0000 0000"                                          /* .... */
};

data 'hfdr' (-5696, purgeable) {
	$"0002 0000 0000 0000 0000 0001 0008 0003"            /* ................ */
	$"0096 0001"                                          /* .ñ.. */
};

data 'hwin' (128, "About", purgeable) {
	$"0002 0000 0000 0001 0080 6872 6374 0005"            /* .........Ährct.. */
	$"0541 626F 7574"                                     /* .About */
};

data 'hwin' (129, "Register", purgeable) {
	$"0002 0000 0000 0001 0081 6872 6374 0008"            /* .........Åhrct.. */
	$"0852 6567 6973 7465 7200"                           /* .Register. */
};

data 'hwin' (1001, "Icon Info", purgeable) {
	$"0002 0000 0000 0001 03E9 6872 6374 0009"            /* .........Èhrct.. */
	$"0949 636F 6E20 496E 666F"                           /* .Icon Info */
};

data 'hwin' (300, "Icon Browser", purgeable) {
	$"0002 0000 0000 0001 012C 6872 6374 000C"            /* .........,hrct.. */
	$"0C49 636F 6E20 4272 6F77 7365 7200"                 /* .Icon Browser. */
};

data 'hrct' (128, "About", purgeable) {
	$"0002 0000 0000 0000 0000 0005 0014 0003"            /* ................ */
	$"0000 0000 00A9 00EA 00BC 0124 009E 0001"            /* .....©.Í.º.$.û.. */
	$"0014 0003 0000 0000 000A 000A 0062 0126"            /* .............b.& */
	$"009E 0002 0014 0003 0000 0000 0090 00AC"            /* .û...........ê.¨ */
	$"009C 0127 009E 0003 0014 0003 0000 0000"            /* .ú.'.û.......... */
	$"0081 00CF 008D 0127 009E 0004 0014 0003"            /* .Å.œ.ç.'.û...... */
	$"0000 0000 0066 0009 009C 009D 009E 0005"            /* .....f...ú.ù.û.. */
};

data 'hrct' (129, "Register", purgeable) {
	$"0002 0000 0000 0000 0000 0006 0014 0003"            /* ................ */
	$"0000 0000 0066 010E 007A 0152 009F 0001"            /* .....f...z.R.ü.. */
	$"0014 0003 0000 0000 0066 00BE 0079 00FE"            /* .........f.æ.y.˛ */
	$"009F 0002 0014 0003 0000 0000 0066 0007"            /* .ü...........f.. */
	$"007A 009E 009F 0003 0014 0003 0000 0000"            /* .z.û.ü.......... */
	$"000C 0088 001C 0150 009F 0004 0014 0003"            /* ...à...P.ü...... */
	$"0000 0000 0028 0088 0038 0150 009F 0005"            /* .....(.à.8.P.ü.. */
	$"0014 0003 0000 0000 0044 0088 0054 0150"            /* .........D.à.T.P */
	$"009F 0006"                                          /* .ü.. */
};

data 'hrct' (1001, "Icon Info", purgeable) {
	$"0002 0000 0000 0000 0000 000A 0014 0003"            /* ................ */
	$"0000 0000 00A0 00BB 00B4 00FF 00CC 0001"            /* .....†.ª.¥.ˇ.Ã.. */
	$"0014 0003 0000 0000 00A0 006D 00B4 00AD"            /* .........†.m.¥.≠ */
	$"00CC 0002 0014 0003 0000 0000 000D 0040"            /* .Ã.............@ */
	$"001D 007C 00CC 0003 0014 0003 0000 0000"            /* ...|.Ã.......... */
	$"000D 008B 001D 0107 00CC 0004 0014 0003"            /* ...ã.....Ã...... */
	$"0000 0000 002A 0040 003A 00FE 00CC 0005"            /* .....*.@.:.˛.Ã.. */
	$"0014 0003 0000 0000 005A 000E 006A 007C"            /* .........Z...j.| */
	$"00CC 0006 0014 0003 0000 0000 006C 000E"            /* .Ã...........l.. */
	$"007C 007C 00CC 0007 0014 0003 0000 0000"            /* .|.|.Ã.......... */
	$"007F 000E 008F 007C 00CC 0008 0014 0003"            /* .....è.|.Ã...... */
	$"0000 0000 005A 0085 006A 00F3 00CC 0009"            /* .....Z.Ö.j.Û.Ã.. */
	$"0014 0003 0000 0000 006C 0085 007C 00F3"            /* .........l.Ö.|.Û */
	$"00CC 000A"                                          /* .Ã.. */
};

data 'hrct' (300, "Icon Browser", purgeable) {
	$"0002 0000 0000 0000 0000 0004 0014 0003"            /* ................ */
	$"0000 0000 00C7 0115 00DB 0159 012D 0001"            /* .....«...€.Y.-.. */
	$"0014 0003 0000 0000 00C7 00C5 00DB 0105"            /* .........«.≈.€.. */
	$"012D 0002 0014 0003 0000 0000 0028 0044"            /* .-...........(.D */
	$"00BE 0159 012D 0003 0014 0003 0000 0000"            /* .æ.Y.-.......... */
	$"0026 0008 00C0 003E 012D 0004"                      /* .&...¿.>.-.. */
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

data 'cicn' (200, "Swap Fore/Back Colors Enabled") {
	$"0000 0000 8002 0000 0000 000A 000A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 008E 0000"            /* .............é.. */
	$"0000 0000 0000 0002 0000 0000 000A 000A"            /* ................ */
	$"0000 0000 0002 0000 0000 000A 000A 0000"            /* ................ */
	$"0000 2000 6000 FC00 6200 2100 0100 0100"            /* .. .`.¸.b.!..... */
	$"07C0 0380 0100 2000 6000 FC00 6200 2100"            /* .¿.Ä.. .`.¸.b.!. */
	$"0100 0100 07C0 0380 0100 0000 F306 0000"            /* .....¿.Ä....Û... */
	$"0001 0000 FFFF FFFF FFFF 0001 0000 0000"            /* ....ˇˇˇˇˇˇ...... */
	$"0000 2000 6000 FC00 6200 2100 0100 0100"            /* .. .`.¸.b.!..... */
	$"07C0 0380 0100"                                     /* .¿.Ä.. */
};

data 'cicn' (201, "Swap Fore/Back Colors Disabled") {
	$"0000 0000 8002 0000 0000 000A 000A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 008E 0000"            /* .............é.. */
	$"0000 0000 0000 0002 0000 0000 000A 000A"            /* ................ */
	$"0000 0000 0002 0000 0000 000A 000A 0000"            /* ................ */
	$"0000 2000 4000 A800 4200 2000 0100 0000"            /* .. .@.®.B. ..... */
	$"0540 0280 0100 2000 6000 FC00 6200 2100"            /* .@.Ä.. .`.¸.b.!. */
	$"0100 0100 07C0 0380 0100 0000 F18C 0000"            /* .....¿.Ä....Òå.. */
	$"0001 0000 FFFF FFFF FFFF 0001 0000 0000"            /* ....ˇˇˇˇˇˇ...... */
	$"0000 2000 6000 FC00 6200 2100 0100 0100"            /* .. .`.¸.b.!..... */
	$"07C0 0380 0100"                                     /* .¿.Ä.. */
};

data 'cicn' (202, "Reset Fore/Back Colors Enabled") {
	$"0000 0000 8002 0000 0000 000A 000A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 008E 0000"            /* .............é.. */
	$"0000 0000 0000 0002 0000 0000 000A 000A"            /* ................ */
	$"0000 0000 0002 0000 0000 000A 000A 0000"            /* ................ */
	$"0000 FE00 FE00 FFC0 FFC0 FFC0 FFC0 FFC0"            /* ..˛.˛.ˇ¿ˇ¿ˇ¿ˇ¿ˇ¿ */
	$"3FC0 3FC0 3FC0 FE00 FE00 FFC0 FE40 FE40"            /* ?¿?¿?¿˛.˛.ˇ¿˛@˛@ */
	$"FE40 FE40 2040 2040 3FC0 0001 1B6D 0000"            /* ˛@˛@ @ @?¿...m.. */
	$"0001 0000 FFFF FFFF FFFF 0001 0000 0000"            /* ....ˇˇˇˇˇˇ...... */
	$"0000 FE00 FE00 FFC0 FE40 FE40 FE40 FE40"            /* ..˛.˛.ˇ¿˛@˛@˛@˛@ */
	$"2040 2040 3FC0"                                     /*  @ @?¿ */
};

data 'cicn' (203, "Reset Fore/Back Colors Disabled") {
	$"0000 0000 8002 0000 0000 000A 000A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 008E 0000"            /* .............é.. */
	$"0000 0000 0000 0002 0000 0000 000A 000A"            /* ................ */
	$"0000 0000 0002 0000 0000 000A 000A 0000"            /* ................ */
	$"0000 AA00 5400 AA80 5540 AA80 5540 AA80"            /* ..™.T.™ÄU@™ÄU@™Ä */
	$"1540 2A80 1540 FE00 FE00 FFC0 FE40 FE40"            /* .@*Ä.@˛.˛.ˇ¿˛@˛@ */
	$"FE40 FE40 2040 2040 3FC0 0001 1F19 0000"            /* ˛@˛@ @ @?¿...... */
	$"0001 0000 FFFF FFFF FFFF 0001 0000 0000"            /* ....ˇˇˇˇˇˇ...... */
	$"0000 FE00 FE00 FFC0 FE40 FE40 FE40 FE40"            /* ..˛.˛.ˇ¿˛@˛@˛@˛@ */
	$"2040 2040 3FC0"                                     /*  @ @?¿ */
};

data 'cicn' (128, "Pencil") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0007"            /* ................ */
	$"8000 0007 C000 000F C000 000F 8000 001F"            /* Ä...¿...¿...Ä... */
	$"8000 001F 0000 003F 0000 003E 0000 007E"            /* Ä......?...>...~ */
	$"0000 007C 0000 007C 0000 0078 0000 0070"            /* ...|...|...x...p */
	$"0000 0060 0000 0040 0000 0000 0000 0000"            /* ...`...@........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 8000 0004 4000 0008"            /* ........Ä...@... */
	$"4000 000C 8000 0013 8000 0011 0000 0021"            /* @...Ä...Ä......! */
	$"0000 0022 0000 0042 0000 0044 0000 0064"            /* ..."...B...D...d */
	$"0000 0078 0000 0070 0000 0060 0000 0040"            /* ...x...p...`...@ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0001 B5F4 0000 0001 0000 FFFF FFFF"            /* ....µÙ......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0007 8000 0004 4000 0008"            /* ........Ä...@... */
	$"4000 000C 8000 0013 8000 0011 0000 0021"            /* @...Ä...Ä......! */
	$"0000 0022 0000 0042 0000 0044 0000 0064"            /* ..."...B...D...d */
	$"0000 0078 0000 0070 0000 0060 0000 0040"            /* ...x...p...`...@ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (129, "Eyedropper") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"7000 0000 F800 0000 F800 0007 F800 0003"            /* p...¯...¯...¯... */
	$"F000 0007 C000 000F C000 001F 4000 003E"            /* ...¿...¿...@..> */
	$"0000 007C 0000 00F8 0000 01F0 0000 03E0"            /* ...|...¯......‡ */
	$"0000 03C0 0000 0780 0000 0200 0000 0000"            /* ...¿...Ä........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 7000 0000 F800 0000"            /* ........p...¯... */
	$"F800 0007 F800 0003 F000 0005 C000 0008"            /* ¯...¯......¿... */
	$"C000 0011 4000 0022 0000 0044 0000 0088"            /* ¿...@.."...D...à */
	$"0000 0110 0000 0220 0000 0240 0000 0580"            /* ....... ...@...Ä */
	$"0000 0200 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 33AC 0000 0001 0000 FFFF FFFF"            /* ....3¨......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 7000 0000 F800 0000"            /* ........p...¯... */
	$"F800 0007 F800 0003 F000 0005 C000 0008"            /* ¯...¯......¿... */
	$"C000 0011 4000 0022 0000 0044 0000 0088"            /* ¿...@.."...D...à */
	$"0000 0110 0000 0220 0000 0240 0000 0580"            /* ....... ...@...Ä */
	$"0000 0200 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (130, "Paint bucket") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0038"            /* ...............8 */
	$"0000 0044 0000 004C 0000 005E 0000 007F"            /* ...D...L...^.... */
	$"8000 007F E000 00FF F000 01FF F800 03FF"            /* Ä...‡..ˇ..ˇ¯..ˇ */
	$"F800 07FF F800 07FF B800 03FF 3800 01FE"            /* ¯..ˇ¯..ˇ∏..ˇ8..˛ */
	$"3800 00FC 3000 0078 2000 0030 0000 0000"            /* 8..¸0..x ..0.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0038 0000 0044 0000 004C"            /* .......8...D...L */
	$"0000 0056 0000 0065 8000 0044 E000 0084"            /* ...V...eÄ..D‡..Ñ */
	$"7000 010A 3800 0204 3800 0400 7800 0400"            /* p...8...8...x... */
	$"B800 0201 3800 0102 3800 0084 3000 0048"            /* ∏...8...8..Ñ0..H */
	$"2000 0030 0000 0000 0000 0000 0000 0000"            /*  ..0............ */
	$"0000 0000 3434 0000 0001 0000 FFFF FFFF"            /* ....44......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0038 0000 0044 0000 004C"            /* .......8...D...L */
	$"0000 0056 0000 0065 8000 0044 E000 0084"            /* ...V...eÄ..D‡..Ñ */
	$"7000 010A 3800 0204 3800 0400 7800 0400"            /* p...8...8...x... */
	$"B800 0201 3800 0102 3800 0084 3000 0048"            /* ∏...8...8..Ñ0..H */
	$"2000 0030 0000 0000 0000 0000 0000 0000"            /*  ..0............ */
	$"0000"                                               /* .. */
};

data 'cicn' (131, "Eraser") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0007 F800 000F"            /* ............¯... */
	$"F800 001F F800 003F F800 007F F000 00FF"            /* ¯...¯..?¯.....ˇ */
	$"E000 01FF C000 03FF 8000 03FF 0000 03FE"            /* ‡..ˇ¿..ˇÄ..ˇ...˛ */
	$"0000 03FC 0000 0000 0000 0000 0000 0000"            /* ...¸............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0007 F800 0008 1800 0010 2800 0020"            /* ....¯.......(..  */
	$"4800 0040 9000 0081 2000 0102 4000 03FC"            /* H..@ê..Å ...@..¸ */
	$"8000 0205 0000 0206 0000 03FC 0000 0000"            /* Ä..........¸.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0002 A809 0000 0001 0000 FFFF FFFF"            /* ....®.......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0007 F800 0008 1800 0010 2800 0020"            /* ....¯.......(..  */
	$"4800 0040 9000 0081 2000 0102 4000 03FC"            /* H..@ê..Å ...@..¸ */
	$"8000 0205 0000 0206 0000 03FC 0000 0000"            /* Ä..........¸.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (132, "Rectangular Marquee") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
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
	$"0000 0000 84AA 0000 0001 0000 FFFF FFFF"            /* ....Ñ™......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 073E 7000 0400"            /* ...........>p... */
	$"1000 0400 1000 0000 1000 0000 0000 0400"            /* ................ */
	$"0000 0400 1000 0400 1000 0000 1000 0000"            /* ................ */
	$"0000 0400 0000 0400 1000 0400 1000 073E"            /* ...............> */
	$"7000 0000 0000 0000 0000 0000 0000 0000"            /* p............... */
	$"0000"                                               /* .. */
};

data 'cicn' (133, "Move") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0200 0000 0300 0000 0380 0000 03C0"            /* ...........Ä...¿ */
	$"0000 03E0 0000 03F0 8000 03F9 C000 0380"            /* ...‡...Ä..˘¿..Ä */
	$"8000 0304 9000 020F F800 0004 9000 0000"            /* Ä...ê...¯...ê... */
	$"8000 0001 C000 0000 8000 0000 0000 0000"            /* Ä...¿...Ä....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0200 0000 0300"            /* ................ */
	$"0000 0380 0000 03C0 0000 03E0 0000 03F0"            /* ...Ä...¿...‡... */
	$"8000 03F9 C000 0380 8000 0304 9000 020F"            /* Ä..˘¿..ÄÄ...ê... */
	$"F800 0004 9000 0000 8000 0001 C000 0000"            /* ¯...ê...Ä...¿... */
	$"8000 0000 0000 0000 0000 0000 0000 0000"            /* Ä............... */
	$"0000 0001 2AC2 0000 0001 0000 FFFF FFFF"            /* ....*¬......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0200 0000 0300"            /* ................ */
	$"0000 0380 0000 03C0 0000 03E0 0000 03F0"            /* ...Ä...¿...‡... */
	$"8000 03F9 C000 0380 8000 0304 9000 020F"            /* Ä..˘¿..ÄÄ...ê... */
	$"F800 0004 9000 0000 8000 0001 C000 0000"            /* ¯...ê...Ä...¿... */
	$"8000 0000 0000 0000 0000 0000 0000 0000"            /* Ä............... */
	$"0000"                                               /* .. */
};

data 'cicn' (134, "Lasso") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 001F C000 00E0 3000 0100 0800 0200"            /* ....¿..‡0....... */
	$"0800 0400 0800 0400 3000 0401 C000 038E"            /* ........0...¿..é */
	$"0000 0670 0000 0540 0000 0380 0000 0080"            /* ...p...@...Ä...Ä */
	$"0000 0080 0000 0100 0000 0000 0000 0000"            /* ...Ä............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 001F C000 00E0"            /* ............¿..‡ */
	$"3000 0100 0800 0200 0800 0400 0800 0400"            /* 0............... */
	$"3000 0401 C000 038E 0000 0670 0000 0540"            /* 0...¿..é...p...@ */
	$"0000 0380 0000 0080 0000 0080 0000 0100"            /* ...Ä...Ä...Ä.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 60B7 0000 0001 0000 FFFF FFFF"            /* ....`∑......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 001F C000 00E0"            /* ............¿..‡ */
	$"3000 0100 0800 0200 0800 0400 0800 0400"            /* 0............... */
	$"3000 0401 C000 038E 0000 0670 0000 0540"            /* 0...¿..é...p...@ */
	$"0000 0380 0000 0080 0000 0080 0000 0100"            /* ...Ä...Ä...Ä.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (135, "Magic Wand") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0040 0000 0110 0000 00A0 0000 0248"            /* ...@.......†...H */
	$"0000 00A0 0000 0110 0000 0044 0000 000E"            /* ...†.......D.... */
	$"0000 0007 0000 0003 8000 0001 C000 0000"            /* ........Ä...¿... */
	$"E000 0000 7000 0000 2000 0000 0000 0000"            /* ‡...p... ....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0040 0000 0110"            /* ...........@.... */
	$"0000 00A0 0000 0248 0000 00A0 0000 0110"            /* ...†...H...†.... */
	$"0000 0044 0000 000A 0000 0005 0000 0003"            /* ...D............ */
	$"8000 0001 C000 0000 E000 0000 7000 0000"            /* Ä...¿...‡...p... */
	$"2000 0000 0000 0000 0000 0000 0000 0000"            /*  ............... */
	$"0000 0003 68BB 0000 0001 0000 FFFF FFFF"            /* ....hª......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0040 0000 0110"            /* ...........@.... */
	$"0000 00A0 0000 0248 0000 00A0 0000 0110"            /* ...†...H...†.... */
	$"0000 0044 0000 000A 0000 0005 0000 0003"            /* ...D............ */
	$"8000 0001 C000 0000 E000 0000 7000 0000"            /* Ä...¿...‡...p... */
	$"2000 0000 0000 0000 0000 0000 0000 0000"            /*  ............... */
	$"0000"                                               /* .. */
};

data 'cicn' (136, "Line") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0180 0000 00C0"            /* ...........Ä...¿ */
	$"0000 0060 0000 0030 0000 0018 0000 000C"            /* ...`...0........ */
	$"0000 0006 0000 0003 0000 0001 8000 0000"            /* ............Ä... */
	$"C000 0000 6000 0000 3000 0000 0000 0000"            /* ¿...`...0....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0180 0000 00C0 0000 0060 0000 0030"            /* ...Ä...¿...`...0 */
	$"0000 0018 0000 000C 0000 0006 0000 0003"            /* ................ */
	$"0000 0001 8000 0000 C000 0000 6000 0000"            /* ....Ä...¿...`... */
	$"3000 0000 0000 0000 0000 0000 0000 0000"            /* 0............... */
	$"0000 0000 17D0 0000 0001 0000 FFFF FFFF"            /* .....–......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0180 0000 00C0 0000 0060 0000 0030"            /* ...Ä...¿...`...0 */
	$"0000 0018 0000 000C 0000 0006 0000 0003"            /* ................ */
	$"0000 0001 8000 0000 C000 0000 6000 0000"            /* ....Ä...¿...`... */
	$"3000 0000 0000 0000 0000 0000 0000 0000"            /* 0............... */
	$"0000"                                               /* .. */
};

data 'cicn' (137, "Rectangle") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 03FF F000 0200 1000 0200"            /* .......ˇ....... */
	$"1000 0200 1000 0200 1000 0200 1000 0200"            /* ................ */
	$"1000 0200 1000 0200 1000 0200 1000 0200"            /* ................ */
	$"1000 03FF F000 0000 0000 0000 0000 0000"            /* ...ˇ........... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 03FF"            /* ...............ˇ */
	$"F000 0200 1000 0200 1000 0200 1000 0200"            /* ............... */
	$"1000 0200 1000 0200 1000 0200 1000 0200"            /* ................ */
	$"1000 0200 1000 0200 1000 03FF F000 0000"            /* ...........ˇ... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 FB47 0000 0001 0000 FFFF FFFF"            /* ....˚G......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 03FF"            /* ...............ˇ */
	$"F000 0200 1000 0200 1000 0200 1000 0200"            /* ............... */
	$"1000 0200 1000 0200 1000 0200 1000 0200"            /* ................ */
	$"1000 0200 1000 0200 1000 03FF F000 0000"            /* ...........ˇ... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (138, "Oval") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 003F 0000 00C0 C000 0100"            /* .......?...¿¿... */
	$"2000 0100 2000 0200 1000 0200 1000 0200"            /*  ... ........... */
	$"1000 0200 1000 0100 2000 0100 2000 00C0"            /* ........ ... ..¿ */
	$"C000 003F 0000 0000 0000 0000 0000 0000"            /* ¿..?............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 003F"            /* ...............? */
	$"0000 00C0 C000 0100 2000 0100 2000 0200"            /* ...¿¿... ... ... */
	$"1000 0200 1000 0200 1000 0200 1000 0100"            /* ................ */
	$"2000 0100 2000 00C0 C000 003F 0000 0000"            /*  ... ..¿¿..?.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0001 07C2 0000 0001 0000 FFFF FFFF"            /* .....¬......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 003F"            /* ...............? */
	$"0000 00C0 C000 0100 2000 0100 2000 0200"            /* ...¿¿... ... ... */
	$"1000 0200 1000 0200 1000 0200 1000 0100"            /* ................ */
	$"2000 0100 2000 00C0 C000 003F 0000 0000"            /*  ... ..¿¿..?.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (140, "Gradient") {
	$"0000 0000 8008 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0002 0001 0002 0000 0000 0000 01B2 0000"            /* .............≤.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 07FF F800 07FF F800 07FF"            /* .......ˇ¯..ˇ¯..ˇ */
	$"F800 07FF F800 07FF F800 07FF F800 07FF"            /* ¯..ˇ¯..ˇ¯..ˇ¯..ˇ */
	$"F800 07FF F800 07FF F800 07FF F800 07FF"            /* ¯..ˇ¯..ˇ¯..ˇ¯..ˇ */
	$"F800 07FF F800 0000 0000 0000 0000 0000"            /* ¯..ˇ¯........... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 07FF"            /* ...............ˇ */
	$"F800 040B F800 0407 F800 040B F800 0407"            /* ¯...¯...¯...¯... */
	$"F800 040B F800 0407 F800 040B F800 0407"            /* ¯...¯...¯...¯... */
	$"F800 040B F800 0407 F800 07FF F800 0000"            /* ¯...¯...¯..ˇ¯... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 CBD8 0000 0003 0000 FFFF FFFF"            /* ....Àÿ......ˇˇˇˇ */
	$"FFFF 0001 8000 8000 8000 0002 4000 4000"            /* ˇˇ..Ä.Ä.Ä...@.@. */
	$"4000 0003 0000 0000 0000 0000 0000 0000"            /* @............... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 003F FFFF FFC0 0000 0030 119B BFC0"            /* ...?ˇˇˇ¿...0.õø¿ */
	$"0000 0030 056A FFC0 0000 0030 119B BFC0"            /* ...0.jˇ¿...0.õø¿ */
	$"0000 0030 056A FFC0 0000 0030 119B BFC0"            /* ...0.jˇ¿...0.õø¿ */
	$"0000 0030 056A FFC0 0000 0030 119B BFC0"            /* ...0.jˇ¿...0.õø¿ */
	$"0000 0030 056A FFC0 0000 0030 119B BFC0"            /* ...0.jˇ¿...0.õø¿ */
	$"0000 0030 056A FFC0 0000 003F FFFF FFC0"            /* ...0.jˇ¿...?ˇˇˇ¿ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
};

data 'cicn' (141, "Text") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 01FF E000 018C 6000 010C 2000 010C"            /* ...ˇ‡..å`... ... */
	$"2000 000C 0000 000C 0000 000C 0000 000C"            /*  ............... */
	$"0000 000C 0000 000C 0000 000C 0000 000C"            /* ................ */
	$"0000 003F 0000 0000 0000 0000 0000 0000"            /* ...?............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 01FF E000 018C"            /* ...........ˇ‡..å */
	$"6000 010C 2000 010C 2000 000C 0000 000C"            /* `... ... ....... */
	$"0000 000C 0000 000C 0000 000C 0000 000C"            /* ................ */
	$"0000 000C 0000 000C 0000 003F 0000 0000"            /* ...........?.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 1B8E 0000 0001 0000 FFFF FFFF"            /* .....é......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 01FF E000 018C"            /* ...........ˇ‡..å */
	$"6000 010C 2000 010C 2000 000C 0000 000C"            /* `... ... ....... */
	$"0000 000C 0000 000C 0000 000C 0000 000C"            /* ................ */
	$"0000 000C 0000 000C 0000 003F 0000 0000"            /* ...........?.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (150, "Rectangle (Filled)") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 03FF F000 02AA B000 0355"            /* .......ˇ..™∞..U */
	$"5000 02AA B000 0355 5000 02AA B000 0355"            /* P..™∞..UP..™∞..U */
	$"5000 02AA B000 0355 5000 02AA B000 0355"            /* P..™∞..UP..™∞..U */
	$"5000 03FF F000 0000 0000 0000 0000 0000"            /* P..ˇ........... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 03FF"            /* ...............ˇ */
	$"F000 02AA B000 0355 5000 02AA B000 0355"            /* ..™∞..UP..™∞..U */
	$"5000 02AA B000 0355 5000 02AA B000 0355"            /* P..™∞..UP..™∞..U */
	$"5000 02AA B000 0355 5000 03FF F000 0000"            /* P..™∞..UP..ˇ... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 4E65 0000 0001 0000 FFFF FFFF"            /* ....Ne......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 03FF"            /* ...............ˇ */
	$"F000 02AA B000 0355 5000 02AA B000 0355"            /* ..™∞..UP..™∞..U */
	$"5000 02AA B000 0355 5000 02AA B000 0355"            /* P..™∞..UP..™∞..U */
	$"5000 02AA B000 0355 5000 03FF F000 0000"            /* P..™∞..UP..ˇ... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (151, "Oval (Filled)") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 003F 0000 00EA C000 0155"            /* .......?...Í¿..U */
	$"6000 01AA A000 0355 5000 02AA B000 0355"            /* `..™†..UP..™∞..U */
	$"5000 02AA B000 0155 6000 01AA A000 00D5"            /* P..™∞..U`..™†..’ */
	$"C000 003F 0000 0000 0000 0000 0000 0000"            /* ¿..?............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 003F"            /* ...............? */
	$"0000 00EA C000 0155 6000 01AA A000 0355"            /* ...Í¿..U`..™†..U */
	$"5000 02AA B000 0355 5000 02AA B000 0155"            /* P..™∞..UP..™∞..U */
	$"6000 01AA A000 00D5 C000 003F 0000 0000"            /* `..™†..’¿..?.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 5043 0000 0001 0000 FFFF FFFF"            /* ....PC......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 003F"            /* ...............? */
	$"0000 00EA C000 0155 6000 01AA A000 0355"            /* ...Í¿..U`..™†..U */
	$"5000 02AA B000 0355 5000 02AA B000 0155"            /* P..™∞..UP..™∞..U */
	$"6000 01AA A000 00D5 C000 003F 0000 0000"            /* `..™†..’¿..?.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (139, "Polygon") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 001F FC00 0020 0800 0040"            /* ........¸.. ...@ */
	$"1000 0080 2000 0100 4000 0200 8000 0401"            /* ...Ä ...@...Ä... */
	$"0000 0400 8000 0400 4000 0400 2000 0400"            /* ....Ä...@... ... */
	$"1000 07FF F800 0000 0000 0000 0000 0000"            /* ...ˇ¯........... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 001F"            /* ................ */
	$"FC00 0020 0800 0040 1000 0080 2000 0100"            /* ¸.. ...@...Ä ... */
	$"4000 0200 8000 0401 0000 0400 8000 0400"            /* @...Ä.......Ä... */
	$"4000 0400 2000 0400 1000 07FF F800 0000"            /* @... ......ˇ¯... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0001 872B 0000 0001 0000 FFFF FFFF"            /* ....á+......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 001F"            /* ................ */
	$"FC00 0020 0800 0040 1000 0080 2000 0100"            /* ¸.. ...@...Ä ... */
	$"4000 0200 8000 0401 0000 0400 8000 0400"            /* @...Ä.......Ä... */
	$"4000 0400 2000 0400 1000 07FF F800 0000"            /* @... ......ˇ¯... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (152, "Polygon (Filled)") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 001F FC00 002A A800 0055"            /* ........¸..*®..U */
	$"5000 00AA A000 0155 4000 02AA 8000 0555"            /* P..™†..U@..™Ä..U */
	$"0000 06AA 8000 0555 4000 06AA A000 0555"            /* ...™Ä..U@..™†..U */
	$"5000 07FF F800 0000 0000 0000 0000 0000"            /* P..ˇ¯........... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 001F"            /* ................ */
	$"FC00 002A A800 0055 5000 00AA A000 0155"            /* ¸..*®..UP..™†..U */
	$"4000 02AA 8000 0555 0000 06AA 8000 0555"            /* @..™Ä..U...™Ä..U */
	$"4000 06AA A000 0555 5000 07FF F800 0000"            /* @..™†..UP..ˇ¯... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0001 865A 0000 0001 0000 FFFF FFFF"            /* ....ÜZ......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 001F"            /* ................ */
	$"FC00 002A A800 0055 5000 00AA A000 0155"            /* ¸..*®..UP..™†..U */
	$"4000 02AA 8000 0555 0000 06AA 8000 0555"            /* @..™Ä..U...™Ä..U */
	$"4000 06AA A000 0555 5000 07FF F800 0000"            /* @..™†..UP..ˇ¯... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (153, "Gradient (Radial)") {
	$"0000 0000 800E 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0004 0001 0004 0000 0000 0000 0236 0000"            /* .............6.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 07FF F800 07FF F800 07FF"            /* .......ˇ¯..ˇ¯..ˇ */
	$"F800 07FF F800 07FF F800 07FF F800 07FF"            /* ¯..ˇ¯..ˇ¯..ˇ¯..ˇ */
	$"F800 07FF F800 07FF F800 07FF F800 07FF"            /* ¯..ˇ¯..ˇ¯..ˇ¯..ˇ */
	$"F800 07FF F800 0000 0000 0000 0000 0000"            /* ¯..ˇ¯........... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 07FF"            /* ...............ˇ */
	$"F800 07FF F800 07F6 F800 07A9 B800 07D6"            /* ¯..ˇ¯..ˆ¯..©∏..÷ */
	$"F800 07D1 F800 0763 7800 07D4 F800 07EB"            /* ¯..—¯..cx..‘¯..Î */
	$"B800 07BD F800 07EF F800 07FF F800 0000"            /* ∏..Ω¯..Ô¯..ˇ¯... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0002 5E81 0000 0004 0000 FFFF FFFF"            /* ....^Å......ˇˇˇˇ */
	$"FFFF 000C C000 C000 C000 000D 8000 8000"            /* ˇˇ..¿.¿.¿...Ä.Ä. */
	$"8000 000E 4000 4000 4000 000F 0000 0000"            /* Ä...@.@.@....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0FFF FFFF FFFF"            /* ...........ˇˇˇˇˇ */
	$"FFFF F000 0000 0000 0FFF FFEF EFEE FFFF"            /* ˇˇ......ˇˇÔÔÓˇˇ */
	$"F000 0000 0000 0FFF FEEE EEEE EFFF F000"            /* ......ˇ˛ÓÓÓÔˇ. */
	$"0000 0000 0FFF EEED EDDE EEFF F000 0000"            /* .....ˇÓÌÌﬁÓˇ... */
	$"0000 0FFF EEDD DDDD EFFF F000 0000 0000"            /* ...ˇÓ›››Ôˇ..... */
	$"0FFF FEDD C0DE EEFF F000 0000 0000 0FFF"            /* .ˇ˛›¿ﬁÓˇ......ˇ */
	$"EEED 0CDD EFFF F000 0000 0000 0FFF FEDD"            /* ÓÌ.›Ôˇ......ˇ˛› */
	$"DDDD EEFF F000 0000 0000 0FFF EEED DEDE"            /* ››Óˇ......ˇÓÌﬁﬁ */
	$"EEFF F000 0000 0000 0FFF FEEE EEEE EFFF"            /* Óˇ......ˇ˛ÓÓÓÔˇ */
	$"F000 0000 0000 0FFF FFEE FEFE FFFF F000"            /* ......ˇˇÓ˛˛ˇˇ. */
	$"0000 0000 0FFF FFFF FFFF FFFF F000 0000"            /* .....ˇˇˇˇˇˇˇ... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000"                                     /* ...... */
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

resource 'cctb' (138) {
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

resource 'cctb' (139) {
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

resource 'cctb' (140) {
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

resource 'cctb' (141) {
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

resource 'cctb' (1001) {
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

resource 'cctb' (1410) {
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

resource 'CNTL' (136, "Line Tool", purgeable) {
	{110, 0, 132, 26},
	0,
	visible,
	136,
	258,
	32,
	0,
	""
};

resource 'CNTL' (137, "Rectangle Tool", purgeable) {
	{88, 0, 110, 26},
	0,
	visible,
	137,
	258,
	32,
	0,
	""
};

resource 'CNTL' (138, "Oval Tool", purgeable) {
	{88, 26, 110, 52},
	0,
	visible,
	138,
	258,
	32,
	0,
	""
};

resource 'CNTL' (139, "Polygon Tool", purgeable) {
	{110, 26, 132, 52},
	0,
	visible,
	139,
	258,
	32,
	0,
	""
};

resource 'CNTL' (140, "Gradient Tool", purgeable) {
	{132, 0, 154, 26},
	0,
	visible,
	140,
	258,
	32,
	0,
	""
};

resource 'CNTL' (141, "Text Tool", purgeable) {
	{132, 26, 154, 52},
	0,
	visible,
	141,
	258,
	32,
	0,
	""
};

resource 'CNTL' (1411, "Size Popup", purgeable) {
	{37, 166, 57, 188},
	0,
	visible,
	0,
	1411,
	401,
	0,
	""
};

resource 'CNTL' (1412, "Size Popup", purgeable) {
	{66, 8, 86, 190},
	0,
	visible,
	45,
	1412,
	401,
	0,
	"Style:"
};

resource 'CNTL' (203, "Fore/Back Color", purgeable) {
	{159, 5, 201, 47},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (204, "Icon Display", purgeable) {
	{25, 261, 115, 315},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (205, "Mask Display", purgeable) {
	{25, 322, 115, 376},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (206, "Icon Popup", purgeable) {
	{8, 259, 22, 317},
	0,
	visible,
	0,
	200,
	401,
	0,
	""
};

resource 'CNTL' (207, "Mask Popup", purgeable) {
	{8, 320, 22, 378},
	0,
	visible,
	0,
	201,
	401,
	0,
	""
};

resource 'CNTL' (208, "Icon Label", purgeable) {
	{118, 260, 130, 314},
	0,
	visible,
	100,
	0,
	288,
	0,
	"Icon"
};

resource 'CNTL' (209, "Mask Label", purgeable) {
	{118, 323, 130, 377},
	0,
	visible,
	100,
	0,
	288,
	0,
	"Mask"
};

resource 'CNTL' (211, "Preview Label", purgeable) {
	{190, 261, 202, 376},
	0,
	visible,
	100,
	0,
	288,
	0,
	"Preview"
};

resource 'CNTL' (1000, "Zoom Level Arrows", purgeable) {
	{13, 188, 37, 201},
	0,
	visible,
	100,
	0,
	96,
	0,
	""
};

resource 'CNTL' (201, "Zoom Placard", purgeable) {
	{210, 4294967295, 226, 63},
	32,
	visible,
	0,
	0,
	256,
	0,
	""
};

resource 'CNTL' (202, "Info Placard", purgeable) {
	{210, 62, 226, 384},
	32,
	visible,
	0,
	0,
	256,
	0,
	""
};

resource 'CNTL' (1001, "Flags Group Box", purgeable) {
	{70, 10, 150, 258},
	0,
	visible,
	100,
	0,
	160,
	0,
	"Flags"
};

resource 'CNTL' (1410, "Font Popup", purgeable) {
	{8, 8, 28, 188},
	0,
	visible,
	45,
	1410,
	405,
	1179602500,
	"Font:"
};

resource 'CNTL' (210, "Preview", purgeable) {
	{132, 261, 186, 376},
	32,
	visible,
	0,
	0,
	256,
	0,
	""
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
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 00F0 0088 0108 0190 0270 0220"            /* ......à...ê.p.  */
	$"0420 0440 0840 0880 0C80 0F00 0E00 0C00"            /* . .@.@.Ä.Ä...... */
	$"0800 0000 00F0 00F8 01F8 01F0 03F0 03E0"            /* ......¯.¯...‡ */
	$"07E0 07C0 0FC0 0F80 0F80 0F00 0E00 0C00"            /* .‡.¿.¿.Ä.Ä...... */
	$"0800 0000 000E 0004 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 00F0 0088 0108 0190 0270 0220 0420"            /* ....à...ê.p. .  */
	$"0440 0840 0880 0C80 0F00 0E00 0C00 0800"            /* .@.@.Ä.Ä........ */
	$"0000 0000 2ED5 0000 0001 0000 FFFF FFFF"            /* .....’......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (129, "Eye Dropper") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 000E 001F 001F 00FF 007E 00B8"            /* ...........ˇ.~.∏ */
	$"0118 0228 0440 0880 1100 2200 4400 4800"            /* ...(.@.Ä..".D.H. */
	$"B000 4000 000E 001F 001F 00FF 007E 00F8"            /* ∞.@........ˇ.~.¯ */
	$"01F8 03E8 07C0 0F80 1F00 3E00 7C00 7800"            /* .¯.Ë.¿.Ä..>.|.x. */
	$"F000 4000 000E 0001 0000 0000 0000 0000"            /* .@............. */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 000E 001F 001F 00FF 007E 00B8 0118"            /* .........ˇ.~.∏.. */
	$"0228 0440 0880 1100 2200 4400 4800 B000"            /* .(.@.Ä..".D.H.∞. */
	$"4000 0000 31F3 0000 0001 0000 FFFF FFFF"            /* @...1Û......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (130, "Bucket") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0700 0880 0980 0AC0 0CB0 089C"            /* .......Ä.Ä.¿.∞.ú */
	$"108E 2147 4087 800F 8017 4027 2047 1086"            /* .é!G@áÄ.Ä.@' G.Ü */
	$"0904 0600 0700 0880 0980 0BC0 0FE0 0FF0"            /* .......Ä.Ä.¿.‡. */
	$"1FF8 3FFC 7FFC FFF8 FFF0 7FE0 3FC0 1F80"            /* .¯?¸.¸ˇ¯ˇ.‡?¿.Ä */
	$"0F00 0600 000E 000D 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0700 0880 0980 0AC0 0CB0 089C 108E"            /* .....Ä.Ä.¿.∞.ú.é */
	$"2147 4087 800F 8017 4027 2047 1086 0904"            /* !G@áÄ.Ä.@' G.Ü.. */
	$"0600 0000 34DA 0000 0001 0000 FFFF FFFF"            /* ....4⁄......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (131, "Eraser") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0000 0000 01FE 0206 040A 0812"            /* .........˛...... */
	$"1024 2048 4090 FF20 8140 8180 FF00 0000"            /* .$ H@êˇ Å@ÅÄˇ... */
	$"0000 0000 0000 0000 01FE 03FE 07FE 0FFE"            /* .........˛.˛.˛.˛ */
	$"1FFC 3FF8 7FF0 FFE0 FFC0 FF80 FF00 0000"            /* .¸?¯.ˇ‡ˇ¿ˇÄˇ... */
	$"0000 0000 000C 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0000 0000 01FE 0206 040A 0812 1024"            /* .......˛.......$ */
	$"2048 4090 FF20 8140 8180 FF00 0000 0000"            /*  H@êˇ Å@ÅÄˇ..... */
	$"0000 0000 394A 0000 0001 0000 FFFF FFFF"            /* ....9J......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (132, "Marquee") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"0100 FFFE 0100 0100 0100 0100 0100 0100"            /* ..ˇ˛............ */
	$"0100 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0007 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0100 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"FFFE 0100 0100 0100 0100 0100 0100 0100"            /* ˇ˛.............. */
	$"0000 0000 9C5B 0000 0001 0000 FFFF FFFF"            /* ....ú[......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (133, "Move") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0000 4000 6000 7000 7800 7C00"            /* ......@.`.p.x.|. */
	$"7E20 7F70 7020 6124 43FE 0124 0020 0070"            /* ~ .pp a$C˛.$. .p */
	$"0020 0000 4000 E000 F000 F800 FC00 FE20"            /* . ..@.‡..¯.¸.˛  */
	$"FF70 FFF8 FF74 F3FE E7FF 43FE 0174 00F8"            /* ˇpˇ¯ˇtÛ˛ÁˇC˛.t.¯ */
	$"0070 0020 0001 0001 0000 0000 0000 0000"            /* .p. ............ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0000 4000 6000 7000 7800 7C00 7E20"            /* ....@.`.p.x.|.~  */
	$"7F70 7020 6124 43FE 0124 0020 0070 0020"            /* .pp a$C˛.$. .p.  */
	$"0000 0001 33F8 0000 0001 0000 FFFF FFFF"            /* ....3¯......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (134, "Lasso") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 03F8 1C06 2001 4001 8001 8006"            /* .....¯.. .@.Ä.Ä. */
	$"8038 71C0 CE00 A800 7000 1000 1000 2000"            /* Ä8q¿Œ.®.p..... . */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 000D 0002 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 03F8 1C06 2001 4001 8001 8006 8038"            /* ...¯.. .@.Ä.Ä.Ä8 */
	$"71C0 CE00 A800 7000 1000 1000 2000 0000"            /* q¿Œ.®.p..... ... */
	$"0000 0003 61D7 0000 0001 0000 FFFF FFFF"            /* ....a◊......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (135, "Magic Wand") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 1000 4400 2800 9200 2800 4400"            /* ......D.(.í.(.D. */
	$"1100 0280 0140 00E0 0070 0038 001C 0008"            /* ...Ä.@.‡.p.8.... */
	$"0000 0000 1000 5400 3800 FE00 3800 5400"            /* ......T.8.˛.8.T. */
	$"1100 0380 01C0 00E0 0070 0038 001C 0008"            /* ...Ä.¿.‡.p.8.... */
	$"0000 0000 0003 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 1000 4400 2800 9200 2800 4400 1100"            /* ....D.(.í.(.D... */
	$"0280 0140 00E0 0070 0038 001C 0008 0000"            /* .Ä.@.‡.p.8...... */
	$"0000 0003 6933 0000 0001 0000 FFFF FFFF"            /* ....i3......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (204, "Magic Wand Additive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 1000 4400 2800 9200 2800 4400"            /* ......D.(.í.(.D. */
	$"1100 0280 0140 00E0 1070 1038 7C1C 1008"            /* ...Ä.@.‡.p.8|... */
	$"1000 0000 1000 5400 3800 FE00 3800 5400"            /* ......T.8.˛.8.T. */
	$"1100 0380 01C0 00E0 0070 0038 001C 0008"            /* ...Ä.¿.‡.p.8.... */
	$"0000 0000 0003 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 1000 4400 2800 9200 2800 4400 1100"            /* ....D.(.í.(.D... */
	$"0280 0140 00E0 1070 1038 7C1C 1008 1000"            /* .Ä.@.‡.p.8|..... */
	$"0000 0003 8CD8 0000 0001 0000 FFFF FFFF"            /* ....åÿ......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (201, "Marquee Subtractive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"0100 FFFE 0100 0100 0100 0100 0100 011F"            /* ..ˇ˛............ */
	$"0100 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0007 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0100 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"FFFE 0100 0100 0100 0100 0100 011F 0100"            /* ˇ˛.............. */
	$"0000 0003 E7B4 0000 0001 0000 FFFF FFFF"            /* ....Á¥......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (202, "Lasso Additive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 03F8 1C06 2001 4001 8001 8006"            /* .....¯.. .@.Ä.Ä. */
	$"8038 71C0 CE00 A800 7008 1008 103E 2008"            /* Ä8q¿Œ.®.p....> . */
	$"0008 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 000D 0002 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 03F8 1C06 2001 4001 8001 8006 8038"            /* ...¯.. .@.Ä.Ä.Ä8 */
	$"71C0 CE00 A800 7008 1008 103E 2008 0008"            /* q¿Œ.®.p....> ... */
	$"0000 0003 E3FF 0000 0001 0000 FFFF FFFF"            /* ....„ˇ......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (203, "Lasso Subtractive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 03F8 1C06 2001 4001 8001 8006"            /* .....¯.. .@.Ä.Ä. */
	$"8038 71C0 CE00 A800 7000 1000 103E 2000"            /* Ä8q¿Œ.®.p....> . */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 000D 0002 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 03F8 1C06 2001 4001 8001 8006 8038"            /* ...¯.. .@.Ä.Ä.Ä8 */
	$"71C0 CE00 A800 7000 1000 103E 2000 0000"            /* q¿Œ.®.p....> ... */
	$"0000 0003 E6AB 0000 0001 0000 FFFF FFFF"            /* ....Ê´......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (205, "Magic Wand Subtractive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 1000 4400 2800 9200 2800 4400"            /* ......D.(.í.(.D. */
	$"1100 0280 0140 00E0 0070 0038 7C1C 0008"            /* ...Ä.@.‡.p.8|... */
	$"0000 0000 1000 5400 3800 FE00 3800 5400"            /* ......T.8.˛.8.T. */
	$"1100 0380 01C0 00E0 0070 0038 001C 0008"            /* ...Ä.¿.‡.p.8.... */
	$"0000 0000 0003 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 1000 4400 2800 9200 2800 4400 1100"            /* ....D.(.í.(.D... */
	$"0280 0140 00E0 0070 0038 7C1C 0008 0000"            /* .Ä.@.‡.p.8|..... */
	$"0000 0003 E72E 0000 0001 0000 FFFF FFFF"            /* ....Á.......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (200, "Marquee Additive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"0100 FFFE 0100 0100 0100 0104 0104 011F"            /* ..ˇ˛............ */
	$"0104 0004 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0007 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0100 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"FFFE 0100 0100 0100 0104 0104 011F 0104"            /* ˇ˛.............. */
	$"0004 0003 E85F 0000 0001 0000 FFFF FFFF"            /* ....Ë_......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'PAT#' (1000, purgeable) {
	$"0008 F0E1 C387 0F1E 3C78 78F0 E1C3 870F"            /* ..·√á..<xx·√á. */
	$"1E3C 3C78 F0E1 C387 0F1E 1E3C 78F0 E1C3"            /* .<<x·√á...<x·√ */
	$"870F 0F1E 3C78 F0E1 C387 870F 1E3C 78F0"            /* á...<x·√áá..<x */
	$"E1C3 C387 0F1E 3C78 F0E1 E1C3 870F 1E3C"            /* ·√√á..<x··√á..< */
	$"78F0"                                               /* x */
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
	{41, 6, 265, 384},
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

data 'PROC' (128, "Find_icon 3.1 fat") {
	$"4E56 FFF0 41EE FFF0 7001 A090 4A40 6640"            /* NVˇAÓˇp.†êJ@f@ */
	$"0C68 0700 0004 6D38 303C A89F A746 2F08"            /* .h....m80<®üßF/. */
	$"303C AAFE A746 B1D7 663E 41FA FFD4 30FC"            /* 0<™˛ßF±◊f>A˙ˇ‘0¸ */
	$"6000 43FA 0044 2029 0014 5580 3080 303C"            /* `.C˙.D )..UÄ0Ä0< */
	$"A198 A346 B1D7 4E5E 67B6 7001 A198 60B0"            /* °ò£F±◊N^g∂p.°ò`∞ */
	$"4E5E 41FA FFAC 30FC 6000 43FA 001C 2029"            /* N^A˙ˇ¨0¸`.C˙.. ) */
	$"0014 5580 3080 6098 4E5E 43FA FF94 41FA"            /* ..UÄ0Ä`òN^C˙ˇîA˙ */
	$"0008 7034 A02E 6088 AAFE 0700 0000 0000"            /* ..p4†.`à™˛...... */
	$"0000 0001 0000 3FE0 0000 0005 0000 00AC"            /* ......?‡.......¨ */
	$"0000 0000 0000 0000 0000 3FE0 0001 0007"            /* ..........?‡.... */
	$"0000 2068 0000 0000 0000 0000 600A 0000"            /* .. h........`... */
	$"5052 4F43 0080 0000 48E7 E0C8 4EBA 00F2"            /* PROC.Ä..HÁ‡»N∫.Ú */
	$"41FA FFEA 2008 A055 4EBA 0090 4CDF 1307"            /* A˙ˇÍ .†UN∫.êLﬂ.. */
	$"4EFA 00F2 41FA FFD6 D1FC 0000 1FB7 2008"            /* N˙.ÚA˙ˇ÷—¸...∑ . */
	$"A055 4E75 48E7 0600 594F 206F 0010 226F"            /* †UNuHÁ..YO o.."o */
	$"0014 2C2F 0018 1E98 1F58 0001 1F58 0002"            /* ..,/...ò.X...X.. */
	$"1F58 0003 2A17 7400 6044 1218 1001 0240"            /* .X..*.t.`D.....@ */
	$"0080 670C D201 1001 4880 48C0 D480 6028"            /* .Äg.“...HÄH¿‘Ä`( */
	$"1E81 1F58 0001 1001 0240 0040 670C 3017"            /* .Å.X.....@.@g.0. */
	$"E548 E240 48C0 D480 600E 1F58 0002 1F58"            /* ÂH‚@H¿‘Ä`..X...X */
	$"0003 2417 E58A E282 DDB1 2800 5385 4A85"            /* ..$.Âä‚Ç›±(.SÖJÖ */
	$"6EB8 584F 4CDF 0060 4E75 48E7 1020 2440"            /* n∏XOLﬂ.`NuHÁ. $@ */
	$"202C 03E0 260A 9680 6740 4A80 661C 422C"            /*  ,.‡&.ñÄg@JÄf.B, */
	$"03E4 303C A89F A746 2F08 303C A198 A346"            /* .‰0<®üßF/.0<°ò£F */
	$"B1DF 56C0 4400 1940 03E4 2F03 2F0A 4EBA"            /* ±ﬂV¿D..@.‰/./.N∫ */
	$"FF44 2F00 4EBA FF4E 4FEF 000C 294A 03E0"            /* ˇD/.N∫ˇNOÔ..)J.‡ */
	$"4A2C 03E4 6704 7001 A198 4CDF 0408 4E75"            /* J,.‰g.p.°òLﬂ..Nu */
	$"41FA FEFA D1FC 0000 1BD2 2008 A055 C18C"            /* A˙˛˙—¸...“ .†U¡å */
	$"4E75 4E75 4E56 FF2E 48E7 1E30 246E 0014"            /* NuNuNVˇ.HÁ.0$n.. */
	$"266E 0010 2A2E 000C 282E 0008 7600 4EBA"            /* &n..*...(...v.N∫ */
	$"FFD0 2C00 2044 4290 200A 6712 3F12 4EBA"            /* ˇ–,. DBê .g.?.N∫ */
	$"0B48 4A00 544F 6706 76CB 6000 0116 200B"            /* .HJ.TOg.vÀ`... . */
	$"6636 41EA 0006 43EE FF2E 7020 A22E 3D52"            /* f6AÍ..CÓˇ.p ¢.=R */
	$"FFAA 2D6A 0002 FFC4 41EE FF2E 2D48 FFA6"            /* ˇ™-j..ˇƒAÓˇ.-Hˇ¶ */
	$"426E FFB0 41EE FF94 7009 A260 3600 6600"            /* Bnˇ∞AÓˇîp.¢`6.f. */
	$"00E2 47EE FF94 6026 206B 0012 7000 1010"            /* .‚GÓˇî`& k..p... */
	$"5240 48C0 206B 0012 43EE FF54 A22E 2D6B"            /* R@H¿ k..CÓˇT¢.-k */
	$"0064 FF50 3D6B 0016 FF4E 45EE FF4E 2044"            /* .dˇP=k..ˇNEÓˇN D */
	$"4A90 6600 008C 102B 001E 0240 0010 662E"            /* Jêf..å.+...@..f. */
	$"302B 0028 0240 0400 6712 2F04 2F05 2F0A"            /* 0+.(.@..g./././. */
	$"4EBA 02C6 3600 4FEF 000C 6064 2F04 2F05"            /* N∫.∆6.OÔ..`d/./. */
	$"2F0B 4EBA 0104 3600 4FEF 000C 6052 302B"            /* /.N∫..6.OÔ..`R0+ */
	$"0028 0240 0400 6716 2F04 2F05 2F2B 0030"            /* .(.@..g./././+.0 */
	$"3F12 4EBA 0578 4A40 4FEF 000E 6732 7002"            /* ?.N∫.xJ@OÔ..g2p. */
	$"B0AB 0030 661A 3F12 4EBA 0AB6 4A00 544F"            /* ∞´.0f.?.N∫.∂J.TO */
	$"670E 2F04 3F12 4EBA 05BE 3600 5C4F 6010"            /* g./.?.N∫.æ6.\O`. */
	$"2F04 2F05 2F0B 4EBA 0372 3600 4FEF 000C"            /* /././.N∫.r6.OÔ.. */
	$"2044 4A90 6730 554F 2044 2F10 302B 0028"            /*  DJêg0UO D/.0+.( */
	$"0240 000E E248 3F00 303C 0316 ABC9 301F"            /* .@..‚H?.0<..´…0. */
	$"6014 7001 B0AA 0002 660C 2F04 3F12 4EBA"            /* `.p.∞™..f./.?.N∫ */
	$"0576 3600 5C4F 2006 C18C 3F43 0102 4CDF"            /* .v6.\O .¡å?C..Lﬂ */
	$"0C78 4E5E 205F 4FEF 0010 4ED0 846D 6169"            /* .xN^ _OÔ..N–Ñmai */
	$"6E00 0000 4E56 FFBA 2F04 2F03 41EE FFBA"            /* n...NVˇ∫/./.AÓˇ∫ */
	$"2D48 FFEE 7014 2D40 FFF2 3D6E 0008 FFE4"            /* -HˇÓp.-@ˇÚ=n..ˇ‰ */
	$"42AE FFE0 41EE FFCE 7030 A260 3800 7601"            /* BÆˇ‡AÓˇŒp0¢`8.v. */
	$"4A44 6608 4AAE FFC4 6702 7600 1003 261F"            /* JDf.JÆˇƒg.v...&. */
	$"281F 4E5E 4E75 8F49 735F 6C6F 6361 6C5F"            /* (.N^NuèIs_local_ */
	$"766F 6C75 6D65 0000 4E56 FFB2 48E7 1F30"            /* volume..NVˇ≤HÁ.0 */
	$"266E 0008 2A2E 000C 246E 0010 282B 0020"            /* &n..*...$n..(+.  */
	$"2C2B 0024 2F05 2F06 2F04 4EBA 0DF4 2488"            /* ,+.$/././.N∫.Ù$à */
	$"4FEF 000C 6706 7000 6000 015E 486E FFBB"            /* OÔ..g.p.`..^Hnˇª */
	$"2F04 4EBA 05DE 3D40 FFBC A994 301F 3D40"            /* /.N∫.ﬁ=@ˇº©î0.=@ */
	$"FFB8 0C2E 0001 FFBB 5C4F 666E 554F 3F3C"            /* ˇ∏....ˇª\OfnUO?< */
	$"8000 2F3C 6D61 6373 4227 486E FFB6 486E"            /* Ä./<macsB'Hnˇ∂Hn */
	$"FFB2 7000 A823 301F 4227 A99B 554F 3F2E"            /* ˇ≤p.®#0.B'©õUO?. */
	$"FFB6 2F2E FFB2 4878 02E0 1F3C 0001 A81A"            /* ˇ∂/.ˇ≤Hx.‡.<..®. */
	$"301F 3E00 1F3C 0001 A99B 0C47 FFFF 660C"            /* 0.>..<..©õ.Gˇˇf. */
	$"554F A9AF 301F 3600 6000 00CE 554F 2F0A"            /* UO©Ø0.6.`..ŒUO/. */
	$"3F2E FFBC 2F05 1F3C 0001 4EBA 0650 301F"            /* ?.ˇº/..<..N∫.P0. */
	$"3600 3F07 A99A 6000 00B0 0C84 6164 7270"            /* 6.?.©ö`..∞.Ñadrp */
	$"6606 283C 4150 504C 3D6B 0016 FFBE 554F"            /* f.(<APPL=k..ˇæUO */
	$"3F2E FFBE 2F05 2F06 2F04 2F0A 4EBA 0AB6"            /* ?.ˇæ/./././.N∫.∂ */
	$"301F 3600 674A 42AE FFD2 3D7C 0001 FFDC"            /* 0.6.gJBÆˇ“=|..ˇ‹ */
	$"6034 302E FFD6 B06E FFBE 6726 3F2E FFD6"            /* `40.ˇ÷∞nˇæg&?.ˇ÷ */
	$"4EBA FEA2 4A00 544F 6718 554F 3F2E FFD6"            /* N∫˛¢J.TOg.UO?.ˇ÷ */
	$"2F05 2F06 2F04 2F0A 4EBA 0A7A 301F 3600"            /* /./././.N∫.z0.6. */
	$"670E 526E FFDC 41EE FFC0 A007 4A40 67C2"            /* g.Rnˇ‹AÓˇ¿†.J@g¬ */
	$"4A43 6734 4267 A998 554F 2F0A 3F2E FFBC"            /* JCg4Bg©òUO/.?.ˇº */
	$"2F05 1F3C 0001 4EBA 05B4 301F 3600 4A92"            /* /..<..N∫.¥0.6.Jí */
	$"6616 554F 2F0A 3F3C F060 2F05 1F3C 0001"            /* f.UO/.?<`/..<.. */
	$"4EBA 059A 301F 3600 3F2E FFB8 A998 4A43"            /* N∫.ö0.6.?.ˇ∏©òJC */
	$"6614 4A92 6710 2F12 2F05 2F06 2F04 4EBA"            /* f.Jíg././././.N∫ */
	$"0D42 4FEF 0010 3003 4CDF 0CF8 4E5E 4E75"            /* .BOÔ..0.Lﬂ.¯N^Nu */
	$"9447 6574 5F6E 6F72 6D61 6C5F 6669 6C65"            /* îGet_normal_file */
	$"5F69 636F 6E00 0000 4E56 0000 48E7 1E20"            /* _icon...NV..HÁ.  */
	$"2C2E 000C 246E 0010 554F A994 301F 3A00"            /* ,...$n..UO©î0.:. */
	$"4227 A99B 554F 2F2E 0008 1F3C 0001 700D"            /* B'©õUO/....<..p. */
	$"AA52 301F 3800 1F3C 0001 A99B 0C44 FFFF"            /* ™R0.8..<..©õ.Dˇˇ */
	$"660A 554F A9AF 301F 3600 603A 554F 2F0A"            /* f.UO©Ø0.6.`:UO/. */
	$"3F3C BFB9 2F06 1F3C 0001 4EBA 0500 301F"            /* ?<øπ/..<..N∫..0. */
	$"3600 0C43 FC18 6616 554F 2F0A 3F3C BF90"            /* 6..C¸.f.UO/.?<øê */
	$"2F06 1F3C 0001 4EBA 04E4 301F 3600 3F04"            /* /..<..N∫.‰0.6.?. */
	$"A99A 3F05 A998 3003 4CDF 0478 4E5E 4E75"            /* ©ö?.©ò0.Lﬂ.xN^Nu */
	$"9447 6574 5F63 7573 746F 6D5F 6669 6C65"            /* îGet_custom_file */
	$"5F69 636F 6E00 0000 4E56 FFFE 48E7 1C20"            /* _icon...NVˇ˛HÁ.  */
	$"3A2E 0008 282E 000A 246E 000E 7600 42A7"            /* :...(...$n..v.Bß */
	$"3045 2F08 2F04 4EBA 0BA8 2488 4FEF 000C"            /* 0E/./.N∫.®$àOÔ.. */
	$"662E 554F 3F05 2F04 4227 486E FFFE 2F0A"            /* f.UO?./.B'Hnˇ˛/. */
	$"7000 A823 301F 3600 6704 4292 6012 2F12"            /* p.®#0.6.g.Bí`./. */
	$"42A7 3045 2F08 2F04 4EBA 0C28 4FEF 0010"            /* Bß0E/./.N∫.(OÔ.. */
	$"3003 4CDF 0438 4E5E 4E75 8C4D 7946 696E"            /* 0.Lﬂ.8N^NuåMyFin */
	$"6446 6F6C 6465 7200 0000 4E56 FFF4 48E7"            /* dFolder...NVˇÙHÁ */
	$"1F30 246E 0008 266E 0010 2C2A 0030 3D6A"            /* .0$n..&n..,*.0=j */
	$"0016 FFFA 3A3C F061 486E FFF6 2F3C 6D61"            /* ..ˇ˙:<aHnˇˆ/<ma */
	$"6373 3F2E FFFA 4EBA FF60 4A40 4FEF 000A"            /* cs?.ˇ˙N∫ˇ`J@OÔ.. */
	$"660E BCAE FFF6 6608 3A3C F071 6000 00E0"            /* f.ºÆˇˆf.:<q`..‡ */
	$"7002 B0AA 0064 664A 7E05 7600 603C 486E"            /* p.∞™.dfJ~.v.`<Hn */
	$"FFFC 3043 2008 E788 41EC 0224 2F30 0800"            /* ˇ¸0C .ÁàAÏ.$/0.. */
	$"3F2E FFFA 4EBA FF22 3800 4FEF 000A 6618"            /* ?.ˇ˙N∫ˇ"8.OÔ..f. */
	$"BCAE FFFC 6612 3043 2A08 E78D 41EC 0224"            /* ºÆˇ¸f.0C*.ÁçAÏ.$ */
	$"2A30 5804 6000 0098 5243 B647 6DC0 6000"            /* *0X.`..òRC∂Gm¿`. */
	$"008E 202E FFF6 B0AA 0064 6646 7E1A 7600"            /* .é .ˇˆ∞™.dfF~.v. */
	$"603A 486E FFFC 3043 2008 E788 41EC 0154"            /* `:Hnˇ¸0C .ÁàAÏ.T */
	$"2F30 0800 3F2E FFFA 4EBA FECE 3800 4FEF"            /* /0..?.ˇ˙N∫˛Œ8.OÔ */
	$"000A 6616 BCAE FFFC 6610 3043 2A08 E78D"            /* ..f.ºÆˇ¸f.0C*.Áç */
	$"41EC 0154 2A30 5804 6044 5243 B647 6DC2"            /* AÏ.T*0X.`DRC∂Gm¬ */
	$"603C 7001 B0AA 0064 6606 3A3C F07C 602E"            /* `<p.∞™.df.:<|`. */
	$"102A 001E 0240 0008 6706 3A3C F077 601E"            /* .*...@..g.:<w`. */
	$"102A 001E 0240 0020 6706 3A3C F076 600E"            /* .*...@. g.:<v`. */
	$"102A 001E 0240 0004 6704 3A3C F074 2F2E"            /* .*...@..g.:<t/. */
	$"000C 2F3C 6630 6C64 3045 2F08 4EBA 0A22"            /* ../<f0ld0E/.N∫." */
	$"2688 4FEF 000C 6704 7800 606C 554F A994"            /* &àOÔ..g.x.`lUO©î */
	$"301F 3D40 FFF4 4267 A998 554F 2F0B 3F05"            /* 0.=@ˇÙBg©òUO/.?. */
	$"2F2E 000C 1F3C 0002 4EBA 02E2 301F 3800"            /* /....<..N∫.‚0.8. */
	$"6720 0C45 F061 671A 3A3C F061 554F 2F0B"            /* g .Eag.:<aUO/. */
	$"3F05 2F2E 000C 1F3C 0002 4EBA 02C0 301F"            /* ?./....<..N∫.¿0. */
	$"3800 3F2E FFF4 A998 4A44 661C 4A93 6718"            /* 8.?.ˇÙ©òJDf.Jìg. */
	$"2F13 2F2E 000C 2F3C 6630 6C64 3045 2F08"            /* /./.../<f0ld0E/. */
	$"4EBA 0A60 4FEF 0010 3004 4CDF 0CF8 4E5E"            /* N∫.`OÔ..0.Lﬂ.¯N^ */
	$"4E75 9647 6574 5F6E 6F72 6D61 6C5F 666F"            /* NuñGet_normal_fo */
	$"6C64 6572 5F69 636F 6E00 0000 4E56 FFBA"            /* lder_icon...NVˇ∫ */
	$"2F03 4A2C 0134 660A 486C 0134 4EBA 042A"            /* /.J,.4f.Hl.4N∫.* */
	$"584F 554F 3F2E 0008 2F2E 000A 486C 0134"            /* XOUO?.../...Hl.4 */
	$"486E FFBA 7001 AA52 301F 3600 6616 2F2E"            /* Hnˇ∫p.™R0.6.f./. */
	$"0012 2F2E 000E 486E FFBA 4EBA FCDC 3600"            /* ../...Hnˇ∫N∫¸‹6. */
	$"4FEF 000C 3003 261F 4E5E 4E75 9647 6574"            /* OÔ..0.&.N^NuñGet */
	$"5F63 7573 746F 6D5F 666F 6C64 6572 5F69"            /* _custom_folder_i */
	$"636F 6E00 0000 4E56 FE32 48E7 1830 266E"            /* con...NV˛2HÁ.0&n */
	$"000A 4293 42AE FF98 3D6E 0008 FF9C 426E"            /* ..BìBÆˇò=n..ˇúBn */
	$"FFA2 41EE FF86 A207 3600 6600 00DA 554F"            /* ˇ¢AÓˇÜ¢.6.f..⁄UO */
	$"3F2E FFCA 486E FE32 4EBA 1342 301F 3600"            /* ?.ˇ Hn˛2N∫.B0.6. */
	$"6600 00C4 554F 486E FE32 486C 012E 1F3C"            /* f..ƒUOHn˛2Hl...< */
	$"0001 4227 4EBA 0B36 101F 672C 554F A994"            /* ..B'N∫.6..g,UO©î */
	$"301F 3800 4267 A998 554F 2F0B 3F3C F062"            /* 0.8.Bg©òUO/.?<b */
	$"4878 FFFF 1F3C 0001 4EBA 0192 301F 3600"            /* Hxˇˇ.<..N∫.í0.6. */
	$"3F04 A998 6000 0080 3D6E FFCA FF4E 3D6E"            /* ?.©ò`..Ä=nˇ ˇN=n */
	$"FFC8 FF4C 45EE FF36 45EA 001C 4292 3D7C"            /* ˇ»ˇLEÓˇ6EÍ..Bí=| */
	$"0016 FF50 41EE FF36 A004 3600 6604 4A92"            /* ..ˇPAÓˇ6†.6.f.Jí */
	$"6E0E 3D7C 0015 FF50 41EE FF36 A004 3600"            /* n.=|..ˇPAÓˇ6†.6. */
	$"4A43 6642 4A92 6F3E 554F 2F0B 303C 0207"            /* JCfBJío>UO/.0<.. */
	$"ABC9 301F 3600 662E 554F 2F12 486E FF32"            /* ´…0.6.f.UO/.Hnˇ2 */
	$"4878 0100 4EBA 0B16 301F 3600 6618 554F"            /* Hx..N∫..0.6.f.UO */
	$"2F2E FF32 2F13 2F3C 4943 4E23 303C 0608"            /* /.ˇ2/./<ICN#0<.. */
	$"ABC9 301F 3600 3003 4CDF 0C18 4E5E 4E75"            /* ´…0.6.0.Lﬂ..N^Nu */
	$"8F47 6574 5F76 6F6C 756D 655F 6963 6F6E"            /* èGet_volume_icon */
	$"0000 4E56 FFFC 48E7 1F20 2A2E 0008 246E"            /* ..NVˇ¸HÁ. *...$n */
	$"000C 383C F060 14BC 0002 203C 6170 7072"            /* ..8<`.º.. <appr */
	$"43EE FFFC A1AD 2288 3E00 6638 7001 C0AE"            /* CÓˇ¸°≠"à>.f8p.¿Æ */
	$"FFFC 6730 7C0B 3606 5343 6022 3043 2008"            /* ˇ¸g0|.6.SC`"0C . */
	$"E788 41EC 0006 BAB0 0800 6610 3043 2808"            /* ÁàAÏ..∫∞..f.0C(. */
	$"E78C 41EC 0006 2830 4804 603A 5343 4A43"            /* ÁåAÏ..(0H.`:SCJC */
	$"6CDA 6032 7C07 3606 5343 6026 3043 2008"            /* l⁄`2|.6.SC`&0C . */
	$"E788 41EC 005E BAB0 0800 6614 3043 2808"            /* ÁàAÏ.^∫∞..f.0C(. */
	$"E78C 41EC 005E 2830 4804 14BC 0001 6006"            /* ÁåAÏ.^(0H..º..`. */
	$"5343 4A43 6CD6 0C44 F060 662E 7C13 3606"            /* SCJCl÷.D`f.|.6. */
	$"5343 6022 3043 2008 E788 41EC 0096 BAB0"            /* SC`"0C .ÁàAÏ.ñ∫∞ */
	$"0800 6610 3043 2808 E78C 41EC 0096 2830"            /* ..f.0C(.ÁåAÏ.ñ(0 */
	$"4804 6006 5343 4A43 6CDA 3004 4CDF 04F8"            /* H.`.SCJCl⁄0.Lﬂ.¯ */
	$"4E5E 4E75 9446 696E 645F 6765 6E65 7269"            /* N^NuîFind_generi */
	$"635F 6963 6F6E 5F69 6400 0000 4E56 FFF2"            /* c_icon_id...NVˇÚ */
	$"48E7 1030 246E 0010 486E FFF6 486E FFF2"            /* HÁ.0$n..HnˇˆHnˇÚ */
	$"2F2E 000A 4EBA 0574 2F0A 303C 0207 ABC9"            /* /...N∫.t/.0<..´… */
	$"301F 3600 4FEF 000A 6600 0086 3D6E 000E"            /* 0.6.OÔ..f..Ü=n.. */
	$"FFFA 1D7C 0001 FFFC 1D7C 0001 FFFD 1D6E"            /* ˇ˙.|..ˇ¸.|..ˇ˝.n */
	$"0008 FFFE 47FA 008E 554F 2F12 2F2E FFF2"            /* ..ˇ˛G˙.éUO/./.ˇÚ */
	$"2F0B 486E FFFA 303C 080A ABC9 301F 3600"            /* /.Hnˇ˙0<..´…0.6. */
	$"662A 4AAE FFF6 6724 4A2E FFFC 671E 4A2E"            /* f*JÆˇˆg$J.ˇ¸g.J. */
	$"FFFD 6718 554F 2F12 2F2E FFF6 2F0B 486E"            /* ˇ˝g.UO/./.ˇˆ/.Hn */
	$"FFFA 303C 080A ABC9 301F 3600 4A43 6620"            /* ˇ˙0<..´…0.6.JCf  */
	$"4A2E FFFC 671A 4A2E FFFD 6714 363C FC18"            /* J.ˇ¸g.J.ˇ˝g.6<¸. */
	$"554F 2F12 4227 303C 0302 ABC9 301F 4292"            /* UO/.B'0<..´…0.Bí */
	$"3F43 002E 4CDF 0C08 4E5E 205F 4FEF 000C"            /* ?C..Lﬂ..N^ _OÔ.. */
	$"4ED0 8F46 495F 4745 5449 434F 4E53 5549"            /* N–èFI_GETICONSUI */
	$"5445 0000 4E56 FFFA 48E7 1F30 262E 0010"            /* TE..NVˇ˙HÁ.0&... */
	$"266E 000C 246E 0008 7800 7A01 7C00 7E01"            /* &n..$n..x.z.|.~. */
	$"0C83 6963 6C38 670A 0C83 6963 6C34 6702"            /* .Éicl8g..Éicl4g. */
	$"7E00 4A47 6708 4A2A 0002 6702 7C01 4A46"            /* ~.JGg.J*..g.|.JF */
	$"6638 426E FFFE 3D7C 0001 FFFC 0C83 6963"            /* f8Bnˇ˛=|..ˇ¸.Éic */
	$"7338 670C 0C83 6963 7334 6704 426E FFFC"            /* s8g..Éics4g.Bnˇ¸ */
	$"4A6E FFFC 670C 4A2A 0003 6706 3D7C 0001"            /* Jnˇ¸g.J*..g.=|.. */
	$"FFFE 4A6E FFFE 6602 7A00 1805 665A 0C2A"            /* ˇ˛Jnˇ˛f.z...fZ.* */
	$"0001 0004 660E 594F 2F03 3F12 A81F 205F"            /* ....f.YO/.?.®. _ */
	$"2688 600C 594F 2F03 3F12 A9A0 205F 2688"            /* &à`.YO/.?.©† _&à */
	$"4A93 6716 554F 2F0B 4EBA 085C 301F 3D40"            /* Jìg.UO/.N∫.\0.=@ */
	$"FFFA 4A6E FFFA 6702 4293 4A93 671A 0C83"            /* ˇ˙Jnˇ˙g.BìJìg..É */
	$"4943 4E23 6606 422A 0002 600C 0C83 6963"            /* ICN#f.B*..`..Éic */
	$"7323 6604 422A 0003 426F 0036 4CDF 0CF8"            /* s#f.B*..Bo.6Lﬂ.¯ */
	$"4E5E 205F 4FEF 000C 4ED0 8A47 4554 5F31"            /* N^ _OÔ..N–äGET_1 */
	$"5F49 434F 4E00 0000 4E56 FEFA 48E7 1820"            /* _ICON...NV˛˙HÁ.  */
	$"246E 0008 422E FF00 554F A994 301F 3800"            /* $n..B.ˇ.UO©î0.8. */
	$"554F 3F3C 8000 2F3C 6D61 6373 4227 486E"            /* UO?<Ä./<macsB'Hn */
	$"FEFE 486E FEFA 7000 A823 301F 4227 A99B"            /* ˛˛Hn˛˙p.®#0.B'©õ */
	$"554F 3F2E FEFE 2F2E FEFA 4878 02E0 1F3C"            /* UO?.˛˛/.˛˙Hx.‡.< */
	$"0001 A81A 301F 3600 1F3C 0001 A99B 0C43"            /* ..®.0.6..<..©õ.C */
	$"FFFF 672A 486E FF00 2F3C 0005 2BF2 4EBA"            /* ˇˇg*Hnˇ./<..+ÚN∫ */
	$"07D8 4A2E FF00 660E 486E FF00 2F3C 0005"            /* .ÿJ.ˇ.f.Hnˇ./<.. */
	$"1194 4EBA 07C4 3F03 A99A 3F04 A998 0C2E"            /* .îN∫.ƒ?.©ö?.©ò.. */
	$"0020 FF00 641A 4A2E FF00 6714 41EE FF00"            /* . ˇ.d.J.ˇ.g.AÓˇ. */
	$"224A 7000 102E FF00 5240 48C0 A22E 600A"            /* "Jp...ˇ.R@H¿¢.`. */
	$"41EC 0000 224A 7006 A22E 4CDF 0418 4E5E"            /* AÏ.."Jp.¢.Lﬂ..N^ */
	$"4E75 9247 6574 5F69 636F 6E5F 6669 6C65"            /* NuíGet_icon_file */
	$"5F6E 616D 6500 0000 4E56 FF86 2F04 2F03"            /* _name...NVˇÜ/./. */
	$"42AE FF98 3D6E 0008 FF9C 426E FFA2 41EE"            /* BÆˇò=n..ˇúBnˇ¢AÓ */
	$"FF86 A207 3800 7600 4A44 6608 4A6E FFCA"            /* ˇÜ¢.8.v.JDf.Jnˇ  */
	$"6F02 7601 1003 261F 281F 4E5E 4E75 8E49"            /* o.v...&.(.N^NuéI */
	$"735F 766F 6C5F 656A 6563 7465 6400 0000"            /* s_vol_ejected... */
	$"4E56 FFBA 2F03 41EE FFBA 2D48 FFEE 7014"            /* NVˇ∫/.AÓˇ∫-HˇÓp. */
	$"2D40 FFF2 3D6E 0008 FFE4 42AE FFE0 41EE"            /* -@ˇÚ=n..ˇ‰BÆˇ‡AÓ */
	$"FFCE 7030 A260 4AAE FFC4 57C0 4400 1600"            /* ˇŒp0¢`JÆˇƒW¿D... */
	$"1003 261F 4E5E 4E75 8F49 735F 6C6F 6361"            /* ..&.N^NuèIs_loca */
	$"6C5F 766F 6C75 6D65 0000 4E56 0000 2F03"            /* l_volume..NV../. */
	$"202E 0008 0480 4943 4E23 6722 0480 2020"            /*  ....ÄICN#g".Ä   */
	$"1E11 671E 5980 671E 0480 0000 06EB 671A"            /* ..g.YÄg..Ä...Îg. */
	$"0480 0000 0011 6716 5980 6716 6018 7601"            /* .Ä....g.YÄg.`.v. */
	$"6016 7602 6012 7603 600E 7604 600A 7605"            /* `.v.`.v.`.v.`.v. */
	$"6006 7606 6002 7600 3003 261F 4E5E 4E75"            /* `.v.`.v.0.&.N^Nu */
	$"8F52 6573 4963 6F6E 546F 4454 4963 6F6E"            /* èResIconToDTIcon */
	$"0000 4E56 FFF8 48E7 1F20 282E 0010 246E"            /* ..NVˇ¯HÁ. (...$n */
	$"0008 7600 7A00 7E01 426E FFFE 3D7C 0001"            /* ..v.z.~.Bnˇ˛=|.. */
	$"FFFC 0C84 6963 6C38 670C 0C84 6963 6C34"            /* ˇ¸.Ñicl8g..Ñicl4 */
	$"6704 426E FFFC 4A6E FFFC 670C 4A2A 000A"            /* g.Bnˇ¸Jnˇ¸g.J*.. */
	$"6706 3D7C 0001 FFFE 4A6E FFFE 6638 426E"            /* g.=|..ˇ˛Jnˇ˛f8Bn */
	$"FFFA 3D7C 0001 FFF8 0C84 6963 7338 670C"            /* ˇ˙=|..ˇ¯.Ñics8g. */
	$"0C84 6963 7334 6704 426E FFF8 4A6E FFF8"            /* .Ñics4g.Bnˇ¯Jnˇ¯ */
	$"670C 4A2A 000B 6706 3D7C 0001 FFFA 4A6E"            /* g.J*..g.=|..ˇ˙Jn */
	$"FFFA 6602 7E00 1A07 2F04 4EBA FF0E 3C00"            /* ˇ˙f.~.../.N∫ˇ.<. */
	$"57C0 4400 4880 8A00 584F 6646 554F 42A7"            /* W¿D.HÄä.XOfFUOBß */
	$"3F2A 0008 3F06 2F12 2F2A 0004 2F2E 000C"            /* ?*..?././*...... */
	$"4EBA 0AF0 301F 3600 661A 0C84 4943 4E23"            /* N∫.0.6.f..ÑICN# */
	$"6606 422A 000A 600C 0C84 6963 7323 6604"            /* f.B*..`..Ñics#f. */
	$"422A 000B 0C43 EC6C 6706 0C43 FFCE 6602"            /* B*...CÏlg..CˇŒf. */
	$"7600 3F43 0034 4CDF 04F8 4E5E 205F 4FEF"            /* v.?C.4Lﬂ.¯N^ _OÔ */
	$"000C 4ED0 8C41 4444 4F4E 4544 5449 434F"            /* ..N–åADDONEDTICO */
	$"4E00 0000 4E56 FFEC 48E7 1030 266E 0008"            /* N...NVˇÏHÁ.0&n.. */
	$"486E FFF0 486E FFEC 2F2E 0014 4EBA 00DC"            /* HnˇHnˇÏ/...N∫.‹ */
	$"02AE FF00 FFFF FFEC 02AE FF00 FFFF FFF0"            /* .Æˇ.ˇˇˇÏ.Æˇ.ˇˇˇ */
	$"2F0B 303C 0207 ABC9 301F 3600 4FEF 000A"            /* /.0<..´…0.6.OÔ.. */
	$"6600 0094 45FA FEBC 200A 6604 7694 6062"            /* f..îE˙˛º .f.vî`b */
	$"1D7C 0001 FFFE 1D7C 0001 FFFF 2D6E 0010"            /* .|..ˇ˛.|..ˇˇ-n.. */
	$"FFF4 2D6E 000C FFF8 3D6E 0018 FFFC 554F"            /* ˇÙ-n..ˇ¯=n..ˇ¸UO */
	$"2F13 2F2E FFEC 2F0A 486E FFF4 303C 080A"            /* /./.ˇÏ/.HnˇÙ0<.. */
	$"ABC9 301F 3600 662A 4AAE FFF0 6724 4A2E"            /* ´…0.6.f*JÆˇg$J. */
	$"FFFE 671E 4A2E FFFF 6718 554F 2F13 2F2E"            /* ˇ˛g.J.ˇˇg.UO/./. */
	$"FFF0 2F0A 486E FFF4 303C 080A ABC9 301F"            /* ˇ/.HnˇÙ0<..´…0. */
	$"3600 4A43 6620 4A2E FFFE 671A 4A2E FFFF"            /* 6.JCf J.ˇ˛g.J.ˇˇ */
	$"6714 363C FC18 554F 2F13 4227 303C 0302"            /* g.6<¸.UO/.B'0<.. */
	$"ABC9 301F 4293 3F43 003A 4CDF 0C08 4E5E"            /* ´…0.Bì?C.:Lﬂ..N^ */
	$"205F 4FEF 0012 4ED0 8E44 5447 4554 4943"            /*  _OÔ..N–éDTGETIC */
	$"4F4E 5355 4954 4500 0000 4E56 0000 202E"            /* ONSUITE...NV.. . */
	$"0008 226E 000C 206E 0010 0C80 8000 FF00"            /* .."n.. n...ÄÄ.ˇ. */
	$"660E 22BC 0000 FF00 20BC 0000 00FF 6030"            /* f."º..ˇ. º...ˇ`0 */
	$"0C80 8000 00FF 660E 22BC 0000 00FF 20BC"            /* .ÄÄ..ˇf."º...ˇ º */
	$"0000 FF00 601A 0C80 8000 0400 660E 22BC"            /* ..ˇ.`..ÄÄ...f."º */
	$"0000 0500 20BC 0000 00FF 6004 2280 4290"            /* .... º...ˇ`."ÄBê */
	$"4E5E 4E75 9245 7870 616E 644D 6574 6153"            /* N^NuíExpandMetaS */
	$"656C 6563 746F 7200 0000 4E56 0000 7400"            /* elector...NV..t. */
	$"6052 7014 C1C2 41EC 0250 42B0 0800 7014"            /* `Rp.¡¬AÏ.PB∞..p. */
	$"C1C2 41EC 0250 42B0 0804 7014 C1C2 41EC"            /* ¡¬AÏ.PB∞..p.¡¬AÏ */
	$"0250 42B0 0808 7014 C1C2 41EC 0250 42B0"            /* .PB∞..p.¡¬AÏ.PB∞ */
	$"080C 3002 5340 7214 C3C2 41EC 0250 3180"            /* ..0.S@r.√¬AÏ.P1Ä */
	$"1810 3002 5240 7214 C3C2 41EC 0250 3180"            /* ..0.R@r.√¬AÏ.P1Ä */
	$"1812 5242 0C42 0014 6DA8 397C 0013 024C"            /* ..RB.B..m®9|...L */
	$"4E5E 4E75 8B46 4949 6E69 7443 6163 6865"            /* N^NuãFIInitCache */
	$"0000 4E56 0000 2F03 362E 0008 B66C 024E"            /* ..NV../.6...∂l.N */
	$"6776 7014 C1C3 41EC 0250 7214 C3C3 43EC"            /* gvp.¡√AÏ.Pr.√√CÏ */
	$"0250 7414 C5F1 1810 43EC 0250 33B0 0812"            /* .Pt.≈Ò..CÏ.P3∞.. */
	$"2812 B66C 024C 6610 7014 C1C3 41EC 0250"            /* (.∂l.Lf.p.¡√AÏ.P */
	$"3970 0810 024C 6020 7014 C1C3 41EC 0250"            /* 9p...L` p.¡√AÏ.P */
	$"7214 C3C3 43EC 0250 7414 C5F1 1812 43EC"            /* r.√√CÏ.Pt.≈Ò..CÏ */
	$"0250 33B0 0810 2810 7014 C1C3 41EC 0250"            /* .P3∞..(.p.¡√AÏ.P */
	$"31AC 024E 0812 7014 C1EC 024E 41EC 0250"            /* 1¨.N..p.¡Ï.NAÏ.P */
	$"3183 0810 3943 024E 261F 4E5E 4E75 8F46"            /* 1É..9C.N&.N^NuèF */
	$"494D 616B 6543 656C 6C46 6972 7374 0000"            /* IMakeCellFirst.. */
	$"4E56 FFFC 48E7 1E00 2C2E 0008 2A2E 000C"            /* NVˇ¸HÁ..,...*... */
	$"282E 0010 42AE FFFC 302C 024C B06C 024E"            /* (...BÆˇ¸0,.L∞l.N */
	$"6604 4EBA FEC6 362C 024E 7014 C1C3 41EC"            /* f.N∫˛∆6,.Np.¡√AÏ */
	$"0250 BCB0 0800 662C 7014 C1C3 41EC 0250"            /* .Pº∞..f,p.¡√AÏ.P */
	$"BAB0 0804 661E 7014 C1C3 41EC 0250 B8B0"            /* ∫∞..f.p.¡√AÏ.P∏∞ */
	$"0808 6610 7014 C1C3 41EC 0250 2D70 080C"            /* ..f.p.¡√AÏ.P-p.. */
	$"FFFC 6014 B66C 024C 670E 7014 C1C3 41EC"            /* ˇ¸`.∂l.Lg.p.¡√AÏ */
	$"0250 3630 0812 60B2 4AAE FFFC 6716 4A84"            /* .P60..`≤JÆˇ¸g.JÑ */
	$"670A 486E FFFC 4EBA 018C 584F 3F03 4EBA"            /* g.Hnˇ¸N∫.åXO?.N∫ */
	$"FED2 544F 206E FFFC 4CDF 0078 4E5E 4E75"            /* ˛“TO nˇ¸Lﬂ.xN^Nu */
	$"8F46 495F 6361 6368 655F 7365 6172 6368"            /* èFI_cache_search */
	$"0000 4E56 0000 2F04 2F03 282E 0010 302C"            /* ..NV.././.(...0, */
	$"024C B06C 024E 6604 4EBA FE20 4A84 670E"            /* .L∞l.Nf.N∫˛ JÑg. */
	$"486E 0014 4EBA 013E 3600 584F 6002 7600"            /* Hn..N∫.>6.XO`.v. */
	$"4A43 6600 0086 7014 C1EC 024C 41EC 0250"            /* JCf..Üp.¡Ï.LAÏ.P */
	$"4AB0 080C 672C 7014 C1EC 024C 41EC 0250"            /* J∞..g,p.¡Ï.LAÏ.P */
	$"4AB0 0808 671C 554F 7014 C1EC 024C 41EC"            /* J∞..g.UOp.¡Ï.LAÏ */
	$"0250 2F30 080C 1F3C 0001 303C 0302 ABC9"            /* .P/0...<..0<..´… */
	$"301F 7014 C1EC 024C 41EC 0250 21AE 0014"            /* 0.p.¡Ï.LAÏ.P!Æ.. */
	$"080C 7014 C1EC 024C 41EC 0250 21AE 0008"            /* ..p.¡Ï.LAÏ.P!Æ.. */
	$"0800 7014 C1EC 024C 41EC 0250 21AE 000C"            /* ..p.¡Ï.LAÏ.P!Æ.. */
	$"0804 7014 C1EC 024C 41EC 0250 2184 0808"            /* ..p.¡Ï.LAÏ.P!Ñ.. */
	$"3F2C 024C 4EBA FDFC 544F 261F 281F 4E5E"            /* ?,.LN∫˝¸TO&.(.N^ */
	$"4E75 9146 495F 7374 6F72 655F 696E 5F63"            /* NuëFI_store_in_c */
	$"6163 6865 0000 4E56 0000 2F0A 2F03 246E"            /* ache..NV.././.$n */
	$"000C 4A92 671A 2052 4A90 6604 2F12 A9A2"            /* ..Jíg. RJêf./.©¢ */
	$"554F 2F0A 4EBA 0120 301F 3600 6702 4292"            /* UO/.N∫. 0.6.g.Bí */
	$"426F 001C 261F 245F 4E5E 205F 4FEF 000C"            /* Bo..&.$_N^ _OÔ.. */
	$"4ED0 8D43 4F50 595F 4F4E 455F 4943 4F4E"            /* N–çCOPY_ONE_ICON */
	$"0000 4E56 0000 2F0A 2F03 45FA FFAA 554F"            /* ..NV.././.E˙ˇ™UO */
	$"2F2E 0008 4878 FFFF 2F0A 42A7 303C 080A"            /* /...Hxˇˇ/.Bß0<.. */
	$"ABC9 301F 3600 3003 261F 245F 4E5E 4E75"            /* ´…0.6.0.&.$_N^Nu */
	$"9146 495F 636F 7079 5F65 6163 685F 6963"            /* ëFI_copy_each_ic */
	$"6F6E 0000 4E56 0000 2F0A 2F03 246E 0008"            /* on..NV.././.$n.. */
	$"554F 2F0A 4EBA 00A0 301F 3600 6620 2F12"            /* UO/.N∫.†0.6.f /. */
	$"4EBA FFA0 3600 584F 6716 554F 2F12 1F3C"            /* N∫ˇ†6.XOg.UO/..< */
	$"0001 303C 0302 ABC9 301F 4292 6002 4292"            /* ..0<..´…0.Bí`.Bí */
	$"3003 261F 245F 4E5E 4E75 8E46 495F 636C"            /* 0.&.$_N^NuéFI_cl */
	$"6F6E 655F 7375 6974 6500 0000 206F 000C"            /* one_suite... o.. */
	$"226F 0008 7000 1018 4840 1019 4A2F 0004"            /* "o..p...H@..J/.. */
	$"670E 4A2F 0006 6704 A43C 6010 A03C 600C"            /* g.J/..g.§<`.†<`. */
	$"4A2F 0006 6704 A63C 6002 A23C 0A00 0001"            /* J/..g.¶<`.¢<.... */
	$"1F40 0010 205F 4FEF 000C 4ED0 205F 301F"            /* .@.. _OÔ..N– _0. */
	$"4297 4640 B078 01D2 640A E548 2278 011C"            /* BóF@∞x.“d.ÂH"x.. */
	$"2EB1 0000 4ED0 206F 0004 2050 A9E1 226F"            /* .±..N– o.. P©·"o */
	$"0004 2288 3F40 0008 2E9F 4E75 206F 000C"            /* .."à?@...üNu o.. */
	$"202F 0004 A9E3 3F40 0010 226F 0008 2288"            /*  /..©„?@.."o.."à */
	$"205F 4FEF 000C 4ED0 4E56 0000 594F 2F3C"            /*  _OÔ..N–NV..YO/< */
	$"5354 5223 3F2E 000A A9A0 226E 000C 4211"            /* STR#?...©†"n..B. */
	$"201F 6722 2040 2050 3018 322E 0008 6716"            /*  .g" @ P0.2...g. */
	$"B240 6212 7000 5341 6706 1018 D1C0 60F6"            /* ≤@b.p.SAg...—¿`ˆ */
	$"1010 5240 A02E 4E5E 205F 508F 4ED0 4E56"            /* ..R@†.N^ _PèN–NV */
	$"FF86 48E7 1C00 2D6E 000A FF98 3D6E 0008"            /* ˇÜHÁ..-n..ˇò=n.. */
	$"FF9C 422E FFA0 7801 7A00 7002 2D40 FFB6"            /* ˇúB.ˇ†x.z.p.-@ˇ∂ */
	$"3D44 FFA2 41EE FF86 A20C 3600 6616 0CAE"            /* =Dˇ¢AÓˇÜ¢.6.f..Æ */
	$"464E 4452 FFA6 660C 0CAE 4552 494B FFAA"            /* FNDRˇ¶f..ÆERIKˇ™ */
	$"6602 7A01 5244 4A43 6604 4A05 67CC 3003"            /* f.z.RDJCf.J.gÃ0. */
	$"4CDF 0038 4E5E 4E75 9247 6574 4465 736B"            /* Lﬂ.8N^NuíGetDesk */
	$"746F 7046 696C 654E 616D 6500 0000 4E56"            /* topFileName...NV */
	$"FF80 48E7 1C30 266E 0012 382E 0010 2A2E"            /* ˇÄHÁ.0&n..8...*. */
	$"000C 246E 0008 7014 2D40 FF80 554F 2F0B"            /* ..$n..p.-@ˇÄUO/. */
	$"3F04 486E FF84 486E FF80 4EBA 0566 301F"            /* ?.HnˇÑHnˇÄN∫.f0. */
	$"3600 6648 202E FF86 0280 0000 1000 673A"            /* 6.fH .ˇÜ.Ä....g: */
	$"2D4B FFAA 3D44 FFAE 41EE FF98 702E A060"            /* -Kˇ™=DˇÆAÓˇòp.†` */
	$"3600 7001 C0AE FFB4 4A80 57C0 4400 1480"            /* 6.p.¿Æˇ¥JÄW¿D..Ä */
	$"0C43 FFCE 660C 41EE FF98 7020 A260 3600"            /* .CˇŒf.AÓˇòp ¢`6. */
	$"4212 2045 30AE FFB0 6002 76CE 3F43 00AA"            /* B. E0Æˇ∞`.vŒ?C.™ */
	$"4CDF 0C38 4E5E 205F 4FEF 000E 4ED0 8644"            /* Lﬂ.8N^ _OÔ..N–ÜD */
	$"544F 5045 4E00 0000 4E56 0000 48E7 1E30"            /* TOPEN...NV..HÁ.0 */
	$"2C2E 0008 266E 000C 383C EC6C 554F 2F3C"            /* ,...&n..8<ÏlUO/< */
	$"424E 444C A80D 301F 3A00 7601 4293 6030"            /* BNDL®.0.:.v.Bì`0 */
	$"594F 2F3C 424E 444C 3F03 A80E 205F 2448"            /* YO/<BNDL?.®. _$H */
	$"200A 671A 2052 BC90 6614 2052 4A68 0006"            /*  .g. Rºêf. RJh.. */
	$"6D0C 2052 4A68 000C 6D04 268A 7800 5243"            /* m. RJh..m.&äx.RC */
	$"B645 6E04 4A93 67C8 3004 4CDF 0C78 4E5E"            /* ∂En.Jìg»0.Lﬂ.xN^ */
	$"4E75 9646 696E 6442 756E 646C 6547 6976"            /* NuñFindBundleGiv */
	$"656E 4372 6561 746F 7200 0000 4E56 0000"            /* enCreator...NV.. */
	$"48E7 0610 2C2E 0008 2A2E 000C 266E 0010"            /* HÁ..,...*...&n.. */
	$"343C EC6C 2245 2251 5089 7200 4293 6020"            /* 4<Ïl"E"QPâr.Bì`  */
	$"BC91 660C 4A69 0004 6D06 2689 7400 6010"            /* ºëf.Ji..m.&ât.`. */
	$"3029 0004 5240 48C0 E588 5C80 D3C0 5241"            /* 0)..R@H¿Âà\Ä”¿RA */
	$"2045 2050 3028 0006 5240 B240 6C04 4A93"            /*  E P0(..R@≤@l.Jì */
	$"67CE 3002 4CDF 0860 4E5E 4E75 9046 696E"            /* gŒ0.Lﬂ.`N^NuêFin */
	$"6454 7970 6549 6E42 756E 646C 6500 0000"            /* dTypeInBundle... */
	$"4E56 0000 48E7 1F30 2C2E 0008 2E2E 000C"            /* NV..HÁ.0,....... */
	$"262E 0010 3A3C EC6C 7800 2646 5C8B 2043"            /* &...:<Ïlx.&F\ã C */
	$"4250 602A 594F 2F3C 4652 4546 3F2B 0002"            /* BP`*YO/<FREF?+.. */
	$"A81F 205F 2448 200A 6710 2052 BE90 660A"            /* ®. _$H .g. Ræêf. */
	$"2052 2243 32A8 0004 7A00 588B 5244 2046"            /*  R"C2®..z.XãRD F */
	$"B868 0004 6E06 2043 4A50 67C8 3005 4CDF"            /* ∏h..n. CJPg»0.Lﬂ */
	$"0CF8 4E5E 4E75 9247 6574 4C6F 6361 6C49"            /* .¯N^NuíGetLocalI */
	$"4446 726F 6D46 5245 4600 0000 4E56 0000"            /* DFromFREF...NV.. */
	$"2F0B 2F06 242E 0008 3C2E 000C 266E 000E"            /* /./.$...<...&n.. */
	$"323C EC6C 7000 2242 5C89 4253 600E BC51"            /* 2<Ïlp."B\âBS`.ºQ */
	$"6606 36A9 0002 7200 5889 5240 2042 B068"            /* f.6©..r.XâR@ B∞h */
	$"0004 6E04 4A53 67E6 3001 2C1F 265F 4E5E"            /* ..n.JSgÊ0.,.&_N^ */
	$"4E75 9847 6574 4963 6F6E 5273 7263 4944"            /* NuòGetIconRsrcID */
	$"4672 6F6D 4C6F 6361 6C49 4400 0000 4E56"            /* FromLocalID...NV */
	$"0000 2F03 302E 0008 0C40 0006 6248 D040"            /* ../.0....@..bH–@ */
	$"303B 0006 4EFB 0002 003E 000E 0016 001E"            /* 0;..N˚...>...... */
	$"0026 002E 0036 263C 4943 4E23 602A 263C"            /* .&...6&<ICN#`*&< */
	$"6963 6C34 6022 263C 6963 6C38 601A 263C"            /* icl4`"&<icl8`.&< */
	$"6963 7323 6012 263C 6963 7334 600A 263C"            /* ics#`.&<ics4`.&< */
	$"6963 7338 6002 7600 2003 261F 4E5E 4E75"            /* ics8`.v. .&.N^Nu */
	$"8F44 5449 636F 6E54 6F52 6573 4963 6F6E"            /* èDTIconToResIcon */
	$"0000 4E56 FEEE 48E7 1F20 246E 0018 42AE"            /* ..NV˛ÓHÁ. $n..BÆ */
	$"FFFC 4292 554F 2F2E 0008 3F2E 000C 486E"            /* ˇ¸BíUO/...?...Hn */
	$"FFF2 4EBA 035E 301F 3600 6600 0142 486E"            /* ˇÚN∫.^0.6.f..BHn */
	$"FEF2 3F2E FFF2 4EBA FC76 3600 5C4F 6600"            /* ˛Ú?.ˇÚN∫¸v6.\Of. */
	$"0120 554F A994 301F 3C00 4227 A99B 554F"            /* . UO©î0.<.B'©õUO */
	$"3F2E FFF2 4878 0002 486E FEF2 1F3C 0001"            /* ?.ˇÚHx..Hn˛Ú.<.. */
	$"A81A 301F 3800 1F3C 0001 A99B 0C44 FFFF"            /* ®.0.8..<..©õ.Dˇˇ */
	$"6700 00E6 486E FFFC 2F2E 0010 4EBA FD3A"            /* g..ÊHnˇ¸/...N∫˝: */
	$"3600 504F 6600 00C8 206E FFFC A069 1E00"            /* 6.POf..» nˇ¸†i.. */
	$"206E FFFC A029 486E FFF8 2F2E FFFC 2F3C"            /*  nˇ¸†)Hnˇ¯/.ˇ¸/< */
	$"4652 4546 4EBA FD96 3600 4FEF 000C 6600"            /* FREFN∫˝ñ6.OÔ..f. */
	$"0096 486E FEF0 2F2E 0014 2F2E FFF8 4EBA"            /* .ñHn˛/.../.ˇ¯N∫ */
	$"FDF0 3600 4FEF 000C 667C 486E FFF8 2F2E"            /* ˝6.OÔ..f|Hnˇ¯/. */
	$"FFFC 2F3C 4943 4E23 4EBA FD62 3600 4FEF"            /* ˇ¸/<ICN#N∫˝b6.OÔ */
	$"000C 6662 486E FEEE 3F2E FEF0 2F2E FFF8"            /* ..fbHn˛Ó?.˛/.ˇ¯ */
	$"4EBA FE3A 3600 4FEF 000A 664A 3F2E 000E"            /* N∫˛:6.OÔ..fJ?... */
	$"4EBA FE8C 2A00 544F 673C 594F 2F05 3F2E"            /* N∫˛å*.TOg<YO/.?. */
	$"FEEE A81F 205F 2D48 FFF4 4AAE FFF4 6722"            /* ˛Ó®. _-HˇÙJÆˇÙg" */
	$"554F 486E FFF4 4EBA FB0E 301F 554F 3EB8"            /* UOHnˇÙN∫˚.0.UO>∏ */
	$"0220 301F 6606 24AE FFF4 600A 363C EC6C"            /* . 0.f.$ÆˇÙ`.6<Ïl */
	$"6004 363C EC6C 206E FFFC 1007 A06A 3F06"            /* `.6<Ïl nˇ¸..†j?. */
	$"A998 3F04 A99A 6008 554F A9AF 301F 3600"            /* ©ò?.©ö`.UO©Ø0.6. */
	$"4A43 670A 0C43 FF94 6704 363C EC6C 3003"            /* JCg..Cˇîg.6<Ïl0. */
	$"4CDF 04F8 4E5E 4E75 9647 6574 4963 6F6E"            /* Lﬂ.¯N^NuñGetIcon */
	$"4672 6F6D 4465 736B 746F 7046 696C 6500"            /* FromDesktopFile. */
	$"0000 4E56 FF94 48E7 1F30 266E 0018 3A2E"            /* ..NVˇîHÁ.0&n..:. */
	$"0014 2E2E 0010 2C2E 000C 246E 0008 4292"            /* ......,...$n..Bí */
	$"554F 2F0B 3F2E 0016 486E FF96 486E FF95"            /* UO/.?...HnˇñHnˇï */
	$"4EBA FB5C 301F 3800 6600 00B2 4A2E FF95"            /* N∫˚\0.8.f..≤J.ˇï */
	$"6600 00A4 3005 0C40 0006 6244 D040 303B"            /* f..§0..@..bD–@0; */
	$"0006 4EFB 0002 003A 000E 0016 001E 0026"            /* ..N˚...:.......& */
	$"002A 0032 263C 0000 0100 6028 263C 0000"            /* .*.2&<....`(&<.. */
	$"0200 6020 263C 0000 0400 6018 7640 6014"            /* ..` &<....`.v@`. */
	$"263C 0000 0080 600C 263C 0000 0100 6004"            /* &<...Ä`.&<....`. */
	$"7A00 7600 4A83 674A 2003 A122 2488 673E"            /* z.v.JÉgJ .°"$àg> */
	$"2052 A029 3D6E FF96 FFB0 42AE FFB4 2052"            /*  R†)=nˇñˇ∞BÆˇ¥ R */
	$"2D50 FFB8 2D43 FFBC 1D45 FFC5 2D47 FFCC"            /* -Pˇ∏-Cˇº.Eˇ≈-GˇÃ */
	$"2D46 FFD0 41EE FF98 7023 A260 3800 2052"            /* -Fˇ–AÓˇòp#¢`8. R */
	$"A02A 4A44 672E 2052 A023 4292 6026 7894"            /* †*JDg. R†#Bí`&xî */
	$"6022 78CE 601E 383C EC6C 6018 2F0A 2F06"            /* `"xŒ`.8<Ïl`././. */
	$"2F07 3F05 3F2E 0016 2F0B 4EBA FD76 3800"            /* /.?.?.../.N∫˝v8. */
	$"4FEF 0014 3F44 00A4 4CDF 0CF8 4E5E 205F"            /* OÔ..?D.§Lﬂ.¯N^ _ */
	$"4FEF 0014 4ED0 8944 5447 4554 4943 4F4E"            /* OÔ..N–âDTGETICON */
	$"0000 4E56 FF86 2F0A 2F03 246E 0008 2D6E"            /* ..NVˇÜ/./.$n..-n */
	$"0012 FF98 3D6E 0010 FF9C 2D6E 000C FFA6"            /* ..ˇò=n..ˇú-n..ˇ¶ */
	$"2D52 FFAA 41EE FF86 7030 A260 3600 6604"            /* -Rˇ™AÓˇÜp0¢`6.f. */
	$"24AE FFAE 3F43 0098 261F 245F 4E5E 205F"            /* $ÆˇÆ?C.ò&.$_N^ _ */
	$"4FEF 000E 4ED0 8C48 4745 5456 4F4C 5041"            /* OÔ..N–åHGETVOLPA */
	$"524D 5300 0000 4E56 FF00 48E7 1030 266E"            /* RMS...NVˇ.HÁ.0&n */
	$"000E 246E 0008 200A 673E 356E 000C 0016"            /* ..$n.. .g>5n.... */
	$"200B 660A 42AA 0012 426A 001C 601E 204B"            /*  .f.B™..Bj..`. K */
	$"43EE FF00 7000 1013 5240 48C0 A22E 41EE"            /* CÓˇ.p...R@H¿¢.AÓ */
	$"FF00 2548 0012 357C FFFF 001C 204A A207"            /* ˇ.%H..5|ˇˇ.. J¢. */
	$"3600 42AA 0012 6002 76CE 3F43 011E 4CDF"            /* 6.B™..`.vŒ?C..Lﬂ */
	$"0C08 4E5E 205F 4FEF 000A 4ED0 9347 4554"            /* ..N^ _OÔ..N–ìGET */
	$"564F 4C55 4D45 494E 464F 4E4F 4E41 4D45"            /* VOLUMEINFONONAME */
	$"0000 4E56 FF86 2F03 554F 2F2E 000E 3F2E"            /* ..NVˇÜ/.UO/...?. */
	$"000C 486E FF86 4EBA FF6E 301F 3600 6608"            /* ..HnˇÜN∫ˇn0.6.f. */
	$"206E 0008 30AE FF9C 3F43 0090 261F 4E5E"            /*  n..0Æˇú?C.ê&.N^ */
	$"205F 4FEF 000A 4ED0 9044 4554 4552 4D49"            /*  _OÔ..N–êDETERMI */
	$"4E45 5652 4546 4E55 4D00 0000 4E56 0000"            /* NEVREFNUM...NV.. */
	$"48E7 1830 282E 0008 594F 3F2E 000C 4EBA"            /* HÁ.0(...YO?...N∫ */
	$"F83C 205F 2448 200A 672E 2052 3028 0004"            /* ¯< _$H .g. R0(.. */
	$"0240 0040 6708 2052 2050 2650 6004 2052"            /* .@.@g. R P&P`. R */
	$"2650 41EB 0012 2244 7000 102B 0012 5240"            /* &PAÎ.."Dp..+..R@ */
	$"48C0 A22E 7600 6006 2044 4210 76EB 3F43"            /* H¿¢.v.`. DB.vÎ?C */
	$"001E 4CDF 0C18 4E5E 205F 5C4F 4ED0 8D47"            /* ..Lﬂ..N^ _\ON–çG */
	$"4554 4452 4956 4552 4E41 4D45 0000 0549"            /* ETDRIVERNAME...I */
	$"636F 6E0D 6966 696C FFFF F11F 6666 696C"            /* con.ifilˇˇÒ.ffil */
	$"FFFF F121 7366 696C FFFF F11E 7466 696C"            /* ˇˇÒ!sfilˇˇÒ.tfil */
	$"FFFF F120 4646 494C FFFF F124 4446 494C"            /* ˇˇÒ FFILˇˇÒ$DFIL */
	$"FFFF F123 6B66 696C FFFF F122 636C 7073"            /* ˇˇÒ#kfilˇˇÒ"clps */
	$"FFFF F125 636C 7070 FFFF F127 636C 7074"            /* ˇˇÒ%clppˇˇÒ'clpt */
	$"FFFF F126 636C 7075 FFFF F128 6966 696C"            /* ˇˇÒ&clpuˇˇÒ(ifil */
	$"0000 30D4 6666 696C 0000 38A4 7366 696C"            /* ..0‘ffil..8§sfil */
	$"0000 36B0 7466 696C 0000 38A5 4646 494C"            /* ..6∞tfil..8•FFIL */
	$"0000 3C8C 4446 494C 0000 3D86 6B66 696C"            /* ..<åDFIL..=Ükfil */
	$"0000 399E 6664 7270 FFFF F061 7472 7368"            /* ..9ûfdrpˇˇatrsh */
	$"FFFF F067 6661 7379 FFFF F071 494E 4954"            /* ˇˇgfasyˇˇqINIT */
	$"FFFF BFE1 4150 504C FFFF F064 6466 696C"            /* ˇˇø·APPLˇˇddfil */
	$"FFFF F069 7072 6566 FFFF F07D 6661 616D"            /* ˇˇiprefˇˇ}faam */
	$"FFFF F072 6661 6374 FFFF F078 6661 6578"            /* ˇˇrfactˇˇxfaex */
	$"FFFF F07B 6661 7066 FFFF F07A 6661 7374"            /* ˇˇ{fapfˇˇzfast */
	$"FFFF F073 6164 7270 FFFF F064 6661 6574"            /* ˇˇsadrpˇˇdfaet */
	$"FFFF F074 6661 6472 FFFF F075 6661 7368"            /* ˇˇtfadrˇˇufash */
	$"FFFF F076 6661 6D6E FFFF F077 7468 6E67"            /* ˇˇvfamnˇˇwthng */
	$"FFFF BFE1 7368 6C62 FFFF F081 052E 536F"            /* ˇˇø·shlbˇˇÅ..So */
	$"6E79 0000 0000 0000 0000 0000 0000 0000"            /* ny.............. */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 6578 746E FFFF F07B 6374 726C FFFF"            /* ..extnˇˇ{ctrlˇˇ */
	$"F078 666F 6E74 FFFF F080 7072 6566 FFFF"            /* xfontˇˇÄprefˇˇ */
	$"F07A 616D 6E75 FFFF F072 7072 6E74 FFFF"            /* zamnuˇˇrprntˇˇ */
	$"F079 7374 7274 FFFF F073 7368 6466 FFFF"            /* ystrtˇˇsshdfˇˇ */
	$"F073 7364 6576 FFFF F086 C473 6372 FFFF"            /* ssdevˇˇÜƒscrˇˇ */
	$"F089 C46E 6574 FFFF F08A C470 7264 FFFF"            /* âƒnetˇˇäƒprdˇˇ */
	$"F08E 7070 6466 FFFF F08F 6374 7244 FFFF"            /* éppdfˇˇèctrDˇˇ */
	$"F091 6578 7444 FFFF F092 7374 7244 FFFF"            /* ëextDˇˇístrDˇˇ */
	$"F093 636D 6E75 FFFF F09A 7368 6444 FFFF"            /* ìcmnuˇˇöshdDˇˇ */
	$"F094 6173 7570 FFFF F098 6D61 6344 FFFF"            /* îasupˇˇòmacDˇˇ */
	$"F095 636D 6E75 FFFF F09A C476 6F63 FFFF"            /* ïcmnuˇˇöƒvocˇˇ */
	$"F090 C474 6578 FFFF F08D C46C 6962 FFFF"            /* êƒtexˇˇçƒlibˇˇ */
	$"F08C C468 6C70 FFFF F088 C473 6E64 FFFF"            /* åƒhlpˇˇàƒsndˇˇ */
	$"F087 6465 736B FFFF F068 7472 7368 FFFF"            /* ádeskˇˇhtrshˇˇ */
	$"F067 6173 74C4 FFFF F096 7574 69C4 FFFF"            /* gastƒˇˇñutiƒˇˇ */
	$"F097 6D6F 72C4 FFFF F085 0000 0000 0000"            /* ómorƒˇˇÖ...... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 4A6F 7921 7065 6666"            /* ........Joy!peff */
	$"7077 7063 0000 0001 B368 F2D0 0000 0000"            /* pwpc....≥hÚ–.... */
	$"0000 0000 0000 0000 0003 0002 0000 0000"            /* ................ */
	$"FFFF FFFF 0000 0000 0000 313C 0000 313C"            /* ˇˇˇˇ......1<..1< */
	$"0000 313C 0000 0490 0004 0400 FFFF FFFF"            /* ..1<...ê....ˇˇˇˇ */
	$"0000 0000 0000 0504 0000 0504 0000 0504"            /* ................ */
	$"0000 35D0 0101 0400 FFFF FFFF 0000 0000"            /* ..5–....ˇˇˇˇ.... */
	$"0000 0000 0000 0000 0000 040C 0000 0080"            /* ...............Ä */
	$"0404 0400 0000 0000 0000 0001 0000 0104"            /* ................ */
	$"FFFF FFFF 0000 0000 FFFF FFFF 0000 0000"            /* ˇˇˇˇ....ˇˇˇˇ.... */
	$"0000 0002 0000 0031 0000 0001 0000 0138"            /* .......1.......8 */
	$"0000 0140 0000 0404 0000 0001 0000 0000"            /* ...@............ */
	$"0000 0000 0000 0000 0000 0000 0000 002D"            /* ...............- */
	$"0000 0000 0000 0000 0000 000D 0000 0000"            /* ................ */
	$"0000 0000 0000 0004 0000 002D 4000 0000"            /* ...........-@... */
	$"0200 001D 0200 0036 0200 0045 0200 0050"            /* .......6...E...P */
	$"0200 005B 0200 0069 0200 0076 0200 0083"            /* ...[...i...v...É */
	$"0200 0091 0200 009D 0200 00A6 0200 00B4"            /* ...ë...ù...¶...¥ */
	$"0200 00C1 0200 00CB 0200 00D6 0200 00DF"            /* ...¡...À...÷...ﬂ */
	$"0200 00F0 0200 00FC 0200 0109 0200 011A"            /* ......¸........ */
	$"0200 012F 0200 013D 0200 014D 0200 0157"            /* .../...=...M...W */
	$"0200 0164 0200 0172 0200 0182 0200 0192"            /* ...d...r...Ç...í */
	$"0200 019D 0200 01A5 0200 01B5 0200 01BF"            /* ...ù...•...µ...ø */
	$"0200 01CA 0200 01D4 0200 01E1 0200 01E7"            /* ... ...‘...·...Á */
	$"0200 01F6 0200 0205 0200 0214 0200 0221"            /* ...ˆ...........! */
	$"0200 0231 0200 023E 0200 024E 0200 0256"            /* ...1...>...N...V */
	$"0200 0269 8200 0275 8200 0284 8200 029A"            /* ...iÇ..uÇ..ÑÇ..ö */
	$"8200 02AE 0001 0000 0000 0004 0000 0000"            /* Ç..Æ............ */
	$"4A30 420C 8003 4604 496E 7465 7266 6163"            /* J0B.Ä.F.Interfac */
	$"654C 6962 0049 636F 6E53 6572 7669 6365"            /* eLib.IconService */
	$"734C 6962 0044 6973 706F 7365 526F 7574"            /* sLib.DisposeRout */
	$"696E 6544 6573 6372 6970 746F 7200 4164"            /* ineDescriptor.Ad */
	$"6449 636F 6E54 6F53 7569 7465 0053 6574"            /* dIconToSuite.Set */
	$"5265 734C 6F61 6400 4669 6E64 466F 6C64"            /* ResLoad.FindFold */
	$"6572 0044 6973 706F 7365 4861 6E64 6C65"            /* er.DisposeHandle */
	$"004C 6F61 6452 6573 6F75 7263 6500 484F"            /* .LoadResource.HO */
	$"7065 6E52 6573 4669 6C65 0053 6574 5375"            /* penResFile.SetSu */
	$"6974 654C 6162 656C 0050 4244 5447 6574"            /* iteLabel.PBDTGet */
	$"5061 7468 0052 6573 4572 726F 7200 5042"            /* Path.ResError.PB */
	$"436F 6E74 726F 6C53 796E 6300 4765 7449"            /* ControlSync.GetI */
	$"6E64 5374 7269 6E67 004E 6577 4861 6E64"            /* ndString.NewHand */
	$"6C65 0055 7365 5265 7346 696C 6500 4D65"            /* le.UseResFile.Me */
	$"6D45 7272 6F72 0050 4247 6574 4361 7449"            /* mError.PBGetCatI */
	$"6E66 6F53 796E 6300 4571 7561 6C53 7472"            /* nfoSync.EqualStr */
	$"696E 6700 4E65 7749 636F 6E53 7569 7465"            /* ing.NewIconSuite */
	$"0044 6973 706F 7365 4963 6F6E 5375 6974"            /* .DisposeIconSuit */
	$"6500 4E65 7752 6F75 7469 6E65 4465 7363"            /* e.NewRoutineDesc */
	$"7269 7074 6F72 0046 6F72 4561 6368 4963"            /* riptor.ForEachIc */
	$"6F6E 446F 004C 4D47 6574 4669 6E64 6572"            /* onDo.LMGetFinder */
	$"4E61 6D65 0050 7472 546F 4861 6E64 0047"            /* Name.PtrToHand.G */
	$"6574 3152 6573 6F75 7263 6500 426C 6F63"            /* et1Resource.Bloc */
	$"6B4D 6F76 6544 6174 6100 5042 4454 4765"            /* kMoveData.PBDTGe */
	$"7449 636F 6E53 796E 6300 5042 4847 6574"            /* tIconSync.PBHGet */
	$"5649 6E66 6F53 796E 6300 4375 7252 6573"            /* VInfoSync.CurRes */
	$"4669 6C65 0047 6573 7461 6C74 0050 4248"            /* File.Gestalt.PBH */
	$"4765 7446 496E 666F 5379 6E63 0048 5365"            /* GetFInfoSync.HSe */
	$"7453 7461 7465 0048 616E 6454 6F48 616E"            /* tState.HandToHan */
	$"6400 4847 6574 5374 6174 6500 4765 7444"            /* d.HGetState.GetD */
	$"4374 6C45 6E74 7279 0048 4C6F 636B 0046"            /* CtlEntry.HLock.F */
	$"5370 4F70 656E 5265 7346 696C 6500 5042"            /* SpOpenResFile.PB */
	$"4454 4F70 656E 496E 666F 726D 0050 4247"            /* DTOpenInform.PBG */
	$"6574 5649 6E66 6F53 796E 6300 4653 4D61"            /* etVInfoSync.FSMa */
	$"6B65 4653 5370 6563 0043 6F75 6E74 3152"            /* keFSSpec.Count1R */
	$"6573 6F75 7263 6573 0043 6C6F 7365 5265"            /* esources.CloseRe */
	$"7346 696C 6500 4765 7431 496E 6452 6573"            /* sFile.Get1IndRes */
	$"6F75 7263 6500 4855 6E6C 6F63 6B00 5042"            /* ource.HUnlock.PB */
	$"4847 6574 566F 6C50 6172 6D73 5379 6E63"            /* HGetVolParmsSync */
	$"0047 6574 5265 736F 7572 6365 0052 656C"            /* .GetResource.Rel */
	$"6561 7365 4963 6F6E 5265 6600 4963 6F6E"            /* easeIconRef.Icon */
	$"4661 6D69 6C79 546F 4963 6F6E 5375 6974"            /* FamilyToIconSuit */
	$"6500 4963 6F6E 5265 6654 6F49 636F 6E46"            /* e.IconRefToIconF */
	$"616D 696C 7900 4765 7449 636F 6E52 6566"            /* amily.GetIconRef */
	$"4672 6F6D 4669 6C65 0000 0000 0000 0000"            /* FromFile........ */
	$"0000 0000 0000 0000 7C08 02A6 BF61 FFEC"            /* ........|..¶øaˇÏ */
	$"9001 0008 9421 FEC0 7C7E 1B79 3B84 0000"            /* ê...î!˛¿|~.y;Ñ.. */
	$"3B65 0000 3BA6 0000 3BE0 0000 3800 0000"            /* ;e..;¶..;‡..8... */
	$"9006 0000 4182 0020 A87E 0000 4800 140D"            /* ê...AÇ. ®~..H... */
	$"6000 0000 5460 063F 4182 000C 3BE0 FFCB"            /* `...T`.?AÇ..;‡ˇÀ */
	$"4800 0288 281C 0000 4082 0058 387E 0006"            /* H..à(...@Ç.X8~.. */
	$"3881 0050 38A0 0020 4800 2C5D 8041 0014"            /* 8Å.P8†. H.,]ÄA.. */
	$"A81E 0000 B001 00CE 801E 0002 9001 00E8"            /* ®...∞..ŒÄ...ê..Ë */
	$"3801 0050 9001 00CA 3800 0000 B001 00D4"            /* 8..Pê.. 8...∞..‘ */
	$"3861 00B8 4800 2C49 8041 0014 3BE3 0000"            /* 8a.∏H.,IÄA..;„.. */
	$"7FE0 0735 4082 0234 3B81 00B8 4800 0038"            /* .‡.5@Ç.4;Å.∏H..8 */
	$"807C 0012 3881 0070 80BC 0012 88A5 0000"            /* Ä|..8Å.pÄº..à•.. */
	$"38A5 0001 3884 0006 4800 2BFD 8041 0014"            /* 8•..8Ñ..H.+˝ÄA.. */
	$"801C 0064 9001 0072 A81C 0016 B001 0070"            /* Ä..dê..r®...∞..p */
	$"3BC1 0070 3C60 6963 3863 6F6E 3881 004C"            /* ;¡.p<`ic8con8Å.L */
	$"4800 2C05 8041 0014 7C60 0735 4082 00DC"            /* H.,.ÄA..|`.5@Ç.‹ */
	$"8001 004C 5400 077B 4182 00D0 387B 0000"            /* Ä..LT..{AÇ.–8{.. */
	$"3881 0040 38A1 003C 4800 1799 6000 0000"            /* 8Å.@8°.<H..ô`... */
	$"387E 0000 3881 0048 38A1 0044 4800 2BE1"            /* 8~..8Å.H8°.DH.+· */
	$"8041 0014 3BE3 0000 7FE0 0735 4082 009C"            /* ÄA..;„...‡.5@Ç.ú */
	$"8061 0048 8081 0040 8001 003C 7C84 0378"            /* Äa.HÄÅ.@Ä..<|Ñ.x */
	$"38A1 0038 4800 2BD1 8041 0014 3BE3 0000"            /* 8°.8H.+—ÄA..;„.. */
	$"7FE0 0735 4082 0068 8061 0038 8081 0040"            /* .‡.5@Ç.hÄa.8ÄÅ.@ */
	$"38BD 0000 4800 2BC9 8041 0014 3BE3 0000"            /* 8Ω..H.+…ÄA..;„.. */
	$"7FE0 0735 4082 003C 807D 0000 4800 01DD"            /* .‡.5@Ç.<Ä}..H..› */
	$"5460 063F 4182 002C 807D 0000 3880 0001"            /* T`.?AÇ.,Ä}..8Ä.. */
	$"4800 2BFD 8041 0014 8061 0038 8081 003C"            /* H.+˝ÄA..Äa.8ÄÅ.< */
	$"38BD 0000 4800 2B89 8041 0014 3BE3 0000"            /* 8Ω..H.+âÄA..;„.. */
	$"8061 0038 4800 2BF1 8041 0014 8061 0048"            /* Äa.8H.+ÒÄA..Äa.H */
	$"4800 2BFD 8041 0014 801D 0000 2800 0000"            /* H.+˝ÄA..Ä...(... */
	$"4082 00D0 881C 001E 5400 06F7 4082 0048"            /* @Ç.–à...T..˜@Ç.H */
	$"A01C 0028 5400 056B 4182 0020 387E 0000"            /* †..(T..kAÇ. 8~.. */
	$"389B 0000 38BD 0000 4800 0549 6000 0000"            /* 8õ..8Ω..H..I`... */
	$"3BE3 0000 4800 009C 387C 0000 389B 0000"            /* ;„..H..ú8|..8õ.. */
	$"38BD 0000 4800 0275 6000 0000 3BE3 0000"            /* 8Ω..H..u`...;„.. */
	$"4800 0080 A01C 0028 5400 056B 4182 0024"            /* H..Ä†..(T..kAÇ.$ */
	$"A87E 0000 809C 0030 38BB 0000 38DD 0000"            /* ®~..Äú.08ª..8›.. */
	$"4800 099D 6000 0000 7C60 0735 4182 0054"            /* H..ù`...|`.5AÇ.T */
	$"801C 0030 2C00 0002 4082 0030 A87E 0000"            /* Ä..0,...@Ç.0®~.. */
	$"4800 1CD9 6000 0000 5460 063F 4182 001C"            /* H..Ÿ`...T`.?AÇ.. */
	$"A87E 0000 389D 0000 4800 0FD1 6000 0000"            /* ®~..8ù..H..—`... */
	$"3BE3 0000 4800 001C 387C 0000 389B 0000"            /* ;„..H...8|..8õ.. */
	$"38BD 0000 4800 0699 6000 0000 3BE3 0000"            /* 8Ω..H..ô`...;„.. */
	$"801D 0000 2800 0000 4182 0040 807D 0000"            /* Ä...(...AÇ.@Ä}.. */
	$"A01C 0028 5400 073C 7C04 0E70 4800 2E61"            /* †..(T..<|..pH..a */
	$"8041 0014 4800 0024 801E 0002 2C00 0001"            /* ÄA..H..$Ä...,... */
	$"4082 0018 A87E 0000 389D 0000 4800 0F6D"            /* @Ç..®~..8ù..H..m */
	$"6000 0000 3BE3 0000 387F 0000 8001 0148"            /* `...;„..8...Ä..H */
	$"3821 0140 7C08 03A6 BB61 FFEC 4E80 0020"            /* 8!.@|..¶ªaˇÏNÄ.  */
	$"0000 0000 0000 2041 8005 0000 0000 0308"            /* ...... AÄ....... */
	$"000A 2E46 696E 645F 6963 6F6E 8004 0000"            /* ...Find_iconÄ... */
	$"2800 0000 4182 000C 3800 0001 9805 0000"            /* (...AÇ..8...ò... */
	$"3860 0000 4E80 0020 0000 0000 0000 2040"            /* 8`..NÄ. ...... @ */
	$"0000 0000 0000 001C 000E 2E54 6573 745F"            /* ...........Test_ */
	$"6F6E 655F 6963 6F6E 7C08 02A6 93E1 FFFC"            /* one_icon|..¶ì·ˇ¸ */
	$"9001 0008 9421 FFB0 9061 0068 3800 0000"            /* ê...î!ˇ∞êa.h8... */
	$"9801 0038 8062 00C4 3880 0FE0 38A0 0001"            /* ò..8Äb.ƒ8Ä.‡8†.. */
	$"4800 29C5 8041 0014 3BE3 0000 8061 0068"            /* H.)≈ÄA..;„..Äa.h */
	$"3880 FFFF 38BF 0000 38C1 0038 4800 29C1"            /* 8Äˇˇ8ø..8¡.8H.)¡ */
	$"8041 0014 387F 0000 4800 29CD 8041 0014"            /* ÄA..8...H.)ÕÄA.. */
	$"8801 0038 7C00 0034 5403 D97E 8001 0058"            /* à..8|..4T.Ÿ~Ä..X */
	$"3821 0050 7C08 03A6 83E1 FFFC 4E80 0020"            /* 8!.P|..¶É·ˇ¸NÄ.  */
	$"0000 0000 0000 2041 8001 0000 0000 0078"            /* ...... AÄ......x */
	$"000D 2E49 7353 7569 7465 456D 7074 7900"            /* ...IsSuiteEmpty. */
	$"7C08 02A6 93E1 FFFC 9001 0008 9421 FF70"            /* |..¶ì·ˇ¸ê...î!ˇp */
	$"B061 00AA 3801 006C 9001 0058 3800 0014"            /* ∞a.™8..lê..X8... */
	$"9001 005C A801 00AA B001 004E 3800 0000"            /* ê..\®..™∞..N8... */
	$"9001 004A 3861 0038 4800 2AFD 8041 0014"            /* ê..J8a.8H.*˝ÄA.. */
	$"3BE3 0000 3860 0000 7FE0 0735 4082 0010"            /* ;„..8`...‡.5@Ç.. */
	$"8001 0076 2C00 0000 4082 0008 3860 0001"            /* Ä..v,...@Ç..8`.. */
	$"8001 0098 3821 0090 7C08 03A6 83E1 FFFC"            /* Ä..ò8!.ê|..¶É·ˇ¸ */
	$"4E80 0020 0000 0000 0000 2041 8001 0000"            /* NÄ. ...... AÄ... */
	$"0000 0074 0010 2E49 735F 6C6F 6361 6C5F"            /* ...t...Is_local_ */
	$"766F 6C75 6D65 0000 7C08 02A6 BEC1 FFD8"            /* volume..|..¶æ¡ˇÿ */
	$"9001 0008 9421 FF50 3AE3 0000 3B84 0000"            /* ê...î!ˇP:„..;Ñ.. */
	$"3BC5 0000 83A3 0020 8363 0024 387D 0000"            /* ;≈..É£. Éc.$8}.. */
	$"389B 0000 38BC 0000 4800 1641 6000 0000"            /* 8õ..8º..H..A`... */
	$"907E 0000 801E 0000 2800 0000 4182 000C"            /* ê~..Ä...(...AÇ.. */
	$"3860 0000 4800 0230 387D 0000 3881 007E"            /* 8`..H..08}..8Å.~ */
	$"4800 07C1 6000 0000 3B03 0000 4800 28E9"            /* H..¡`...;...H.(È */
	$"8041 0014 3AC3 0000 8801 007E 2800 0001"            /* ÄA..:√..à..~(... */
	$"4082 00A8 3860 8000 3C80 6D61 38A0 0000"            /* @Ç.®8`Ä.<Äma8†.. */
	$"38C1 007C 38E1 0078 3884 6373 4800 29C1"            /* 8¡.|8·.x8ÑcsH.)¡ */
	$"8041 0014 3860 0000 4800 28C5 8041 0014"            /* ÄA..8`..H.(≈ÄA.. */
	$"4800 29C5 8041 0014 38A3 0000 A861 007C"            /* H.)≈ÄA..8£..®a.| */
	$"8081 0078 38C0 0001 4800 29C5 8041 0014"            /* ÄÅ.x8¿..H.)≈ÄA.. */
	$"3B43 0000 3860 0001 4800 2895 8041 0014"            /* ;C..8`..H.(ïÄA.. */
	$"7F40 0734 2C00 FFFF 4082 0014 4800 28B1"            /* .@.4,.ˇˇ@Ç..H.(± */
	$"8041 0014 3BE3 0000 4800 0150 387E 0000"            /* ÄA..;„..H..P8~.. */
	$"3898 0000 38BC 0000 38C0 0001 4800 0889"            /* 8ò..8º..8¿..H..â */
	$"6000 0000 3BE3 0000 387A 0000 4800 28F9"            /* `...;„..8z..H.(˘ */
	$"8041 0014 4800 0124 3C1D 9E9C 2800 7270"            /* ÄA..H..$<.ûú(.rp */
	$"4082 000C 3FA0 4150 3BBD 504C AB37 0016"            /* @Ç..?†AP;ΩPL´7.. */
	$"3879 0000 389C 0000 38BB 0000 38DD 0000"            /* 8y..8ú..8ª..8›.. */
	$"38FE 0000 4800 1121 6000 0000 3BE3 0000"            /* 8˛..H..!`...;„.. */
	$"7FE0 0735 4182 008C 3800 0000 9001 004A"            /* .‡.5AÇ.å8...ê..J */
	$"3800 0001 B001 0054 4800 0064 3861 0038"            /* 8...∞..TH..d8a.8 */
	$"A863 0016 7F20 0734 7C03 0000 4182 0044"            /* ®c... .4|...AÇ.D */
	$"3861 0038 A863 0016 4BFF FDD9 5460 063F"            /* 8a.8®c..Kˇ˝ŸT`.? */
	$"4182 0030 3861 0038 A863 0016 389C 0000"            /* AÇ.08a.8®c..8ú.. */
	$"38BB 0000 38DD 0000 38FE 0000 4800 10B9"            /* 8ª..8›..8˛..H..π */
	$"6000 0000 3BE3 0000 7FE0 0735 4182 0024"            /* `...;„...‡.5AÇ.$ */
	$"A861 0054 3803 0001 B001 0054 3861 0038"            /* ®a.T8...∞..T8a.8 */
	$"4800 29FD 8041 0014 7C60 0735 4182 FF90"            /* H.)˝ÄA..|`.5AÇˇê */
	$"7FE0 0735 4182 0054 3860 0000 4800 2831"            /* .‡.5AÇ.T8`..H.(1 */
	$"8041 0014 387E 0000 3898 0000 38BC 0000"            /* ÄA..8~..8ò..8º.. */
	$"38C0 0001 4800 0781 6000 0000 3BE3 0000"            /* 8¿..H..Å`...;„.. */
	$"801E 0000 2800 0000 4082 0020 387E 0000"            /* Ä...(...@Ç. 8~.. */
	$"3880 F060 38BC 0000 38C0 0001 4800 0759"            /* 8Ä`8º..8¿..H..Y */
	$"6000 0000 3BE3 0000 3876 0000 4800 27E1"            /* `...;„..8v..H.'· */
	$"8041 0014 7FE0 0735 4082 0028 801E 0000"            /* ÄA...‡.5@Ç.(Ä... */
	$"2800 0000 4182 001C 387D 0000 389B 0000"            /* (...AÇ..8}..8õ.. */
	$"38BC 0000 80DE 0000 4800 1525 6000 0000"            /* 8º..Äﬁ..H..%`... */
	$"387F 0000 8001 00B8 3821 00B0 7C08 03A6"            /* 8...Ä..∏8!.∞|..¶ */
	$"BAC1 FFD8 4E80 0020 0000 0000 0000 2041"            /* ∫¡ˇÿNÄ. ...... A */
	$"800A 0000 0000 0290 0015 2E47 6574 5F6E"            /* Ä......ê...Get_n */
	$"6F72 6D61 6C5F 6669 6C65 5F69 636F 6E00"            /* ormal_file_icon. */
	$"7C08 02A6 BF61 FFEC 9001 0008 9421 FFB0"            /* |..¶øaˇÏê...î!ˇ∞ */
	$"9061 0068 3B64 0000 3B85 0000 4800 2679"            /* êa.h;d..;Ö..H.&y */
	$"8041 0014 3BA3 0000 3860 0000 4800 2681"            /* ÄA..;£..8`..H.&Å */
	$"8041 0014 8061 0068 3880 0001 4800 2689"            /* ÄA..Äa.h8Ä..H.&â */
	$"8041 0014 3BC3 0000 3860 0001 4800 2661"            /* ÄA..;√..8`..H.&a */
	$"8041 0014 7FC0 0734 2C00 FFFF 4082 0014"            /* ÄA...¿.4,.ˇˇ@Ç.. */
	$"4800 267D 8041 0014 3BE3 0000 4800 0060"            /* H.&}ÄA..;„..H..` */
	$"387C 0000 3880 BFB9 38BB 0000 38C0 0001"            /* 8|..8Äøπ8ª..8¿.. */
	$"4800 0655 6000 0000 3BE3 0000 7FE0 0734"            /* H..U`...;„...‡.4 */
	$"2C00 FC18 4082 0020 387C 0000 3880 BF90"            /* ,.¸.@Ç. 8|..8Äøê */
	$"38BB 0000 38C0 0001 4800 062D 6000 0000"            /* 8ª..8¿..H..-`... */
	$"3BE3 0000 387E 0000 4800 269D 8041 0014"            /* ;„..8~..H.&ùÄA.. */
	$"387D 0000 4800 26A9 8041 0014 387F 0000"            /* 8}..H.&©ÄA..8... */
	$"8001 0058 3821 0050 7C08 03A6 BB61 FFEC"            /* Ä..X8!.P|..¶ªaˇÏ */
	$"4E80 0020 0000 0000 0000 2041 8005 0000"            /* NÄ. ...... AÄ... */
	$"0000 00E4 0015 2E47 6574 5F63 7573 746F"            /* ...‰...Get_custo */
	$"6D5F 6669 6C65 5F69 636F 6E00 7C08 02A6"            /* m_file_icon.|..¶ */
	$"93E1 FFFC 93C1 FFF8 93A1 FFF4 9381 FFF0"            /* ì·ˇ¸ì¡ˇ¯ì°ˇÙìÅˇ */
	$"9001 0008 9421 FFB0 3B83 0000 3BA4 0000"            /* ê...î!ˇ∞;É..;§.. */
	$"3BE5 0000 3BC0 0000 387D 0000 7F84 0734"            /* ;Â..;¿..8}...Ñ.4 */
	$"38A0 0000 4800 1275 6000 0000 907F 0000"            /* 8†..H..u`...ê... */
	$"801F 0000 2C00 0000 4082 0050 387C 0000"            /* Ä...,...@Ç.P8|.. */
	$"389D 0000 38A0 0000 38C1 0038 38FF 0000"            /* 8ù..8†..8¡.88ˇ.. */
	$"4800 262D 8041 0014 3BC3 0000 7FC0 0735"            /* H.&-ÄA..;√...¿.5 */
	$"4182 0010 3800 0000 901F 0000 4800 001C"            /* AÇ..8...ê...H... */
	$"387D 0000 7F84 0734 38A0 0000 80DF 0000"            /* 8}...Ñ.48†..Äﬂ.. */
	$"4800 133D 6000 0000 387E 0000 8001 0058"            /* H..=`...8~..Ä..X */
	$"3821 0050 7C08 03A6 83E1 FFFC 83C1 FFF8"            /* 8!.P|..¶É·ˇ¸É¡ˇ¯ */
	$"83A1 FFF4 8381 FFF0 4E80 0020 0000 0000"            /* É°ˇÙÉÅˇNÄ. .... */
	$"0000 2041 8004 0000 0000 00C0 000D 2E4D"            /* .. AÄ......¿...M */
	$"7946 696E 6446 6F6C 6465 7200 7C08 02A6"            /* yFindFolder.|..¶ */
	$"BE81 FFD0 9001 0008 9421 FF90 3AE3 0000"            /* æÅˇ–ê...î!ˇê:„.. */
	$"3AA4 0000 3AC5 0000 3B02 014C 3B22 0124"            /* :§..:≈..;..L;".$ */
	$"8383 0030 AB43 0016 3BA0 F061 387A 0000"            /* ÉÉ.0´C..;†a8z.. */
	$"3C80 6D61 3884 6373 38A1 003C 4BFF FEE1"            /* <Äma8Ñcs8°.<Kˇ˛· */
	$"7C60 0735 4082 0018 8001 003C 7C00 E000"            /* |`.5@Ç..Ä..<|.‡. */
	$"4082 000C 3BA0 F071 4800 013C 8017 0064"            /* @Ç..;†qH..<Ä..d */
	$"2C00 0002 4082 006C 3B60 0005 3BE0 0000"            /* ,...@Ç.l;`..;‡.. */
	$"4800 004C 387A 0000 7FE0 0734 5400 1838"            /* H..L8z...‡.4T..8 */
	$"7C99 002E 38A1 0038 4BFF FE95 3BC3 0000"            /* |ô..8°.8Kˇ˛ï;√.. */
	$"7FC0 0735 4082 0024 8001 0038 7C00 E000"            /* .¿.5@Ç.$Ä..8|.‡. */
	$"4082 0018 7FE0 0734 5403 1838 3803 0004"            /* @Ç...‡.4T..88... */
	$"7FB9 002E 4800 00E0 3BFF 0001 7FE3 0734"            /* .π..H..‡;ˇ...„.4 */
	$"7F60 0734 7C03 0000 4180 FFAC 4800 00C8"            /* .`.4|...AÄˇ¨H..» */
	$"8061 003C 8017 0064 7C03 0000 4082 006C"            /* Äa.<Ä..d|...@Ç.l */
	$"3B60 001A 3BE0 0000 4800 004C 387A 0000"            /* ;`..;‡..H..L8z.. */
	$"7FE0 0734 5400 1838 7C98 002E 38A1 0038"            /* .‡.4T..8|ò..8°.8 */
	$"4BFF FE1D 3BC3 0000 7FC0 0735 4082 0024"            /* Kˇ˛.;√...¿.5@Ç.$ */
	$"8001 0038 7C00 E000 4082 0018 7FE0 0734"            /* Ä..8|.‡.@Ç...‡.4 */
	$"5403 1838 3803 0004 7FB8 002E 4800 0068"            /* T..88....∏..H..h */
	$"3BFF 0001 7FE3 0734 7F60 0734 7C03 0000"            /* ;ˇ...„.4.`.4|... */
	$"4180 FFAC 4800 0050 8017 0064 2C00 0001"            /* AÄˇ¨H..PÄ..d,... */
	$"4082 000C 3BA0 F07C 4800 003C 8817 001E"            /* @Ç..;†|H..<à... */
	$"5400 0739 4182 000C 3BA0 F077 4800 0028"            /* T..9AÇ..;†wH..( */
	$"8817 001E 5400 06B5 4182 000C 3BA0 F076"            /* à...T..µAÇ..;†v */
	$"4800 0014 8817 001E 5400 077B 4182 0008"            /* H...à...T..{AÇ.. */
	$"3BA0 F074 7FA3 0734 3C80 6630 38B5 0000"            /* ;†t.£.4<Äf08µ.. */
	$"3884 6C64 4800 1025 6000 0000 9076 0000"            /* 8ÑldH..%`...êv.. */
	$"8016 0000 2800 0000 4182 000C 3BC0 0000"            /* Ä...(...AÇ..;¿.. */
	$"4800 00A8 4800 22E1 8041 0014 3A83 0000"            /* H..®H."·ÄA..:É.. */
	$"3860 0000 4800 23A9 8041 0014 3876 0000"            /* 8`..H.#©ÄA..8v.. */
	$"389D 0000 38B5 0000 38C0 0002 4800 02F9"            /* 8ù..8µ..8¿..H..˘ */
	$"6000 0000 3BC3 0000 7FC0 0735 4182 0030"            /* `...;√...¿.5AÇ.0 */
	$"7FA0 0734 2C00 F061 4182 0024 3BA0 F061"            /* .†.4,.aAÇ.$;†a */
	$"3876 0000 389D 0000 38B5 0000 38C0 0002"            /* 8v..8ù..8µ..8¿.. */
	$"4800 02C5 6000 0000 3BC3 0000 3874 0000"            /* H..≈`...;√..8t.. */
	$"4800 234D 8041 0014 7FC0 0735 4082 002C"            /* H.#MÄA...¿.5@Ç., */
	$"8016 0000 2800 0000 4182 0020 7FA3 0734"            /* Ä...(...AÇ. .£.4 */
	$"3C80 6630 38B5 0000 80D6 0000 3884 6C64"            /* <Äf08µ..Ä÷..8Ñld */
	$"4800 108D 6000 0000 387E 0000 8001 0078"            /* H..ç`...8~..Ä..x */
	$"3821 0070 7C08 03A6 BA81 FFD0 4E80 0020"            /* 8!.p|..¶∫Åˇ–NÄ.  */
	$"0000 0000 0000 2041 800C 0000 0000 0284"            /* ...... AÄ......Ñ */
	$"0017 2E47 6574 5F6E 6F72 6D61 6C5F 666F"            /* ...Get_normal_fo */
	$"6C64 6572 5F69 636F 6E00 0000 7C08 02A6"            /* lder_icon...|..¶ */
	$"93E1 FFFC 93C1 FFF8 9001 0008 9421 FF70"            /* ì·ˇ¸ì¡ˇ¯ê...î!ˇp */
	$"B061 00AA 9081 00AC 90A1 00B0 90C1 00B4"            /* ∞a.™êÅ.¨ê°.∞ê¡.¥ */
	$"3BC2 021C 881E 0000 2800 0000 4082 0010"            /* ;¬..à...(...@Ç.. */
	$"387E 0000 4800 04C5 6000 0000 A861 00AA"            /* 8~..H..≈`...®a.™ */
	$"8081 00AC 38BE 0000 38C1 0038 4800 2461"            /* ÄÅ.¨8æ..8¡.8H.$a */
	$"8041 0014 3BE3 0000 7FE0 0735 4082 001C"            /* ÄA..;„...‡.5@Ç.. */
	$"3861 0038 8081 00B0 80A1 00B4 4BFF FAF5"            /* 8a.8ÄÅ.∞Ä°.¥Kˇ˙ı */
	$"6000 0000 3BE3 0000 387F 0000 8001 0098"            /* `...;„..8...Ä..ò */
	$"3821 0090 7C08 03A6 83E1 FFFC 83C1 FFF8"            /* 8!.ê|..¶É·ˇ¸É¡ˇ¯ */
	$"4E80 0020 0000 0000 0000 2041 8002 0000"            /* NÄ. ...... AÄ... */
	$"0000 0098 0017 2E47 6574 5F63 7573 746F"            /* ...ò...Get_custo */
	$"6D5F 666F 6C64 6572 5F69 636F 6E00 0000"            /* m_folder_icon... */
	$"7C08 02A6 BEE1 FFDC 9001 0008 9421 FF90"            /* |..¶æ·ˇ‹ê...î!ˇê */
	$"3BA3 0000 3B24 0000 3B42 023C 3B62 02D4"            /* ;£..;$..;B.<;b.‘ */
	$"3B82 030C 3BC0 F060 3800 0002 9804 0000"            /* ;Ç..;¿`8...ò... */
	$"3C60 6170 3863 7072 3881 0038 4800 2009"            /* <`ap8cpr8Å.8H. . */
	$"8041 0014 3AE3 0000 7EE0 0735 4082 0054"            /* ÄA..:„..~‡.5@Ç.T */
	$"8001 0038 5400 07FF 4182 0048 3B00 000B"            /* Ä..8T..ˇAÇ.H;... */
	$"3BF8 FFFF 4800 0030 7FE0 0734 5400 1838"            /* ;¯ˇˇH..0.‡.4T..8 */
	$"7C1C 002E 7C1D 0040 4082 0018 7FE0 0734"            /* |...|..@@Ç...‡.4 */
	$"5403 1838 3803 0004 7FDC 002E 4800 005C"            /* T..88....‹..H..\ */
	$"3BFF FFFF 7FE0 0735 4080 FFD0 4800 004C"            /* ;ˇˇˇ.‡.5@Äˇ–H..L */
	$"3B00 0007 3BF8 FFFF 4800 0038 7FE0 0734"            /* ;...;¯ˇˇH..8.‡.4 */
	$"5400 1838 7C1B 002E 7C1D 0040 4082 0020"            /* T..8|...|..@@Ç.  */
	$"7FE0 0734 5403 1838 3803 0004 7FDB 002E"            /* .‡.4T..88....€.. */
	$"3800 0001 9819 0000 4800 0010 3BFF FFFF"            /* 8...ò...H...;ˇˇˇ */
	$"7FE0 0735 4080 FFC8 7FC0 0734 2C00 F060"            /* .‡.5@Äˇ».¿.4,.` */
	$"4082 0044 3B00 0013 3BF8 FFFF 4800 0030"            /* @Ç.D;...;¯ˇˇH..0 */
	$"7FE0 0734 5400 1838 7C1A 002E 7C1D 0040"            /* .‡.4T..8|...|..@ */
	$"4082 0018 7FE0 0734 5403 1838 3803 0004"            /* @Ç...‡.4T..88... */
	$"7FDA 002E 4800 0010 3BFF FFFF 7FE0 0735"            /* .⁄..H...;ˇˇˇ.‡.5 */
	$"4080 FFD0 387E 0000 8001 0078 3821 0070"            /* @Äˇ–8~..Ä..x8!.p */
	$"7C08 03A6 BAE1 FFDC 4E80 0020 0000 0000"            /* |..¶∫·ˇ‹NÄ. .... */
	$"0000 2041 8009 0000 0000 014C 0015 2E46"            /* .. AÄ......L...F */
	$"696E 645F 6765 6E65 7269 635F 6963 6F6E"            /* ind_generic_icon */
	$"5F69 6400 7C08 02A6 93E1 FFFC 93C1 FFF8"            /* _id.|..¶ì·ˇ¸ì¡ˇ¯ */
	$"93A1 FFF4 9001 0008 9421 FFA0 3BC3 0000"            /* ì°ˇÙê...î!ˇ†;√.. */
	$"B081 007E 90A1 0080 98C1 0087 8061 0080"            /* ∞Å.~ê°.Äò¡.áÄa.Ä */
	$"3881 003C 38A1 0038 4800 0A59 6000 0000"            /* 8Å.<8°.8H..Y`... */
	$"387E 0000 4800 1FE1 8041 0014 3BE3 0000"            /* 8~..H..·ÄA..;„.. */
	$"7FE0 0735 4082 00E8 A801 007E B001 0040"            /* .‡.5@Ç.Ë®..~∞..@ */
	$"3800 0001 9801 0042 3800 0001 9801 0043"            /* 8...ò..B8...ò..C */
	$"8801 0087 9801 0044 8062 00E0 3880 0FE0"            /* à..áò..DÄb.‡8Ä.‡ */
	$"38A0 0001 4800 1EB1 8041 0014 3BA3 0000"            /* 8†..H..±ÄA..;£.. */
	$"807E 0000 8081 003C 38BD 0000 38C1 0040"            /* Ä~..ÄÅ.<8Ω..8¡.@ */
	$"4800 1EAD 8041 0014 3BE3 0000 7FE0 0735"            /* H..≠ÄA..;„...‡.5 */
	$"4082 0044 8001 0038 2800 0000 4182 0038"            /* @Ç.DÄ..8(...AÇ.8 */
	$"8801 0042 2800 0000 4182 002C 8801 0043"            /* à..B(...AÇ.,à..C */
	$"2800 0000 4182 0020 807E 0000 8081 0038"            /* (...AÇ. Ä~..ÄÅ.8 */
	$"38BD 0000 38C1 0040 4800 1E65 8041 0014"            /* 8Ω..8¡.@H..eÄA.. */
	$"3BE3 0000 387D 0000 4800 1E6D 8041 0014"            /* ;„..8}..H..mÄA.. */
	$"7FE0 0735 4082 0038 8801 0042 2800 0000"            /* .‡.5@Ç.8à..B(... */
	$"4182 002C 8801 0043 2800 0000 4182 0020"            /* AÇ.,à..C(...AÇ.  */
	$"3BE0 FC18 807E 0000 3880 0000 4800 1E51"            /* ;‡¸.Ä~..8Ä..H..Q */
	$"8041 0014 3800 0000 901E 0000 387F 0000"            /* ÄA..8...ê...8... */
	$"8001 0068 3821 0060 7C08 03A6 83E1 FFFC"            /* Ä..h8!.`|..¶É·ˇ¸ */
	$"83C1 FFF8 83A1 FFF4 4E80 0020 0000 0000"            /* É¡ˇ¯É°ˇÙNÄ. .... */
	$"0000 2041 8003 0000 0000 0158 0010 2E46"            /* .. AÄ......X...F */
	$"495F 4765 7449 636F 6E53 7569 7465 0000"            /* I_GetIconSuite.. */
	$"7C08 02A6 BF61 FFEC 9001 0008 9421 FFB0"            /* |..¶øaˇÏê...î!ˇ∞ */
	$"3BE3 0000 3BA4 0000 3BC5 0000 3B80 0000"            /* ;„..;§..;≈..;Ä.. */
	$"3C1F 969D 2800 6C38 4182 0010 3C1F 969D"            /* <.ñù(.l8AÇ..<.ñù */
	$"2800 6C34 4082 0010 881E 0002 2800 0000"            /* (.l4@Ç..à...(... */
	$"4082 0028 3C1F 969D 2800 7338 4182 0010"            /* @Ç.(<.ñù(.s8AÇ.. */
	$"3C1F 969D 2800 7334 4082 0014 881E 0003"            /* <.ñù(.s4@Ç..à... */
	$"2800 0000 4182 0008 3B80 0001 5780 063F"            /* (...AÇ..;Ä..WÄ.? */
	$"4082 00A0 881E 0004 2800 0001 4082 001C"            /* @Ç.†à...(...@Ç.. */
	$"387F 0000 A89E 0000 4800 1E35 8041 0014"            /* 8...®û..H..5ÄA.. */
	$"907D 0000 4800 0018 387F 0000 A89E 0000"            /* ê}..H...8...®û.. */
	$"4800 1E35 8041 0014 907D 0000 801D 0000"            /* H..5ÄA..ê}..Ä... */
	$"2800 0000 4182 0024 387D 0000 4800 1E31"            /* (...AÇ.$8}..H..1 */
	$"8041 0014 3B63 0000 7F60 0735 4182 000C"            /* ÄA..;c...`.5AÇ.. */
	$"3800 0000 901D 0000 801D 0000 2800 0000"            /* 8...ê...Ä...(... */
	$"4182 0030 3C1F B6BD 2800 4E23 4082 0010"            /* AÇ.0<.∂Ω(.N#@Ç.. */
	$"3800 0000 981E 0002 4800 0018 3C1F 969D"            /* 8...ò...H...<.ñù */
	$"2800 7323 4082 000C 3800 0000 981E 0003"            /* (.s#@Ç..8...ò... */
	$"3860 0000 8001 0058 3821 0050 7C08 03A6"            /* 8`..Ä..X8!.P|..¶ */
	$"BB61 FFEC 4E80 0020 0000 0000 0000 2041"            /* ªaˇÏNÄ. ...... A */
	$"8005 0000 0000 0128 000B 2E47 6574 5F31"            /* Ä......(...Get_1 */
	$"5F69 636F 6E00 0000 7C08 02A6 93E1 FFFC"            /* _icon...|..¶ì·ˇ¸ */
	$"93C1 FFF8 93A1 FFF4 9001 0008 9421 FEB0"            /* ì¡ˇ¯ì°ˇÙê...î!˛∞ */
	$"3BA3 0000 3800 0000 9801 0038 4800 1CD9"            /* ;£..8...ò..8H..Ÿ */
	$"8041 0014 3BC3 0000 3860 8000 3C80 6D61"            /* ÄA..;√..8`Ä.<Äma */
	$"38A0 0000 38C1 013C 38E1 0138 3884 6373"            /* 8†..8¡.<8·.88Ñcs */
	$"4800 1DBD 8041 0014 3860 0000 4800 1CC1"            /* H..ΩÄA..8`..H..¡ */
	$"8041 0014 4800 1DC1 8041 0014 38A3 0000"            /* ÄA..H..¡ÄA..8£.. */
	$"A861 013C 8081 0138 38C0 0001 4800 1DC1"            /* ®a.<ÄÅ.88¿..H..¡ */
	$"8041 0014 3BE3 0000 3860 0001 4800 1C91"            /* ÄA..;„..8`..H..ë */
	$"8041 0014 7FE0 0734 2C00 FFFF 4182 0050"            /* ÄA...‡.4,.ˇˇAÇ.P */
	$"3861 0038 3880 2BF2 38A0 0005 4800 1EF9"            /* 8a.88Ä+Ú8†..H..˘ */
	$"8041 0014 8801 0038 2800 0000 4082 0018"            /* ÄA..à..8(...@Ç.. */
	$"3861 0038 3880 1194 38A0 0005 4800 1ED9"            /* 8a.88Ä.î8†..H..Ÿ */
	$"8041 0014 387F 0000 4800 1CED 8041 0014"            /* ÄA..8...H..ÌÄA.. */
	$"387E 0000 4800 1CF9 8041 0014 8801 0038"            /* 8~..H..˘ÄA..à..8 */
	$"2800 0020 4080 002C 8801 0038 2800 0000"            /* (.. @Ä.,à..8(... */
	$"4182 0020 3861 0038 389D 0000 88A1 0038"            /* AÇ. 8a.88ù..à°.8 */
	$"38A5 0001 4800 1AD1 8041 0014 4800 0018"            /* 8•..H..—ÄA..H... */
	$"3862 0364 389D 0000 38A0 0006 4800 1AB9"            /* 8b.d8ù..8†..H..π */
	$"8041 0014 8001 0158 3821 0150 7C08 03A6"            /* ÄA..Ä..X8!.P|..¶ */
	$"83E1 FFFC 83C1 FFF8 83A1 FFF4 4E80 0020"            /* É·ˇ¸É¡ˇ¯É°ˇÙNÄ.  */
	$"0000 0000 0000 2041 8003 0000 0000 0148"            /* ...... AÄ......H */
	$"0013 2E47 6574 5F69 636F 6E5F 6669 6C65"            /* ...Get_icon_file */
	$"5F6E 616D 6500 0000 7C08 02A6 93E1 FFFC"            /* _name...|..¶ì·ˇ¸ */
	$"93C1 FFF8 93A1 FFF4 9381 FFF0 9001 0008"            /* ì¡ˇ¯ì°ˇÙìÅˇê... */
	$"9421 FDE0 B061 023A 3BA4 0000 3800 0000"            /* î!˝‡∞a.:;§..8... */
	$"9004 0000 3800 0000 9001 019E A801 023A"            /* ê...8...ê..û®..: */
	$"B001 01A2 3800 0000 B001 01A8 3861 018C"            /* ∞..¢8...∞..®8a.å */
	$"4800 1A0D 8041 0014 3BE3 0000 7FE0 0735"            /* H...ÄA..;„...‡.5 */
	$"4082 0150 3861 018C A863 0044 3881 0038"            /* @Ç.P8a.å®c.D8Å.8 */
	$"4800 191D 6000 0000 3BE3 0000 7FE0 0735"            /* H...`...;„...‡.5 */
	$"4082 0130 3861 0038 3882 036A 38A0 0001"            /* @Ç.08a.88Ç.j8†.. */
	$"38C0 0000 4800 1DE9 8041 0014 5460 063F"            /* 8¿..H..ÈÄA..T`.? */
	$"4182 0048 4800 1AF1 8041 0014 3B83 0000"            /* AÇ.HH..ÒÄA..;É.. */
	$"3860 0000 4800 1BB9 8041 0014 387D 0000"            /* 8`..H..πÄA..8}.. */
	$"3880 F062 38A0 FFFF 38C0 0001 4BFF FB09"            /* 8Äb8†ˇˇ8¿..Kˇ˚. */
	$"6000 0000 3BE3 0000 387C 0000 4800 1B91"            /* `...;„..8|..H..ë */
	$"8041 0014 4800 00CC A801 01D0 B001 0154"            /* ÄA..H..Ã®..–∞..T */
	$"A801 01CE B001 0152 3BC1 013C 3800 0000"            /* ®..Œ∞..R;¡.<8... */
	$"941E 001C 3800 0016 B001 0156 3861 013C"            /* î...8...∞..V8a.< */
	$"4800 1D85 8041 0014 3BE3 0000 7FE0 0735"            /* H..ÖÄA..;„...‡.5 */
	$"4082 0010 801E 0000 2C00 0000 4181 001C"            /* @Ç..Ä...,...AÅ.. */
	$"3800 0015 B001 0156 3861 013C 4800 1D59"            /* 8...∞..V8a.<H..Y */
	$"8041 0014 3BE3 0000 7FE0 0735 4082 0064"            /* ÄA..;„...‡.5@Ç.d */
	$"801E 0000 2C00 0000 4081 0058 387D 0000"            /* Ä...,...@Å.X8}.. */
	$"4800 1A95 8041 0014 3BE3 0000 7FE0 0735"            /* H..ïÄA..;„...‡.5 */
	$"4082 0040 807E 0000 3881 0138 38A0 0100"            /* @Ç.@Ä~..8Å.88†.. */
	$"4800 1D2D 8041 0014 3BE3 0000 7FE0 0735"            /* H..-ÄA..;„...‡.5 */
	$"4082 0020 8061 0138 809D 0000 3CA0 4943"            /* @Ç. Äa.8Äù..<†IC */
	$"38A5 4E23 4800 1D21 8041 0014 3BE3 0000"            /* 8•N#H..!ÄA..;„.. */
	$"387F 0000 8001 0228 3821 0220 7C08 03A6"            /* 8...Ä..(8!. |..¶ */
	$"83E1 FFFC 83C1 FFF8 83A1 FFF4 8381 FFF0"            /* É·ˇ¸É¡ˇ¯É°ˇÙÉÅˇ */
	$"4E80 0020 0000 0000 0000 2041 8004 0000"            /* NÄ. ...... AÄ... */
	$"0000 01CC 0010 2E47 6574 5F76 6F6C 756D"            /* ...Ã...Get_volum */
	$"655F 6963 6F6E 0000 7C08 02A6 93E1 FFFC"            /* e_icon..|..¶ì·ˇ¸ */
	$"9001 0008 9421 FF40 B061 00DA 3800 0000"            /* ê...î!ˇ@∞a.⁄8... */
	$"9001 004A A801 00DA B001 004E 3800 0000"            /* ê..J®..⁄∞..N8... */
	$"B001 0054 3861 0038 4800 1835 8041 0014"            /* ∞..T8a.8H..5ÄA.. */
	$"3BE3 0000 3860 0000 7FE0 0735 4082 0014"            /* ;„..8`...‡.5@Ç.. */
	$"A801 007C 2C00 0000 4081 0008 3860 0001"            /* ®..|,...@Å..8`.. */
	$"8001 00C8 3821 00C0 7C08 03A6 83E1 FFFC"            /* Ä..»8!.¿|..¶É·ˇ¸ */
	$"4E80 0020 0000 0000 0000 2041 8001 0000"            /* NÄ. ...... AÄ... */
	$"0000 006C 000F 2E49 735F 766F 6C5F 656A"            /* ...l...Is_vol_ej */
	$"6563 7465 6400 0000 93E1 FFFC 3C80 6963"            /* ected...ì·ˇ¸<Äic */
	$"3884 7323 7C03 2000 4182 0084 4080 0040"            /* 8Ñs#|. .AÇ.Ñ@Ä.@ */
	$"3C80 6963 3884 6C34 7C03 2000 4182 0060"            /* <Äic8Ñl4|. .AÇ.` */
	$"4080 0018 3C80 4943 3884 4E23 7C03 2000"            /* @Ä..<ÄIC8ÑN#|. . */
	$"4182 0044 4800 0070 3C80 6963 3884 6C38"            /* AÇ.DH..p<Äic8Ñl8 */
	$"7C03 2000 4182 0040 4800 005C 3C80 6963"            /* |. .AÇ.@H..\<Äic */
	$"3884 7338 7C03 2000 4182 0044 4080 0048"            /* 8Ñs8|. .AÇ.D@Ä.H */
	$"3C80 6963 3884 7334 7C03 2000 4182 0028"            /* <Äic8Ñs4|. .AÇ.( */
	$"4800 0034 3BE0 0001 4800 0030 3BE0 0002"            /* H..4;‡..H..0;‡.. */
	$"4800 0028 3BE0 0003 4800 0020 3BE0 0004"            /* H..(;‡..H.. ;‡.. */
	$"4800 0018 3BE0 0005 4800 0010 3BE0 0006"            /* H...;‡..H...;‡.. */
	$"4800 0008 3BE0 0000 387F 0000 83E1 FFFC"            /* H...;‡..8...É·ˇ¸ */
	$"4E80 0020 0000 0000 0000 2040 0001 0000"            /* NÄ. ...... @.... */
	$"0000 00BC 0010 2E52 6573 4963 6F6E 546F"            /* ...º...ResIconTo */
	$"4454 4963 6F6E 0000 7C08 02A6 BF61 FFEC"            /* DTIcon..|..¶øaˇÏ */
	$"9001 0008 9421 FFB0 3BA3 0000 9081 006C"            /* ê...î!ˇ∞;£..êÅ.l */
	$"3BC5 0000 3BE0 0000 3B80 0000 3C1D 969D"            /* ;≈..;‡..;Ä..<.ñù */
	$"2800 6C38 4182 0010 3C1D 969D 2800 6C34"            /* (.l8AÇ..<.ñù(.l4 */
	$"4082 0010 881E 000A 2800 0000 4082 0028"            /* @Ç..à...(...@Ç.( */
	$"3C1D 969D 2800 7338 4182 0010 3C1D 969D"            /* <.ñù(.s8AÇ..<.ñù */
	$"2800 7334 4082 0014 881E 000B 2800 0000"            /* (.s4@Ç..à...(... */
	$"4182 0008 3B80 0001 387D 0000 4BFF FEAD"            /* AÇ..;Ä..8}..Kˇ˛≠ */
	$"3B63 0000 7F63 0734 3800 0000 7C00 0734"            /* ;c...c.48...|..4 */
	$"7C03 0050 7C00 0034 5400 D97E 7F9C 0378"            /* |..P|..4T.Ÿ~.ú.x */
	$"5780 063F 4082 0078 3860 0000 A89E 0008"            /* WÄ.?@Ç.x8`..®û.. */
	$"38BB 0000 80DE 0000 80FE 0004 8101 006C"            /* 8ª..Äﬁ..Ä˛..Å..l */
	$"4800 11A9 6000 0000 3BE3 0000 7FE0 0735"            /* H..©`...;„...‡.5 */
	$"4082 0030 3C1D B6BD 2800 4E23 4082 0010"            /* @Ç.0<.∂Ω(.N#@Ç.. */
	$"3800 0000 981E 000A 4800 0018 3C1D 969D"            /* 8...ò...H...<.ñù */
	$"2800 7323 4082 000C 3800 0000 981E 000B"            /* (.s#@Ç..8...ò... */
	$"7FE0 0734 2C00 EC6C 4182 0010 7FE0 0734"            /* .‡.4,.ÏlAÇ...‡.4 */
	$"2C00 FFCE 4082 0008 3BE0 0000 387F 0000"            /* ,.ˇŒ@Ç..;‡..8... */
	$"8001 0058 3821 0050 7C08 03A6 BB61 FFEC"            /* Ä..X8!.P|..¶ªaˇÏ */
	$"4E80 0020 0000 0000 0000 2041 8005 0000"            /* NÄ. ...... AÄ... */
	$"0000 012C 000D 2E41 6464 4F6E 6544 5449"            /* ...,...AddOneDTI */
	$"636F 6E00 7C08 02A6 93E1 FFFC 93C1 FFF8"            /* con.|..¶ì·ˇ¸ì¡ˇ¯ */
	$"93A1 FFF4 9001 0008 9421 FFA0 B061 007A"            /* ì°ˇÙê...î!ˇ†∞a.z */
	$"9081 007C 90A1 0080 90C1 0084 3BA7 0000"            /* êÅ.|ê°.Äê¡.Ñ;ß.. */
	$"8061 007C 3881 003C 38A1 0038 4800 0175"            /* Äa.|8Å.<8°.8H..u */
	$"6000 0000 8001 003C 5400 040E 9001 003C"            /* `...Ä..<T...ê..< */
	$"8001 0038 5400 040E 9001 0038 387D 0000"            /* Ä..8T...ê..88}.. */
	$"4800 16E5 8041 0014 3BE3 0000 7FE0 0735"            /* H..ÂÄA..;„...‡.5 */
	$"4082 00FC 8062 00EC 3880 0FE0 38A0 0001"            /* @Ç.¸Äb.Ï8Ä.‡8†.. */
	$"4800 15D5 8041 0014 7C7E 1B79 4082 000C"            /* H..’ÄA..|~.y@Ç.. */
	$"3BE0 FF94 4800 009C 3800 0001 9801 004A"            /* ;‡ˇîH..ú8...ò..J */
	$"3800 0001 9801 004B 8001 0080 9001 0040"            /* 8...ò..KÄ..Äê..@ */
	$"8001 0084 9001 0044 A801 007A B001 0048"            /* Ä..Ñê..D®..z∞..H */
	$"807D 0000 8081 003C 38BE 0000 38C1 0040"            /* Ä}..ÄÅ.<8æ..8¡.@ */
	$"4800 159D 8041 0014 3BE3 0000 7FE0 0735"            /* H..ùÄA..;„...‡.5 */
	$"4082 0044 8001 0038 2800 0000 4182 0038"            /* @Ç.DÄ..8(...AÇ.8 */
	$"8801 004A 2800 0000 4182 002C 8801 004B"            /* à..J(...AÇ.,à..K */
	$"2800 0000 4182 0020 807D 0000 8081 0038"            /* (...AÇ. Ä}..ÄÅ.8 */
	$"38BE 0000 38C1 0040 4800 1555 8041 0014"            /* 8æ..8¡.@H..UÄA.. */
	$"3BE3 0000 387E 0000 4800 155D 8041 0014"            /* ;„..8~..H..]ÄA.. */
	$"7FE0 0735 4082 0038 8801 004A 2800 0000"            /* .‡.5@Ç.8à..J(... */
	$"4182 002C 8801 004B 2800 0000 4182 0020"            /* AÇ.,à..K(...AÇ.  */
	$"3BE0 FC18 807D 0000 3880 0000 4800 1541"            /* ;‡¸.Ä}..8Ä..H..A */
	$"8041 0014 3800 0000 901D 0000 387F 0000"            /* ÄA..8...ê...8... */
	$"8001 0068 3821 0060 7C08 03A6 83E1 FFFC"            /* Ä..h8!.`|..¶É·ˇ¸ */
	$"83C1 FFF8 83A1 FFF4 4E80 0020 0000 0000"            /* É¡ˇ¯É°ˇÙNÄ. .... */
	$"0000 2041 8003 0000 0000 0188 000F 2E44"            /* .. AÄ......à...D */
	$"5447 6574 4963 6F6E 5375 6974 6500 0000"            /* TGetIconSuite... */
	$"3C03 8000 2800 FF00 4082 001C 3CC0 0001"            /* <.Ä.(.ˇ.@Ç..<¿.. */
	$"38C6 FF00 90C4 0000 3800 00FF 9005 0000"            /* 8∆ˇ.êƒ..8..ˇê... */
	$"4E80 0020 3C03 8000 2800 00FF 4082 001C"            /* NÄ. <.Ä.(..ˇ@Ç.. */
	$"3800 00FF 9004 0000 3CC0 0001 38C6 FF00"            /* 8..ˇê...<¿..8∆ˇ. */
	$"90C5 0000 4E80 0020 3C03 8000 2800 0400"            /* ê≈..NÄ. <.Ä.(... */
	$"4082 0018 3800 0500 9004 0000 3800 00FF"            /* @Ç..8...ê...8..ˇ */
	$"9005 0000 4E80 0020 9064 0000 3800 0000"            /* ê...NÄ. êd..8... */
	$"9005 0000 4E80 0020 0000 0000 0000 2040"            /* ê...NÄ. ...... @ */
	$"0000 0000 0000 0078 0013 2E45 7870 616E"            /* .......x...Expan */
	$"644D 6574 6153 656C 6563 746F 7200 0000"            /* dMetaSelector... */
	$"93E1 FFFC 93C1 FFF8 3BC2 0370 3BE0 0000"            /* ì·ˇ¸ì¡ˇ¯;¬.p;‡.. */
	$"4800 007C 3860 0000 7FE0 0734 1C00 0014"            /* H..|8`...‡.4.... */
	$"7C7E 012E 3880 0000 7FE0 0734 1C60 0014"            /* |~..8Ä...‡.4.`.. */
	$"3803 0004 7C9E 012E 3880 0000 7FE0 0734"            /* 8...|û..8Ä...‡.4 */
	$"1C60 0014 3803 0008 7C9E 012E 3880 0000"            /* .`..8...|û..8Ä.. */
	$"7FE0 0734 1C60 0014 3803 000C 7C9E 012E"            /* .‡.4.`..8...|û.. */
	$"389F FFFF 7FE0 0734 1C60 0014 3803 0010"            /* 8üˇˇ.‡.4.`..8... */
	$"7C9E 032E 389F 0001 7FE0 0734 1C60 0014"            /* |û..8ü...‡.4.`.. */
	$"3803 0012 7C9E 032E 3BFF 0001 7FE0 0734"            /* 8...|û..;ˇ...‡.4 */
	$"2C00 0014 4180 FF80 3800 0013 B002 00F8"            /* ,...AÄˇÄ8...∞..¯ */
	$"83E1 FFFC 83C1 FFF8 4E80 0020 0000 0000"            /* É·ˇ¸É¡ˇ¯NÄ. .... */
	$"0000 2040 0002 0000 0000 00AC 000C 2E46"            /* .. @.......¨...F */
	$"4949 6E69 7443 6163 6865 0000 93E1 FFFC"            /* IInitCache..ì·ˇ¸ */
	$"3BE2 0370 7C64 0734 A802 00FA 7C04 0000"            /* ;‚.p|d.4®..˙|... */
	$"4182 00AC 7C60 0734 1C80 0014 3804 0012"            /* AÇ.¨|`.4.Ä..8... */
	$"7CBF 02AE 7C60 0734 1C80 0014 3804 0010"            /* |ø.Æ|`.4.Ä..8... */
	$"7C1F 02AE 1C80 0014 3804 0012 7CBF 032E"            /* |..Æ.Ä..8...|ø.. */
	$"7C64 0734 A802 00F8 7C04 0000 4082 001C"            /* |d.4®..¯|...@Ç.. */
	$"7C60 0734 1C80 0014 3804 0010 7C1F 02AE"            /* |`.4.Ä..8...|..Æ */
	$"B002 00F8 4800 0030 7C60 0734 1C80 0014"            /* ∞..¯H..0|`.4.Ä.. */
	$"3804 0010 7CBF 02AE 7C60 0734 1C80 0014"            /* 8...|ø.Æ|`.4.Ä.. */
	$"3804 0012 7C1F 02AE 1C80 0014 3804 0010"            /* 8...|..Æ.Ä..8... */
	$"7CBF 032E A8A2 00FA 7C60 0734 1C80 0014"            /* |ø..®¢.˙|`.4.Ä.. */
	$"3804 0012 7CBF 032E A802 00FA 1C80 0014"            /* 8...|ø..®..˙.Ä.. */
	$"3804 0010 7C7F 032E B062 00FA 83E1 FFFC"            /* 8...|...∞b.˙É·ˇ¸ */
	$"4E80 0020 0000 0000 0000 2040 0001 0000"            /* NÄ. ...... @.... */
	$"0000 00C8 0010 2E46 494D 616B 6543 656C"            /* ...»...FIMakeCel */
	$"6C46 6972 7374 0000 7C08 02A6 BF61 FFEC"            /* lFirst..|..¶øaˇÏ */
	$"9001 0008 9421 FFA0 3B63 0000 3B84 0000"            /* ê...î!ˇ†;c..;Ñ.. */
	$"3BA5 0000 3BC2 0370 3800 0000 9001 0038"            /* ;•..;¬.p8...ê..8 */
	$"A862 00F8 A802 00FA 7C03 0000 4082 0008"            /* ®b.¯®..˙|...@Ç.. */
	$"4BFF FE11 ABE2 00FA 7FE0 0734 1C00 0014"            /* Kˇ˛.´‚.˙.‡.4.... */
	$"7C1E 002E 7C1B 0040 4082 004C 7FE0 0734"            /* |...|..@@Ç.L.‡.4 */
	$"1C60 0014 3803 0004 7C1E 002E 7C1C 0040"            /* .`..8...|...|..@ */
	$"4082 0034 7FE0 0734 1C60 0014 3803 0008"            /* @Ç.4.‡.4.`..8... */
	$"7C1E 002E 7C1D 0040 4082 001C 7FE0 0734"            /* |...|..@@Ç...‡.4 */
	$"1C60 0014 3803 000C 7C1E 002E 9001 0038"            /* .`..8...|...ê..8 */
	$"4800 0028 7FE3 0734 A802 00F8 7C03 0000"            /* H..(.„.4®..¯|... */
	$"4182 0018 7FE0 0734 1C60 0014 3803 0012"            /* AÇ...‡.4.`..8... */
	$"7FFE 02AE 4BFF FF84 8001 0038 2800 0000"            /* .˛.ÆKˇˇÑÄ..8(... */
	$"4182 0020 281D 0000 4182 0010 3861 0038"            /* AÇ. (...AÇ..8a.8 */
	$"4800 02C5 6000 0000 387F 0000 4BFF FE31"            /* H..≈`...8...Kˇ˛1 */
	$"8061 0038 8001 0068 3821 0060 7C08 03A6"            /* Äa.8Ä..h8!.`|..¶ */
	$"BB61 FFEC 4E80 0020 0000 0000 0000 2041"            /* ªaˇÏNÄ. ...... A */
	$"8005 0000 0000 0100 0010 2E46 495F 6361"            /* Ä..........FI_ca */
	$"6368 655F 7365 6172 6368 0000 7C08 02A6"            /* che_search..|..¶ */
	$"93E1 FFFC 93C1 FFF8 93A1 FFF4 9001 0008"            /* ì·ˇ¸ì¡ˇ¯ì°ˇÙê... */
	$"9421 FFB0 9061 0068 9081 006C 3BA5 0000"            /* î!ˇ∞êa.hêÅ.l;•.. */
	$"90C1 0074 3BE2 0370 A862 00F8 A802 00FA"            /* ê¡.t;‚.p®b.¯®..˙ */
	$"7C03 0000 4082 0008 4BFF FCE9 281D 0000"            /* |...@Ç..Kˇ¸È(... */
	$"4182 0018 3861 0074 4800 022D 6000 0000"            /* AÇ..8a.tH..-`... */
	$"3BC3 0000 4800 0008 3BC0 0000 7FC0 0735"            /* ;√..H...;¿...¿.5 */
	$"4082 00A0 A802 00F8 1C60 0014 3803 000C"            /* @Ç.†®..¯.`..8... */
	$"7C1F 002E 2800 0000 4182 0038 A802 00F8"            /* |...(...AÇ.8®..¯ */
	$"1C60 0014 3803 0008 7C1F 002E 2800 0000"            /* .`..8...|...(... */
	$"4182 0020 A802 00F8 1C60 0014 3803 000C"            /* AÇ. ®..¯.`..8... */
	$"7C7F 002E 3880 0001 4800 10C5 8041 0014"            /* |...8Ä..H..≈ÄA.. */
	$"8081 0074 A802 00F8 1C60 0014 3803 000C"            /* ÄÅ.t®..¯.`..8... */
	$"7C9F 012E 8061 0068 A802 00F8 1C00 0014"            /* |ü..Äa.h®..¯.... */
	$"7C7F 012E 8081 006C A802 00F8 1C60 0014"            /* |...ÄÅ.l®..¯.`.. */
	$"3803 0004 7C9F 012E A802 00F8 1C60 0014"            /* 8...|ü..®..¯.`.. */
	$"3803 0008 7FBF 012E A862 00F8 4BFF FCF1"            /* 8....ø..®b.¯Kˇ¸Ò */
	$"8001 0058 3821 0050 7C08 03A6 83E1 FFFC"            /* Ä..X8!.P|..¶É·ˇ¸ */
	$"83C1 FFF8 83A1 FFF4 4E80 0020 0000 0000"            /* É¡ˇ¯É°ˇÙNÄ. .... */
	$"0000 2041 8003 0000 0000 0120 0012 2E46"            /* .. AÄ...... ...F */
	$"495F 7374 6F72 655F 696E 5F63 6163 6865"            /* I_store_in_cache */
	$"7C08 02A6 93E1 FFFC 93C1 FFF8 9001 0008"            /* |..¶ì·ˇ¸ì¡ˇ¯ê... */
	$"9421 FFC0 3BE4 0000 8004 0000 2800 0000"            /* î!ˇ¿;‰..Ä...(... */
	$"4182 0040 807F 0000 8003 0000 2800 0000"            /* AÇ.@Ä...Ä...(... */
	$"4082 0010 807F 0000 4800 112D 8041 0014"            /* @Ç..Ä...H..-ÄA.. */
	$"387F 0000 4800 10D9 8041 0014 3BC3 0000"            /* 8...H..ŸÄA..;√.. */
	$"7FC0 0735 4182 000C 3800 0000 901F 0000"            /* .¿.5AÇ..8...ê... */
	$"3860 0000 8001 0048 3821 0040 7C08 03A6"            /* 8`..Ä..H8!.@|..¶ */
	$"83E1 FFFC 83C1 FFF8 4E80 0020 0000 0000"            /* É·ˇ¸É¡ˇ¯NÄ. .... */
	$"0000 2041 8002 0000 0000 007C 000E 2E43"            /* .. AÄ......|...C */
	$"6F70 795F 6F6E 655F 6963 6F6E 7C08 02A6"            /* opy_one_icon|..¶ */
	$"93E1 FFFC 93C1 FFF8 9001 0008 9421 FFC0"            /* ì·ˇ¸ì¡ˇ¯ê...î!ˇ¿ */
	$"9061 0058 8062 00F4 3880 0FE0 38A0 0001"            /* êa.XÄb.Ù8Ä.‡8†.. */
	$"4800 0F25 8041 0014 3BE3 0000 8061 0058"            /* H..%ÄA..;„..Äa.X */
	$"3880 FFFF 38BF 0000 38C0 0000 4800 0F21"            /* 8Äˇˇ8ø..8¿..H..! */
	$"8041 0014 3BC3 0000 387F 0000 4800 0F29"            /* ÄA..;√..8...H..) */
	$"8041 0014 387E 0000 8001 0048 3821 0040"            /* ÄA..8~..Ä..H8!.@ */
	$"7C08 03A6 83E1 FFFC 83C1 FFF8 4E80 0020"            /* |..¶É·ˇ¸É¡ˇ¯NÄ.  */
	$"0000 0000 0000 2041 8002 0000 0000 0074"            /* ...... AÄ......t */
	$"0012 2E46 495F 636F 7079 5F65 6163 685F"            /* ...FI_copy_each_ */
	$"6963 6F6E 7C08 02A6 93E1 FFFC 93C1 FFF8"            /* icon|..¶ì·ˇ¸ì¡ˇ¯ */
	$"9001 0008 9421 FFC0 3BC3 0000 4800 0FD1"            /* ê...î!ˇ¿;√..H..— */
	$"8041 0014 3BE3 0000 7FE0 0735 4082 0034"            /* ÄA..;„...‡.5@Ç.4 */
	$"807E 0000 4BFF FF39 3BE3 0000 7FE0 0735"            /* Ä~..Kˇˇ9;„...‡.5 */
	$"4182 0028 807E 0000 3880 0001 4800 0EB1"            /* AÇ.(Ä~..8Ä..H..± */
	$"8041 0014 3800 0000 901E 0000 4800 000C"            /* ÄA..8...ê...H... */
	$"3800 0000 901E 0000 387F 0000 8001 0048"            /* 8...ê...8...Ä..H */
	$"3821 0040 7C08 03A6 83E1 FFFC 83C1 FFF8"            /* 8!.@|..¶É·ˇ¸É¡ˇ¯ */
	$"4E80 0020 0000 0000 0000 2041 8002 0000"            /* NÄ. ...... AÄ... */
	$"0000 0080 000F 2E46 495F 636C 6F6E 655F"            /* ...Ä...FI_clone_ */
	$"7375 6974 6500 0000 7C08 02A6 93E1 FFFC"            /* suite...|..¶ì·ˇ¸ */
	$"9001 0008 9421 FF70 B061 00AA 3801 0038"            /* ê...î!ˇp∞a.™8..8 */
	$"9001 006C 3800 0014 9001 0070 A801 00AA"            /* ê..l8...ê..p®..™ */
	$"B001 0062 3800 0000 9001 005E 3861 004C"            /* ∞..b8...ê..^8a.L */
	$"4800 0FB5 8041 0014 3861 0038 8063 000A"            /* H..µÄA..8a.8Äc.. */
	$"3800 0000 7C03 0050 7C00 0034 541F D97E"            /* 8...|..P|..4T.Ÿ~ */
	$"387F 0000 8001 0098 3821 0090 7C08 03A6"            /* 8...Ä..ò8!.ê|..¶ */
	$"83E1 FFFC 4E80 0020 0000 0000 0000 2041"            /* É·ˇ¸NÄ. ...... A */
	$"8001 0000 0000 0070 0010 2E49 735F 6C6F"            /* Ä......p...Is_lo */
	$"6361 6C5F 766F 6C75 6D65 0000 7C08 02A6"            /* cal_volume..|..¶ */
	$"93E1 FFFC 93C1 FFF8 93A1 FFF4 9001 0008"            /* ì·ˇ¸ì¡ˇ¯ì°ˇÙê... */
	$"9421 FF30 B061 00EA 9081 00EC 8001 00EC"            /* î!ˇ0∞a.ÍêÅ.ÏÄ..Ï */
	$"9001 004A A801 00EA B001 004E 3800 0000"            /* ê..J®..Í∞..N8... */
	$"9801 0052 3BC0 0001 3BA0 0000 3800 0002"            /* ò..R;¿..;†..8... */
	$"9001 0068 B3C1 0054 3861 0038 4800 0FB1"            /* ê..h≥¡.T8a.8H..± */
	$"8041 0014 3BE3 0000 7FE0 0735 4082 0030"            /* ÄA..;„...‡.5@Ç.0 */
	$"3861 0038 8063 0020 3C03 B9B2 2800 4452"            /* 8a.8Äc. <.π≤(.DR */
	$"4082 001C 3861 0038 8063 0024 3C03 BAAE"            /* @Ç..8a.8Äc.$<.∫Æ */
	$"2800 494B 4082 0008 3BA0 0001 7FE0 0735"            /* (.IK@Ç..;†...‡.5 */
	$"3BDE 0001 4082 000C 57A0 063F 4182 FFA0"            /* ;ﬁ..@Ç..W†.?AÇˇ† */
	$"387F 0000 8001 00D8 3821 00D0 7C08 03A6"            /* 8...Ä..ÿ8!.–|..¶ */
	$"83E1 FFFC 83C1 FFF8 83A1 FFF4 4E80 0020"            /* É·ˇ¸É¡ˇ¯É°ˇÙNÄ.  */
	$"0000 0000 0000 2041 8003 0000 0000 00C4"            /* ...... AÄ......ƒ */
	$"0013 2E47 6574 4465 736B 746F 7046 696C"            /* ...GetDesktopFil */
	$"654E 616D 6500 0000 7C08 02A6 93E1 FFFC"            /* eName...|..¶ì·ˇ¸ */
	$"93C1 FFF8 93A1 FFF4 9381 FFF0 9001 0008"            /* ì¡ˇ¯ì°ˇÙìÅˇê... */
	$"9421 FF30 3B83 0000 3BA4 0000 90A1 00F0"            /* î!ˇ0;É..;§..ê°. */
	$"3BC6 0000 3800 0014 9001 00A0 38A1 00A4"            /* ;∆..8...ê..†8°.§ */
	$"38C1 00A0 4800 08DD 6000 0000 3BE3 0000"            /* 8¡.†H..›`...;„.. */
	$"7FE0 0735 4082 007C 8001 00A6 5400 04E7"            /* .‡.5@Ç.|Ä..¶T..Á */
	$"4182 006C 9381 004A B3A1 004E 3861 0038"            /* AÇ.lìÅ.J≥°.N8a.8 */
	$"4800 0E1D 8041 0014 3BE3 0000 8001 0054"            /* H...ÄA..;„..Ä..T */
	$"5403 07FE 3800 0000 7C03 0050 7C00 0034"            /* T..˛8...|..P|..4 */
	$"5400 D97E 981E 0000 7FE0 0734 2C00 FFCE"            /* T.Ÿ~ò....‡.4,.ˇŒ */
	$"4082 001C 3861 0038 4800 0DFD 8041 0014"            /* @Ç..8a.8H..˝ÄA.. */
	$"3BE3 0000 3800 0000 981E 0000 A801 0050"            /* ;„..8...ò...®..P */
	$"8061 00F0 B003 0000 4800 0008 3BE0 FFCE"            /* Äa.∞...H...;‡ˇŒ */
	$"387F 0000 8001 00D8 3821 00D0 7C08 03A6"            /* 8...Ä..ÿ8!.–|..¶ */
	$"83E1 FFFC 83C1 FFF8 83A1 FFF4 8381 FFF0"            /* É·ˇ¸É¡ˇ¯É°ˇÙÉÅˇ */
	$"4E80 0020 0000 0000 0000 2041 8004 0000"            /* NÄ. ...... AÄ... */
	$"0000 00EC 0007 2E44 544F 7065 6E00 0000"            /* ...Ï...DTOpen... */
	$"7C08 02A6 BF41 FFE8 9001 0008 9421 FFB0"            /* |..¶øAˇËê...î!ˇ∞ */
	$"3B43 0000 3BA4 0000 3B80 EC6C 3C60 424E"            /* ;C..;§..;ÄÏl<`BN */
	$"3863 444C 4800 0E01 8041 0014 3B63 0000"            /* 8cDLH...ÄA..;c.. */
	$"3BC0 0001 3800 0000 901D 0000 4800 005C"            /* ;¿..8...ê...H..\ */
	$"3C60 424E 389E 0000 3863 444C 4800 0DF1"            /* <`BN8û..8cDLH..Ò */
	$"8041 0014 7C7F 1B79 4182 003C 807F 0000"            /* ÄA..|..yAÇ.<Ä... */
	$"8003 0000 7C00 D040 4082 002C 807F 0000"            /* Ä...|.–@@Ç.,Ä... */
	$"A803 0006 2C00 0000 4180 001C 807F 0000"            /* ®...,...AÄ..Ä... */
	$"A803 000C 2C00 0000 4180 000C 93FD 0000"            /* ®...,...AÄ..ì˝.. */
	$"3B80 0000 3BDE 0001 7FC3 0734 7F60 0734"            /* ;Ä..;ﬁ...√.4.`.4 */
	$"7C03 0000 4181 0010 801D 0000 2800 0000"            /* |...AÅ..Ä...(... */
	$"4182 FF90 387C 0000 8001 0058 3821 0050"            /* AÇˇê8|..Ä..X8!.P */
	$"7C08 03A6 BB41 FFE8 4E80 0020 0000 0000"            /* |..¶ªAˇËNÄ. .... */
	$"0000 2041 8006 0000 0000 00CC 0017 2E46"            /* .. AÄ......Ã...F */
	$"696E 6442 756E 646C 6547 6976 656E 4372"            /* indBundleGivenCr */
	$"6561 746F 7200 0000 93E1 FFFC 93C1 FFF8"            /* eator...ì·ˇ¸ì¡ˇ¯ */
	$"93A1 FFF4 3BA0 EC6C 80C4 0000 3BE6 0008"            /* ì°ˇÙ;†ÏlÄƒ..;Ê.. */
	$"3BC0 0000 3800 0000 9005 0000 4800 0040"            /* ;¿..8...ê...H..@ */
	$"801F 0000 7C00 1840 4082 001C A81F 0004"            /* Ä...|..@@Ç..®... */
	$"2C00 0000 4180 0010 93E5 0000 3BA0 0000"            /* ,...AÄ..ìÂ..;†.. */
	$"4800 001C A8DF 0004 3806 0001 5400 103A"            /* H...®ﬂ..8...T..: */
	$"7FE0 FA14 3BFF 0006 3BDE 0001 7FC7 0734"            /* .‡˙.;ˇ..;ﬁ...«.4 */
	$"80C4 0000 A8C6 0006 3806 0001 7C07 0000"            /* Äƒ..®∆..8...|... */
	$"4080 0010 8005 0000 2800 0000 4182 FFA4"            /* @Ä..Ä...(...AÇˇ§ */
	$"387D 0000 83E1 FFFC 83C1 FFF8 83A1 FFF4"            /* 8}..É·ˇ¸É¡ˇ¯É°ˇÙ */
	$"4E80 0020 0000 0000 0000 2040 0003 0000"            /* NÄ. ...... @.... */
	$"0000 009C 0011 2E46 696E 6454 7970 6549"            /* ...ú...FindTypeI */
	$"6E42 756E 646C 6500 7C08 02A6 BF21 FFE4"            /* nBundle.|..¶ø!ˇ‰ */
	$"9001 0008 9421 FFA0 3B43 0000 3B24 0000"            /* ê...î!ˇ†;C..;$.. */
	$"3B85 0000 3B60 EC6C 3BC0 0000 3BBA 0006"            /* ;Ö..;`Ïl;¿..;∫.. */
	$"3800 0000 B005 0000 4800 0048 3C60 4652"            /* 8...∞...H..H<`FR */
	$"A89D 0002 3863 4546 4800 0A95 8041 0014"            /* ®ù..8cEFH..ïÄA.. */
	$"7C7F 1B79 4182 0024 807F 0000 8003 0000"            /* |..yAÇ.$Ä...Ä... */
	$"7C00 C840 4082 0014 807F 0000 A803 0004"            /* |.»@@Ç..Ä...®... */
	$"B01C 0000 3B60 0000 3BBD 0004 3BDE 0001"            /* ∞...;`..;Ω..;ﬁ.. */
	$"7FC3 0734 A81A 0004 7C03 0000 4181 0010"            /* .√.4®...|...AÅ.. */
	$"A81C 0000 2C00 0000 4182 FFA4 387B 0000"            /* ®...,...AÇˇ§8{.. */
	$"8001 0068 3821 0060 7C08 03A6 BB21 FFE4"            /* Ä..h8!.`|..¶ª!ˇ‰ */
	$"4E80 0020 0000 0000 0000 2041 8007 0000"            /* NÄ. ...... AÄ... */
	$"0000 00AC 0013 2E47 6574 4C6F 6361 6C49"            /* ...¨...GetLocalI */
	$"4446 726F 6D46 5245 4600 0000 93E1 FFFC"            /* DFromFREF...ì·ˇ¸ */
	$"93C1 FFF8 93A1 FFF4 3BA0 EC6C 3BC0 0000"            /* ì¡ˇ¯ì°ˇÙ;†Ïl;¿.. */
	$"3BE3 0006 3800 0000 B005 0000 4800 0028"            /* ;„..8...∞...H..( */
	$"A8DF 0000 7C80 0734 7C06 0000 4082 0010"            /* ®ﬂ..|Ä.4|...@Ç.. */
	$"A81F 0002 B005 0000 3BA0 0000 3BFF 0004"            /* ®...∞...;†..;ˇ.. */
	$"3BDE 0001 7FC6 0734 A803 0004 7C06 0000"            /* ;ﬁ...∆.4®...|... */
	$"4181 0010 A805 0000 2C00 0000 4182 FFC4"            /* AÅ..®...,...AÇˇƒ */
	$"387D 0000 83E1 FFFC 83C1 FFF8 83A1 FFF4"            /* 8}..É·ˇ¸É¡ˇ¯É°ˇÙ */
	$"4E80 0020 0000 0000 0000 2040 0003 0000"            /* NÄ. ...... @.... */
	$"0000 0078 0019 2E47 6574 4963 6F6E 5273"            /* ...x...GetIconRs */
	$"7263 4944 4672 6F6D 4C6F 6361 6C49 4400"            /* rcIDFromLocalID. */
	$"93E1 FFFC 7C60 0734 2C00 0004 4182 0054"            /* ì·ˇ¸|`.4,...AÇ.T */
	$"4080 001C 2C00 0002 4182 0030 4080 0038"            /* @Ä..,...AÇ.0@Ä.8 */
	$"2C00 0001 4080 0018 4800 005C 2C00 0006"            /* ,...@Ä..H..\,... */
	$"4182 0048 4080 0050 4800 0034 3FE0 4943"            /* AÇ.H@Ä.PH..4?‡IC */
	$"3BFF 4E23 4800 0044 3FE0 6963 3BFF 6C34"            /* ;ˇN#H..D?‡ic;ˇl4 */
	$"4800 0038 3FE0 6963 3BFF 6C38 4800 002C"            /* H..8?‡ic;ˇl8H.., */
	$"3FE0 6963 3BFF 7323 4800 0020 3FE0 6963"            /* ?‡ic;ˇs#H.. ?‡ic */
	$"3BFF 7334 4800 0014 3FE0 6963 3BFF 7338"            /* ;ˇs4H...?‡ic;ˇs8 */
	$"4800 0008 3BE0 0000 387F 0000 83E1 FFFC"            /* H...;‡..8...É·ˇ¸ */
	$"4E80 0020 0000 0000 0000 2040 0001 0000"            /* NÄ. ...... @.... */
	$"0000 0094 0010 2E44 5449 636F 6E54 6F52"            /* ...î...DTIconToR */
	$"6573 4963 6F6E 0000 7C08 02A6 BF41 FFE8"            /* esIcon..|..¶øAˇË */
	$"9001 0008 9421 FE90 9061 0188 B081 018E"            /* ê...î!˛êêa.à∞Å.é */
	$"B0A1 0192 90C1 0194 90E1 0198 3B48 0000"            /* ∞°.íê¡.îê·.ò;H.. */
	$"3800 0000 9001 0044 3800 0000 9008 0000"            /* 8...ê..D8...ê... */
	$"8061 0188 A881 018E 38A1 0148 4800 0561"            /* Äa.à®Å.é8°.HH..a */
	$"6000 0000 3BE3 0000 7FE0 0735 4082 01C8"            /* `...;„...‡.5@Ç.» */
	$"A861 0148 3881 0048 4BFF F9C5 3BE3 0000"            /* ®a.H8Å.HKˇ˘≈;„.. */
	$"7FE0 0735 4082 0198 4800 07BD 8041 0014"            /* .‡.5@Ç.òH..ΩÄA.. */
	$"3B83 0000 3860 0000 4800 07C5 8041 0014"            /* ;É..8`..H..≈ÄA.. */
	$"A861 0148 3880 0002 38A1 0048 38C0 0001"            /* ®a.H8Ä..8°.H8¿.. */
	$"4800 08CD 8041 0014 3BC3 0000 3860 0001"            /* H..ÕÄA..;√..8`.. */
	$"4800 079D 8041 0014 7FC0 0734 2C00 FFFF"            /* H..ùÄA...¿.4,.ˇˇ */
	$"4182 0140 8061 0194 3881 0044 4BFF FB55"            /* AÇ.@Äa.î8Å.DKˇ˚U */
	$"3BE3 0000 7FE0 0735 4082 010C 8061 0044"            /* ;„...‡.5@Ç..Äa.D */
	$"4800 0995 8041 0014 3B63 0000 8061 0044"            /* H..ïÄA..;c..Äa.D */
	$"4800 08F5 8041 0014 3C60 4652 8081 0044"            /* H..ıÄA..<`FRÄÅ.D */
	$"38A1 0040 3863 4546 4BFF FC11 3BE3 0000"            /* 8°.@8cEFKˇ¸.;„.. */
	$"7FE0 0735 4082 00C0 8061 0040 8081 0198"            /* .‡.5@Ç.¿Äa.@ÄÅ.ò */
	$"38A1 003E 4BFF FCB5 3BE3 0000 7FE0 0735"            /* 8°.>Kˇ¸µ;„...‡.5 */
	$"4082 00A4 3C60 4943 8081 0044 38A1 0040"            /* @Ç.§<`ICÄÅ.D8°.@ */
	$"3863 4E23 4BFF FBD5 3BE3 0000 7FE0 0735"            /* 8cN#Kˇ˚’;„...‡.5 */
	$"4082 0084 8061 0040 A881 003E 38A1 003C"            /* @Ç.ÑÄa.@®Å.>8°.< */
	$"4BFF FD4D 3BE3 0000 7FE0 0735 4082 0068"            /* Kˇ˝M;„...‡.5@Ç.h */
	$"A861 0192 4BFF FDDD 7C7D 1B79 4182 0058"            /* ®a.íKˇ˝›|}.yAÇ.X */
	$"387D 0000 A881 003C 4800 0725 8041 0014"            /* 8}..®Å.<H..%ÄA.. */
	$"9061 0038 8001 0038 2800 0000 4182 0034"            /* êa.8Ä..8(...AÇ.4 */
	$"3861 0038 4800 0739 8041 0014 4800 08E1"            /* 8a.8H..9ÄA..H..· */
	$"8041 0014 7C60 0735 4082 0010 8001 0038"            /* ÄA..|`.5@Ç..Ä..8 */
	$"901A 0000 4800 0010 3BE0 EC6C 4800 0008"            /* ê...H...;‡ÏlH... */
	$"3BE0 EC6C 8061 0044 389B 0000 4800 08C9"            /* ;‡ÏlÄa.D8õ..H..… */
	$"8041 0014 387C 0000 4800 0725 8041 0014"            /* ÄA..8|..H..%ÄA.. */
	$"387E 0000 4800 0701 8041 0014 4800 0010"            /* 8~..H...ÄA..H... */
	$"4800 067D 8041 0014 3BE3 0000 7FE0 0735"            /* H..}ÄA..;„...‡.5 */
	$"4182 0014 7FE0 0734 2C00 FF94 4182 0008"            /* AÇ...‡.4,.ˇîAÇ.. */
	$"3BE0 EC6C 387F 0000 8001 0178 3821 0170"            /* ;‡Ïl8...Ä..x8!.p */
	$"7C08 03A6 BB41 FFE8 4E80 0020 0000 0000"            /* |..¶ªAˇËNÄ. .... */
	$"0000 2041 8006 0000 0000 0234 0017 2E47"            /* .. AÄ......4...G */
	$"6574 4963 6F6E 4672 6F6D 4465 736B 746F"            /* etIconFromDeskto */
	$"7046 696C 6500 0000 7C08 02A6 BF01 FFE0"            /* pFile...|..¶ø.ˇ‡ */
	$"9001 0008 9421 FF30 3B03 0000 3B24 0000"            /* ê...î!ˇ0;...;$.. */
	$"3B85 0000 3B46 0000 3B67 0000 3BA8 0000"            /* ;Ö..;F..;g..;®.. */
	$"3800 0000 9008 0000 38A1 003A 38C1 0038"            /* 8...ê...8°.:8¡.8 */
	$"4BFF F879 3BC3 0000 7FC0 0735 4082 0130"            /* Kˇ¯y;√...¿.5@Ç.0 */
	$"8801 0038 2800 0000 4082 011C 7F80 0734"            /* à..8(...@Ç...Ä.4 */
	$"2C00 0004 4182 0048 4080 001C 2C00 0002"            /* ,...AÇ.H@Ä..,... */
	$"4182 002C 4080 0030 2C00 0001 4080 0018"            /* AÇ.,@Ä.0,...@Ä.. */
	$"4800 0044 2C00 0006 4182 0034 4080 0038"            /* H..D,...AÇ.4@Ä.8 */
	$"4800 0024 3BE0 0100 4800 0034 3BE0 0200"            /* H..$;‡..H..4;‡.. */
	$"4800 002C 3BE0 0400 4800 0024 3BE0 0040"            /* H..,;‡..H..$;‡.@ */
	$"4800 001C 3BE0 0080 4800 0014 3BE0 0100"            /* H...;‡.ÄH...;‡.. */
	$"4800 000C 3B80 0000 3BE0 0000 2C1F 0000"            /* H...;Ä..;‡..,... */
	$"4182 009C 387F 0000 4800 0695 8041 0014"            /* AÇ.ú8...H..ïÄA.. */
	$"907D 0000 801D 0000 2800 0000 4182 0078"            /* ê}..Ä...(...AÇ.x */
	$"807D 0000 4800 0691 8041 0014 A801 003A"            /* Ä}..H..ëÄA..®..: */
	$"B001 0054 3800 0000 9001 0058 807D 0000"            /* ∞..T8...ê..XÄ}.. */
	$"8003 0000 9001 005C 93E1 0060 9B81 0069"            /* Ä...ê..\ì·.`õÅ.i */
	$"9341 0070 9361 0074 3861 003C 4800 0671"            /* ìA.pìa.t8a.<H..q */
	$"8041 0014 3BC3 0000 807D 0000 4800 0679"            /* ÄA..;√..Ä}..H..y */
	$"8041 0014 7FC0 0735 4182 0054 807D 0000"            /* ÄA...¿.5AÇ.TÄ}.. */
	$"4800 0455 8041 0014 3800 0000 901D 0000"            /* H..UÄA..8...ê... */
	$"4800 003C 3BC0 FF94 4800 0034 3BC0 FFCE"            /* H..<;¿ˇîH..4;¿ˇŒ */
	$"4800 002C 3BC0 EC6C 4800 0024 3878 0000"            /* H..,;¿ÏlH..$8x.. */
	$"3899 0000 38BC 0000 38DA 0000 38FB 0000"            /* 8ô..8º..8⁄..8˚.. */
	$"391D 0000 4BFF FC15 3BC3 0000 387E 0000"            /* 9...Kˇ¸.;√..8~.. */
	$"8001 00D8 3821 00D0 7C08 03A6 BB01 FFE0"            /* Ä..ÿ8!.–|..¶ª.ˇ‡ */
	$"4E80 0020 0000 0000 0000 2041 8008 0000"            /* NÄ. ...... AÄ... */
	$"0000 01AC 000A 2E44 5447 6574 4963 6F6E"            /* ...¨...DTGetIcon */
	$"7C08 02A6 93E1 FFFC 93C1 FFF8 9001 0008"            /* |..¶ì·ˇ¸ì¡ˇ¯ê... */
	$"9421 FF40 9061 00D8 B081 00DE 90A1 00E0"            /* î!ˇ@êa.ÿ∞Å.ﬁê°.‡ */
	$"3BC6 0000 8001 00D8 9001 004A A801 00DE"            /* ;∆..Ä..ÿê..J®..ﬁ */
	$"B001 004E 8001 00E0 9001 0058 8006 0000"            /* ∞..NÄ..‡ê..XÄ... */
	$"9001 005C 3861 0038 4800 050D 8041 0014"            /* ê..\8a.8H...ÄA.. */
	$"3BE3 0000 7FE0 0735 4082 000C 8001 0060"            /* ;„...‡.5@Ç..Ä..` */
	$"901E 0000 387F 0000 8001 00C8 3821 00C0"            /* ê...8...Ä..»8!.¿ */
	$"7C08 03A6 83E1 FFFC 83C1 FFF8 4E80 0020"            /* |..¶É·ˇ¸É¡ˇ¯NÄ.  */
	$"0000 0000 0000 2041 8002 0000 0000 0080"            /* ...... AÄ......Ä */
	$"000D 2E48 4765 7456 6F6C 5061 726D 7300"            /* ...HGetVolParms. */
	$"7C08 02A6 93E1 FFFC 93C1 FFF8 93A1 FFF4"            /* |..¶ì·ˇ¸ì¡ˇ¯ì°ˇÙ */
	$"9001 0008 9421 FEB0 3BA3 0000 B081 016E"            /* ê...î!˛∞;£..∞Å.n */
	$"7CBF 2B79 4182 006C A801 016E B01F 0016"            /* |ø+yAÇ.l®..n∞... */
	$"281D 0000 4082 0018 3800 0000 901F 0012"            /* (...@Ç..8...ê... */
	$"3800 0000 B01F 001C 4800 002C 387D 0000"            /* 8...∞...H..,8}.. */
	$"3881 0038 88BD 0000 38A5 0001 4800 01E9"            /* 8Å.8àΩ..8•..H..È */
	$"8041 0014 3801 0038 901F 0012 3800 FFFF"            /* ÄA..8..8ê...8.ˇˇ */
	$"B01F 001C 387F 0000 4800 01B5 8041 0014"            /* ∞...8...H..µÄA.. */
	$"3BC3 0000 3800 0000 901F 0012 4800 0008"            /* ;√..8...ê...H... */
	$"3BC0 FFCE 387E 0000 8001 0158 3821 0150"            /* ;¿ˇŒ8~..Ä..X8!.P */
	$"7C08 03A6 83E1 FFFC 83C1 FFF8 83A1 FFF4"            /* |..¶É·ˇ¸É¡ˇ¯É°ˇÙ */
	$"4E80 0020 0000 0000 0000 2041 8003 0000"            /* NÄ. ...... AÄ... */
	$"0000 00B4 0014 2E47 6574 566F 6C75 6D65"            /* ...¥...GetVolume */
	$"496E 666F 4E6F 4E61 6D65 0000 7C08 02A6"            /* InfoNoName..|..¶ */
	$"93E1 FFFC 9001 0008 9421 FF40 9061 00D8"            /* ì·ˇ¸ê...î!ˇ@êa.ÿ */
	$"B081 00DE 90A1 00E0 8061 00D8 A881 00DE"            /* ∞Å.ﬁê°.‡Äa.ÿ®Å.ﬁ */
	$"38A1 0038 4BFF FEFD 3BE3 0000 7FE0 0735"            /* 8°.8Kˇ˛˝;„...‡.5 */
	$"4082 0010 A801 004E 8061 00E0 B003 0000"            /* @Ç..®..NÄa.‡∞... */
	$"387F 0000 8001 00C8 3821 00C0 7C08 03A6"            /* 8...Ä..»8!.¿|..¶ */
	$"83E1 FFFC 4E80 0020 0000 0000 0000 2041"            /* É·ˇ¸NÄ. ...... A */
	$"8001 0000 0000 005C 0011 2E44 6574 6572"            /* Ä......\...Deter */
	$"6D69 6E65 5652 6566 4E75 6D00 7C08 02A6"            /* mineVRefNum.|..¶ */
	$"93E1 FFFC 93C1 FFF8 93A1 FFF4 9381 FFF0"            /* ì·ˇ¸ì¡ˇ¯ì°ˇÙìÅˇ */
	$"9001 0008 9421 FFB0 B061 006A 3B84 0000"            /* ê...î!ˇ∞∞a.j;Ñ.. */
	$"A861 006A 4800 04B1 8041 0014 7C7F 1B79"            /* ®a.jH..±ÄA..|..y */
	$"4182 004C 807F 0000 A803 0004 5400 0673"            /* AÇ.LÄ...®...T..s */
	$"4182 0014 807F 0000 8063 0000 83C3 0000"            /* AÇ..Ä...Äc..É√.. */
	$"4800 000C 807F 0000 83C3 0000 387E 0012"            /* H...Ä...É√..8~.. */
	$"389C 0000 88BE 0012 38A5 0001 4800 0079"            /* 8ú..àæ..8•..H..y */
	$"8041 0014 3BA0 0000 4800 0010 3800 0000"            /* ÄA..;†..H...8... */
	$"981C 0000 3BA0 FFEB 387D 0000 8001 0058"            /* ò...;†ˇÎ8}..Ä..X */
	$"3821 0050 7C08 03A6 83E1 FFFC 83C1 FFF8"            /* 8!.P|..¶É·ˇ¸É¡ˇ¯ */
	$"83A1 FFF4 8381 FFF0 4E80 0020 0000 0000"            /* É°ˇÙÉÅˇNÄ. .... */
	$"0000 2041 8004 0000 0000 00B0 000E 2E47"            /* .. AÄ......∞...G */
	$"6574 4472 6976 6572 4E61 6D65 8182 0068"            /* etDriverNameÅÇ.h */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0060 9041 0014 800C 0000"            /* NÄ. ÅÇ.`êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 003C"            /* ÄL..|..¶NÄ. ÅÇ.< */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0070 9041 0014 800C 0000"            /* NÄ. ÅÇ.pêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 00C0"            /* ÄL..|..¶NÄ. ÅÇ.¿ */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 00BC 9041 0014 800C 0000"            /* NÄ. ÅÇ.ºêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 00B8"            /* ÄL..|..¶NÄ. ÅÇ.∏ */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 004C 9041 0014 800C 0000"            /* NÄ. ÅÇ.LêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0050"            /* ÄL..|..¶NÄ. ÅÇ.P */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0000 9041 0014 800C 0000"            /* NÄ. ÅÇ..êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0048"            /* ÄL..|..¶NÄ. ÅÇ.H */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0010 9041 0014 800C 0000"            /* NÄ. ÅÇ..êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 00B4"            /* ÄL..|..¶NÄ. ÅÇ.¥ */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 006C 9041 0014 800C 0000"            /* NÄ. ÅÇ.lêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0008"            /* ÄL..|..¶NÄ. ÅÇ.. */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 008C 9041 0014 800C 0000"            /* NÄ. ÅÇ.åêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0024"            /* ÄL..|..¶NÄ. ÅÇ.$ */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0044 9041 0014 800C 0000"            /* NÄ. ÅÇ.DêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 005C"            /* ÄL..|..¶NÄ. ÅÇ.\ */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 00B0 9041 0014 800C 0000"            /* NÄ. ÅÇ.∞êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 007C"            /* ÄL..|..¶NÄ. ÅÇ.| */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 00A0 9041 0014 800C 0000"            /* NÄ. ÅÇ.†êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0034"            /* ÄL..|..¶NÄ. ÅÇ.4 */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0014 9041 0014 800C 0000"            /* NÄ. ÅÇ..êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 000C"            /* ÄL..|..¶NÄ. ÅÇ.. */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0054 9041 0014 800C 0000"            /* NÄ. ÅÇ.TêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0018"            /* ÄL..|..¶NÄ. ÅÇ.. */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 00AC 9041 0014 800C 0000"            /* NÄ. ÅÇ.¨êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0090"            /* ÄL..|..¶NÄ. ÅÇ.ê */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0020 9041 0014 800C 0000"            /* NÄ. ÅÇ. êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0030"            /* ÄL..|..¶NÄ. ÅÇ.0 */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0088 9041 0014 800C 0000"            /* NÄ. ÅÇ.àêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0064"            /* ÄL..|..¶NÄ. ÅÇ.d */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 00A8 9041 0014 800C 0000"            /* NÄ. ÅÇ.®êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0074"            /* ÄL..|..¶NÄ. ÅÇ.t */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 009C 9041 0014 800C 0000"            /* NÄ. ÅÇ.úêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 00A4"            /* ÄL..|..¶NÄ. ÅÇ.§ */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0080 9041 0014 800C 0000"            /* NÄ. ÅÇ.ÄêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0038"            /* ÄL..|..¶NÄ. ÅÇ.8 */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0078 9041 0014 800C 0000"            /* NÄ. ÅÇ.xêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0094"            /* ÄL..|..¶NÄ. ÅÇ.î */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 002C 9041 0014 800C 0000"            /* NÄ. ÅÇ.,êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0098"            /* ÄL..|..¶NÄ. ÅÇ.ò */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0084 9041 0014 800C 0000"            /* NÄ. ÅÇ.ÑêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0040"            /* ÄL..|..¶NÄ. ÅÇ.@ */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0028 9041 0014 800C 0000"            /* NÄ. ÅÇ.(êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0058"            /* ÄL..|..¶NÄ. ÅÇ.X */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0004 9041 0014 800C 0000"            /* NÄ. ÅÇ..êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 001C"            /* ÄL..|..¶NÄ. ÅÇ.. */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 0000 0000 0000 0000 0000 0000"            /* NÄ. ............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 00FC"            /* ...............¸ */
	$"0000 014C 0000 0124 0000 021C 0000 023C"            /* ...L...$.......< */
	$"0000 02D4 0000 030C 0000 010C 0000 0364"            /* ...‘...........d */
	$"0000 036A 0000 0114 0000 0370 0000 011C"            /* ...j.......p.... */
	$"0000 0000 0000 0324 0000 0000 0000 0000"            /* .......$........ */
	$"0000 0000 0000 0F98 0000 0000 0000 15B0"            /* .......ò.......∞ */
	$"0000 0000 0000 1D68 0000 0000 6465 736B"            /* .......h....desk */
	$"FFFF F068 7472 7368 FFFF F067 6173 74C4"            /* ˇˇhtrshˇˇgastƒ */
	$"FFFF F096 7574 69C4 FFFF F097 6D6F 72C4"            /* ˇˇñutiƒˇˇómorƒ */
	$"FFFF F085 6578 746E FFFF F07B 6374 726C"            /* ˇˇÖextnˇˇ{ctrl */
	$"FFFF F078 666F 6E74 FFFF F080 7072 6566"            /* ˇˇxfontˇˇÄpref */
	$"FFFF F07A 616D 6E75 FFFF F072 7072 6E74"            /* ˇˇzamnuˇˇrprnt */
	$"FFFF F079 7374 7274 FFFF F073 7368 6466"            /* ˇˇystrtˇˇsshdf */
	$"FFFF F073 7364 6576 FFFF F086 C473 6372"            /* ˇˇssdevˇˇÜƒscr */
	$"FFFF F089 C46E 6574 FFFF F08A C470 7264"            /* ˇˇâƒnetˇˇäƒprd */
	$"FFFF F08E 7070 6466 FFFF F08F 6374 7244"            /* ˇˇéppdfˇˇèctrD */
	$"FFFF F091 6578 7444 FFFF F092 7374 7244"            /* ˇˇëextDˇˇístrD */
	$"FFFF F093 636D 6E75 FFFF F09A 7368 6444"            /* ˇˇìcmnuˇˇöshdD */
	$"FFFF F094 6173 7570 FFFF F098 6D61 6344"            /* ˇˇîasupˇˇòmacD */
	$"FFFF F095 636D 6E75 FFFF F09A C476 6F63"            /* ˇˇïcmnuˇˇöƒvoc */
	$"FFFF F090 C474 6578 FFFF F08D C46C 6962"            /* ˇˇêƒtexˇˇçƒlib */
	$"FFFF F08C C468 6C70 FFFF F088 C473 6E64"            /* ˇˇåƒhlpˇˇàƒsnd */
	$"FFFF F087 0000 0000 0000 0000 0000 0000"            /* ˇˇá............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 6664 7270 FFFF F061 7472 7368"            /* ....fdrpˇˇatrsh */
	$"FFFF F067 6661 7379 FFFF F071 494E 4954"            /* ˇˇgfasyˇˇqINIT */
	$"FFFF BFE1 4150 504C FFFF F064 6466 696C"            /* ˇˇø·APPLˇˇddfil */
	$"FFFF F069 7072 6566 FFFF F07D 6661 616D"            /* ˇˇiprefˇˇ}faam */
	$"FFFF F072 6661 6374 FFFF F078 6661 6578"            /* ˇˇrfactˇˇxfaex */
	$"FFFF F07B 6661 7066 FFFF F07A 6661 7374"            /* ˇˇ{fapfˇˇzfast */
	$"FFFF F073 6164 7270 FFFF F064 6661 6574"            /* ˇˇsadrpˇˇdfaet */
	$"FFFF F074 6661 6472 FFFF F075 6661 7368"            /* ˇˇtfadrˇˇufash */
	$"FFFF F076 6661 6D6E FFFF F077 7468 6E67"            /* ˇˇvfamnˇˇwthng */
	$"FFFF BFE1 7368 6C62 FFFF F081 6966 696C"            /* ˇˇø·shlbˇˇÅifil */
	$"0000 30D4 6666 696C 0000 38A4 7366 696C"            /* ..0‘ffil..8§sfil */
	$"0000 36B0 7466 696C 0000 38A5 4646 494C"            /* ..6∞tfil..8•FFIL */
	$"0000 3C8C 4446 494C 0000 3D86 6B66 696C"            /* ..<åDFIL..=Ükfil */
	$"0000 399E 6966 696C FFFF F11F 6666 696C"            /* ..9ûifilˇˇÒ.ffil */
	$"FFFF F121 7366 696C FFFF F11E 7466 696C"            /* ˇˇÒ!sfilˇˇÒ.tfil */
	$"FFFF F120 4646 494C FFFF F124 4446 494C"            /* ˇˇÒ FFILˇˇÒ$DFIL */
	$"FFFF F123 6B66 696C FFFF F122 636C 7073"            /* ˇˇÒ#kfilˇˇÒ"clps */
	$"FFFF F125 636C 7070 FFFF F127 636C 7074"            /* ˇˇÒ%clppˇˇÒ'clpt */
	$"FFFF F126 636C 7075 FFFF F128 0549 636F"            /* ˇˇÒ&clpuˇˇÒ(.Ico */
	$"6E0D 052E 536F 6E79 0000 0000 0000 0000"            /* n...Sony........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000"                      /* ............ */
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
		"Iconographer 1.0d6"
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

