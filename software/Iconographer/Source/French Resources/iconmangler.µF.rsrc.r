/* Resource fork of software/Iconographer/Source/French Resources/iconmangler.¬µF.rsrc */
resource 'BNDL' (128) {
	'Mngl',
	0,
	{	/* array TypeArray: 2 elements */
		/* [1] */
		'ICN#',
		{	/* array IDArray: 7 elements */
			/* [1] */
			0, 128,
			/* [2] */
			1, 0,
			/* [3] */
			2, 129,
			/* [4] */
			3, 0,
			/* [5] */
			4, 0,
			/* [6] */
			5, 130,
			/* [7] */
			6, 131
		},
		/* [2] */
		'FREF',
		{	/* array IDArray: 7 elements */
			/* [1] */
			0, 128,
			/* [2] */
			1, 129,
			/* [3] */
			2, 130,
			/* [4] */
			3, 131,
			/* [5] */
			4, 132,
			/* [6] */
			5, 133,
			/* [7] */
			6, 134
		}
	}
};

resource 'CNTL' (2000, "Types Pop-up", purgeable) {
	{6, 8, 26, 258},
	0,
	visible,
	100,
	4000,
	409,
	0,
	"Format d'icones:"
};

resource 'CNTL' (2001, "Old Types Pop-up", purgeable) {
	{185, 11, 205, 261},
	0,
	visible,
	100,
	4000,
	409,
	0,
	"Icon Format:"
};

resource 'DITL' (129, "Registration") {
	{	/* array DITLarray: 9 elements */
		/* [1] */
		{102, 307, 122, 375},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{102, 227, 121, 291},
		Button {
			enabled,
			"Annuler"
		},
		/* [3] */
		{102, 7, 122, 212},
		Button {
			enabled,
			"Application d’enregistrement"
		},
		/* [4] */
		{12, 175, 28, 375},
		EditText {
			enabled,
			""
		},
		/* [5] */
		{40, 175, 56, 375},
		EditText {
			enabled,
			""
		},
		/* [6] */
		{68, 175, 84, 375},
		EditText {
			enabled,
			""
		},
		/* [7] */
		{12, 8, 28, 51},
		StaticText {
			disabled,
			"Nom:"
		},
		/* [8] */
		{40, 8, 56, 98},
		StaticText {
			disabled,
			"Organisation:"
		},
		/* [9] */
		{68, 8, 84, 168},
		StaticText {
			disabled,
			"Code d’enregistrement:"
		}
	}
};

resource 'DITL' (2000, purgeable) {
	{	/* array DITLarray: 1 elements */
		/* [1] */
		{6, 8, 26, 258},
		Control {
			enabled,
			2000
		}
	}
};

resource 'DITL' (3001, "Select Object", purgeable) {
	{	/* array DITLarray: 12 elements */
		/* [1] */
		{155, 283, 175, 363},
		Button {
			enabled,
			"Ouvrir"
		},
		/* [2] */
		{124, 283, 144, 363},
		Button {
			enabled,
			"Annuler"
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
		{30, 263, 46, 365},
		UserItem {
			enabled
		},
		/* [5] */
		{51, 283, 71, 363},
		Button {
			enabled,
			"Ejecter"
		},
		/* [6] */
		{79, 283, 99, 363},
		Button {
			enabled,
			"Bureau"
		},
		/* [7] */
		{51, 11, 181, 261},
		UserItem {
			enabled
		},
		/* [8] */
		{28, 11, 47, 261},
		UserItem {
			enabled
		},
		/* [9] */
		{111, 282, 112, 364},
		Picture {
			disabled,
			11
		},
		/* [10] */
		{185, 283, 205, 363},
		Button {
			enabled,
			"Sélectionner"
		},
		/* [11] */
		{6, 15, 23, 300},
		StaticText {
			disabled,
			"Sélectionner le fichier, le dossier ou l"
			"e disque dont vous voulez ouvrir l'icone"
			" :"
		},
		/* [12] */
		{185, 11, 205, 261},
		Control {
			enabled,
			2001
		}
	}
};

resource 'DITL' (3002, purgeable) {
	{	/* array DITLarray: 13 elements */
		/* [1] */
		{161, 277, 181, 357},
		Button {
			enabled,
			"Enregister"
		},
		/* [2] */
		{130, 277, 150, 357},
		Button {
			enabled,
			"Annuler"
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
		{8, 267, 24, 363},
		UserItem {
			enabled
		},
		/* [5] */
		{32, 277, 52, 357},
		Button {
			enabled,
			"Ejecter"
		},
		/* [6] */
		{60, 277, 80, 357},
		Button {
			enabled,
			"Bureau"
		},
		/* [7] */
		{29, 12, 127, 261},
		UserItem {
			enabled
		},
		/* [8] */
		{6, 12, 25, 261},
		UserItem {
			enabled
		},
		/* [9] */
		{119, 275, 120, 359},
		Picture {
			disabled,
			11
		},
		/* [10] */
		{157, 15, 173, 259},
		EditText {
			enabled,
			""
		},
		/* [11] */
		{136, 15, 152, 227},
		StaticText {
			disabled,
			"Enregistrer l'icone :"
		},
		/* [12] */
		{88, 277, 108, 357},
		UserItem {
			disabled
		},
		/* [13] */
		{185, 11, 205, 261},
		Control {
			enabled,
			2001
		}
	}
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

data 'DLGX' (2000) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0001 0005 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'DLGX' (3001) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"000C 0002 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 0002 0000 0000 0000 0000"            /* ................ */
	$"0000 0002 0000 0000 0000 0000 0000 000A"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 0009 0000 0000 0000 0000"            /* ................ */
	$"0000 0002 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'DLGX' (3002) {
	$"0843 6861 7263 6F61 6C00 0000 0000 0000"            /* .Charcoal....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"000D 0002 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 0002 0000 0000 0000 0000"            /* ................ */
	$"0000 0002 0000 0000 0000 0000 0000 000A"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 0009 0000 0000 0000 0000"            /* ................ */
	$"0000 0007 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 D650 EB00 0012 0000 0050 0020"                 /* ..÷PÎ......P.  */
};

resource 'DLOG' (129, "Register") {
	{178, 612, 313, 1002},
	1043,
	invisible,
	goAway,
	0x0,
	129,
	"Enregistrement…",
	alertPositionMainScreen
};

resource 'DLOG' (2000, "Nav Custom Items", purgeable) {
	{253, 278, 283, 547},
	1024,
	visible,
	goAway,
	0x0,
	2000,
	"DITL 2000 from iconmangler.µ.rsrc",
	noAutoCenter
};

resource 'DLOG' (3001, "Open File", purgeable) {
	{100, 100, 315, 472},
	dBoxProc,
	invisible,
	noGoAway,
	0x0,
	3001,
	"",
	noAutoCenter
};

resource 'DLOG' (3002, "Save File", purgeable) {
	{185, 272, 401, 639},
	dBoxProc,
	invisible,
	noGoAway,
	0x746D4449,
	3002,
	"",
	noAutoCenter
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

resource 'FREF' (128) {
	'APPL',
	0,
	""
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

resource 'FREF' (131) {
	'fold',
	3,
	""
};

resource 'FREF' (132) {
	'disk',
	4,
	""
};

resource 'FREF' (133) {
	'ICO ',
	5,
	""
};

resource 'FREF' (134) {
	'TIFF',
	6,
	""
};

resource 'ICN#' (128) {
	{	/* array: 2 elements */
		/* [1] */
		$"0000 0000 0000 0038 0000 C048 0003 C090"
		$"000F 6120 003C 7E40 00F0 34C0 03C0 31C0"
		$"0F00 33A0 3C00 E790 F000 CF8C C01B 9F03"
		$"6066 0003 618E 4003 3031 D407 30CF FEAF"
		$"1816 0357 182C 01FF 0C38 00DF 0C70 0EC0"
		$"0670 7860 067C C060 037F 8030 033F 00FF"
		$"0180 03FF 0180 0FFF 00C0 3FFC 00C0 FFF8"
		$"0063 FFE0 006F FF00 003F FC00 003F C0",
		/* [2] */
		$"0000 0000 0000 0038 0000 C078 0003 C0F0"
		$"000F E1E0 003F FFC0 00FF FF80 03FF FFC0"
		$"0FFF FFE0 3FFF FFF0 FFFF FFF8 FFFF FFFF"
		$"7FFF FFFF 7FFF FFFF 3FFF FFFF 3FFF FFFF"
		$"1FFF FFFF 1FFF FFFF 0FFF FFDF 0FFF FFC0"
		$"07FF FFE0 07FF FFE0 03FF FFF0 03FF FFFF"
		$"01FF FFFF 01FF FFFF 00FF FFFC 00FF FFF8"
		$"007F FFE0 007F FF00 003F FC00 003F C0"
	}
};

resource 'ICN#' (129, "Mac OS Icon") {
	{	/* array: 2 elements */
		/* [1] */
		$"03FF FF80 0200 00C0 0200 00A0 0200 0090"
		$"7FFF F088 6CCD B884 6BB4 B0FE 6BB5 3856"
		$"6BB5 3002 6CCD B806 7FFF F002 02AA A806"
		$"0200 0002 0200 1006 0200 2002 021F FF86"
		$"0210 4082 0212 4886 0212 4882 0210 4086"
		$"0210 7082 0213 2286 0210 FC82 0210 2086"
		$"021F FF82 0200 1006 0200 0802 0200 0006"
		$"0200 0002 0200 0006 02AA AAAA 03FF FFFE",
		/* [2] */
		$"03FF FF80 03FF FFC0 03FF FFE0 03FF FFF0"
		$"7FFF FFF8 7FFF FFFC 7FFF FFFE 7FFF FFFE"
		$"7FFF FFFE 7FFF FFFE 7FFF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
	}
};

resource 'ICN#' (130, "Windows Icon") {
	{	/* array: 2 elements */
		/* [1] */
		$"03FF FF80 0200 00C0 0200 00A0 0200 0090"
		$"7FFF 8088 5D5D 8084 5D4D C0FE 5555 8056"
		$"5559 C002 6B5D 8006 7FFF C002 02AA 8006"
		$"0200 0002 0201 0006 0200 F002 0200 7F06"
		$"0200 27C2 0204 66C6 0223 FCC2 0200 FF86"
		$"0200 DB82 0208 F986 0203 F902 0200 7F06"
		$"0200 0602 0200 0006 0200 0002 0200 0006"
		$"0200 0002 0200 0006 02AA AAAA 03FF FFFE",
		/* [2] */
		$"03FF FF80 03FF FFC0 03FF FFE0 03FF FFF0"
		$"7FFF FFF8 7FFF FFFC 7FFF FFFE 7FFF FFFE"
		$"7FFF FFFE 7FFF FFFE 7FFF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
	}
};

resource 'ICN#' (131, "Mac OS X Icon") {
	{	/* array: 2 elements */
		/* [1] */
		$"03FF FF80 0200 00C0 0200 00A0 0200 0090"
		$"7FFF C088 6288 E084 76BB C0FE 7699 E056"
		$"76BB C002 76BB E006 7FFF C002 02AA A006"
		$"0200 0002 021F FF86 023F FFC2 023F FFC6"
		$"0238 71C2 023E 77C6 023E 67C2 023F 0FC6"
		$"023F 9FC2 023F 9FC6 023F 0FC2 023E 67C6"
		$"023C F3C2 0238 60C6 023F FFC2 023F FFC6"
		$"021F FF82 0200 0006 02AA AAAA 03FF FFFE",
		/* [2] */
		$"03FF FF80 03FF FFC0 03FF FFE0 03FF FFF0"
		$"7FFF FFF8 7FFF FFFC 7FFF FFFE 7FFF FFFE"
		$"7FFF FFFE 7FFF FFFE 7FFF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
	}
};

resource 'MBAR' (128) {
	{	/* array MenuArray: 5 elements */
		/* [1] */
		128,
		/* [2] */
		129,
		/* [3] */
		131,
		/* [4] */
		136,
		/* [5] */
		138
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
		"A propos d'Iconographer…", noIcon, noKey, noMark, plain,
		/* [2] */
		"Enregistrement…", noIcon, noKey, noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (129) {
	129,
	textMenuProc,
	0x7FFFFDEF,
	enabled,
	"Fichier",
	{	/* array: 11 elements */
		/* [1] */
		"Nouvelle icone", noIcon, "N", noMark, plain,
		/* [2] */
		"Ouvrir une icone...", noIcon, "O", noMark, plain,
		/* [3] */
		"Ourvrir récent", noIcon, hierarchicalMenu, "Ç", plain,
		/* [4] */
		"Fermer", noIcon, "W", noMark, plain,
		/* [5] */
		"-", noIcon, noKey, noMark, plain,
		/* [6] */
		"Enregistrer", noIcon, "S", noMark, plain,
		/* [7] */
		"Enregistrer sous...", noIcon, "S", noMark, plain,
		/* [8] */
		"Enregistrer dans un ficher", noIcon, noKey, noMark, plain,
		/* [9] */
		"Revenir à la version enregistrée", noIcon, noKey, noMark, plain,
		/* [10] */
		"-", noIcon, noKey, noMark, plain,
		/* [11] */
		"Quitter", noIcon, "Q", noMark, plain
	}
};

resource 'MENU' (130) {
	130,
	textMenuProc,
	allEnabled,
	enabled,
	"Open Recent",
	{	/* array: 0 elements */
	}
};

resource 'MENU' (131) {
	131,
	textMenuProc,
	0x7FFFFBFB,
	enabled,
	"Édition",
	{	/* array: 12 elements */
		/* [1] */
		"Annuler", noIcon, "Z", noMark, plain,
		/* [2] */
		"Répeter", noIcon, "Z", noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Couper", noIcon, "X", noMark, plain,
		/* [5] */
		"Copier", noIcon, hierarchicalMenu, "á", plain,
		/* [6] */
		"Coller", noIcon, hierarchicalMenu, "Ü", plain,
		/* [7] */
		"Effacer", noIcon, noKey, noMark, plain,
		/* [8] */
		"Sélection", noIcon, hierarchicalMenu, "Ñ", plain,
		/* [9] */
		"Transformation", noIcon, hierarchicalMenu, "Ö", plain,
		/* [10] */
		"Réglages couleurs", noIcon, "U", noMark, plain,
		/* [11] */
		"-", noIcon, noKey, noMark, plain,
		/* [12] */
		"Préférences…", noIcon, ";", noMark, plain
	}
};

resource 'MENU' (132) {
	132,
	textMenuProc,
	allEnabled,
	enabled,
	"Select",
	{	/* array: 5 elements */
		/* [1] */
		"Tout sélectionner", noIcon, "A", noMark, plain,
		/* [2] */
		"Pixels similaires", noIcon, noKey, noMark, plain,
		/* [3] */
		"Tout désélectionner", noIcon, "D", noMark, plain,
		/* [4] */
		"Intervertir", noIcon, "I", noMark, plain,
		/* [5] */
		"Dilater/Contacter", noIcon, "E", noMark, plain
	}
};

resource 'MENU' (133) {
	133,
	textMenuProc,
	0x7FFFFFDB,
	enabled,
	"Transform",
	{	/* array: 7 elements */
		/* [1] */
		"Rotation 90° horaire", noIcon, "T", noMark, plain,
		/* [2] */
		"Rotation 90° antihoraire", noIcon, "T", noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Symétrie axe horizontal", noIcon, "[", noMark, plain,
		/* [5] */
		"Symétrie axe vertical", noIcon, "]", noMark, plain,
		/* [6] */
		"-", noIcon, noKey, noMark, plain,
		/* [7] */
		"Négatif", noIcon, "I", noMark, plain
	}
};

resource 'MENU' (134) {
	134,
	textMenuProc,
	allEnabled,
	enabled,
	"Paste",
	{	/* array: 4 elements */
		/* [1] */
		"Coller l'image", noIcon, "V", noMark, plain,
		/* [2] */
		"Coller comme masque et icone", noIcon, "V", noMark, plain,
		/* [3] */
		"Coller dans la sélection", noIcon, "V", noMark, plain,
		/* [4] */
		"Coller la famille d'icones", noIcon, "V", noMark, plain
	}
};

resource 'MENU' (135) {
	135,
	textMenuProc,
	allEnabled,
	enabled,
	"Copy",
	{	/* array: 3 elements */
		/* [1] */
		"Copier l'image", noIcon, "C", noMark, plain,
		/* [2] */
		"Copier l'icone et le masque", noIcon, "C", noMark, plain,
		/* [3] */
		"Copier la famille d'icones", noIcon, "C", noMark, plain
	}
};

resource 'MENU' (136) {
	136,
	textMenuProc,
	0x7FFFF6EB,
	enabled,
	"Icone",
	{	/* array: 13 elements */
		/* [1] */
		"Agrandir", noIcon, "=", noMark, plain,
		/* [2] */
		"Réduire", noIcon, "-", noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Couleurs", noIcon, hierarchicalMenu, "â", plain,
		/* [5] */
		"-", noIcon, noKey, noMark, plain,
		/* [6] */
		"Insérer", noIcon, "K", noMark, plain,
		/* [7] */
		"Informations…", noIcon, "I", noMark, plain,
		/* [8] */
		"Show Pixel Grid", noIcon, "G", noMark, plain,
		/* [9] */
		"-", noIcon, noKey, noMark, plain,
		/* [10] */
		"Créer le masque", noIcon, "M", noMark, plain,
		/* [11] */
		"Terminer l’icone", noIcon, noKey, noMark, plain,
		/* [12] */
		"-", noIcon, noKey, noMark, plain,
		/* [13] */
		"Ouvrir dans l’éditeur externe", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (137) {
	137,
	textMenuProc,
	allEnabled,
	enabled,
	"Colors",
	{	/* array: 2 elements */
		/* [1] */
		"Palette Mac OS ", noIcon, noKey, noMark, plain,
		/* [2] */
		"Palette Windows", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (138) {
	138,
	textMenuProc,
	0x7FFFFFCF,
	enabled,
	"Fenêtres",
	{	/* array: 6 elements */
		/* [1] */
		"Show Tools", noIcon, "1", noMark, plain,
		/* [2] */
		"Show Members", noIcon, "2", noMark, plain,
		/* [3] */
		"Show Preview", noIcon, "3", noMark, plain,
		/* [4] */
		"Afficher la palette des couleurs", noIcon, "4", noMark, plain,
		/* [5] */
		"-", noIcon, noKey, noMark, plain,
		/* [6] */
		"-", noIcon, noKey, noMark, plain
	}
};

data 'Mngl' (0, "Owner resource") {
	$"1BA9 2031 3939 382D 3230 3030 204D 6968"            /* .© 1998-2000 Mih */
	$"6169 2050 6172 7061 7269 7461"                      /* ai Parparita */
};

data 'Pref' (129, "Default Preferences") {
	$"0000 0011 0E4E 6F74 2072 6567 6973 7465"            /* .....Not registe */
	$"7265 6420 2020 2020 2020 2020 20EB 000D"            /* red          Î.. */
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
	$"00DD DDDD 004E 4F50 00DD DDDD 00DD DDDD"            /* .›››.NOP.›››.››› */
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
	$"0DB1 1CD0 0041 4E32 3734 3537 38CF B6A0"            /* .±.–.AN274578œ∂† */
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
	$"0000 0000 0000 0184 0000 0007 0000 0000"            /* .......Ñ........ */
	$"0000 0001 FFFF FFFF FFFF 0000 0000 FFFF"            /* ....ˇˇˇˇˇˇ....ˇˇ */
	$"FFFF 0000 0000 FFFF 0000 0000 FFFF FFFF"            /* ˇˇ....ˇˇ....ˇˇˇˇ */
	$"0000 0000 FFFF FFFF 0000 FFFF FFFF FFFF"            /* ....ˇˇˇˇ..ˇˇˇˇˇˇ */
	$"FFFF E6E6 E6E6 E6E6 D9D9 D9D9 D9D9 CCCC"            /* ˇˇÊÊÊÊÊÊŸŸŸŸŸŸÃÃ */
	$"CCCC CCCC BFBF BFBF BFBF B3B3 B3B3 B3B3"            /* ÃÃÃÃøøøøøø≥≥≥≥≥≥ */
	$"A6A6 A6A6 A6A6 9999 9999 9999 8C8C 8C8C"            /* ¶¶¶¶¶¶ôôôôôôåååå */
	$"8C8C 8080 8080 8080 DBDB 0000 2A2A FCFC"            /* ååÄÄÄÄÄÄ€€..**¸¸ */
	$"F5F5 0000 0000 9191 5050 0000 A5A5 E6E6"            /* ıı....ëëPP..••ÊÊ */
	$"2C2C 0000 6868 DFDF 0000 7171 7373 7373"            /* ,,..hhﬂﬂ..qqssss */
	$"7373 6666 6666 6666 5959 5959 5959 4D4D"            /* ssffffffYYYYYYMM */
	$"4D4D 4D4D 4040 4040 4040 3333 3333 3333"            /* MMMM@@@@@@333333 */
	$"2626 2626 2626 0D0D 0D0D 0D0D 0D0D 0D0D"            /* &&&&&&.......... */
	$"0D0D 0000 0000 0000 F3F3 8B8B 6565 F7F7"            /* ........ÛÛããee˜˜ */
	$"A6A6 6E6E FCFC C3C3 7878 FFFF F7F7 8C8C"            /* ¶¶nn¸¸√√xxˇˇ˜˜åå */
	$"BDBD DCDC 8C8C 9898 CDCD 8C8C 7575 C0C0"            /* ΩΩ‹‹ååòòÕÕååuu¿¿ */
	$"8B8B 7676 C2C2 BEBE 7474 C4C4 F0F0 7E7E"            /* ããvv¬¬æættƒƒ~~ */
	$"9898 CCCC 8181 8181 B9B9 8383 6C6C A8A8"            /* òòÃÃÅÅÅÅππÉÉll®® */
	$"9E9E 7373 AAAA BBBB 7B7B ACAC F4F4 8B8B"            /* ûûss™™ªª{{¨¨ÙÙãã */
	$"AFAF F4F4 8B8B 8A8A E9E9 5555 3A3A F0F0"            /* ØØÙÙããääÈÈUU:: */
	$"8181 4040 F6F6 A9A9 4646 FFFF F6F6 5353"            /* ÅÅ@@ˆˆ©©FFˇˇˆˆSS */
	$"9B9B CECE 5A5A 6565 BABA 5C5C 2020 A8A8"            /* õõŒŒZZee∫∫\\  ®® */
	$"5E5E 2525 ABAB A5A5 1E1E ADAD EBEB 4646"            /* ^^%%´´••..≠≠ÎÎFF */
	$"7575 B8B8 5050 5959 A0A0 5555 3B3B 8888"            /* uu∏∏PPYY††UU;;àà */
	$"7B7B 4040 8989 A0A0 4646 8A8A EBEB 5151"            /* {{@@ââ††FFääÎÎQQ */
	$"8D8D EBEB 5353 6464 DBDB 0000 2A2A E5E5"            /* ççÎÎSSdd€€..**ÂÂ */
	$"4F4F 1818 EFEF 8A8A 0909 FCFC F5F5 0000"            /* OO..ÔÔää..¸¸ıı.. */
	$"6C6C BDBD 1919 0000 A4A4 2D2D 0000 9191"            /* llΩΩ....§§--..ëë */
	$"5050 0000 9595 8C8C 0000 A5A5 E6E6 0000"            /* PP..ïïåå..••ÊÊ.. */
	$"5858 A3A3 1F1F 3030 8383 2C2C 0000 6868"            /* XX££..00ÉÉ,,..hh */
	$"5353 0000 6868 8080 0000 6969 DFDF 0000"            /* SS..hhÄÄ..iiﬂﬂ.. */
	$"7171 DEDE 0000 4C4C 8686 0000 1A1A 8C8C"            /* qqﬁﬁ..LLÜÜ....åå */
	$"3030 0F0F 9292 5454 0404 9A9A 9696 0000"            /* 00..ííTT..ööññ.. */
	$"4242 7474 0F0F 0000 6464 1B1B 0000 5959"            /* BBtt....dd....YY */
	$"3131 0000 5B5B 5656 0000 6565 8C8C 0000"            /* 11..[[VV..eeåå.. */
	$"3636 6464 1313 1D1D 5050 1B1B 0000 3F3F"            /* 66dd....PP....?? */
	$"3333 0000 4040 4E4E 0000 4040 8888 0000"            /* 33..@@NN..@@àà.. */
	$"4545 8787 0000 2F2F 5B5B 0000 1111 5F5F"            /* EEáá..//[[....__ */
	$"2121 0A0A 6363 3939 0202 6868 6565 0000"            /* !!..cc99..hhee.. */
	$"2D2D 4E4E 0A0A 0000 4444 1313 0000 3C3C"            /* --NN....DD....<< */
	$"2121 0000 3D3D 3A3A 0000 4444 5F5F 0000"            /* !!..==::..DD__.. */
	$"2424 4343 0D0D 1414 3636 1212 0000 2B2B"            /* $$CC....66....++ */
	$"2222 0000 2B2B 3535 0000 2C2C 5C5C 0000"            /* ""..++55..,,\\.. */
	$"2F2F 5C5C 0000 1F1F C1C1 AAAA 8B8B 8E8E"            /* //\\....¡¡™™ããéé */
	$"7878 6161 6363 5151 4343 4141 3434 2E2E"            /* xxaaccQQCCAA44.. */
	$"2727 1F1F 1F1F BEBE 9393 5B5B 9B9B 7070"            /* ''....ææìì[[õõpp */
	$"3E3E 7C7C 5353 2929 6161 3C3C 1A1A 4A4A"            /* >>||SS))aa<<..JJ */
	$"2929 1111 0101 0000 0000 0101 0000 0000"            /* )).............. */
	$"0101 0000 0000 0101 0000 0000 0101 0000"            /* ................ */
	$"0000 0101 0000 0000"                                /* ........ */
};

resource 'STR#' (128, "Default Names", purgeable) {
	{	/* array StringArray: 35 elements */
		/* [1] */
		"Iconographer",
		/* [2] */
		"Iconographer Preferences",
		/* [3] */
		"OK",
		/* [4] */
		"Enregistrer",
		/* [5] */
		"Annuler",
		/* [6] */
		"Ne pas enregistrer",
		/* [7] */
		"Enregistrement",
		/* [8] */
		"Pas encore",
		/* [9] */
		":Enregistrement",
		/* [10] */
		"http://order.kagi.com/?QEJ",
		/* [11] */
		"Enregistrement en-ligne",
		/* [12] */
		"Application d'enregistrement",
		/* [13] */
		"Non enregistré",
		/* [14] */
		"mailto:mihai@mscape.com",
		/* [15] */
		"http://www.mscape.com/products/iconograp"
		"her.html",
		/* [16] */
		"Afficher Couleurs",
		/* [17] */
		"Masquer Couleurs",
		/* [18] */
		"Afficher Membres",
		/* [19] */
		"Masquer Membres",
		/* [20] */
		"Afficher Prévisualisation",
		/* [21] */
		"Masquer Prévisualisation",
		/* [22] */
		"Afficher Outils",
		/* [23] */
		"Masquer Outils",
		/* [24] */
		"Aide d'Iconographer",
		/* [25] */
		"E-mailer l'auteur",
		/* [26] */
		"Site d'Iconographer",
		/* [27] */
		":Aide d'Iconographer:Help:toc.html",
		/* [28] */
		"Revenir",
		/* [29] */
		"Afficher la grille",
		/* [30] */
		"Masquer la grille",
		/* [31] */
		"Ajouter un membre…",
		/* [32] */
		"Insérer une icone…",
		/* [33] */
		"Ouvrir l'aide",
		/* [34] */
		"Continuer",
		/* [35] */
		"Enregistré pour :"
	}
};

resource 'STR#' (129, "Standard Errors", purgeable) {
	{	/* array StringArray: 18 elements */
		/* [1] */
		"Ce fichier est déjà utilisé par un autre"
		" programme.",
		/* [2] */
		"Cette version de développement de <app n"
		"ame> a expiré en Octobre 2001. Merci de "
		"télécharger une nouvelle version sur htt"
		"p://www.mscape.com/.",
		/* [3] */
		"Il manque une ressource obligatoire. <ap"
		"p name> semble être corrompu. Merci de r"
		"éinstaller le programme.",
		/* [4] */
		"<app name> nécessite le système 7.5.3 au"
		" minimum.",
		/* [5] */
		"Impossible de démarrer les AppleEvents, "
		"<app name> ne peut pas continuer.",
		/* [6] */
		"Erreur pendant le démarrage d'Appearance"
		" Mangler, <app name> ne peut pas continu"
		"er.",
		/* [7] */
		"Erreur pendant le démarrage de la barre "
		"des menus. Les ressource de <app name> s"
		"ont sûrement corrompues. Merci de le réi"
		"nstaller",
		/* [8] */
		"Impossible d'ouvrir ce lien : Internet C"
		"onfig doit être installé.",
		/* [9] */
		"Impossible de créer un nouvel éditeur d'"
		"icone. La mémoire est sûrement saturée. "
		"Fermez quelques fenêtres pour libérer de"
		" la mémoire ou augmnetez la mémoire allo"
		"uée à <app name>.",
		/* [10] */
		"<app name> commence à manquer de mémoire"
		". L'application va changer la fenêtre po"
		"ur gagner de la mémoire.",
		/* [11] */
		"<app name> ne dispose plus d'assez de mé"
		"moire pour continuer. Cet éditeur va êtr"
		"e fermé pour gagner de la mémoire.",
		/* [12] */
		"L'application “Enregistrement” est intro"
		"uvable. Merci de réinstaller <app name>.",
		/* [13] */
		"Ce code d'enregistrement est incorrect. "
		"Merci de le raper EXACTEMENT comme il es"
		"t indiqué sur l'e-mail que vous avez reç"
		"u.",
		/* [14] */
		"Merci d'avoir enregistré <app name>.",
		/* [15] */
		"<app name> nécessite Appearance Manager."
		" Merci d'installer MacOS 8.0 ou supérieu"
		"r, ou installez l'Appearance Manager SDK"
		" d'Apple.",
		/* [16] */
		"Impossible d'ouvrir ce lien : Internet C"
		"onfig doit être installé.\n\nPour vous enr"
		"egistrer, visitez le site http://order.k"
		"agi.com/?QEJ avec votre navigateur inter"
		"net.",
		/* [17] */
		"Le fichier “<file name>” car une erreur "
		"(Type <error type>) est survenue. ",
		/* [18] */
		"<app name> X nécessite Mac OS X 10.0 ou "
		"sup."
	}
};

resource 'STR#' (130, "Prompts", purgeable) {
	{	/* array StringArray: 14 elements */
		/* [1] */
		"Voulez-vous enregistrer les modification"
		"s apportée au document “<file name>” ava"
		"nt de fermer ?",
		/* [2] */
		"Sélectionnez le fichier ou le dossier do"
		"nt vous voulez éditer l'icone.",
		/* [3] */
		"Sélectionner un nom et un emplacement po"
		"ur enregistrer l'icone.",
		/* [4] */
		"Selectionner le dossier ou le fichier do"
		"nt vous voulez remplacer l'icone.",
		/* [5] */
		"Enregistrer dans le fichier",
		/* [6] */
		"Ouvrir l'icone",
		/* [7] */
		"Vous avez utilisé <app name> pour créer "
		"<no of icons> icones. Si vous continuez "
		"de l'utiliser, merci de payer les 15$ d'"
		"enregistrement. Vous pouvez le faire en "
		"ligne ou en utilisant l'application Enre"
		"gistrement",
		/* [8] */
		"Sélectionnez l'icone Windows (fichier .i"
		"co) à éditer.",
		/* [9] */
		"Sélectionnez l'icone MacOS X Server (fic"
		"hier .tiff) à éditer.",
		/* [10] */
		"Une icone avec l'ID <ID> existe déjà dan"
		"s le fichier “<file name>.” Voulez-vous "
		"la remplacer ?",
		/* [11] */
		"Voulez-vous revenir à la dernière versio"
		"n enregistrée par <app name> du document"
		" “<file name>”?",
		/* [12] */
		"<app name> peut être enregistré en-ligne"
		" ou par courrier, avec diverses techniqu"
		"es. Choisissez la solution que vous dési"
		"rez pour enregistrer <app name>.",
		/* [13] */
		"Bienvenue dans <app name> 2.1. Si c'est "
		"la première fois que vous l'utilisez, et"
		" que vous souhaitez plus d'informations,"
		" une aide abondante est disponible. Voul"
		"ez-vous lancer l'aide ou commencer à uti"
		"liser le logiciel ?",
		/* [14] */
		"Si vous n'enregistrez pas, vos modificat"
		"ions seront perdues."
	}
};

resource 'STR#' (150, "App Balloon Help", purgeable) {
	{	/* array StringArray: 1 elements */
		/* [1] */
		"Iconographer\n\nUtilisez cette application"
		" pour éditer des icones. Glissez un élém"
		"ent sur cette application pour éditer so"
		"n icone."
	}
};

resource 'STR#' (151, "Apple Menu Balloon Help", purgeable) {
	{	/* array StringArray: 4 elements */
		/* [1] */
		"Informations sur cette version d'Iconogr"
		"apher.",
		/* [2] */
		"Informations sur cette version d'Iconogr"
		"apher.\n\nDésactivé car la fenêtre d'infor"
		"mation n'est pas accessible pour le mome"
		"nt.",
		/* [3] */
		"Enregistrer Iconographer, afin de suppri"
		"mer le rappel de shareware.",
		/* [4] */
		"Enregistrer Iconographer, afin de suppri"
		"mer le rappel de shareware.\n\nDésactivé c"
		"ar le dialogue d'enregistrement n'est pa"
		"s accessible pour le moment."
	}
};

resource 'STR#' (152, "File Balloon Help", purgeable) {
	{	/* array StringArray: 18 elements */
		/* [1] */
		"Menu Fichier\n\nUtilisez ce menu pour effe"
		"ctuer des opérations sur des fichiers et"
		" des dossiers.",
		/* [2] */
		"Menu Fichier\n\nUtilisez ce menu pour effe"
		"ctuer des opérations sur des fichiers et"
		" des dossiers.\n\nDésactivé car ce type d'"
		"opérations est impossible à réaliser pou"
		"r le moment.",
		/* [3] */
		"Crée un nouvel éditeur avec une icone vi"
		"erge.",
		/* [4] */
		"Crée un nouvel éditeur avec une icone vi"
		"erge.\n\nDésactivé car il n'est pas possib"
		"le de créer plus d'éditeurs.",
		/* [5] */
		"Ouvre une icone dans un nouvel éditeur. "
		"plusieurs formats (Mac OS, Windows, Mac "
		"OS X Server) peuvent être choisis.",
		/* [6] */
		"Ouvre une icone dans un nouvel éditeur. "
		"plusieurs formats (Mac OS, Windows, Mac "
		"OS X Server) peuvent être choisis.\n\nDésa"
		"ctivé car il est impossible d'ouvrir plu"
		"s d'icone.",
		/* [7] */
		"Ferme l'éditeur au premier plan.",
		/* [8] */
		"Ferme l'éditeur au premier plan.\n\nDésact"
		"ivé car il n'y a pas d'icone ouverte.",
		/* [9] */
		"Saves the front-most icon.",
		/* [10] */
		"Saves the front-most icon.\n\nNot availabl"
		"e because there are no open icons, or be"
		"cause the front-most icon doesn’t need t"
		"o be saved.",
		/* [11] */
		"Enregistre l'icone au premier plan.",
		/* [12] */
		"Enregistre l'icone au premier plan.\n\nDés"
		"activé car il n'y a pas d'icone ouverte.",
		/* [13] */
		"Insert l'icone au premier-plan dans un f"
		"ichier différent (sans remplacer son con"
		"tenu).",
		/* [14] */
		"Insert l'icone au premier-plan dans un f"
		"ichier différent (sans remplacer son con"
		"tenu).\n\nDésactivé car il n'y a pas d'ico"
		"ne ouverte.",
		/* [15] */
		"Restaure la dernière version enregistrée"
		" de l'icone au premier-plan.",
		/* [16] */
		"Restaure la dernière version enregistrée"
		" de l'icone au premier-plan.\n\nDésactivé "
		"car il n'y a pas d'icone ou parce que l'"
		"icone n'a pas encore été enregistrée.",
		/* [17] */
		"Quitte Iconographer, après avoir proposé"
		" d'enregistrer tout travail non-enregist"
		"ré.",
		/* [18] */
		"Quitte Iconographer, après avoir proposé"
		" d'enregistrer tout travail non-enregist"
		"ré.\n\nDésactivé car Iconographer ne peut "
		"pas quitter en ce moment."
	}
};

resource 'STR#' (153, "Edit Balloon Help", purgeable) {
	{	/* array StringArray: 22 elements */
		/* [1] */
		"Menu Edition\n\nUtilisez ce menu pour annu"
		"ler ou rétablir des actions, pour copier"
		", coller ou régler les préférences d'Ico"
		"nographer.",
		/* [2] */
		"Menu Edition\n\nUtilisez ce menu pour annu"
		"ler ou rétablir des actions, pour copier"
		", coller ou régler les préférences d'Ico"
		"nographer.\n\nDésactivé parce que la fenêt"
		"re de premier plan ne supporte pas ces o"
		"pérations.",
		/* [3] */
		"Annule la dernière opération.",
		/* [4] */
		"Annule la dernière opération.\n\nDésactivé"
		" parce que toutes les actions ont été an"
		"nulée ou parce que la dernière opération"
		" ne peut pas être annulée.",
		/* [5] */
		"Rétablit la dernière opération annulée.",
		/* [6] */
		"Rétablit la dernière opération annulée.\n"
		"\nDésactivé parce qu'aucune opération n'a"
		" été annulée.",
		/* [7] */
		"Supprime la sélection et la place dans l"
		"e presse-papiers.",
		/* [8] */
		"Supprime la sélection et la place dans l"
		"e presse-papiers.\n\nDésactivé parce qu'il"
		" n'y a pas de sélection ou pas d'éditeur"
		" ouvert.",
		/* [9] */
		"Copie la sélection dans le presse-papier"
		"s.",
		/* [10] */
		"Copie la sélection dans le presse-papier"
		"s.\n\nDésactivé parce qu'il n'y a pas de s"
		"élection ou pas d'éditeur ouvert.",
		/* [11] */
		"Colle le contenu du presse-papiers dans "
		"l'éditeur ouvert.",
		/* [12] */
		"Colle le contenu du presse-papiers dans "
		"l'éditeur ouvert.\n\nDésactivé parce que l"
		"e presse-papiers ne contient pas d'image"
		", ou parce qu'il n'y a pas d'éditeur ouv"
		"ert.",
		/* [13] */
		"Efface le contenu de la sélection.",
		/* [14] */
		"Efface le contenu de la sélection.\n\nDésa"
		"ctivé parce qu'il n'y a pas de sélection"
		"\"\n\t\t\" ou parce qu'il n'y a pas d'éditeur"
		" ouvert.",
		/* [15] */
		"Effectue différentes opérations de sélec"
		"tion.",
		/* [16] */
		"Effectue différentes opérations de sélec"
		"tion.\n\nDésactivé car aucune icone n'est "
		"ouverte.",
		/* [17] */
		"Effectue différentes opérations de trans"
		"formation.",
		/* [18] */
		"Effectue différentes opérations de trans"
		"formation.\n\nDésactivé car aucune icone n"
		"'est ouverte.",
		/* [19] */
		"Effectue différentes opération sur les c"
		"ouleurs de l'icone.",
		/* [20] */
		"Effectue différentes opération sur les c"
		"ouleurs de l'icone.\n\nDésactivé car aucun"
		"e icone n'est ouverte.",
		/* [21] */
		"Ouvre une fenêtre vous permettant de rég"
		"ler différents aspects des opérations d'"
		"Iconographer.",
		/* [22] */
		"Ouvre une fenêtre vous permettant de rég"
		"ler différents aspects des opérations d'"
		"Iconographer.\n\nDésactivé car les préfére"
		"nces ne peuvent pas être modifiées en ce"
		" moment."
	}
};

resource 'STR#' (154, "Select Balloon Help", purgeable) {
	{	/* array StringArray: 8 elements */
		/* [1] */
		"Sélectionne toute l'icone.",
		/* [2] */
		"Sélectionne toute l'icone.\n\nDésactivé ca"
		"r il est impossible de sélectionner l'ic"
		"one en ce moment.",
		/* [3] */
		"Sélectionne les pixels de la même couleu"
		"r que la sélection actuelle.",
		/* [4] */
		"Sélectionne les pixels de la même couleu"
		"r que la sélection actuelle.\n\nDésactivé "
		"parce qu'aucune sélection n'est disponib"
		"le en ce moment.",
		/* [5] */
		"Déselectionne l'icone.",
		/* [6] */
		"Déselectionne l'icone.\n\nDésactivé parce "
		"qu'aucune sélection n'est disponible en "
		"ce moment.",
		/* [7] */
		"Sélectionne les zones non-sélectionnées "
		"et vice-versa.",
		/* [8] */
		"Sélectionne les zones non-sélectionnées "
		"et vice-versa.\n\nDésactivé parce qu'aucun"
		"e sélection n'est disponible en ce momen"
		"t."
	}
};

resource 'STR#' (155, "Transform Balloon Help", purgeable) {
	{	/* array StringArray: 5 elements */
		/* [1] */
		"Tourne la sélection (ou l'image s'il n'y"
		" a pas de sélection) de 90 degrés dans l"
		"e sens des aiguilles d'une montre.",
		/* [2] */
		"Tourne la sélection (ou l'image s'il n'y"
		" a pas de sélection) de 90 degrés dans l"
		"e sens contraire aux aiguilles d'une mon"
		"tre.",
		/* [3] */
		"Retourne la sélection (ou l'image s'il n"
		"'y a pas de sélection) en suivant l'axe "
		"vertical.",
		/* [4] */
		"Retourne la sélection (ou l'image s'il n"
		"'y a pas de sélection) en suivant l'axe "
		"horizontal.",
		/* [5] */
		"Inverse les couleurs de la sélection (ou"
		" de l'image s'il n'y a pas de sélection)"
		", comme un négatif."
	}
};

resource 'STR#' (156, "Paste Balloon Help", purgeable) {
	{	/* array StringArray: 6 elements */
		/* [1] */
		"Colle le presse-papiers dans une sélecti"
		"on flottante.",
		/* [2] */
		"Sépare le presse-papiers en une icone et"
		" un masque, qui vont être fusionnés avec"
		" l'icone et le masque déjà présents dans"
		" cet éditeur.",
		/* [3] */
		"Colle le presse-papiers en mettant à l'é"
		"chelle de la sélection.",
		/* [4] */
		"Colle le presse-papiers en mettant à l'é"
		"chelle de la sélection.\n\nDésactivé car i"
		"l n'y a pas de sélection disponible.",
		/* [5] */
		"Colle toute une famille d'icones dans l'"
		"éditeur.",
		/* [6] */
		"Colle toute une famille d'icones dans l'"
		"éditeur.\n\nDésactivé car le presse-papier"
		"s ne contient pas de famille d'icones."
	}
};

resource 'STR#' (157, "Copy Balloon Help", purgeable) {
	{	/* array StringArray: 6 elements */
		/* [1] */
		"Copie la sélection dans le presse-papier"
		"s.",
		/* [2] */
		"Copie la sélection dans le presse-papier"
		"s.\n\nDésactivé car il n'y a pas de sélect"
		"ion disponible ou d'éditeur ouvert.",
		/* [3] */
		"Copie l'icone et le masque dans le press"
		"e-papiers.",
		/* [4] */
		"Copie l'icone et le masque dans le press"
		"e-papiers.\n\nDésactivé car il n'y a pas d"
		"'icone ouverte.",
		/* [5] */
		"Copie toutes les icones (toutes tailles "
		"et toutes couleurs) dans le presse-papie"
		"rs.",
		/* [6] */
		"Copie toutes les icones (toutes tailles "
		"et toutes couleurs) dans le presse-papie"
		"rs.\n\nDésactivé  car il n'y a pas d'icone"
		" ouverte."
	}
};

resource 'STR#' (158, "Icon Balloon Help", purgeable) {
	{	/* array StringArray: 15 elements */
		/* [1] */
		"Menu Icone\n\nUtilisez ce menu pour change"
		"r certains attributs de l'icone au premi"
		"er plan.",
		/* [2] */
		"Menu Icone\n\nUtilisez ce menu pour change"
		"r certains attributs de l'icone au premi"
		"er plan.\n\nDésactivé car il n'y a pas d'é"
		"diteur ouvert.",
		/* [3] */
		"Cette commande augmente le facteur de zo"
		"om de l'icone au premier plan.",
		/* [4] */
		"Cette commande augmente le facteur de zo"
		"om de l'icone au premier plan.\n\nDésactiv"
		"é car le niveau maximal de zoom est atte"
		"int ou parce qu'il n'y a pas d'icone",
		/* [5] */
		"Cette commande réduit le facteur de zoom"
		" de l'icone au premier plan.",
		/* [6] */
		"Cette commande réduit le facteur de zoom"
		" de l'icone au premier plan.\n\nDésactivé "
		"car le niveau minimal de zoom est attein"
		"t ou parce qu'il n'y a pas d'icone.",
		/* [7] */
		"Cette commande permet de modifier la pro"
		"fondeur des couleurs pour cette icone.\n\n"
		"Désactivé parce qu'il est impossible de "
		"changer les profondeurs de couleurs de c"
		"ette icone, ou parce qu'il n'y a pas d'i"
		"cone ouverte.",
		/* [8] */
		"Affiche un dialogue permettant d'insérer"
		" une nouvelle icone dans le fichier actu"
		"el.",
		/* [9] */
		"Affiche un dialogue permettant d'insérer"
		" une nouvelle icone dans le fichier actu"
		"el.\n\nDésactivé car il n'y a pas de fichi"
		"er ouvert (la fenêtre au premier-plan do"
		"it être un navigateur d'icone).",
		/* [10] */
		"Affiche une fenêtre vous permettant de m"
		"ofidier le nom, l'ID et les attributs de"
		" l'icone.",
		/* [11] */
		"Affiche une fenêtre vous permettant de m"
		"ofidier le nom, l'ID et les attributs de"
		" l'icone.\n\nDésactivé car il n'y a pas de"
		" fenêtre ouverte.",
		/* [12] */
		"Affiche ou masque la grille (fine ligne "
		"séparant deux pixels aggrandis).",
		/* [13] */
		"Affiche ou masque la grille (fine ligne "
		"séparant deux pixels aggrandis).\n\nDésact"
		"ivé car il n'y a pas d'éditeur ouvert.",
		/* [14] */
		"Ouvre l'icone actuelle dans l'éditeur ex"
		"terne sélectionné dans les préférences.",
		/* [15] */
		"Ouvre l'icone actuelle dans l'éditeur ex"
		"terne sélectionné dans les préférences.\n"
		"\nDésactivé car il n'y a pas d'icone ouve"
		"rt."
	}
};

resource 'STR#' (159, "Colors Balloon Help", purgeable) {
	{	/* array StringArray: 2 elements */
		/* [1] */
		"Couleurs standards du Macintosh. Si l'éc"
		"ran est réglé sur 16 couleurs, seules ce"
		"s nuances seront visibles.",
		/* [2] */
		"Couleurs standards de Windows. Si l'écra"
		"n du PC est réglé sur 16 couleurs, seule"
		"s ces nuances seront visibles."
	}
};

resource 'STR#' (160, "About Balloon Help", purgeable) {
	{	/* array StringArray: 3 elements */
		/* [1] */
		"Cliquez-ici pour envoyer un e-mail à l'a"
		"uteur (nécessite Internet Config).",
		/* [2] */
		"Cliquez ici pour visiter le site de Msca"
		"pe software (nécessite Internet Config)."
		"\"",
		/* [3] */
		"Si vous avez payé, merci beaucoup ! Dans"
		" le cas contraire, vous devriez peut-êtr"
		"e y réfléchir."
	}
};

resource 'STR#' (161, "Registration Balloon Help", purgeable) {
	{	/* array StringArray: 6 elements */
		/* [1] */
		"Cliquez ici pour vérifier votre code d'e"
		"nregistrement. S'il est valide, Iconogra"
		"pher sera enregistré.",
		/* [2] */
		"Cliquez ici pour annuler l'enregistremen"
		"t.",
		/* [3] */
		"Cliquez ici pour ouvrir l'application d'"
		"enregistrement. Vous pourrez ainsi rempl"
		"ir le formulaire, l'envoyer à Kagi et pa"
		"yer votre enregistrement. Les dialogue S"
		"hareware disparaitront.",
		/* [4] */
		"Entrez votre nom ici. Recopiez-le tel qu"
		"'il est écrit dans l'e-mail d'enregistre"
		"ment, car le code est basé sur l'orthogr"
		"aphe du nom.",
		/* [5] */
		"Vous pouvez entrer le nom de votre compa"
		"gnie ici (optionnel).",
		/* [6] */
		"Inscrivez ici le code d'enregistrement i"
		"ci."
	}
};

resource 'STR#' (162, "Windows Balloon Help", purgeable) {
	{	/* array StringArray: 6 elements */
		/* [1] */
		"Menu Fenêtres\n\nCe menu permet d'afficher"
		" et masquer les palettes utilisées par I"
		"conographer, et de se déplacer parmi les"
		" fenêtres ouvertes.",
		/* [2] */
		"Menu Fenêtres\n\nCe menu permet d'afficher"
		" et masquer les palettes utilisées par I"
		"conographer, et de se déplacer parmi les"
		" fenêtres ouvertes.\n\nDésactivé car les f"
		"enêtres ne peuvent être manipulées pour "
		"le moment.",
		/* [3] */
		"Masque/Affiche la fenêtre d'Outils, une "
		"palette flottante qui contient tous les "
		"outils pour manipuler les icones.",
		/* [4] */
		"Masque/Affiche la fenêtre des Membres, u"
		"ne palette flottante qui contient tous l"
		"es membres (de différentes tailles et pr"
		"ofondeurs de couleurs) de l'icone de pre"
		"mier-plan.",
		/* [5] */
		"Affiche/Masque la fenêtre de Prévisualis"
		"ation, une palette flottante qui présent"
		"e l'icone actuelle à différentes tailles"
		" sur différents fonds.",
		/* [6] */
		"Affiche/Masque la fenêtre de Couleurs, u"
		"ne palette flottante utilisée pour manip"
		"uler les couleurs."
	}
};

resource 'dctb' (3001) {
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

resource 'dctb' (3002, purgeable) {
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

resource 'dlgx' (3001) {
	versionZero {
		9
	}
};

resource 'dlgx' (3002) {
	versionZero {
		9
	}
};

data 'hfdr' (-5696, purgeable) {
	$"0002 0000 0000 0000 0000 0001 0008 0003"            /* ................ */
	$"0096 0001"                                          /* .ñ.. */
};

data 'hmnu' (128, "Apple", purgeable) {
	$"0002 0000 0000 0000 0000 0003 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 0097 0001 0097 0002"            /* .........ó...ó.. */
	$"0000 0000 0000 0000 0014 0003 0097 0003"            /* .............ó.. */
	$"0097 0004 0000 0000 0000 0000"                      /* .ó.......... */
};

data 'hmnu' (129, "File", purgeable) {
	$"0002 0000 0000 0000 0000 000C 0004 0100"            /* ................ */
	$"0014 0003 0098 0001 0098 0002 0000 0000"            /* .....ò...ò...... */
	$"0098 0002 0014 0003 0098 0003 0098 0004"            /* .ò.......ò...ò.. */
	$"0000 0000 0000 0000 0014 0003 0098 0005"            /* .............ò.. */
	$"0098 0006 0000 0000 0000 0000 0004 0100"            /* .ò.............. */
	$"0014 0003 0098 0007 0098 0008 0000 0000"            /* .....ò...ò...... */
	$"0000 0000 0004 0100 0014 0003 0098 0009"            /* .............ò.. */
	$"0098 000A 0000 0000 0000 0000 0014 0003"            /* .ò.............. */
	$"0098 000B 0098 000C 0000 0000 0000 0000"            /* .ò...ò.......... */
	$"0014 0003 0098 000D 0098 000E 0000 0000"            /* .....ò...ò...... */
	$"0000 0000 0014 0003 0098 000F 0098 0010"            /* .........ò...ò.. */
	$"0000 0000 0000 0000 0004 0100 0014 0003"            /* ................ */
	$"0098 0011 0098 0012 0000 0000 0000 0000"            /* .ò...ò.......... */
};

data 'hmnu' (131, "Edit", purgeable) {
	$"0002 0000 0000 0000 0000 000D 0004 0100"            /* ................ */
	$"0014 0003 0099 0001 0099 0002 0000 0000"            /* .....ô...ô...... */
	$"0099 0002 0014 0003 0099 0003 0099 0004"            /* .ô.......ô...ô.. */
	$"0000 0000 0000 0000 0014 0003 0099 0005"            /* .............ô.. */
	$"0099 0006 0000 0000 0000 0000 0004 0100"            /* .ô.............. */
	$"0014 0003 0099 0007 0099 0008 0000 0000"            /* .....ô...ô...... */
	$"0000 0000 0014 0003 0099 0009 0099 000A"            /* .........ô...ô.. */
	$"0000 0000 0000 0000 0014 0003 0099 000B"            /* .............ô.. */
	$"0099 000C 0000 0000 0000 0000 0014 0003"            /* .ô.............. */
	$"0099 000D 0099 000E 0000 0000 0000 0000"            /* .ô...ô.......... */
	$"0014 0003 0099 000F 0099 0010 0000 0000"            /* .....ô...ô...... */
	$"0000 0000 0014 0003 0099 0011 0099 0012"            /* .........ô...ô.. */
	$"0000 0000 0000 0000 0014 0003 0099 0013"            /* .............ô.. */
	$"0099 0014 0000 0000 0000 0000 0004 0100"            /* .ô.............. */
	$"0014 0003 0099 0015 0099 0016 0000 0000"            /* .....ô...ô...... */
	$"0000 0000"                                          /* .... */
};

data 'hmnu' (132, "Select", purgeable) {
	$"0002 0000 0000 0000 0000 0005 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009A 0001 009A 0002"            /* .........ö...ö.. */
	$"0000 0000 0000 0000 0014 0003 009A 0003"            /* .............ö.. */
	$"009A 0004 0000 0000 0000 0000 0014 0003"            /* .ö.............. */
	$"009A 0005 009A 0006 0000 0000 0000 0000"            /* .ö...ö.......... */
	$"0014 0003 009A 0007 009A 0008 0000 0000"            /* .....ö...ö...... */
	$"0000 0000"                                          /* .... */
};

data 'hmnu' (133, "Transform", purgeable) {
	$"0002 0000 0000 0000 0000 0008 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009B 0001 0000 0000"            /* .........õ...... */
	$"0000 0000 0000 0000 0014 0003 009B 0002"            /* .............õ.. */
	$"0000 0000 0000 0000 0000 0000 0004 0100"            /* ................ */
	$"0014 0003 009B 0003 0000 0000 0000 0000"            /* .....õ.......... */
	$"0000 0000 0014 0003 009B 0004 0000 0000"            /* .........õ...... */
	$"0000 0000 0000 0000 0004 0100 0014 0003"            /* ................ */
	$"009B 0005 0000 0000 0000 0000 0000 0000"            /* .õ.............. */
};

data 'hmnu' (134, "Paste", purgeable) {
	$"0002 0000 0000 0000 0000 0005 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009C 0001 0000 0000"            /* .........ú...... */
	$"0000 0000 0000 0000 0014 0003 009C 0002"            /* .............ú.. */
	$"0000 0000 0000 0000 0000 0000 0014 0003"            /* ................ */
	$"009C 0003 009C 0004 0000 0000 0000 0000"            /* .ú...ú.......... */
	$"0014 0003 009C 0005 009C 0006 0000 0000"            /* .....ú...ú...... */
	$"0000 0000"                                          /* .... */
};

data 'hmnu' (135, "Copy", purgeable) {
	$"0002 0000 0000 0000 0000 0004 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009D 0001 009D 0002"            /* .........ù...ù.. */
	$"0000 0000 0000 0000 0014 0003 009D 0003"            /* .............ù.. */
	$"009D 0004 0000 0000 0000 0000 0014 0003"            /* .ù.............. */
	$"009D 0005 009D 0006 0000 0000 0000 0000"            /* .ù...ù.......... */
};

data 'hmnu' (136, "Icon", purgeable) {
	$"0002 0000 0000 0000 0000 000B 0004 0100"            /* ................ */
	$"0014 0003 009E 0001 009E 0002 0000 0000"            /* .....û...û...... */
	$"009E 0002 0014 0003 009E 0003 009E 0004"            /* .û.......û...û.. */
	$"0000 0000 0000 0000 0014 0003 009E 0005"            /* .............û.. */
	$"009E 0006 0000 0000 0000 0000 0004 0100"            /* .û.............. */
	$"0014 0003 0000 0000 009E 0007 0000 0000"            /* .........û...... */
	$"0000 0000 0004 0100 0014 0003 009E 0008"            /* .............û.. */
	$"009E 0009 0000 0000 0000 0000 0014 0003"            /* .û.............. */
	$"009E 000A 009E 000B 0000 0000 0000 0000"            /* .û...û.......... */
	$"0014 0003 009E 000C 009E 000D 0000 0000"            /* .....û...û...... */
	$"0000 0000 0004 0100 0014 0003 009E 000E"            /* .............û.. */
	$"009E 000F 0000 0000 0000 0000"                      /* .û.......... */
};

data 'hmnu' (137, "Colors", purgeable) {
	$"0002 0000 0000 0000 0000 0003 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009F 0001 0000 0000"            /* .........ü...... */
	$"009F 0001 0000 0000 0014 0003 009F 0002"            /* .ü...........ü.. */
	$"0000 0000 009F 0002 0000 0000"                      /* .....ü...... */
};

data 'hmnu' (138, "Windows", purgeable) {
	$"0002 0000 0000 0000 0000 0005 0004 0100"            /* ................ */
	$"0014 0003 00A2 0001 00A2 0002 0000 0000"            /* .....¢...¢...... */
	$"0000 0000 0014 0003 00A2 0003 0000 0000"            /* .........¢...... */
	$"0000 0000 0000 0000 0014 0003 00A2 0004"            /* .............¢.. */
	$"0000 0000 0000 0000 0000 0000 0014 0003"            /* ................ */
	$"00A2 0005 0000 0000 0000 0000 0000 0000"            /* .¢.............. */
	$"0014 0003 00A2 0006 0000 0000 0000 0000"            /* .....¢.......... */
	$"0000 0000"                                          /* .... */
};

data 'hrct' (128, "About", purgeable) {
	$"0002 0000 0000 0000 0000 0003 0014 0003"            /* ................ */
	$"0000 0000 002C 002C 003E 009A 00A0 0001"            /* .....,.,.>.ö.†.. */
	$"0014 0003 0000 0000 003C 0041 004E 00A1"            /* .........<.A.N.° */
	$"00A0 0002 0014 0003 0000 0000 00B0 0002"            /* .†...........∞.. */
	$"00D8 006E 00A0 0003"                                /* .ÿ.n.†.. */
};

data 'hrct' (129, "Register", purgeable) {
	$"0002 0000 0000 0000 0000 0006 0014 0003"            /* ................ */
	$"0000 0000 0066 010E 007A 0152 00A1 0001"            /* .....f...z.R.°.. */
	$"0014 0003 0000 0000 0066 00BE 0079 00FE"            /* .........f.æ.y.˛ */
	$"00A1 0002 0014 0003 0000 0000 0066 0007"            /* .°...........f.. */
	$"007A 009E 00A1 0003 0014 0003 0000 0000"            /* .z.û.°.......... */
	$"000C 0088 001C 0150 00A1 0004 0014 0003"            /* ...à...P.°...... */
	$"0000 0000 0028 0088 0038 0150 00A1 0005"            /* .....(.à.8.P.°.. */
	$"0014 0003 0000 0000 0044 0088 0054 0150"            /* .........D.à.T.P */
	$"00A1 0006"                                          /* .°.. */
};

data 'hwin' (128, "About", purgeable) {
	$"0002 0000 0000 0001 0080 6872 6374 0005"            /* .........Ährct.. */
	$"0541 626F 7574"                                     /* .About */
};

data 'hwin' (129, "Register", purgeable) {
	$"0002 0000 0000 0001 0081 6872 6374 0008"            /* .........Åhrct.. */
	$"0852 6567 6973 7465 7200"                           /* .Register. */
};

resource 'icl8' (128) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 5E5E 5E00 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"FFFF 0000 0000 0000 005E 0303 5E00 0000"
	$"0000 0000 0000 0000 0000 0000 0000 FFFF"
	$"FFFF 0000 0000 0000 5E03 2D88 0000 0000"
	$"0000 0000 0000 0000 0000 0000 FFFF FFFF"
	$"00FF FF00 0000 005E 032D 8800 0000 0000"
	$"0000 0000 0000 0000 0000 FFFF FFFF 0000"
	$"F8FF FF08 0832 5E03 3488 0000 0000 0000"
	$"0000 0000 0000 0000 FFFF FFFF 0000 F6F6"
	$"F632 0808 325E 0334 8800 0000 0000 0000"
	$"0000 0000 0000 FFFF FFFF 0000 F5F6 F62B"
	$"0832 395E 5803 3388 DE33 0000 0000 0000"
	$"0000 0000 FFFF FFFF 0000 F5F5 F5F6 2B08"
	$"3339 885E 0333 88DE 5E33 3200 0000 0000"
	$"0000 FFFF FFFF 0000 F5F5 F5F5 F62B 0833"
	$"5E88 5E09 3388 DE88 5E33 3232 0000 0000"
	$"FFFF FFFF 0000 F5F5 F5F5 F5F6 562C 3339"
	$"885E 0933 88E0 8864 5E39 3232 3200 0000"
	$"FFFF 0000 00F5 F5F5 F5F6 5681 0839 6488"
	$"822D 3388 FFDF 645E 3333 3232 3232 DFDF"
	$"00FF FF00 00F5 F5F6 5681 56F6 3364 8839"
	$"3333 3232 3357 3208 080E 3232 3232 DFDF"
	$"00FF FF00 F5F5 F556 F8F6 F656 8188 8808"
	$"325D 3939 3208 0808 0808 3232 3233 DFDF"
	$"0000 FFFF 00F5 F5F5 F656 8156 2B58 3364"
	$"88DE 8988 885E 5E33 3232 3333 395D DFDF"
	$"0000 FFFF 00F5 F5F5 F956 F6F7 64DD AD88"
	$"8888 88DE AD88 8888 885E 5E5E 5E5E DFDF"
	$"0000 00FF FF00 F5F5 F6F6 2B64 006B E056"
	$"2B2B 2BF7 F7F8 81AD 88AD 8888 8888 DFDF"
	$"0000 00FF FF00 F5F5 F6F6 FA07 40FF F92B"
	$"2B2B F7F7 F7F7 F9FF FF88 8888 8888 DFDF"
	$"0000 0000 FFFF 00F6 F632 6440 FFF9 2B2B"
	$"2B2B F7F7 F8F7 F8F9 FFFF 0088 8888 DFDF"
	$"0000 0000 FFFF 00F6 2BDE 8FDE F92B 2B2B"
	$"F732 3839 4040 40F9 FFFF 0000 0000 0000"
	$"0000 0000 00FF FF00 2B39 3939 F72B 2BF7"
	$"3240 4040 3FF8 F8F8 F9FF FF00 0000 0000"
	$"0000 0000 00FF FF00 F739 3939 31F7 3239"
	$"4040 39F8 F7F8 F8F8 F9FF FF00 0000 0000"
	$"0000 0000 0000 FFFF F539 3939 3F39 4040"
	$"4039 F7F7 F7F8 F8F8 F9F9 FFFF 0000 0000"
	$"0000 0000 0000 FFFF F532 3939 3939 4039"
	$"F8F7 F7F7 F8F8 F9F9 FFFF FFFF F8F8 F8F6"
	$"0000 0000 0000 00FF FFF5 3239 3939 32F7"
	$"F7F7 F7F7 F9F9 FFFF FFFF FAFA FAFA F8F6"
	$"0000 0000 0000 00FF FF00 2B2B 2B2B F7F7"
	$"F7F7 F9F9 FFFF FEFF FAFA FAFA FAF8 F8F6"
	$"0000 0000 0000 0000 FFFF 002B 2BF7 F7F7"
	$"F9F9 FFFF FEFF FAFA FAFA FAFA F8F8 0000"
	$"0000 0000 0000 0000 FFFF 002B 2BF7 F9F9"
	$"FFFF FEFF FAFA FAFA FAFA F8F8 F600 0000"
	$"0000 0000 0000 0000 00FF FFF5 F7F9 FFFF"
	$"FEFF FAFA FAFA FAFA F8F8 F600 0000 0000"
	$"0000 0000 0000 0000 00FF FFF7 FFFF FEFF"
	$"FAFA FAFA F8F8 F8F8 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 FFFF FEFF FAFA"
	$"F8F8 F8F8 F8F6 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 FFFF FBF8 F8F8"
	$"F6F6"
};

resource 'icl8' (129, "Mac OS Icon") {
	$"0000 0000 0000 8181 FBFB FBFB FBFB FCFC"
	$"FCFC FCFC FCFC ACAC AC00 0000 0000 0000"
	$"0000 0000 0000 FB00 0000 0000 0000 0000"
	$"0000 0000 0000 00F5 FCFB 0000 0000 0000"
	$"0000 0000 0000 FB00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 FC2B FB00 0000 0000"
	$"0000 0000 0000 FB00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 FC00 F781 0000 0000"
	$"00DD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD 2BF6 F5F5 FB00 F5F7 FB00 0000"
	$"00DD DD00 DDDD 0000 DDDD 0000 DDDD 00DD"
	$"DD00 DDDD F82B F5F5 FB00 00F6 F8FB 0000"
	$"00DD DD00 DD00 DDDD DD00 DDDD 00DD 0000"
	$"DD00 DDDD F9F7 F6F5 FBFC FCFC ACAC FD00"
	$"00DD DD00 DD00 DDDD DD00 DDDD 00DD 00DD"
	$"0000 DDDD FAF7 F6F5 F6F9 F9FA FA81 FD00"
	$"00DD DD00 DD00 DDDD DD00 DDDD 00DD 00DD"
	$"0000 DDDD FAF7 F6F5 F5F7 F7F8 F856 FD00"
	$"00DD DD00 DDDD 0000 DDDD 0000 DDDD 00DD"
	$"DD00 DDDD FAF7 F6F5 F5F5 F5F5 F556 FD00"
	$"00DD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD F9F7 F6F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 FDF9 F9F9 F9F9 F9F9 F9F9"
	$"F9F9 FAF9 F82B F5F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 ACF7 F7F7 F7F7 F7F7 F7F7"
	$"F7F7 F7F7 2BF6 F5F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 FCF5 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 2BAB F9F5 F5F5 F5F5 F5F5 F5F8 FD00"
	$"0000 0000 0000 FC00 F5F5 F52B F72B F7F7"
	$"2BF7 D6FC F72B F7F7 2BF5 F5F5 F5F8 FD00"
	$"0000 0000 0000 FC00 F5F5 F5AB 80AA AA80"
	$"AAF1 AC7F F97F 807F ABF5 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F5AB 7E7F 7FAA"
	$"54FE 54F5 54F8 F52A 80F5 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 00AA 7F7F ABAA"
	$"80FF 2A2A 81AB F52A ABF5 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F5AB 7F7F 7F7F"
	$"D680 2A2A 2AF7 2A2A 80F5 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F5FB 7F7F 7F7E"
	$"FE7F 2A2A 2A2A 2A2A ABF5 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F5AA 7F7F 7F7F"
	$"FDFE F4AC 2A2A F52A 80F5 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 00AB 7F80 AA7F"
	$"7E7E 7FAC 002A 802A ABF5 F5F5 F5F8 FE00"
	$"0000 0000 0000 AC00 F5F5 F5AA 55AA ACAA"
	$"AAAA ABFE F9AB FBF7 80F5 F5F5 F5F8 FE00"
	$"0000 0000 0000 AC00 F5F5 00AB 7F7F 54A9"
	$"ABAA ABFD 8055 F5F5 ABF5 F5F5 F5F8 F400"
	$"0000 0000 0000 AC00 F5F5 F5AB AA80 AB80"
	$"AA80 ABFE 5580 8080 AB00 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F52B 2BF7 2BF7"
	$"F6F7 F8AB ACF7 2AF7 2BF5 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F555 FC56 F5F5 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F500 F5F5 F5F5 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 ACF5 F6F6 F6F6 F6F6 2B2B"
	$"2B2B 2B2B 2B2B 2B2B 2B2B F7F7 F7F7 FF00"
	$"0000 0000 0000 ACAC FDFD FDFD FDFD FEFD"
	$"FEF4 FEFE F4FE FEF4 FFFF FFFF FFFF FF"
};

resource 'icl8' (130, "Windows Icon") {
	$"0000 0000 0000 8181 FBFB FBFB FBFB FCFC"
	$"FCFC FCFC FCFC ACAC AC00 0000 0000 0000"
	$"0000 0000 0000 FB00 0000 0000 0000 0000"
	$"0000 0000 0000 00F5 FCFB 0000 0000 0000"
	$"0000 0000 0000 FB00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 FC2B FB00 0000 0000"
	$"0000 0000 0000 FB00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 FC00 F781 0000 0000"
	$"00DD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DD2B F6F5 F5F5 F5F5 FB00 F5F7 FB00 0000"
	$"00DD 00DD DDDD 00DD 00DD 00DD DDDD 00DD"
	$"DDF8 2BF5 F5F5 F5F5 FB00 00F6 F8FB 0000"
	$"00DD 00DD DDDD 00DD 00DD 0000 DDDD 00DD"
	$"DDF9 F7F6 F5F5 F5F5 FBFC FCFC ACAC FD00"
	$"00DD 00DD 00DD 00DD 00DD 00DD 00DD 00DD"
	$"DDFA F7F6 F5F5 F5F5 F6F9 F9FA FA81 FD00"
	$"00DD 00DD 00DD 00DD 00DD 00DD DD00 00DD"
	$"DDFA F7F6 F5F5 F5F5 F5F7 F7F8 F856 FD00"
	$"00DD DD00 DD00 DDDD 00DD 00DD DDDD 00DD"
	$"DDFA F7F6 F5F5 F5F5 F5F5 F5F5 F556 FD00"
	$"00DD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDF9 F7F6 F5F5 F5F5 F5F5 F5F5 F656 FD00"
	$"0000 0000 0000 FDF9 F9F9 F9FA FAFA FAFA"
	$"F9F8 2BF5 F5F5 F5F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 ACF7 F7F7 F7F7 F7F9 56F7"
	$"F72B F6F5 F5F5 F5F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 FCF5 F5F5 F5F5 F6F9 F9FA"
	$"562B F5F5 F5F5 F5F5 F5F5 F5F5 F5F8 FD00"
	$"0000 0000 0000 FC00 F5F5 F5F5 F732 2B56"
	$"A5AB 8180 F9F7 F7F6 F5F5 F5F5 F6F8 FD00"
	$"0000 0000 0000 FC00 F5F5 F5F5 5531 320E"
	$"325D FDFD DFDF FFB2 7AF6 F5F5 F6F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F5F5 562C 072C"
	$"0833 FF39 105E D1A7 FFFC F6F6 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F555 565C 5632"
	$"0E81 FD10 1688 A651 A6FF F6F6 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 FA55 4F55 8081"
	$"82FD FD64 5FFF 7675 D1FC F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 5655 4F2B 5579"
	$"81FD ABD0 F3FF A6A6 FF56 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F656 4F55 4F55"
	$"ABFD 79A3 D035 5FFF FDF6 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F5F5 8056 557A"
	$"FDA4 9DAB AD0B 0BFF 80F5 F5F5 F5F8 FE00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F556 ABFD"
	$"FDFD CFF3 8305 35F3 F7F5 F5F5 F5F8 FE00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F8"
	$"80FC FDFF AD5F ADAC F5F5 F5F5 F5F8 F400"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F656 ABF3 FFF8 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F6F7 F8F5 F5F5 F5F5 F6F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5F5 F6F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5F5 F6F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 ACF5 F6F6 F6F6 F6F6 2B2B"
	$"2B2B 2B2B 2B2B 2B2B 2B2B F7F7 F7F7 FF00"
	$"0000 0000 0000 ACAC FDFD FDFD FDFD FDFD"
	$"FEFE FEFE FEFE FEFE FFFF FFFF FFFF FF"
};

resource 'icl8' (131, "Mac OS X Icon") {
	$"0000 0000 0000 8181 FBFB FBFB FBFB FCFC"
	$"FCFC FCFC FCFC ACAC AC00 0000 0000 0000"
	$"0000 0000 0000 FB00 0000 0000 0000 0000"
	$"0000 0000 0000 00F5 FCFB 0000 0000 0000"
	$"0000 0000 0000 FB00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 FC2B FB00 0000 0000"
	$"0000 0000 0000 FB00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 FC00 F781 0000 0000"
	$"00DD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD 2BF6 F5F5 F5F5 FB00 F5F7 FB00 0000"
	$"00DD DD00 0000 DD00 DD00 0000 DD00 0000"
	$"DDDD F82B F5F5 F5F5 FB00 00F6 F8FB 0000"
	$"00DD DDDD 00DD DD00 DD00 DDDD DD00 DDDD"
	$"DDDD F9F7 F6F5 F5F5 FBFC FCFC ACAC FD00"
	$"00DD DDDD 00DD DD00 DD00 00DD DD00 00DD"
	$"DDDD FAF7 F6F5 F5F5 F6F9 F9FA FA81 FD00"
	$"00DD DDDD 00DD DD00 DD00 DDDD DD00 DDDD"
	$"DDDD FAF7 F6F5 F5F5 F5F7 F7F8 F856 FD00"
	$"00DD DDDD 00DD DD00 DD00 DDDD DD00 DDDD"
	$"DDDD FAF7 F6F5 F5F5 F5F5 F5F5 F556 FD00"
	$"00DD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD F9F7 F6F5 F5F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 FDF9 F9F9 F9F9 F9F9 F9F9"
	$"FAF9 F82B F5F5 F5F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 ACF7 F7F7 F7F7 F7F7 F7F7"
	$"F7F7 2BF6 F5F5 F5F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 FCF5 F5F5 F554 5454 5454"
	$"5454 5454 5454 5454 54F5 F5F5 F5F8 FD00"
	$"0000 0000 0000 FC00 F5F5 5400 F8F6 F8F6"
	$"F8F6 F8F6 F8F6 F8F6 F7AB F5F5 F5F8 FD00"
	$"0000 0000 0000 FC00 F5F5 54F8 7F7F 7F7F"
	$"7F7F 7F7F 7F7F 7F7F 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 54F6 7FF6 F6F6"
	$"F6F7 7FF7 F6F6 F67F 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 54F8 7F7F 78F6"
	$"F6AB 7F7F F67F ABAB 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 54F6 787F 7FF6"
	$"F6F7 7FF6 F6AA 7F7F 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 54F8 7F7F 7F7F"
	$"F6F6 F7F6 ABAB 7F7F 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 54F6 7F7F 7F7F"
	$"2BF6 F67F AB7F 7F7F 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 54F8 7F7F 7F7F"
	$"7FF6 F6F7 7F7F 7F7F 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 AC00 F5F5 54F6 7F7F 7F7F"
	$"F6F6 F6F6 7F7F 7F7F 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 AC00 F5F5 54F8 7F7F 7FF7"
	$"F6AA 7FF6 F67F 7F7F 7FAB F5F5 F5F8 F400"
	$"0000 0000 0000 AC00 F5F5 54F6 7F7F F7F6"
	$"7FAB 7F2B F6F6 7F7F 7FAB F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 54F8 7FF6 F6F6"
	$"F77F 7FF6 F6F6 F6F7 7FAB F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 54F6 787F ABAA"
	$"AB7F 7F7F ABAA ABAB 7FAB F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 547F 7F7F 7F7F"
	$"7F7F 7F7F 7F7F 7F7F 7FAB F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5AB ABAB ABAB"
	$"ABAB ABAB ABAB ABAB ABF5 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 ACF5 F6F6 F6F6 F6F6 2B2B"
	$"2B2B 2B2B 2B2B 2B2B 2B2B F7F7 F7F7 FF00"
	$"0000 0000 0000 ACAC FDFD FDFD FDFD FEFD"
	$"FEF4 FEFE F4FE FEF4 FFFF FFFF FFFF FF"
};

resource 'ics#' (128) {
	{	/* array: 2 elements */
		/* [1] */
		$"0006 0188 07CC 1C78 70FC C5FB DB01 43EB"
		$"621F 240F 34CC 130C 183E 0AFF 0FFF 07FE",
		/* [2] */
		$"0006 018E 07FC 1FF8 7FFC FFFF FFFF 7FFF"
		$"7FFF 3FFF 3FFC 1FFC 1FFE 0FFF 0FFF 07FE"
	}
};

resource 'ics#' (129, "Mac OS Icon") {
	{	/* array: 2 elements */
		/* [1] */
		$"1FF8 100C FFFA A457 AD47 A455 FFFF 1555"
		$"1001 1003 1001 1003 1001 1003 1555 1FFF",
		/* [2] */
		$"1FF8 1FFC FFFE FFFF FFFF FFFF FFFF 1FFF"
		$"1FFF 1FFF 1FFF 1FFF 1FFF 1FFF 1FFF 1FFF"
	}
};

resource 'ics#' (130, "Windows Icon") {
	{	/* array: 2 elements */
		/* [1] */
		$"1FF8 100C FFFE BA9F AAAD D6AF FFFD 1AAB"
		$"1001 1003 1001 1003 1001 1003 1555 1FFF",
		/* [2] */
		$"1FF8 1FFC FFFE FFFF FFFF FFFF FFFF 1FFF"
		$"1FFF 1FFF 1FFF 1FFF 1FFF 1FFF 1FFF 1FFF"
	}
};

resource 'ics#' (131, "Mac OS X Icon") {
	{	/* array: 2 elements */
		/* [1] */
		$"1FF8 100C FFFE 8A4D DADB DADD FFFB 1557"
		$"1001 1003 1001 1003 1001 1003 1555 1FFF",
		/* [2] */
		$"1FF8 1FFC FFFE FFFF FFFF FFFF FFFF 1FFF"
		$"1FFF 1FFF 1FFF 1FFF 1FFF 1FFF 1FFF 1FFF"
	}
};

resource 'ics8' (128) {
	$"0000 0000 0000 0000 0000 0000 0034 3400"
	$"0000 0000 0000 00FF FF00 0000 342D 5D00"
	$"0000 0000 00FF FFFF 8181 072D 345D 0000"
	$"0000 00FF FFFF F5F6 2C33 3334 8800 0000"
	$"00FF FFFF 00F5 F62C 5E5E 3488 392C 0000"
	$"FFFF 00F5 F5F8 325E 5E34 FE64 3932 2CF9"
	$"FFFF F5F6 F8F7 5E5D 3333 3208 0832 32DF"
	$"00FF 00F5 F8F8 5D82 8888 885E 5D5D 5DDF"
	$"00FF FFF5 F632 5DF9 2BF7 F7FC B388 88DF"
	$"0000 FFF5 3264 FA2B F732 39F9 FF88 DFDF"
	$"0000 FFFF 3239 F732 3939 32F8 FFFF 0000"
	$"0000 00FF 0E39 3940 32F7 F856 FFFF 0000"
	$"0000 00FF FF32 32F7 F756 FFFE FAFA F800"
	$"0000 0000 FFF6 2BF8 FFFE FAFA FAFA F8F6"
	$"0000 0000 FFFF FFFF FAFA FAFA F8F8 F6F6"
	$"0000 0000 00FF FAFA FAF8 F8F8 F6F6 F6"
};

resource 'ics8' (129, "Mac OS Icon") {
	$"0000 00FB FBFB FBFC FCFC FCFC FC00 0000"
	$"0000 00FB F5F5 F5F5 F5F5 F5F5 FCFB 0000"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD FB00"
	$"DD00 DD00 00DD 0000 00DD 00DD 00DD FAFF"
	$"DD00 DD00 DDDD 00DD 00DD 0000 00DD FAFF"
	$"DD00 DD00 00DD 0000 00DD 00DD 00DD F9FF"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD F9FF"
	$"0000 00FC F7F7 F9F9 F9F9 F9F9 F9F9 F9FF"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F7FF"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F7FF"
	$"0000 00AC F5F7 F7F7 F7F7 F7F7 F7F7 F7FF"
	$"0000 00FD FDFD FDFD FEFE FEFE FFFF FFFF"
};

resource 'ics8' (130, "Windows Icon") {
	$"0000 00FB FBFB FBFC FCFC FCFC FC00 0000"
	$"0000 00FB F5F5 F5F5 F5F5 F5F5 FCFB 0000"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD FB00"
	$"DD00 DDDD DD00 DD00 DD00 00DD DDDD FAFF"
	$"DD00 DD00 DD00 DD00 DD00 DD00 DDDD FAFF"
	$"DDDD 00DD 00DD DD00 DD00 DD00 DDDD F9FF"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD F9FF"
	$"0000 00FC F7F7 F9F9 F9F9 F9F9 F9F9 F9FF"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F7FF"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F7FF"
	$"0000 00AC F5F7 F7F7 F7F7 F7F7 F7F7 F7FF"
	$"0000 00FD FDFD FDFD FEFE FEFE FFFF FFFF"
};

resource 'ics8' (131, "Mac OS X Icon") {
	$"0000 00FB FBFB FBFC FCFC FCFC FC00 0000"
	$"0000 00FB F5F5 F5F5 F5F5 F5F5 FCFB 0000"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD FB00"
	$"DD00 0000 DD00 DD00 00DD 0000 DDDD FAFF"
	$"DDDD 00DD DD00 DD00 DDDD 00DD DDDD FAFF"
	$"DDDD 00DD DD00 DD00 DDDD 00DD DDDD F9FF"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD F9FF"
	$"0000 00FC F7F7 F9F9 F9F9 F9F9 F9F9 F9FF"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F7FF"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F7FF"
	$"0000 00AC F5F7 F7F7 F7F7 F7F7 F7F7 F7FF"
	$"0000 00FD FDFD FDFD FEFE FEFE FFFF FFFF"
};

data 'ictb' (129) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0007 0024 0000 0000 000C 0000 0000 0000"            /* ...$............ */
	$"FFFF FFFF FFFF 0000"                                /* ˇˇˇˇˇˇ.. */
};

data 'ictb' (132) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0007 0028 8007 003C 0001 0000 0009 0000"            /* ...(Ä..<........ */
	$"0000 0000 FFFF FFFF FFFF 0000 0050 0000"            /* ....ˇˇˇˇˇˇ...P.. */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........ˇˇˇˇˇˇ.. */
	$"0647 656E 6576 61"                                  /* .Geneva */
};

data 'ictb' (2000) {
	$"0000 0000"                                          /* .... */
};

data 'ictb' (3001) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
};

data 'ictb' (3002) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000"                                          /* .... */
};

resource 'kind' (128) {
	'Mngl',
	0,
	{	/* array kindArray: 3 elements */
		/* [1] */
		'Icon', "Mac OS Icon",
		/* [2] */
		'ICO ', "Windows Icon",
		/* [3] */
		'TIFF', "Mac OS X Server Icon"
	}
};

resource 'mctb' (129) {
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

resource 'mctb' (135) {
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

resource 'mctb' (136) {
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

resource 'mctb' (137) {
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

resource 'mctb' (138) {
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

resource 'open' (128) {
	'Mngl',
	{	/* array typeArray: 6 elements */
		/* [1] */
		'Icon',
		/* [2] */
		'WIco',
		/* [3] */
		'TIFF',
		/* [4] */
		'****',
		/* [5] */
		'fold',
		/* [6] */
		'disk'
	}
};

resource 'vers' (1) {
	0x2,
	0x20,
	release,
	0x0,
	1,
	"2.2",
	"Iconographer 2.2\n©1998-2001 Mihai Parpar"
	"ita"
};

resource 'vers' (2) {
	0x2,
	0x20,
	release,
	0x0,
	1,
	"2.2",
	"http://www.mscape.com/"
};

resource 'xmnu' (129, "File Menu") {
	versionZero {
		{	/* array ItemExtensions: 7 elements */
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

			}			,
			/* [6] */
			skipItem {

			}			,
			/* [7] */
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

resource 'xmnu' (131, "Edit Menu") {
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

resource 'xmnu' (132, "Select") {
	versionZero {
		{	/* array ItemExtensions: 4 elements */
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

resource 'xmnu' (133, "Transform") {
	versionZero {
		{	/* array ItemExtensions: 7 elements */
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
			skipItem {

			},
			/* [5] */
			skipItem {

			},
			/* [6] */
			skipItem {

			},
			/* [7] */
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

resource 'xmnu' (134, "Paste Menu") {
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
			dataItem {
				1061109567,
				0x2,
				currScript,
				1061109567,
				1061109567,
				noHierID,
				sysFont,
				naturalGlyph
			},
			/* [4] */
			dataItem {
				1061109567,
				0x4,
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

resource 'xmnu' (135, "Copy Menu") {
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
				0x4,
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

