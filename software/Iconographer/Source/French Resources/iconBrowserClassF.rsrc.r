/* Resource fork of software/Iconographer/Source/French Resources/iconBrowserClassF.rsrc */
resource 'CNTL' (300, "Icon Browser: Scroll Bar", purgeable) {
	{4294967295, 319, 343, 335},
	0,
	visible,
	100,
	0,
	386,
	0,
	""
};

resource 'CNTL' (301, "Icon Browser: Info Pane", purgeable) {
	{343, 100, 359, 320},
	0,
	visible,
	100,
	0,
	256,
	0,
	"27 icons"
};

resource 'CNTL' (302, "Icon Browser: List", purgeable) {
	{0, 0, 344, 320},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (303, "Icon Browser: Type Menu", purgeable) {
	{343, 4294967295, 359, 101},
	32,
	visible,
	100,
	0,
	256,
	0,
	"Icon Types:"
};

resource 'CNTL' (310, "Icon Browser: Progress Bar", purgeable) {
	{28, 8, 41, 342},
	0,
	visible,
	100,
	0,
	80,
	0,
	""
};

resource 'DITL' (300, purgeable) {
	{	/* array DITLarray: 2 elements */
		/* [1] */
		{28, 8, 41, 342},
		Control {
			enabled,
			310
		},
		/* [2] */
		{4, 8, 21, 341},
		StaticText {
			disabled,
			""
		}
	}
};

resource 'DITL' (301, purgeable) {
	{	/* array DITLarray: 4 elements */
		/* [1] */
		{4294967295, 319, 343, 335},
		Control {
			enabled,
			300
		},
		/* [2] */
		{343, 100, 359, 320},
		Control {
			enabled,
			301
		},
		/* [3] */
		{0, 0, 344, 320},
		Control {
			enabled,
			302
		},
		/* [4] */
		{343, 4294967295, 359, 101},
		Control {
			enabled,
			303
		}
	}
};

data 'DLGX' (300) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0002 0005 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
};

data 'DLGX' (301) {
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

resource 'DLOG' (300, "Icon Browser: Progress", purgeable) {
	{450, 374, 502, 723},
	1043,
	invisible,
	noGoAway,
	0x0,
	300,
	"Chargement de l'icone : <name>",
	centerMainScreen
};

resource 'DLOG' (301, "Icon Browser Mockup", purgeable) {
	{230, 146, 588, 480},
	documentProc,
	visible,
	goAway,
	0x0,
	301,
	"",
	noAutoCenter
};

resource 'MENU' (303, "Icon Browser: Icon Types") {
	303,
	textMenuProc,
	allEnabled,
	enabled,
	"Icon Types",
	{	/* array: 3 elements */
		/* [1] */
		"Nouveaux", noIcon, noKey, noMark, plain,
		/* [2] */
		"Ancien", noIcon, noKey, noMark, plain,
		/* [3] */
		"Les deux", noIcon, noKey, noMark, plain
	}
};

resource 'STR#' (300, "Icon Browser: Strings", purgeable) {
	{	/* array StringArray: 13 elements */
		/* [1] */
		"Chargement de l'icone : <ID>",
		/* [2] */
		"Chargement de l'icone : <ID> Ò<name>Ó",
		/* [3] */
		"<B>ID :</B> ",
		/* [4] */
		"<B>Nom :</B> ",
		/* [5] */
		"<B>Type :</B> ",
		/* [6] */
		"Nouvelle",
		/* [7] */
		"Ancienne",
		/* [8] */
		"<B>Membres :</B> ",
		/* [9] */
		"Types d'icone : <types>",
		/* [10] */
		"<number>/<total> icones",
		/* [11] */
		"Etes-vous sžr de vouloir supprimer l'ico"
		"ne ID : <icon ID> du fichier Ò<file name"
		">Ó?",
		/* [12] */
		"<name> (Navigateur d'icone)",
		/* [13] */
		"<I>Aucun</I>"
	}
};

resource 'WIND' (300, purgeable) {
	{229, 200, 485, 540},
	1025,
	invisible,
	goAway,
	0x0,
	"<name> (Icon Browser)",
	staggerMainScreen
};

resource 'cctb' (300) {
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

resource 'cctb' (301) {
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

resource 'dctb' (301) {
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

resource 'dlgx' (300) {
	versionZero {
		15
	}
};

data 'ictb' (300) {
	$"0000 0000 0000 0000"                                /* ........ */
};

data 'ictb' (301) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000"                      /* ............ */
};

resource 'mctb' (303) {
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

resource 'wctb' (300) {
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

