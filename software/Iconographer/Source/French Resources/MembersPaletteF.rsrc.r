/* Resource fork of software/Iconographer/Source/French Resources/MembersPaletteF.rsrc */
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
	"Icon Members",
	noAutoCenter
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

resource 'STR#' (400, "Members Palette Balloon Help", purgeable) {
	{	/* array StringArray: 2 elements */
		/* [1] */
		"Information sur l'icone\n\nCliquez sur ce "
		"bouton pour régler les paramètres d'une "
		"icone (ID, nom, membres, et flags).",
		/* [2] */
		"Ajouter un membre\n\nCliquez ici pour ajou"
		"ter un membre (partie d'icone) et spécif"
		"ier sa taille et sa profondeur de couleu"
		"rs."
	}
};

resource 'STR#' (401, "Members Palette Names", purgeable) {
	{	/* array StringArray: 2 elements */
		/* [1] */
		"Infos",
		/* [2] */
		"Ajouter"
	}
};

resource 'WIND' (400, "Members Palette", purgeable) {
	{226, 867, 760, 1017},
	1059,
	invisible,
	goAway,
	0x0,
	"Membres",
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

data 'ictb' (9999) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
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

