/* Resource fork of software/Iconographer/Source/Japanese Resources/MembersPaletteJ.rsrc */
resource 'CNTL' (400, "Members Pane", purgeable) {
	{0, 4294967295, 128, 141},
	2,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (401, "Members Scrollbar", purgeable) {
	{4294967295, 140, 451, 151},
	0,
	visible,
	100,
	0,
	386,
	0,
	""
};

resource 'CNTL' (402, "Members State Selection", purgeable) {
	{450, 4294967295, 461, 41},
	400,
	visible,
	402,
	512,
	256,
	0,
	""
};

resource 'CNTL' (403, "Background Pane", purgeable) {
	{0, 4294967295, 100, 99},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (404, "Members Info", purgeable) {
	{450, 109, 461, 141},
	400,
	visible,
	402,
	512,
	256,
	0,
	""
};

resource 'CNTL' (405, "Add Member", purgeable) {
	{450, 40, 461, 110},
	400,
	visible,
	402,
	512,
	256,
	0,
	""
};

resource 'DITL' (9999, purgeable) {
	{	/* array DITLarray: 4 elements */
		/* [1] */
		{4294967295, 140, 451, 151},
		Control {
			enabled,
			401
		},
		/* [2] */
		{450, 40, 461, 110},
		Control {
			enabled,
			405
		},
		/* [3] */
		{450, 4294967295, 461, 41},
		Control {
			enabled,
			402
		},
		/* [4] */
		{450, 109, 461, 141},
		Control {
			enabled,
			404
		}
	}
};

data 'DLGX' (9999) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0004 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

resource 'DLOG' (9999, purgeable) {
	{227, 213, 687, 363},
	1059,
	visible,
	goAway,
	0x0,
	9999,
	"�A�C�R���\\��",
	noAutoCenter
};

resource 'MENU' (400, "Icon States") {
	400,
	textMenuProc,
	allEnabled,
	enabled,
	"�A�C�R���̏��",
	{	/* array: 8 elements */
		/* [1] */
		"�W���̏��", noIcon, noKey, noMark, plain,
		/* [2] */
		"�ړ����̏��", noIcon, noKey, noMark, plain,
		/* [3] */
		"�I������Ă�����", noIcon, noKey, noMark, plain,
		/* [4] */
		"�J����Ă�����", noIcon, noKey, noMark, plain,
		/* [5] */
		"�h���b�v���ꂽ���", noIcon, noKey, noMark, plain,
		/* [6] */
		"�h���b�v����ċN���������", noIcon, noKey, noMark, plain,
		/* [7] */
		"����", noIcon, noKey, noMark, plain,
		/* [8] */
		"�^�C��", noIcon, noKey, noMark, plain
	}
};

resource 'PICT' (400, "Info Button") {
	498,
	{0, 0, 7, 7},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0007 0007 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0007"
	$"0007 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0007 0007 8201 0000 00E4 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 4000"
	$"0000 0000 00B2 0000 0000 0007 0007 0000"
	$"0056 726C 6520 0000 0000 0000 0000 0001"
	$"0001 6170 706C 0000 0000 0000 0400 0007"
	$"0007 0048 0000 0048 0000 0000 005C 0001"
	$"0941 6E69 6D61 7469 6F6E 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0028 0028 4000 005C 0008 0000 0000 0007"
	$"0000 0102 0060 B8F5 B860 0000 FF01 0260"
	$"9F47 0A47 9F60 00FF 0102 B847 00FF 0047"
	$"B800 FF01 02F5 0A00 FF00 0AF5 00FF 0102"
	$"B847 00FF 0047 B800 FF01 0260 9F47 FF47"
	$"9F60 00FF 0102 0060 B8F5 B860 0000 FF00"
	$"009A 0000 00FF 801C 0000 0000 0007 0007"
	$"0000 0004 0000 0000 0048 0000 0048 0000"
	$"0010 0020 0003 0008 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0007 0007 0000 0000"
	$"0007 0007 0040 0E00 FFFC 00FF FFFC 00FF"
	$"FFFC 0000 FF02 EC00 14FF 0002 FF00 FFFD"
	$"0002 FF00 FFFD 0004 FF00 FF00 0014 FF00"
	$"02FF 9FFF FD00 02FF 9FFF FD00 04FF 9FFF"
	$"0000 14FF 0002 FF00 FFFD 0002 FF00 FFFD"
	$"0004 FF00 FF00 000E FE00 0053 FB00 0053"
	$"FB00 0053 FE00 0E00 FFFC 00FF FFFC 00FF"
	$"FFFC 0000 FF00 00FF"
};

resource 'PICT' (401, "Add Member Button") {
	508,
	{0, 0, 7, 7},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0007 0007 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0007"
	$"0007 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0007 0007 8201 0000 00E4 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 4000"
	$"0000 0000 00B2 0000 0000 0007 0007 0000"
	$"0056 726C 6520 0000 0000 0000 0000 0001"
	$"0001 6170 706C 0000 0000 0000 0400 0007"
	$"0007 0048 0000 0048 0000 0000 005C 0001"
	$"0941 6E69 6D61 7469 6F6E 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0028 0028 4000 005C 0008 0000 0000 0007"
	$"0000 0102 FFFF FFFF FFFF 0300 FF01 02FF"
	$"0000 0000 FF00 00FF 0102 FF00 0000 00FF"
	$"0000 FF01 02FF FFFF FF00 FF00 00FF 0102"
	$"FF7F 00FF 00FF 0000 FF01 02FF 007F FF00"
	$"FF00 00FF 0102 7FFF FFFF FFFF 0000 FF00"
	$"009A 0000 00FF 801C 0000 0000 0007 0007"
	$"0000 0004 0000 0000 0048 0000 0048 0000"
	$"0010 0020 0003 0008 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0007 0007 0000 0000"
	$"0007 0007 0040 02EC 0013 0000 FDFF 0200"
	$"FF00 FDFF 0200 FF00 FDFF 0100 FF13 0000"
	$"FDFF 0200 FF00 FDFF 0200 FF00 FDFF 0100"
	$"FF12 FD00 02FF 00FF FD00 02FF 00FF FD00"
	$"02FF 00FF 16FF 0012 FF00 FF00 FF00 00FF"
	$"00FF 00FF 0000 FF00 FF00 FF16 1400 FF00"
	$"00FF 00FF 00FF 0000 FF00 FF00 FF00 00FF"
	$"00FF 0CFB 0000 FFFB 0000 FFFB 0000 FF00"
	$"00FF"
};

resource 'STR#' (400, "Members Palette Balloon Help") {
	{	/* array StringArray: 2 elements */
		/* [1] */
		"�A�C�R�����\n\n�{�^���������ăA�C�R���̑�"
		"���iID�A���O�A�\\���A�����j��ݒ肵�ĉ���"
		"���B",
		/* [2] */
		"�A�C�R���\\���ɒǉ�\n\n�������N���b�N�����"
		"�œK�ȃT�C�Y�ƐF�[�x�̃A�C�R�����A�C�R��"
		"�\\���ɒǉ��쐬���܂��B"
	}
};

resource 'STR#' (401, "Members Palette Names") {
	{	/* array StringArray: 2 elements */
		/* [1] */
		"���",
		/* [2] */
		"�\\���ɒǉ�"
	}
};

resource 'WIND' (400, "Members Palette", purgeable) {
	{226, 867, 760, 1017},
	1059,
	invisible,
	goAway,
	0x0,
	"�A�C�R���\\��",
	noAutoCenter
};

resource 'cctb' (400) {
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

resource 'cctb' (401) {
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

resource 'cctb' (402) {
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

resource 'cctb' (403) {
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

resource 'cctb' (404) {
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

resource 'cctb' (405) {
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

resource 'dftb' (9999) {
	versionZero {
		{	/* array FontStyle: 4 elements */
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

			}		}
	}
};

data 'ictb' (9999) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
};

resource 'mctb' (400) {
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

resource 'wctb' (400) {
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

