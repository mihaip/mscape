/* Resource fork of software/Iconographer/Source/Japanese Resources/PreviewPaletteJ.rsrc */
resource 'CNTL' (500, "Preview Background", purgeable) {
	{4294967295, 4294967295, 176, 151},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (501, "Preview Area", purgeable) {
	{32, 6, 170, 144},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (502, "Preview Slider", purgeable) {
	{7, 6, 23, 116},
	32,
	visible,
	128,
	12,
	57,
	0,
	""
};

resource 'CNTL' (503, "Preview Text", purgeable) {
	{9, 122, 21, 142},
	0,
	visible,
	100,
	0,
	280,
	0,
	""
};

resource 'CNTL' (504, "Preview Settings", purgeable) {
	{175, 4294967295, 191, 151},
	32,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'DITL' (9999, purgeable) {
	{	/* array DITLarray: 5 elements */
		/* [1] */
		{4294967295, 4294967295, 176, 151},
		Control {
			enabled,
			500
		},
		/* [2] */
		{32, 6, 170, 144},
		Control {
			enabled,
			501
		},
		/* [3] */
		{7, 6, 23, 116},
		Control {
			enabled,
			502
		},
		/* [4] */
		{9, 122, 21, 142},
		Control {
			enabled,
			503
		},
		/* [5] */
		{175, 4294967295, 191, 151},
		Control {
			enabled,
			504
		}
	}
};

data 'DLGX' (9999) {
	$"0647 656E 6576 6100 0000 0000 0000 0000"            /* .Geneva......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0009 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0005 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000"                 /* .............. */
};

resource 'DLOG' (9999, purgeable) {
	{250, 300, 440, 450},
	1057,
	visible,
	goAway,
	0x0,
	9999,
	"�v���r���[",
	noAutoCenter
};

resource 'MENU' (500) {
	500,
	textMenuProc,
	0x7FFFFFFB,
	enabled,
	"�\\���ݒ�",
	{	/* array: 8 elements */
		/* [1] */
		"�W��", noIcon, noKey, noMark, plain,
		/* [2] */
		"�I����", noIcon, noKey, noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"�f�X�N�g�b�v", noIcon, noKey, noMark, plain,
		/* [5] */
		"���X�g�\\��", noIcon, noKey, noMark, plain,
		/* [6] */
		"���w�i", noIcon, noKey, noMark, plain,
		/* [7] */
		"���w�i", noIcon, noKey, noMark, plain,
		/* [8] */
		"�C�ӂ̐F ...", noIcon, noKey, noMark, plain
	}
};

resource 'STR#' (500, "- Tool Palette Balloon Help") {
	{	/* array StringArray: 3 elements */
		/* [1] */
		"�v���r���[�T�C�Y\n\n���̃X���C�_�[�Ɛ��l��"
		"�̓{�b�N�X�Ńv���r���[�̕\\���T�C�Y��ύX"
		"���邱�Ƃ��ł��܂��B128 ���� 64 (���炩�"
		"Ɋg��k������܂�)�܂ł� 48�A32�A16�A12 "
		"�͈̔͂Őݒ�\\�ł��B",
		/* [2] */
		"�v���r���[�̈�\n\n���݂̃A�C�R���ƃ}�X�N��"
		"�����Őݒ肵���T�C�Y�ŕ\\�����܂��B",
		/* [3] */
		"�v���r���[�ݒ�\n\n���̃��j���[�ŃA�C�R����"
		"���(�W�����A�I����)�Ɣw�i(�f�X�N�g�b�v�"
		"A���X�g�\\���A���A��)�̐ݒ���s�����Ƃ���"
		"���܂��B"
	}
};

resource 'STR#' (501, "Preview Palette Strings", purgeable) {
	{	/* array StringArray: 1 elements */
		/* [1] */
		"�v���r���[�w�i�F�̑I���F"
	}
};

resource 'WIND' (500, "Preview Palette", purgeable) {
	{39, 867, 229, 1017},
	1057,
	invisible,
	goAway,
	0x0,
	"�v���r���[",
	noAutoCenter
};

resource 'cctb' (502) {
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

resource 'cctb' (504) {
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
		{	/* array FontStyle: 5 elements */
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

			}		}
	}
};

resource 'dlgx' (9999) {
	versionZero {
		15
	}
};

data 'hrct' (500, "Tool Palette Help", purgeable) {
	$"0002 0000 0000 0000 0000 0003 0014 0003"            /* ................ */
	$"0000 0000 0006 0007 0017 0090 01F4 0001"            /* ...........�.�.. */
	$"0014 0003 0000 0000 0020 0006 00AA 0090"            /* ......... ...�.� */
	$"01F4 0002 0014 0003 0000 0000 00AF 0000"            /* .�...........�.. */
	$"00BE 0096 01F4 0003"                                /* .�.�.�.. */
};

data 'hwin' (500, purgeable) {
	$"0002 0000 0000 0001 01F4 6872 6374 000A"            /* .........�hrct.. */
	$"0A83 7683 8C83 7283 8581 5B00"                      /* .�v���r���[. */
};

data 'ictb' (9999) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000"                                          /* .... */
};

resource 'mctb' (500, "�\\���ݒ� menu") {
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

resource 'wctb' (500) {
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

