/* Resource fork of software/MFrame/MStandard/MWindow/MAlert.Carbon.rsrc */
resource 'CNTL' (5000, purgeable) {
	{44, 52, 76, 84},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'DITL' (5000, purgeable) {
	{	/* array DITLarray: 10 elements */
		/* [1] */
		{58, 320, 78, 388},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{58, 240, 78, 304},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{58, 102, 78, 182},
		Button {
			enabled,
			"Button"
		},
		/* [4] */
		{12, 20, 76, 84},
		Icon {
			disabled,
			2
		},
		/* [5] */
		{12, 102, 28, 402},
		StaticText {
			disabled,
			"Static text"
		},
		/* [6] */
		{32, 102, 46, 402},
		StaticText {
			disabled,
			"Static text"
		},
		/* [7] */
		{12, 20, 76, 84},
		Icon {
			disabled,
			0
		},
		/* [8] */
		{12, 20, 76, 84},
		Icon {
			disabled,
			1
		},
		/* [9] */
		{60, 102, 76, 182},
		CheckBox {
			enabled,
			"Checkbox"
		},
		/* [10] */
		{44, 52, 76, 84},
		UserItem {
			enabled
		}
	}
};

data 'DLGX' (5000) {
	$"0843 6861 7263 6F61 6C00 0000 0000 0000"            /* .Charcoal....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"000A 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0002 0000 0000"            /* ................ */
	$"0000 0000 0000 0008 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0008 0000 0000"            /* ................ */
	$"0000 0000 0000 0008 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 000A"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
};

resource 'DLOG' (5000, "MAlert: Movable", purgeable) {
	{500, 10, 598, 432},
	1045,
	invisible,
	goAway,
	0x0,
	5000,
	"",
	noAutoCenter
};

resource 'DLOG' (5001, "MAlert: Non Movable", purgeable) {
	{500, 10, 598, 432},
	1044,
	invisible,
	goAway,
	0x0,
	5000,
	"",
	noAutoCenter
};

resource 'dctb' (5000) {
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

resource 'dctb' (5001) {
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

resource 'dlgx' (5000) {
	versionZero {
		15
	}
};

resource 'dlgx' (5001) {
	versionZero {
		15
	}
};

data 'ictb' (5000) {
	$"0028 0028 0028 0050 0028 0078 0000 0000"            /* .(.(.(.P.(.x.... */
	$"0005 00A0 0005 00B4 0000 0000 0000 0000"            /* ...�...�........ */
	$"0028 00C8 0000 0000 0000 0000 0000 0003"            /* .(.�............ */
	$"0000 0000 0000 0000 0001 FFFF FFFF FFFF"            /* ..........������ */
	$"0002 0000 0000 0000 0003 FFFF FFFF FFFF"            /* ..........������ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0001 FFFF FFFF FFFF 0002 0000 0000 0000"            /* ..������........ */
	$"0003 FFFF FFFF FFFF 0000 0000 0000 0003"            /* ..������........ */
	$"0000 0000 0000 0000 0001 FFFF FFFF FFFF"            /* ..........������ */
	$"0002 0000 0000 0000 0003 FFFF FFFF FFFF"            /* ..........������ */
	$"0000 0000 0000 0000 0000 0000 FFFF FFFF"            /* ............���� */
	$"FFFF 0000 0000 0000 0000 0000 0000 0000"            /* ��.............. */
	$"FFFF FFFF FFFF 0000 2000 2800 4800 2800"            /* ������.. .(.H.(. */
	$"7000 0000 0000 0500 9800 0500 AC00 0000"            /* p.......�...�... */
	$"0000 0000 0000 0000 0000 0000 0300 0000"            /* ................ */
};
