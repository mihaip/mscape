/* Resource fork of software/Iconographer/Source/French Resources/icnsEditorClass.ClassicF.rsrc */
resource 'CNTL' (1000, "Zoom Level Arrows", purgeable) {
	{40, 367, 64, 380},
	0,
	visible,
	100,
	0,
	96,
	0,
	""
};

resource 'CNTL' (1003, "Startup Options Group Box", purgeable) {
	{93, 9, 167, 189},
	0,
	visible,
	120,
	0,
	160,
	0,
	"A l�ouverture:"
};

resource 'CNTL' (1004, "Default Format", purgeable) {
	{75, 9, 95, 377},
	0,
	visible,
	-1,
	4000,
	401,
	0,
	"Format par d�faut:"
};

resource 'CNTL' (1007, "Preferences Tabs", purgeable) {
	{9, 0, 253, 388},
	1007,
	visible,
	100,
	0,
	128,
	0,
	""
};

resource 'CNTL' (1008, "Default Members Group Box", purgeable) {
	{100, 8, 242, 380},
	0,
	visible,
	100,
	0,
	160,
	0,
	"Membres par d�faut"
};

resource 'CNTL' (1010, "Adjust Tabs", purgeable) {
	{8, 0, 141, 367},
	1010,
	visible,
	100,
	0,
	128,
	0,
	""
};

resource 'CNTL' (1011, "Hue Slider", purgeable) {
	{47, 83, 78, 303},
	5,
	visible,
	180,
	-180,
	51,
	0,
	"Hue:"
};

resource 'CNTL' (1012, "Saturation Slider", purgeable) {
	{85, 83, 116, 303},
	5,
	visible,
	100,
	-100,
	51,
	0,
	"Saturation:"
};

resource 'CNTL' (1013, "Lightness Slider", purgeable) {
	{124, 92, 155, 312},
	6,
	visible,
	100,
	-100,
	51,
	0,
	"Lightness:"
};

resource 'CNTL' (1014, "Brightness Slider", purgeable) {
	{47, 83, 78, 303},
	5,
	visible,
	100,
	-100,
	51,
	0,
	"Brightness:"
};

resource 'CNTL' (1015, "Contrast Slider", purgeable) {
	{85, 83, 116, 303},
	5,
	visible,
	100,
	-100,
	51,
	0,
	"Contrast:"
};

resource 'CNTL' (1016, "External Format", purgeable) {
	{96, 7, 116, 379},
	0,
	visible,
	172,
	1016,
	401,
	0,
	"Format d'export:"
};

resource 'CNTL' (1017, "External Editor App", purgeable) {
	{42, 179, 63, 379},
	0,
	visible,
	100,
	0,
	32,
	0,
	""
};

resource 'CNTL' (1018, "External Editor Shortcut", purgeable) {
	{69, 179, 90, 379},
	0,
	visible,
	100,
	0,
	32,
	0,
	""
};

resource 'CNTL' (1019, "Members Palette Box", purgeable) {
	{93, 198, 167, 381},
	0,
	visible,
	100,
	0,
	160,
	0,
	"Palette des membres"
};

resource 'CNTL' (1020, "Members Palette Display Slider", purgeable) {
	{144, 253, 160, 343},
	64,
	visible,
	64,
	16,
	57,
	0,
	""
};

resource 'DITL' (1000, "Preferences", purgeable) {
	{	/* array DITLarray: 3 elements */
		/* [1] */
		{266, 306, 286, 374},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{266, 226, 286, 290},
		Button {
			enabled,
			"Annuler"
		},
		/* [3] */
		{9, 0, 253, 388},
		Control {
			enabled,
			1007
		}
	}
};

resource 'DITL' (1010, "Adjust", purgeable) {
	{	/* array DITLarray: 4 elements */
		/* [1] */
		{153, 285, 173, 353},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{153, 205, 173, 269},
		Button {
			enabled,
			"Annuler"
		},
		/* [3] */
		{153, 5, 173, 165},
		CheckBox {
			enabled,
			"Voir les changements"
		},
		/* [4] */
		{8, 0, 141, 367},
		Control {
			enabled,
			1010
		}
	}
};

resource 'DITL' (1011, "Adjust: Hue & Saturation Pane", purgeable) {
	{	/* array DITLarray: 7 elements */
		/* [1] */
		{47, 83, 78, 303},
		Control {
			enabled,
			1011
		},
		/* [2] */
		{85, 83, 116, 303},
		Control {
			enabled,
			1012
		},
		/* [3] */
		{50, 316, 66, 352},
		EditText {
			enabled,
			"0"
		},
		/* [4] */
		{87, 316, 103, 352},
		EditText {
			enabled,
			"0"
		},
		/* [5] */
		{116, 6, 132, 166},
		CheckBox {
			enabled,
			"Coloriser"
		},
		/* [6] */
		{47, 5, 68, 80},
		StaticText {
			disabled,
			"Teinte:"
		},
		/* [7] */
		{85, 5, 106, 80},
		StaticText {
			disabled,
			"Saturation:"
		}
	}
};

resource 'DITL' (1012, "Adjust: Brightness & Saturation Pane", purgeable) {
	{	/* array DITLarray: 6 elements */
		/* [1] */
		{47, 83, 78, 303},
		Control {
			enabled,
			1014
		},
		/* [2] */
		{85, 83, 116, 303},
		Control {
			enabled,
			1015
		},
		/* [3] */
		{50, 316, 66, 352},
		EditText {
			enabled,
			"0"
		},
		/* [4] */
		{87, 316, 103, 352},
		EditText {
			enabled,
			"0"
		},
		/* [5] */
		{47, 5, 67, 84},
		StaticText {
			disabled,
			"Luminosit�:"
		},
		/* [6] */
		{85, 5, 105, 84},
		StaticText {
			disabled,
			"Contraste:"
		}
	}
};

resource 'DITL' (1020, purgeable) {
	{	/* array DITLarray: 5 elements */
		/* [1] */
		{44, 232, 64, 302},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{44, 138, 64, 208},
		Button {
			enabled,
			"Annuler"
		},
		/* [3] */
		{12, 4, 30, 221},
		StaticText {
			disabled,
			"Dilater/Contracter la s�lection de"
		},
		/* [4] */
		{13, 225, 29, 253},
		EditText {
			enabled,
			""
		},
		/* [5] */
		{12, 264, 32, 307},
		StaticText {
			disabled,
			"pixels"
		}
	}
};

resource 'DITL' (1100, purgeable) {
	{	/* array DITLarray: 17 elements */
		/* [1] */
		{40, 8, 56, 313},
		CheckBox {
			enabled,
			"N'afficher que les membres charg�s"
		},
		/* [2] */
		{57, 8, 73, 313},
		CheckBox {
			enabled,
			"V�rifier les masques 8-bit et 1-bit"
		},
		/* [3] */
		{74, 8, 90, 313},
		CheckBox {
			enabled,
			"Pixelliser"
		},
		/* [4] */
		{93, 9, 167, 189},
		Control {
			enabled,
			1003
		},
		/* [5] */
		{108, 16, 124, 181},
		RadioButton {
			enabled,
			"Cr�er une nouvelle icone"
		},
		/* [6] */
		{126, 16, 142, 181},
		RadioButton {
			enabled,
			"Ouvrir une icone"
		},
		/* [7] */
		{144, 16, 160, 181},
		RadioButton {
			enabled,
			"Ne rien faire"
		},
		/* [8] */
		{93, 194, 167, 377},
		Control {
			enabled,
			1019
		},
		/* [9] */
		{108, 204, 124, 364},
		RadioButton {
			enabled,
			"Taille r�elle"
		},
		/* [10] */
		{126, 204, 142, 364},
		RadioButton {
			enabled,
			"R�duit"
		},
		/* [11] */
		{144, 210, 160, 251},
		StaticText {
			disabled,
			"Taille:"
		},
		/* [12] */
		{144, 253, 160, 343},
		Control {
			enabled,
			1020
		},
		/* [13] */
		{146, 351, 158, 367},
		EditText {
			enabled,
			"64"
		},
		/* [14] */
		{177, 79, 197, 297},
		Button {
			enabled,
			"Position des palettes par d�faut"
		},
		/* [15] */
		{180, 76, 194, 88},
		UserItem {
			enabled
		},
		/* [16] */
		{180, 76, 194, 88},
		UserItem {
			enabled
		},
		/* [17] */
		{180, 76, 194, 88},
		UserItem {
			enabled
		}
	}
};

resource 'DITL' (1101, purgeable) {
	{	/* array DITLarray: 51 elements */
		/* [1] */
		{45, 9, 63, 308},
		StaticText {
			disabled,
			"Niveau de zoom par d�faut:"
		},
		/* [2] */
		{47, 319, 58, 359},
		EditText {
			disabled,
			"1000%"
		},
		/* [3] */
		{40, 367, 64, 380},
		Control {
			enabled,
			1000
		},
		/* [4] */
		{75, 9, 95, 377},
		Control {
			enabled,
			1004
		},
		/* [5] */
		{48, 260, 56, 268},
		UserItem {
			enabled
		},
		/* [6] */
		{48, 260, 56, 268},
		UserItem {
			enabled
		},
		/* [7] */
		{48, 260, 56, 268},
		UserItem {
			enabled
		},
		/* [8] */
		{48, 260, 56, 268},
		UserItem {
			enabled
		},
		/* [9] */
		{48, 260, 56, 268},
		UserItem {
			enabled
		},
		/* [10] */
		{48, 260, 56, 268},
		UserItem {
			enabled
		},
		/* [11] */
		{48, 260, 56, 268},
		UserItem {
			enabled
		},
		/* [12] */
		{48, 260, 56, 268},
		UserItem {
			enabled
		},
		/* [13] */
		{48, 260, 56, 268},
		UserItem {
			enabled
		},
		/* [14] */
		{100, 8, 242, 380},
		Control {
			enabled,
			1008
		},
		/* [15] */
		{221, 12, 237, 152},
		Control {
			enabled,
			1104
		},
		/* [16] */
		{122, 12, 138, 152},
		Control {
			enabled,
			1100
		},
		/* [17] */
		{166, 12, 182, 152},
		Control {
			enabled,
			1101
		},
		/* [18] */
		{185, 12, 201, 152},
		Control {
			enabled,
			1102
		},
		/* [19] */
		{203, 12, 219, 152},
		Control {
			enabled,
			1103
		},
		/* [20] */
		{160, 14, 163, 372},
		Control {
			enabled,
			1105
		},
		/* [21] */
		{143, 14, 157, 64},
		StaticText {
			disabled,
			"Tailles"
		},
		/* [22] */
		{143, 111, 155, 140},
		StaticText {
			disabled,
			"Icone:"
		},
		/* [23] */
		{143, 147, 155, 178},
		StaticText {
			disabled,
			"32-bit"
		},
		/* [24] */
		{143, 179, 155, 210},
		StaticText {
			disabled,
			"8-bit"
		},
		/* [25] */
		{143, 211, 155, 242},
		StaticText {
			disabled,
			"4-bit"
		},
		/* [26] */
		{143, 243, 155, 274},
		StaticText {
			disabled,
			"1-bit"
		},
		/* [27] */
		{143, 277, 155, 317},
		StaticText {
			disabled,
			"Masque:"
		},
		/* [28] */
		{143, 314, 155, 345},
		StaticText {
			disabled,
			"8-bit"
		},
		/* [29] */
		{143, 346, 155, 377},
		StaticText {
			disabled,
			"1-bit"
		},
		/* [30] */
		{166, 153, 182, 170},
		CheckBox {
			enabled,
			""
		},
		/* [31] */
		{185, 153, 201, 170},
		CheckBox {
			enabled,
			""
		},
		/* [32] */
		{203, 153, 219, 170},
		CheckBox {
			enabled,
			""
		},
		/* [33] */
		{166, 181, 182, 198},
		CheckBox {
			enabled,
			""
		},
		/* [34] */
		{185, 181, 201, 198},
		CheckBox {
			enabled,
			""
		},
		/* [35] */
		{203, 181, 219, 198},
		CheckBox {
			enabled,
			""
		},
		/* [36] */
		{221, 181, 237, 198},
		CheckBox {
			enabled,
			""
		},
		/* [37] */
		{166, 213, 182, 230},
		CheckBox {
			enabled,
			""
		},
		/* [38] */
		{185, 213, 201, 230},
		CheckBox {
			enabled,
			""
		},
		/* [39] */
		{203, 213, 219, 230},
		CheckBox {
			enabled,
			""
		},
		/* [40] */
		{221, 213, 237, 230},
		CheckBox {
			enabled,
			""
		},
		/* [41] */
		{166, 245, 182, 262},
		CheckBox {
			disabled,
			""
		},
		/* [42] */
		{185, 245, 201, 262},
		CheckBox {
			disabled,
			""
		},
		/* [43] */
		{203, 245, 219, 262},
		CheckBox {
			disabled,
			""
		},
		/* [44] */
		{221, 245, 237, 262},
		CheckBox {
			disabled,
			""
		},
		/* [45] */
		{166, 317, 182, 334},
		CheckBox {
			enabled,
			""
		},
		/* [46] */
		{185, 317, 201, 334},
		CheckBox {
			enabled,
			""
		},
		/* [47] */
		{203, 317, 219, 334},
		CheckBox {
			enabled,
			""
		},
		/* [48] */
		{166, 349, 182, 366},
		CheckBox {
			disabled,
			""
		},
		/* [49] */
		{185, 349, 201, 366},
		CheckBox {
			disabled,
			""
		},
		/* [50] */
		{203, 349, 219, 366},
		CheckBox {
			disabled,
			""
		},
		/* [51] */
		{221, 349, 237, 366},
		CheckBox {
			disabled,
			""
		}
	}
};

resource 'DITL' (1102, purgeable) {
	{	/* array DITLarray: 7 elements */
		/* [1] */
		{45, 10, 62, 125},
		StaticText {
			disabled,
			"Editeur externe:"
		},
		/* [2] */
		{42, 179, 63, 379},
		Control {
			enabled,
			1017
		},
		/* [3] */
		{72, 10, 89, 149},
		StaticText {
			disabled,
			"Raccourci-clavier:"
		},
		/* [4] */
		{69, 179, 90, 379},
		Control {
			enabled,
			1018
		},
		/* [5] */
		{96, 7, 116, 379},
		Control {
			enabled,
			1016
		},
		/* [6] */
		{120, 9, 136, 229},
		CheckBox {
			enabled,
			"Exporter le masque et l'icone"
		},
		/* [7] */
		{152, 148, 162, 156},
		UserItem {
			enabled
		}
	}
};

data 'DLGX' (1000) {
	$"0647 656E 6576 6100 0000 0000 0000 0000"            /* .Geneva......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0009 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0003 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000"                                     /* ...... */
};

data 'DLGX' (1010) {
	$"0743 6869 6361 676F 0000 0000 0000 0000"            /* .Chicago........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0004 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'DLGX' (1011) {
	$"0743 6869 6361 676F 0000 0000 0000 0000"            /* .Chicago........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0007 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0007 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000"                                     /* ...... */
};

data 'DLGX' (1012) {
	$"0743 6869 6361 676F 0000 0000 0000 0000"            /* .Chicago........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0006 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0007 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
};

data 'DLGX' (1020) {
	$"054F 7361 6B61 0000 0000 0000 0000 0000"            /* .Osaka.......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0005 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'DLGX' (1100) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0011 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0004 0000 0001 0000 0000 0000 0004"            /* ................ */
	$"0000 0001 0000 0000 0000 0004 0000 0001"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0004 0000 0001 0000 0000 0000 0004"            /* ................ */
	$"0000 0001 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0007 0000 0000 0000 0000 0000 0002"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 000A 0000 0000 0000 0000"            /* ................ */
	$"0000 000A 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'DLGX' (1101) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0033 0006 0000 0000 0000 0000 0000 0007"            /* .3.............. */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 000A 0000 0000 0000 0000 0000 000A"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 000A 0000 0000 0000 0000"            /* ................ */
	$"0000 000A 0000 0000 0000 0000 0000 000A"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 000A 0000 0000 0000 0000"            /* ................ */
	$"0000 000A 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000"                                     /* ...... */
};

data 'DLGX' (1102) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0007 0006 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000"                                     /* ...... */
};

resource 'DLOG' (1000, "Preferences", purgeable) {
	{748, 86, 1045, 474},
	1043,
	invisible,
	goAway,
	0x0,
	1000,
	"Preferences",
	centerMainScreen
};

resource 'DLOG' (1010, "Adjust", purgeable) {
	{259, 337, 443, 704},
	1043,
	invisible,
	noGoAway,
	0x0,
	1010,
	"Adjust�",
	centerParentWindowScreen
};

resource 'DLOG' (1011, "Adjust: Hue and Saturation", purgeable) {
	{341, 144, 561, 519},
	1024,
	visible,
	goAway,
	0x0,
	1011,
	"DITL 1011 �Adjust: Pane 1� from icnsEdit"
	"orClass.rsrc",
	noAutoCenter
};

resource 'DLOG' (1012, "Adjust: Brightness and Contrast", purgeable) {
	{326, 357, 538, 772},
	1024,
	visible,
	goAway,
	0x0,
	1012,
	"",
	noAutoCenter
};

resource 'DLOG' (1020, "Expand/Contract", purgeable) {
	{494, 197, 570, 511},
	1043,
	invisible,
	noGoAway,
	0x0,
	1020,
	"Dilater/Contracter la s�lection...",
	noAutoCenter
};

resource 'DLOG' (1100, "Preferences: General Pane", purgeable) {
	{511, 119, 808, 507},
	dBoxProc,
	visible,
	goAway,
	0x0,
	1100,
	"",
	noAutoCenter
};

resource 'DLOG' (1101, "Preferences: Defaults", purgeable) {
	{405, 927, 702, 1315},
	dBoxProc,
	visible,
	goAway,
	0x0,
	1101,
	"",
	noAutoCenter
};

resource 'DLOG' (1102, "Preferences: External Editing", purgeable) {
	{319, 213, 616, 601},
	dBoxProc,
	visible,
	goAway,
	0x0,
	1102,
	"",
	noAutoCenter
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

resource 'dctb' (1010) {
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

resource 'dctb' (1012) {
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

resource 'dctb' (1020) {
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

resource 'dctb' (1100) {
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

resource 'dctb' (1101) {
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

resource 'dctb' (1102) {
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

resource 'dlgx' (1000) {
	versionZero {
		15
	}
};

resource 'dlgx' (1010) {
	versionZero {
		15
	}
};

resource 'dlgx' (1020) {
	versionZero {
		15
	}
};

data 'ictb' (1000) {
	$"0000 0000 0000 0000 0000 0000"                      /* ............ */
};

data 'ictb' (1010) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
};

data 'ictb' (1011) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000"                      /* ............ */
};

data 'ictb' (1012) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000"                      /* ............ */
};

data 'ictb' (1020) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000"                                          /* .... */
};

data 'ictb' (1100) {
	$"0028 0044 0000 0000 0000 0000 0000 0000"            /* .(.D............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0007 006C 0000 0000"            /* ...........l.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 000C 0000 0000 0000"            /* ................ */
	$"FFFF FFFF FFFF 0000 0001 0000 0009 0000"            /* ������.......... */
	$"0000 0000 FFFF FFFF FFFF 0000 0000 0000"            /* ....������...... */
	$"0000 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........������.. */
};

data 'ictb' (1101) {
	$"0000 0000 0007 00CC 0000 0000 0000 0000"            /* .......�........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0028 00E0 0028 0108"            /* .........(.�.(.. */
	$"0028 0130 0028 0158 0028 0180 0000 0000"            /* .(.0.(.X.(.�.... */
	$"0007 01A8 0007 01BC 0005 01D0 0005 01E4"            /* ...�...�...�...� */
	$"0005 01F8 0005 020C 0007 0220 0005 0234"            /* ...�....... ...4 */
	$"0005 0248 0000 0000 0000 0000 0000 0000"            /* ...H............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0001 0000"            /* ................ */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........������.. */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0001 FFFF FFFF FFFF 0002 0000 0000 0000"            /* ..������........ */
	$"0003 FFFF FFFF FFFF 0000 0000 0000 0003"            /* ..������........ */
	$"0000 0000 0000 0000 0001 FFFF FFFF FFFF"            /* ..........������ */
	$"0002 0000 0000 0000 0003 FFFF FFFF FFFF"            /* ..........������ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0001 FFFF FFFF FFFF 0002 0000 0000 0000"            /* ..������........ */
	$"0003 FFFF FFFF FFFF 0000 0000 0000 0003"            /* ..������........ */
	$"0000 0000 0000 0000 0001 FFFF FFFF FFFF"            /* ..........������ */
	$"0002 0000 0000 0000 0003 FFFF FFFF FFFF"            /* ..........������ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0001 FFFF FFFF FFFF 0002 0000 0000 0000"            /* ..������........ */
	$"0003 FFFF FFFF FFFF 0001 0100 0009 0000"            /* ..������........ */
	$"0000 0000 FFFF FFFF FFFF 0000 0001 0100"            /* ....������...... */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........������.. */
	$"0001 0100 0009 0000 0000 0000 FFFF FFFF"            /* ............���� */
	$"FFFF 0000 0001 0100 0009 0000 0000 0000"            /* ��.............. */
	$"FFFF FFFF FFFF 0000 0001 0100 0009 0000"            /* ������.......... */
	$"0000 0000 FFFF FFFF FFFF 0000 0001 0100"            /* ....������...... */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........������.. */
	$"0001 0100 0009 0000 0000 0000 FFFF FFFF"            /* ............���� */
	$"FFFF 0000 0001 0100 0009 0000 0000 0000"            /* ��.............. */
	$"FFFF FFFF FFFF 0000 0001 0100 0009 0000"            /* ������.......... */
	$"0000 0000 FFFF FFFF FFFF 0000"                      /* ....������.. */
};

data 'ictb' (1102) {
	$"0007 001C 0000 0000 0007 0030 0000 0000"            /* ...........0.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........������.. */
	$"0000 0000 0000 0000 0000 0000 FFFF FFFF"            /* ............���� */
	$"FFFF 0000"                                          /* ��.. */
};

resource 'tab#' (1007, "Preferences Tabs") {
	versionZero {
		{	/* array TabInfo: 3 elements */
			/* [1] */
			0,
			"G�n�ral",
			/* [2] */
			0,
			"D�faut",
			/* [3] */
			0,
			"Editeur externe"
		}
	}
};

resource 'tab#' (1010, "Hue & Saturation Tabs") {
	versionZero {
		{	/* array TabInfo: 2 elements */
			/* [1] */
			0,
			"Teinte & Saturation",
			/* [2] */
			0,
			"Lminosit� & contraste"
		}
	}
};

