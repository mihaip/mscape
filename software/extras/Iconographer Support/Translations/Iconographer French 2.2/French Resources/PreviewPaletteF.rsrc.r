/* Resource fork of software/extras/Iconographer Support/Translations/Iconographer French 2.2/French Resources/PreviewPaletteF.rsrc */
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
	"Preview",
	noAutoCenter
};

resource 'MENU' (500) {
	500,
	textMenuProc,
	0x7FFFFFFB,
	enabled,
	"Réglages",
	{	/* array: 8 elements */
		/* [1] */
		"Normale", noIcon, noKey, noMark, plain,
		/* [2] */
		"Sélectionnée", noIcon, noKey, noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Bureau", noIcon, noKey, noMark, plain,
		/* [5] */
		"Sur liste", noIcon, noKey, noMark, plain,
		/* [6] */
		"Blanc", noIcon, noKey, noMark, plain,
		/* [7] */
		"Noir", noIcon, noKey, noMark, plain,
		/* [8] */
		"Une autre couleur...", noIcon, noKey, noMark, plain
	}
};

resource 'STR#' (500, "Tool Palette Balloon Help", purgeable) {
	{	/* array StringArray: 3 elements */
		/* [1] */
		"Taille de prévisualisation\n\nLa jauge et "
		"le champ de texte servent à changer la t"
		"aille de prév. Les tailles disponibles s"
		"ont : 12, 16, 32, 48, et de 64 à 128 (av"
		"ec lissage).",
		/* [2] */
		"Aire de prévisualisation\n\nL'icone et son"
		" masque sont affichés ici à la taille ch"
		"oisie.",
		/* [3] */
		"Réglages de prévisualisation\n\nCe menu pe"
		"rmet de choisir l'état de l'icone (norma"
		"le ou cliquée), et le fond (bureau, vue "
		"par liste, blanc et noir)."
	}
};

resource 'STR#' (501, "Preview Palette Strings", purgeable) {
	{	/* array StringArray: 1 elements */
		/* [1] */
		"Choisissez une couleur de fond :"
	}
};

resource 'WIND' (500, "Preview Palette", purgeable) {
	{39, 867, 229, 1017},
	1057,
	invisible,
	goAway,
	0x0,
	"Preview",
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

resource 'dlgx' (9999) {
	versionZero {
		15
	}
};

data 'hrct' (500, "Tool Palette Help", purgeable) {
	$"0002 0000 0000 0000 0000 0003 0014 0003"            /* ................ */
	$"0000 0000 0006 0007 0017 0090 01F4 0001"            /* ...........ê.Ù.. */
	$"0014 0003 0000 0000 0020 0006 00AA 0090"            /* ......... ...™.ê */
	$"01F4 0002 0014 0003 0000 0000 00AF 0000"            /* .Ù...........Ø.. */
	$"00BE 0096 01F4 0003"                                /* .æ.ñ.Ù.. */
};

data 'hwin' (500, purgeable) {
	$"0002 0000 0000 0001 01F4 6872 6374 0007"            /* .........Ùhrct.. */
	$"0750 7265 7669 6577"                                /* .Preview */
};

data 'ictb' (9999) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000"                                          /* .... */
};

resource 'mctb' (500) {
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

