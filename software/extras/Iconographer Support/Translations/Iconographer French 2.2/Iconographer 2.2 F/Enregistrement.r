/* Resource fork of software/extras/Iconographer Support/Translations/Iconographer French 2.2/Iconographer 2.2 F/Enregistrement */
resource 'FREF' (128, purgeable) {
	'APPL',
	0,
	""
};

resource 'DLOG' (128, "About", purgeable) {
	{48, 42, 244, 323},
	movableDBoxProc,
	invisible,
	noGoAway,
	0x0,
	128,
	"� propos de",
	noAutoCenter
};

resource 'DLOG' (225, "Comment", purgeable) {
	{51, 13, 247, 500},
	movableDBoxProc,
	invisible,
	noGoAway,
	0x0,
	225,
	"Comment",
	noAutoCenter
};

resource 'DLOG' (226, "Bill Address", purgeable) {
	{51, 23, 242, 480},
	movableDBoxProc,
	invisible,
	noGoAway,
	0x0,
	226,
	"Adresse de facturation de carte de cr�di"
	"t",
	noAutoCenter
};

resource 'DLOG' (200, "Register Input", purgeable) {
	{40, 4, 338, 500},
	noGrowDocProc,
	invisible,
	goAway,
	0x0,
	200,
	"Register",
	centerMainScreen
};

resource 'DITL' (128, purgeable) {
	{	/* array DITLarray: 9 elements */
		/* [1] */
		{166, 112, 186, 170},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{160, 128, 192, 160},
		UserItem {
			disabled
		},
		/* [3] */
		{1, 2, 50, 277},
		UserItem {
			enabled
		},
		/* [4] */
		{37, 135, 62, 270},
		UserItem {
			enabled
		},
		/* [5] */
		{66, 2, 91, 278},
		UserItem {
			disabled
		},
		/* [6] */
		{95, 2, 108, 278},
		UserItem {
			enabled
		},
		/* [7] */
		{117, 46, 142, 274},
		UserItem {
			enabled
		},
		/* [8] */
		{142, 78, 155, 249},
		UserItem {
			enabled
		},
		/* [9] */
		{114, 8, 146, 40},
		Icon {
			enabled,
			928
		}
	}
};

resource 'DITL' (225, purgeable) {
	{	/* array DITLarray: 5 elements */
		/* [1] */
		{170, 416, 190, 474},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{170, 344, 190, 402},
		Button {
			enabled,
			"Annuler"
		},
		/* [3] */
		{165, 432, 197, 464},
		UserItem {
			disabled
		},
		/* [4] */
		{76, 8, 158, 480},
		EditText {
			enabled,
			""
		},
		/* [5] */
		{5, 8, 69, 479},
		StaticText {
			disabled,
			"La m�thode recommand�e pour envoyer des "
			"commentaires � un auteur est de lui c�bl"
			"er personnellement, mais vous pouvez lui"
			" transmettre un bref commentaire � propo"
			"s de �^1� en l�indiquant ici�:"
		}
	}
};

resource 'DITL' (226, purgeable) {
	{	/* array DITLarray: 10 elements */
		/* [1] */
		{163, 386, 183, 444},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{163, 314, 183, 372},
		Button {
			enabled,
			"Annuler"
		},
		/* [3] */
		{158, 402, 190, 434},
		UserItem {
			disabled
		},
		/* [4] */
		{163, 105, 183, 300},
		Button {
			enabled,
			"Adresse ext�rieure aux USA"
		},
		/* [5] */
		{113, 105, 129, 445},
		EditText {
			enabled,
			""
		},
		/* [6] */
		{138, 105, 154, 234},
		EditText {
			enabled,
			""
		},
		/* [7] */
		{5, 8, 53, 450},
		StaticText {
			disabled,
			"Afin de diminuer les risques de fraude, "
			"les soci�t�s de cartes de cr�dit exigent"
			" maintenant que vous indiquiez l�adresse"
			" de facturation de votre carte de cr�dit"
			"."
		},
		/* [8] */
		{55, 8, 103, 450},
		StaticText {
			disabled,
			"Seuls la rue (p.ex. �1442-A Walnut Stree"
			"t #392�) ou la bo�te postale (p.ex. �PO "
			"Box 1256�), et votre num�ro de code post"
			"al (p.ex. �94709-1405�) sont n�cessaires"
			"."
		},
		/* [9] */
		{113, 8, 129, 100},
		StaticText {
			disabled,
			"Rue :"
		},
		/* [10] */
		{138, 8, 154, 100},
		StaticText {
			disabled,
			"Code postal :"
		}
	}
};

resource 'DITL' (200, purgeable) {
	{	/* array DITLarray: 50 elements */
		/* [1] */
		{273, 396, 293, 488},
		Button {
			enabled,
			"Enregistrer�"
		},
		/* [2] */
		{273, 298, 293, 390},
		Button {
			enabled,
			"Quitter"
		},
		/* [3] */
		{244, 298, 264, 390},
		Button {
			enabled,
			"Imprimer�"
		},
		/* [4] */
		{244, 396, 264, 488},
		Button {
			enabled,
			"Copier�"
		},
		/* [5] */
		{16, 11, 28, 243},
		EditText {
			enabled,
			""
		},
		/* [6] */
		{52, 11, 64, 243},
		EditText {
			enabled,
			""
		},
		/* [7] */
		{37, 8, 49, 208},
		StaticText {
			disabled,
			"Adresse de courrier �lectronique :"
		},
		/* [8] */
		{16, 255, 64, 487},
		EditText {
			enabled,
			""
		},
		/* [9] */
		{1, 252, 13, 452},
		StaticText {
			disabled,
			"Adresses postale (facultatif) :"
		},
		/* [10] */
		{92, 16, 104, 52},
		EditText {
			enabled,
			""
		},
		/* [11] */
		{74, 405, 86, 463},
		EditText {
			enabled,
			""
		},
		/* [12] */
		{89, 185, 107, 280},
		CheckBox {
			enabled,
			""
		},
		/* [13] */
		{89, 290, 107, 400},
		CheckBox {
			enabled,
			""
		},
		/* [14] */
		{71, 208, 89, 348},
		CheckBox {
			enabled,
			""
		},
		/* [15] */
		{72, 13, 88, 29},
		Icon {
			enabled,
			225
		},
		/* [16] */
		{131, 16, 143, 52},
		EditText {
			enabled,
			""
		},
		/* [17] */
		{113, 405, 125, 463},
		EditText {
			enabled,
			""
		},
		/* [18] */
		{128, 185, 146, 280},
		CheckBox {
			enabled,
			""
		},
		/* [19] */
		{128, 290, 146, 400},
		CheckBox {
			enabled,
			""
		},
		/* [20] */
		{110, 208, 128, 348},
		CheckBox {
			enabled,
			""
		},
		/* [21] */
		{111, 13, 127, 29},
		Icon {
			enabled,
			225
		},
		/* [22] */
		{170, 16, 182, 52},
		EditText {
			enabled,
			""
		},
		/* [23] */
		{152, 405, 164, 463},
		EditText {
			enabled,
			""
		},
		/* [24] */
		{167, 185, 185, 280},
		CheckBox {
			enabled,
			""
		},
		/* [25] */
		{167, 290, 185, 400},
		CheckBox {
			enabled,
			""
		},
		/* [26] */
		{149, 208, 167, 348},
		CheckBox {
			enabled,
			""
		},
		/* [27] */
		{150, 13, 166, 29},
		Icon {
			enabled,
			225
		},
		/* [28] */
		{69, 8, 187, 475},
		UserItem {
			disabled
		},
		/* [29] */
		{69, 474, 187, 490},
		UserItem {
			enabled
		},
		/* [30] */
		{206, 296, 224, 475},
		CheckBox {
			enabled,
			""
		},
		/* [31] */
		{190, 312, 242, 475},
		UserItem {
			disabled
		},
		/* [32] */
		{231, 115, 243, 287},
		EditText {
			enabled,
			""
		},
		/* [33] */
		{252, 115, 264, 287},
		EditText {
			enabled,
			"0000-0000-0000-0000"
		},
		/* [34] */
		{273, 155, 285, 287},
		EditText {
			enabled,
			"01/90"
		},
		/* [35] */
		{205, 272, 221, 288},
		Icon {
			enabled,
			226
		},
		/* [36] */
		{231, 16, 243, 110},
		StaticText {
			disabled,
			"Nom sur la carte :"
		},
		/* [37] */
		{252, 16, 264, 110},
		StaticText {
			disabled,
			"Num�ro de la carte :"
		},
		/* [38] */
		{273, 16, 285, 150},
		StaticText {
			disabled,
			"Date d�expiration (MM/AA) :"
		},
		/* [39] */
		{231, 96, 243, 287},
		EditText {
			enabled,
			""
		},
		/* [40] */
		{231, 16, 243, 91},
		StaticText {
			disabled,
			"First Virtual ID:"
		},
		/* [41] */
		{252, 16, 288, 290},
		StaticText {
			disabled,
			"Pour plus d�information � propos de Firs"
			"t Virtual, veuillez c�bler � <help@fv.co"
			"m>"
		},
		/* [42] */
		{231, 16, 288, 290},
		StaticText {
			disabled,
			"cheque text"
		},
		/* [43] */
		{243, 16, 291, 290},
		StaticText {
			disabled,
			"cash text item"
		},
		/* [44] */
		{226, 63, 242, 163},
		UserItem {
			enabled
		},
		/* [45] */
		{228, 16, 242, 60},
		StaticText {
			disabled,
			"Monnaie :"
		},
		/* [46] */
		{205, 110, 221, 260},
		UserItem {
			enabled
		},
		/* [47] */
		{189, 8, 293, 294},
		UserItem {
			disabled
		},
		/* [48] */
		{205, 16, 217, 110},
		StaticText {
			disabled,
			"Mode de paiement :"
		},
		/* [49] */
		{1, 8, 13, 208},
		StaticText {
			disabled,
			"Inscrire au nom de :"
		},
		/* [50] */
		{0, 0, 0, 0},
		HelpItem {
			enabled,
			HMScanhdlg {
				200
			}
		}
	}
};

resource 'BNDL' (128, purgeable) {
	'Regi',
	0,
	{	/* array TypeArray: 2 elements */
		/* [1] */
		'FREF',
		{	/* array IDArray: 1 elements */
			/* [1] */
			0, 128
		},
		/* [2] */
		'ICN#',
		{	/* array IDArray: 1 elements */
			/* [1] */
			0, 128
		}
	}
};

resource 'ICN#' (128, purgeable) {
	{	/* array: 2 elements */
		/* [1] */
		$"0001 8000 0002 4000 0004 2000 0008 1000"
		$"0010 0800 0020 0400 0041 8200 0081 8100"
		$"0107 E080 020F F040 0419 9820 0819 9810"
		$"1019 8008 2019 8004 401D 8002 800F E001"
		$"8007 F001 4001 B802 2001 9804 1001 9808"
		$"0819 9810 0419 9820 020F F040 0107 E080"
		$"0081 8100 0041 8200 0020 0400 0010 0800"
		$"0008 1000 0004 2000 0002 4000 0001 80",
		/* [2] */
		$"0001 8000 0003 C000 0007 E000 000F F000"
		$"001F F800 003F FC00 007F FE00 00FF FF00"
		$"01FF FF80 03FF FFC0 07FF FFE0 0FFF FFF0"
		$"1FFF FFF8 3FFF FFFC 7FFF FFFE FFFF FFFF"
		$"FFFF FFFF 7FFF FFFE 3FFF FFFC 1FFF FFF8"
		$"0FFF FFF0 07FF FFE0 03FF FFC0 01FF FF80"
		$"00FF FF00 007F FE00 003F FC00 001F F800"
		$"000F F000 0007 E000 0003 C000 0001 80"
	}
};

resource 'ics#' (128, purgeable) {
	{	/* array: 2 elements */
		/* [1] */
		$"0100 0280 0440 0920 1390 2548 4504 8502"
		$"8382 4144 2548 1390 0920 0440 0280 01",
		/* [2] */
		$"0100 0380 07C0 0FE0 1FF0 3FF8 7FFC FFFE"
		$"FFFE 7FFC 3FF8 1FF0 0FE0 07C0 0380 01"
	}
};

data 'Regi' (0, "Owner resource") {
	$"00"                                                 /* . */
};

data 'TEXT' (200, "Check") {
	$"456E 766F 7965 7A20 6365 2062 6F72 6465"            /* Envoyez ce borde */
	$"7265 6175 2C20 6176 6563 2076 6F74 7265"            /* reau, avec votre */
	$"2063 688F 7175 6520 6C69 6265 6C6C 8E20"            /*  ch�que libell�  */
	$"6175 206E 6F6D 2064 6520 D24B 6167 6920"            /* au nom de �Kagi  */
	$"5368 6172 6577 6172 65D3 2088 206C D561"            /* Shareware� � l�a */
	$"6472 6573 7365 2063 692D 6465 7373 6F75"            /* dresse ci-dessou */
	$"732E 0D0D 5468 6520 552E 532E 2046 6564"            /* s...The U.S. Fed */
	$"6572 616C 2045 6D70 6C6F 7965 7220 4964"            /* eral Employer Id */
	$"656E 7469 6669 6361 7469 6F6E 204E 756D"            /* entification Num */
	$"6265 7220 2246 4549 4E22 2066 6F72 204B"            /* ber "FEIN" for K */
	$"6167 6920 5368 6172 6577 6172 6520 6973"            /* agi Shareware is */
	$"2039 342D 3332 3133 3933 372E 2054 6865"            /*  94-3213937. The */
	$"2055 5320 676F 7665 726E 6D65 6E74 2064"            /*  US government d */
	$"6F65 7320 6E6F 7420 636C 6173 7369 6679"            /* oes not classify */
	$"204B 6167 6920 5368 6172 6577 6172 6520"            /*  Kagi Shareware  */
	$"6173 2061 2077 6F6D 656E 206F 776E 6564"            /* as a women owned */
	$"2062 7573 696E 6573 7320 6F72 2061 7320"            /*  business or as  */
	$"6120 6D69 6E6F 7269 7479 206F 776E 6564"            /* a minority owned */
	$"2062 7573 696E 6573 732E 2049 7420 6973"            /*  business. It is */
	$"2063 6C61 7373 6966 6965 6420 6173 2061"            /*  classified as a */
	$"2073 6D61 6C6C 2073 6572 7669 6365 2062"            /*  small service b */
	$"7573 696E 6573 7320 6F77 6E65 6420 6279"            /* usiness owned by */
	$"2061 6E20 696E 6469 7669 6475 616C 2E0D"            /*  an individual.. */
	$"0D45 6E76 6F79 657A 2063 6520 626F 7264"            /* .Envoyez ce bord */
	$"6572 6561 7520 6176 6563 2076 6F74 7265"            /* ereau avec votre */
	$"2070 6169 656D 656E 7420 8820 3A0D 0D"              /*  paiement � :.. */
};

data 'TEXT' (201, "Cash") {
	$"456E 766F 7965 7A20 6365 2062 6F72 6465"            /* Envoyez ce borde */
	$"7265 6175 2061 6363 6F6D 7061 676E 8E20"            /* reau accompagn�  */
	$"6465 2076 6F74 7265 2070 6179 656D 656E"            /* de votre payemen */
	$"7420 656E 2065 7370 8F63 6573 2028 656D"            /* t en esp�ces (em */
	$"6261 6C6C 8E20 6461 6E73 2064 7520 7061"            /* ball� dans du pa */
	$"7069 6572 2066 6F72 7420 706F 7572 2072"            /* pier fort pour r */
	$"656E 6472 6520 6C65 2070 6169 656D 656E"            /* endre le paiemen */
	$"7420 706C 7573 2064 6973 6372 6574 2920"            /* t plus discret)  */
	$"8820 3A0D 0D"                                       /* � :.. */
};

data 'TEXT' (202, "Net") {
	$"456E 766F 7965 7A20 6365 2062 6F72 6465"            /* Envoyez ce borde */
	$"7265 6175 2088 203A 0D0D"                           /* reau � :.. */
};

data 'TEXT' (320, "No Print") {
	$"4365 2062 6F72 6465 7265 6175 2065 7374"            /* Ce bordereau est */
	$"2064 6573 7469 6E8E 2061 7520 636F 7572"            /*  destin� au cour */
	$"7269 6572 208E 6C65 6374 726F 6E69 7175"            /* rier �lectroniqu */
	$"6520 756E 6971 7565 6D65 6E74 2E20 5665"            /* e uniquement. Ve */
	$"7569 6C6C 657A 206E 6520 6CD5 656E 766F"            /* uillez ne l�envo */
	$"7965 7220 6E69 2070 6172 2074 8E6C 8E63"            /* yer ni par t�l�c */
	$"6F70 6965 2C20 6E69 2070 6172 2070 6F73"            /* opie, ni par pos */
	$"7465 2063 6172 2069 6C20 6E65 2072 6570"            /* te car il ne rep */
	$"7265 6E64 2070 6173 206C 6520 636F 6465"            /* rend pas le code */
	$"2088 2062 6172 7265 7320 6E8E 6365 7373"            /*  � barres n�cess */
	$"6169 7265 2061 7520 7472 6169 7465 6D65"            /* aire au traiteme */
	$"6E74 2061 7574 6F6D 6174 6973 8E2E 2056"            /* nt automatis�. V */
	$"6575 696C 6C65 7A20 6E65 2070 6173 206D"            /* euillez ne pas m */
	$"6F64 6966 6965 7220 6C65 7320 696E 666F"            /* odifier les info */
	$"726D 6174 696F 6E73 2073 7569 7661 6E74"            /* rmations suivant */
	$"6573 2064 6573 7469 6E8E 6573 2061 7520"            /* es destin�es au  */
	$"7472 6169 7465 6D65 6E74 2061 7574 6F6D"            /* traitement autom */
	$"6174 6971 7565 2070 6172 206F 7264 696E"            /* atique par ordin */
	$"6174 6575 722E 204C 6573 2062 6F72 6465"            /* ateur. Les borde */
	$"7265 6175 7820 6D6F 6469 6669 8E73 2064"            /* reaux modifi�s d */
	$"6F69 7665 6E74 2090 7472 6520 7472 6169"            /* oivent �tre trai */
	$"748E 7320 8820 6C61 206D 6169 6E20 6574"            /* t�s � la main et */
	$"206C 6573 2066 7261 6973 2073 7570 706C"            /*  les frais suppl */
	$"8E6D 656E 7461 6972 6573 2073 6F6E 7420"            /* �mentaires sont  */
	$"6661 6374 7572 8E73 2088 206C D561 7574"            /* factur�s � l�aut */
	$"6575 7220 6475 206C 6F67 6963 6965 6C20"            /* eur du logiciel  */
	$"8820 636F 9E74 2070 6172 7461 678E 2E0D"            /* � co�t partag�.. */
	$"0D"                                                 /* . */
};

data 'TEXT' (321, "No Email") {
	$"4365 2062 6F72 6465 7265 6175 2065 7374"            /* Ce bordereau est */
	$"2064 6573 7469 6E8E 2088 206C D565 6E76"            /*  destin� � l�env */
	$"6F69 2070 6172 2074 8E6C 8E63 6F70 6965"            /* oi par t�l�copie */
	$"206F 7520 7061 7220 706F 7374 652E 2056"            /*  ou par poste. V */
	$"6575 696C 6C65 7A20 6E65 2070 6173 206C"            /* euillez ne pas l */
	$"6520 6389 626C 6572 2063 6172 2069 6C20"            /* e c�bler car il  */
	$"7265 7072 656E 6420 6C65 2063 6F64 6520"            /* reprend le code  */
	$"8820 6261 7272 6573 2071 7569 206E 6520"            /* � barres qui ne  */
	$"7365 7261 2070 6173 2074 7261 6E73 6D69"            /* sera pas transmi */
	$"7320 636F 7272 6563 7465 6D65 6E74 2E0D"            /* s correctement.. */
	$"0D"                                                 /* . */
};

data 'TEXT' (203, "Invoice") {
	$"4661 6374 7572 650D 0DCB 206C D561 7474"            /* Facture..� l�att */
	$"656E 7469 6F6E 2064 7520 7072 8E70 6F73"            /* ention du pr�pos */
	$"8E20 6175 2070 6169 656D 656E 740D 0D56"            /* � au paiement..V */
	$"6575 696C 6C65 7A20 7061 7965 7220 6C61"            /* euillez payer la */
	$"2070 728E 7365 6E74 6520 6661 6374 7572"            /*  pr�sente factur */
	$"652E 204E 6F74 657A 2071 75D5 696C 2073"            /* e. Notez qu�il s */
	$"D561 6769 7420 756E 6971 7565 6D65 6E74"            /* �agit uniquement */
	$"2064 D575 6E20 7061 6965 6D65 6E74 2064"            /*  d�un paiement d */
	$"6520 6C69 6365 6E63 652C 2073 616E 7320"            /* e licence, sans  */
	$"7072 6F64 7569 7420 8820 666F 7572 6E69"            /* produit � fourni */
	$"722E 2056 6575 696C 6C65 7A20 6C69 6265"            /* r. Veuillez libe */
	$"6C6C 6572 2076 6F74 7265 2063 688F 7175"            /* ller votre ch�qu */
	$"6520 6175 206E 6F6D 2064 6520 D24B 6167"            /* e au nom de �Kag */
	$"6920 5368 6172 6577 6172 65D3 2065 7420"            /* i Shareware� et  */
	$"6CD5 656E 766F 7965 7220 8820 6CD5 6164"            /* l�envoyer � l�ad */
	$"7265 7373 6520 6369 2D64 6573 736F 7573"            /* resse ci-dessous */
	$"2E0D 0D54 6865 2055 2E53 2E20 4665 6465"            /* ...The U.S. Fede */
	$"7261 6C20 456D 706C 6F79 6572 2049 6465"            /* ral Employer Ide */
	$"6E74 6966 6963 6174 696F 6E20 4E75 6D62"            /* ntification Numb */
	$"6572 2022 4645 494E 2220 666F 7220 4B61"            /* er "FEIN" for Ka */
	$"6769 2053 6861 7265 7761 7265 2069 7320"            /* gi Shareware is  */
	$"3934 2D33 3231 3339 3337 2E20 5468 6520"            /* 94-3213937. The  */
	$"5553 2067 6F76 6572 6E6D 656E 7420 646F"            /* US government do */
	$"6573 206E 6F74 2063 6C61 7373 6966 7920"            /* es not classify  */
	$"4B61 6769 2053 6861 7265 7761 7265 2061"            /* Kagi Shareware a */
	$"7320 6120 776F 6D65 6E20 6F77 6E65 6420"            /* s a women owned  */
	$"6275 7369 6E65 7373 206F 7220 6173 2061"            /* business or as a */
	$"206D 696E 6F72 6974 7920 6F77 6E65 6420"            /*  minority owned  */
	$"6275 7369 6E65 7373 2E20 4974 2069 7320"            /* business. It is  */
	$"636C 6173 7369 6669 6564 2061 7320 6120"            /* classified as a  */
	$"736D 616C 6C20 7365 7276 6963 6520 6275"            /* small service bu */
	$"7369 6E65 7373 206F 776E 6564 2062 7920"            /* siness owned by  */
	$"616E 2069 6E64 6976 6964 7561 6C2E 0D0D"            /* an individual... */
	$"566F 7573 2064 6576 657A 206A 6F69 6E64"            /* Vous devez joind */
	$"7265 2088 2076 6F74 7265 2070 6169 656D"            /* re � votre paiem */
	$"656E 742C 2075 6E65 2063 6F70 6965 2064"            /* ent, une copie d */
	$"6520 6C61 2070 728E 7365 6E74 6520 6661"            /* e la pr�sente fa */
	$"6374 7572 652E 0D0D 0D49 6E76 6F69 6365"            /* cture....Invoice */
	$"2041 7070 726F 7665 643A 205F 5F5F 5F5F"            /*  Approved: _____ */
	$"5F5F 5F5F 5F5F 5F5F 5F5F 5F5F 5F5F 5F5F"            /* ________________ */
	$"5F5F 5F5F 200D 0D0D"                                /* ____ ... */
};

data 'TEXT' (150, "Ensure Alert") {
	$"5342 533A 4F4B 0D5E 310D"                           /* SBS:OK.^1. */
};

data 'TEXT' (160, "Validate Alert") {
	$"5342 573A 436F 6E74 696E 7565 723A 416E"            /* SBW:Continuer:An */
	$"6E75 6C65 720D 5E31 0D"                             /* nuler.^1. */
};

data 'TEXT' (161, "Validate Required Alert") {
	$"5342 573A 416E 6E75 6C65 720D 5E31 0D"              /* SBW:Annuler.^1. */
};

data 'TEXT' (170, "Print or Email Alert") {
	$"4E2D 573A 5061 7220 6389 626C 653A 548E"            /* N-W:Par c�ble:T� */
	$"6C8E 636F 7069 6520 6F75 2070 6F73 7465"            /* l�copie ou poste */
	$"0950 6172 2063 8962 6C65 203F 0D44 8E73"            /* .Par c�ble ?.D�s */
	$"6972 657A 2D76 6F75 7320 6389 626C 6572"            /* irez-vous c�bler */
	$"2063 6563 6920 3F20 5369 206F 7569 2C20"            /*  ceci ? Si oui,  */
	$"696C 2073 6572 6120 656E 7265 6769 7374"            /* il sera enregist */
	$"728E 2063 6F6D 6D65 2074 6578 7465 2070"            /* r� comme texte p */
	$"7572 2E20 5369 206E 6F6E 2C20 696C 2073"            /* ur. Si non, il s */
	$"6572 6120 656E 7265 6769 7374 728E 2063"            /* era enregistr� c */
	$"6F6D 6D65 2064 6F63 756D 656E 7420 5465"            /* omme document Te */
	$"6163 6854 6578 7420 6176 6563 206C 6520"            /* achText avec le  */
	$"636F 6465 2062 6172 7265 7320 6166 6669"            /* code barres affi */
	$"6368 8E2C 2064 6520 6D61 6E69 8F72 6520"            /* ch�, de mani�re  */
	$"8820 766F 7573 2070 6572 6D65 7474 7265"            /* � vous permettre */
	$"2064 6520 6CD5 696D 7072 696D 6572 2070"            /*  de l�imprimer p */
	$"6C75 7320 7461 7264 2E"                             /* lus tard. */
};

data 'TEXT' (180, "Did Nothing Alert") {
	$"4342 573A 5175 6974 7465 723A 416E 6E75"            /* CBW:Quitter:Annu */
	$"6C65 7209 5175 6974 7465 7220 648E 6A88"            /* ler.Quitter d�j� */
	$"203F 0D56 6F75 7320 6ED5 6176 657A 206E"            /*  ?.Vous n�avez n */
	$"6920 696D 7072 696D 8E2C 206E 6920 636F"            /* i imprim�, ni co */
	$"7069 8E2C 206E 6920 656E 7265 6769 7374"            /* pi�, ni enregist */
	$"728E 206C 6573 2064 6F6E 6E8E 6573 2E20"            /* r� les donn�es.  */
	$"566F 7573 2064 6576 657A 2066 6169 7265"            /* Vous devez faire */
	$"2075 6E65 2064 6520 6365 7320 6F70 8E72"            /*  une de ces op�r */
	$"6174 696F 6E73 2070 6F75 7220 6E6F 7573"            /* ations pour nous */
	$"2065 6E76 6F79 6572 206C D569 6E66 6F72"            /*  envoyer l�infor */
	$"6D61 7469 6F6E 2E20 4ED5 656E 766F 7965"            /* mation. N�envoye */
	$"7A20 7061 7320 6CD5 6170 706C 6963 6174"            /* z pas l�applicat */
	$"696F 6E20 5265 6769 7374 6572 2065 6C6C"            /* ion Register ell */
	$"652D 6D90 6D65 2021"                                /* e-m�me ! */
};

data 'TEXT' (175, "Need Receipt?") {
	$"4342 573A 4F75 692F 4F3A 4E6F 6E2F 4E09"            /* CBW:Oui/O:Non/N. */
	$"556E 2072 658D 7520 3F0D 566F 7573 206E"            /* Un re�u ?.Vous n */
	$"D561 7665 7A20 6265 736F 696E 2064 D575"            /* �avez besoin d�u */
	$"6E20 7265 8D75 2070 6172 2070 6F73 7465"            /* n re�u par poste */
	$"2071 7565 2073 6920 766F 7573 2064 8E73"            /*  que si vous d�s */
	$"6972 657A 2071 75D5 756E 2064 6F63 756D"            /* irez qu�un docum */
	$"656E 7420 7061 7069 6572 2076 6F75 7320"            /* ent papier vous  */
	$"736F 6974 2065 6E76 6F79 8E2E 2053 6920"            /* soit envoy�. Si  */
	$"766F 7573 2069 6E64 6971 7565 7A20 756E"            /* vous indiquez un */
	$"6520 6164 7265 7373 6520 6465 2063 6F75"            /* e adresse de cou */
	$"7272 6965 7220 8E6C 6563 7472 6F6E 6971"            /* rrier �lectroniq */
	$"7565 2C20 756E 2072 658D 7520 8E6C 6563"            /* ue, un re�u �lec */
	$"7472 6F6E 6971 7565 2076 6F75 7320 7365"            /* tronique vous se */
	$"7261 2074 6F75 6A6F 7572 7320 6389 626C"            /* ra toujours c�bl */
	$"8E2E 2044 8E73 6972 657A 2D76 6F75 7320"            /* �. D�sirez-vous  */
	$"7672 6169 6D65 6E74 2071 75D5 756E 2072"            /* vraiment qu�un r */
	$"658D 7520 766F 7573 2073 6F69 7420 656E"            /* e�u vous soit en */
	$"766F 798E 2070 6172 206C 6120 706F 7374"            /* voy� par la post */
	$"6520 3F0D"                                          /* e ?. */
};

data 'TEXT' (185, "Cant launch") {
	$"5342 573A 4F4B 0949 6D70 6F73 7369 626C"            /* SBW:OK.Impossibl */
	$"6520 64D5 6F75 7672 6972 206C D561 7578"            /* e d�ouvrir l�aux */
	$"696C 6961 6972 650D 448E 736F 6C8E 2C20"            /* iliaire.D�sol�,  */
	$"696D 706F 7373 6962 6C65 2064 D56F 7576"            /* impossible d�ouv */
	$"7269 7220 6CD5 6175 7869 6C69 6169 7265"            /* rir l�auxiliaire */
	$"2028 5E31 292E"                                     /*  (^1). */
};

data 'TEXT' (322, "No Send") {
	$"4365 2062 6F72 6465 7265 6175 2065 7374"            /* Ce bordereau est */
	$"2070 6F75 7220 696E 666F 726D 6174 696F"            /*  pour informatio */
	$"6E20 756E 6971 7565 6D65 6E74 2C20 7675"            /* n uniquement, vu */
	$"2071 75D5 696C 206E 6520 636F 6D70 7265"            /*  qu�il ne compre */
	$"6E64 2070 6173 206C 6520 636F 6465 2088"            /* nd pas le code � */
	$"2062 6172 7265 7320 6574 2071 7565 2076"            /*  barres et que v */
	$"6F75 7320 6E65 2070 6F75 7665 7A20 6389"            /* ous ne pouvez c� */
	$"626C 6572 2063 6520 7479 7065 2064 6520"            /* bler ce type de  */
	$"7061 6965 6D65 6E74 2E20 5665 7569 6C6C"            /* paiement. Veuill */
	$"657A 2075 7469 6C69 7365 7220 6CD5 6170"            /* ez utiliser l�ap */
	$"706C 6963 6174 696F 6E20 5265 6769 7374"            /* plication Regist */
	$"6572 2070 6F75 7220 696D 7072 696D 6572"            /* er pour imprimer */
	$"2075 6E20 626F 7264 6572 6561 7520 7175"            /*  un bordereau qu */
	$"6520 766F 7573 2070 6F75 7665 7A20 656E"            /* e vous pouvez en */
	$"766F 7965 7220 6176 6563 2076 6F74 7265"            /* voyer avec votre */
	$"2070 6169 656D 656E 742E 0D0D"                      /*  paiement... */
};

data 'TEXT' (300, "Address") {
	$"4389 626C 6520 3A20 7368 6172 6577 6172"            /* C�ble : sharewar */
	$"6540 6B61 6769 2E63 6F6D 0D54 8E6C 8E63"            /* e@kagi.com.T�l�c */
	$"6F70 6965 203A 202B 3120 3531 3020 3635"            /* opie : +1 510 65 */
	$"3220 3635 3839 0D41 6472 6573 7365 2070"            /* 2 6589.Adresse p */
	$"6F73 7461 6C65 203A 0D4B 6167 6920 5368"            /* ostale :.Kagi Sh */
	$"6172 6577 6172 650D 3134 3432 2D41 2057"            /* areware.1442-A W */
	$"616C 6E75 7420 5374 7265 6574 2023 3339"            /* alnut Street #39 */
	$"322D 5145 4A0D 4265 726B 656C 6579 2C20"            /* 2-QEJ.Berkeley,  */
	$"4361 6C69 666F 726E 6961 2C20 3934 3730"            /* California, 9470 */
	$"392D 3134 3035 0D55 5341 0D0D"                      /* 9-1405.USA.. */
};

data 'TEXT' (310, "To Author") {
	$"5665 7569 6C6C 657A 2065 6E76 6F79 6572"            /* Veuillez envoyer */
	$"2063 6520 626F 7264 6572 6561 7520 8820"            /*  ce bordereau �  */
	$"4B61 6769 2053 6861 7265 7761 7265 2065"            /* Kagi Shareware e */
	$"7420 6389 626C 6572 2074 6F75 7420 636F"            /* t c�bler tout co */
	$"6D6D 656E 7461 6972 6520 636F 6E63 6572"            /* mmentaire concer */
	$"6E61 6E74 206C 6573 2070 726F 6772 616D"            /* nant les program */
	$"6D65 732C 2064 6972 6563 7465 6D65 6E74"            /* mes, directement */
	$"2088 206C D561 7574 6575 7220 8820 3C6D"            /*  � l�auteur � <m */
	$"7363 6170 6540 6B61 6769 2E63 6F6D 3E2E"            /* scape@kagi.com>. */
	$"0D0D"                                               /* .. */
};

resource 'MENU' (200) {
	200,
	textMenuProc,
	allEnabled,
	enabled,
	"Method",
	{	/* array: 7 elements */
		/* [1] */
		"Ch�que/Mandat", noIcon, noKey, noMark, plain,
		/* [2] */
		"Liquide", noIcon, noKey, noMark, plain,
		/* [3] */
		"Facture", noIcon, noKey, noMark, plain,
		/* [4] */
		"VISA", noIcon, noKey, noMark, plain,
		/* [5] */
		"MasterCard", noIcon, noKey, noMark, plain,
		/* [6] */
		"American Express", noIcon, noKey, noMark, plain,
		/* [7] */
		"First Virtual", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (129) {
	129,
	textMenuProc,
	0x7FFFFFDB,
	enabled,
	"Fichier",
	{	/* array: 7 elements */
		/* [1] */
		"Fermer", noIcon, "W", noMark, plain,
		/* [2] */
		"Enregistrer sous�", noIcon, "S", noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Format d�impression�", noIcon, noKey, noMark, plain,
		/* [5] */
		"Imprimer�", noIcon, "P", noMark, plain,
		/* [6] */
		"-", noIcon, noKey, noMark, plain,
		/* [7] */
		"Quitter", noIcon, "Q", noMark, plain
	}
};

resource 'MENU' (130) {
	130,
	textMenuProc,
	0x7FFFFFFD,
	enabled,
	"�dition",
	{	/* array: 7 elements */
		/* [1] */
		"Annuler", noIcon, "Z", noMark, plain,
		/* [2] */
		"-", noIcon, noKey, noMark, plain,
		/* [3] */
		"Couper", noIcon, "X", noMark, plain,
		/* [4] */
		"Copier", noIcon, "C", noMark, plain,
		/* [5] */
		"Coller", noIcon, "V", noMark, plain,
		/* [6] */
		"Effacer", noIcon, noKey, noMark, plain,
		/* [7] */
		"Tout s�lectionner", noIcon, "A", noMark, plain
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
		"� propos de Register�", noIcon, noKey, noMark, plain,
		/* [2] */
		"-", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (201) {
	201,
	textMenuProc,
	allEnabled,
	enabled,
	"Country",
	{	/* array: 0 elements */
	}
};

resource 'CNTL' (201, "Country Menu", purgeable) {
	{0, 0, 20, 200},
	0,
	visible,
	0,
	201,
	1008,
	0,
	""
};

resource 'CNTL' (200, "Method Menu", purgeable) {
	{0, 0, 20, 200},
	0,
	visible,
	0,
	200,
	1008,
	0,
	""
};

resource 'STR#' (128, "General", purgeable) {
	{	/* array StringArray: 9 elements */
		/* [1] */
		"Caract�ristiques du paiement :",
		/* [2] */
		"@$^1",
		/* [3] */
		"$^1.00",
		/* [4] */
		"USD ^1.00",
		/* [5] */
		"Enregistrer l�inscription sous :",
		/* [6] */
		"Enregistrement",
		/* [7] */
		"Impossible d�enregistrer le fichier d�in"
		"scription (erreur ^1).",
		/* [8] */
		"Impossible d�imprimer le fichier d�inscr"
		"iption (erreur ^1).",
		/* [9] */
		"Impossible de copier le fichier d�inscri"
		"ption (erreur ^1)."
	}
};

resource 'STR#' (200, "Form", purgeable) {
	{	/* array StringArray: 18 elements */
		/* [1] */
		"Payment-method: ",
		/* [2] */
		"Card-name: ",
		/* [3] */
		"Data-SC: ",
		/* [4] */
		"Token: ",
		/* [5] */
		"Register-to: ",
		/* [6] */
		"Email: ",
		/* [7] */
		"Addr: ",
		/* [8] */
		"Program: ^1$ ^2 - ^3^5 * ^4",
		/* [9] */
		"Program: ^1$ ^2 - ^3^5 * Site license fo"
		"r ^4",
		/* [10] */
		"Program: ^1$ ^2 - ^3^5 * World-wide lice"
		"nse for ^4",
		/* [11] */
		"Program: ^1$ ^2 - Bonus for ^4",
		/* [12] */
		"Comment: ^4 - ^1",
		/* [13] */
		"Receipt: ^1$ ^2",
		/* [14] */
		"Total: ^1",
		/* [15] */
		"Time: ",
		/* [16] */
		"E",
		/* [17] */
		"CCaddr: ",
		/* [18] */
		"CCzip: "
	}
};

resource 'STR#' (160, "Validate", purgeable) {
	{	/* array StringArray: 15 elements */
		/* [1] */
		"Votre adresse de courrier �lectronique �"
		"^1� ne contient ni de @, ni de !. Votre "
		"adresse de courrier �lectronique est le "
		"seul moyen permettant de vous contacter."
		" �tes-vous s�r qu�elle est valide�?",
		/* [2] */
		"Vous allez payer ^1. Est-ce bien cela qu"
		"e vous d�sirez�?",
		/* [3] */
		"Votre date d�expiration �^1� ne semble p"
		"as correcte (elle devrait �tre quelque c"
		"hose comme 01/98 et la date devrait �tre"
		" dans le futur). �tes-vous s�r qu�elle e"
		"st valide�?",
		/* [4] */
		"Votre jeton NetCash/First Virtual ID est"
		" � blanc.",
		/* [5] */
		"Le nom du propri�taire de la carte est l"
		"aiss� � blanc. Cette case doit contenir "
		"le nom repris sur la carte de cr�dit.",
		/* [6] */
		"Votre num�ro de carte de cr�dit �^1� ne "
		"contient que des z�ros.",
		/* [7] */
		"Votre num�ro de carte de cr�dit �^1� ne "
		"semble pas �tre un num�ro valide ou n�es"
		"t pas du type voulu. Peut-�tre avez-vous"
		" indiqu� un num�ro erron��?",
		/* [8] */
		"Votre nom �^1� n�a pas chang� ou est � b"
		"lanc.",
		/* [9] */
		"Si vous comptez imprimer cette copie et "
		"nous l�envoyer, veuillez l�imprimer ou l"
		"�enregistrer � partir du programme de fa"
		"�on � inclure le code � barres qui nous "
		"facilite le traitement de votre borderea"
		"u. Pas de probl�me si vous allez nous la"
		" c�bler. Merci.",
		/* [10] */
		"Votre adresse n�a pas chang� ou est � bl"
		"anc. Votre adresse est n�cessaire pour v"
		"ous envoyer quittance ou programme.",
		/* [11] */
		"Si vous comptez imprimer cette copie et "
		"nous l�envoyer, veuillez l�imprimer ou l"
		"�enregistrer � partir du programme de fa"
		"�on � inclure le code � barres qui nous "
		"facilite le traitement de votre borderea"
		"u. Merci.",
		/* [12] */
		"Votre adresse de courrier �lectronique �"
		"^1� n�a pas chang�. Votre adresse de cou"
		"rrier �lectronique est le principal moye"
		"n de vous contacter. C�est bon pour nous"
		", mais vous devez le savoir.\n",
		/* [13] */
		"Attention : Ce programme brouille votre "
		"num�ro de carte de cr�dit pour le prot�g"
		"er des regards indiscrets, mais ce n�est"
		" pas de s�curit� absolue. Les c�ble, t�l"
		"�copie et courrier postal peuvent tous �"
		"tre intercept�s. Tenez-en compte.",
		/* [14] */
		"Au moins un des programmes pour lesquels"
		" vous vous enregistrez requiert une adre"
		"sse de courrier �lectronique. Vous devez"
		" en indiquer une avant de continuer.",
		/* [15] */
		"Vous devez s�lectionner au moins un prog"
		"ramme � payer (indiquez le nombre de cop"
		"ies voulu ou cliquez dans une des cases "
		"de licence de site ou mondiale)."
	}
};

resource 'STR#' (150, "Ensure", purgeable) {
	{	/* array StringArray: 4 elements */
		/* [1] */
		"Impossible de d�marrer.",
		/* [2] */
		"Impossible de d�marrer : erreur g�n�riqu"
		"e.",
		/* [3] */
		"Impossible de lire la ressource du progr"
		"amme. Ceci ne devrait jamais arriver.",
		/* [4] */
		"Impossible de d�marrer la zone de dialog"
		"ue. Ceci ne devrait jamais arriver."
	}
};

resource 'STR#' (170, "Methods", purgeable) {
	{	/* array StringArray: 7 elements */
		/* [1] */
		"Check",
		/* [2] */
		"Cash",
		/* [3] */
		"Invoice",
		/* [4] */
		"Card",
		/* [5] */
		"Card",
		/* [6] */
		"Card",
		/* [7] */
		"FirstVirtual"
	}
};

resource 'STR#' (171, "MTHD", purgeable) {
	{	/* array StringArray: 7 elements */
		/* [1] */
		"CHCK",
		/* [2] */
		"CASH",
		/* [3] */
		"INVC",
		/* [4] */
		"CARD",
		/* [5] */
		"CARD",
		/* [6] */
		"CARD",
		/* [7] */
		"FV"
	}
};

resource 'STR#' (201, "Bar Form", purgeable) {
	{	/* array StringArray: 18 elements */
		/* [1] */
		"PM",
		/* [2] */
		"CN",
		/* [3] */
		"DS",
		/* [4] */
		"TK",
		/* [5] */
		"RT",
		/* [6] */
		"EM",
		/* [7] */
		"AD",
		/* [8] */
		"PR^1^2U^3^5-^4",
		/* [9] */
		"PR^1^2S^3^5-^4",
		/* [10] */
		"PR^1^2W^3^5-^4",
		/* [11] */
		"PR^1^2B^3-^4",
		/* [12] */
		"CM^4-^1",
		/* [13] */
		"RC^1^2",
		/* [14] */
		"TL^1",
		/* [15] */
		"TM",
		/* [16] */
		"E",
		/* [17] */
		"CA",
		/* [18] */
		"CZ"
	}
};

resource 'STR#' (140, "Display", purgeable) {
	{	/* array StringArray: 22 elements */
		/* [1] */
		"^1 par ^2",
		/* [2] */
		"Bonus USD",
		/* [3] */
		"USD ^1.00",
		/* [4] */
		"Licence individuelle USD ^1",
		/* [5] */
		"de site USD ^1",
		/* [6] */
		"mondiale USD ^1",
		/* [7] */
		"Quittance",
		/* [8] */
		"USD ^1",
		/* [9] */
		"Sous-total :",
		/* [10] */
		"Total :",
		/* [11] */
		"Adresse postale (facultatif) :",
		/* [12] */
		"Adresse postale (requis) :",
		/* [13] */
		"^1 USD ^2",
		/* [14] */
		"Bill To (required):",
		/* [15] */
		"Ship To (optional):",
		/* [16] */
		"Imprimez ce bordereau et envoyez-le avec"
		" votre argent emball� dans du papier for"
		"t pour le rendre moins visible, � l�adre"
		"sse reprise sur le bordereau. Vous aurez"
		" probablement un meilleur taux de change"
		" dans une banque locale.",
		/* [17] */
		"Veuillez imprimer ce bordereau, le joind"
		"re � votre ch�que payable � �Kagi Sharew"
		"are� et envoyer le tout � l�adresse repr"
		"ise sur le bordereau.",
		/* [18] */
		"Shipping:",
		/* [19] */
		"USD ^1",
		/* [20] */
		"Veuillez imprimer ce bordereau, le valid"
		"er et le\nsoumettre � votre service d�ach"
		"at pour paiement.",
		/* [21] */
		"Adresse de courrier �lectronique :",
		/* [22] */
		"Adresse de courrier �lectronique (requis"
		") :"
	}
};

resource 'STR#' (180, "Prefs", purgeable) {
	{	/* array StringArray: 4 elements */
		/* [1] */
		"Votre nom complet",
		/* [2] */
		"cable@domain.com",
		/* [3] */
		"",
		/* [4] */
		""
	}
};

resource 'STR#' (928, "About", purgeable) {
	{	/* array StringArray: 8 elements */
		/* [1] */
		"",
		/* [2] */
		"",
		/* [3] */
		"Times:48:0:1:^2",
		/* [4] */
		":::-1:Version ^1\n (Traduction : jpk - 3."
		"11.96)",
		/* [5] */
		":::1:Ce programme peut �tre distribu� gr"
		"atuitement,\nmais ne peut en aucune mani�"
		"re �tre modifi�.",
		/* [6] */
		"::H:1:Email <support@stairways.com.au>",
		/* [7] */
		"Helvetica:24::0:Stairways Shareware",
		/* [8] */
		":::-1:�1994-96 Peter N Lewis"
	}
};

resource 'STR#' (800, "URLs", purgeable) {
	{	/* array StringArray: 3 elements */
		/* [1] */
		"ftp://ftp.share.com/pub/peterlewis/",
		/* [2] */
		"http://www.share.com/peterlewis/",
		/* [3] */
		"mailto:support@stairways.com.au"
	}
};

resource 'STR#' (26724, "Balloon Help Strings", purgeable) {
	{	/* array StringArray: 25 elements */
		/* [1] */
		"Cliquez ici pour enregistrer le borderea"
		"u d�inscription comme document de texte.",
		/* [2] */
		"Cliquez ici pour fermer la fen�tre et qu"
		"itter l�application. Ceci n�enregistre a"
		"ucune information que vous puissiez nous"
		" envoyer.",
		/* [3] */
		"Cliquez ici pour imprimer le bordereau d"
		"�enregistrement.",
		/* [4] */
		"Cliquez ici pour copier le bordereau d�e"
		"nregistrement dans le Presse-papiers.",
		/* [5] */
		"Indiquez votre nom ici. Il s�agit de la "
		"personne ou de l�organisme au nom duquel"
		" le programme est � enregistrer.",
		/* [6] */
		"Indiquez votre adresse de courrier �lect"
		"ronique ici. C�est de cette mani�re que "
		"vous pourrez �tre tenu au courant de vot"
		"re enregistrement. Par exemple�: terry@a"
		"ol.com, 12345.6789@compuserve.com, jan@u"
		"nix.university.edu",
		/* [7] */
		"Indiquez votre adresse postale ici. C�es"
		"t � cette adresse que seront envoy�s les"
		" re�u et autres, le cas �ch�ant.",
		/* [8] */
		"Indiquez ici le nombre de licenses indiv"
		"iduelles que vous d�sirez.",
		/* [9] */
		"Indiquez ici la prime que vous d�sirez m"
		"e payer. J�ignore pourquoi vous payeriez"
		" une prime en suppl�ment du prix du prog"
		"ramme, mais certaines personnes le font."
		" Et pourquoi dirais-je non�?",
		/* [10] */
		"Cliquez ici pour commander une licence d"
		"e site pour l�application de cette rang�"
		"e. Les licenses de sites couvrent une m�"
		"me organisation pour une zone sՎtendant"
		" jusquՈ 160 km (100 miles) de rayon.",
		/* [11] */
		"Cliquez ici pour ne pas commander de lic"
		"ence de site pour l�application de cette"
		" rang�e. Les licenses de sites couvrent "
		"une m�me organisation pour une zone sՎt"
		"endant jusquՈ 160 km (100 miles) de ray"
		"on.",
		/* [12] */
		"Cliquez ici pour commander une licence m"
		"ondiale pour l�application de cette rang"
		"�e. Une licence mondiale couvre tout le "
		"monde au sein d�une m�me organisation.",
		/* [13] */
		"Cliquez ici pour ne pas commander de lic"
		"ence mondiale pour l�application de cett"
		"e rang�e. Une licence mondiale couvre to"
		"ut le monde au sein d�une m�me organisat"
		"ion.",
		/* [14] */
		"Cliquez ici pour obtenir une option sp�c"
		"iale pour ce programme. Cela peut modifi"
		"er le prix d�autres options diverses.",
		/* [15] */
		"Cliquez ici pour d�sactiver l�option sp�"
		"ciale pour ce programme. Cela peut modif"
		"ier le prix d�autres options diverses.",
		/* [16] */
		"Cliquez ici pour inclure un commentaire "
		"� l�auteur du programme. En g�n�ral, il "
		"vaut mieux c�bler directement � l�auteur"
		", mais vous pouvez utiliser ceci pour de"
		" brefs commentaires.",
		/* [17] */
		"Utilisez la bande de d�filement pour voi"
		"r les autres programmes.",
		/* [18] */
		"Cliquez ici si vous devez avoir un re�u.",
		/* [19] */
		"Cliquez ici si vous ne devez pas avoir d"
		"e re�u.",
		/* [20] */
		"Indiquez ici le nom repris sur la carte "
		"de cr�dit.",
		/* [21] */
		"Indiquez ici le num�ro de la carte de cr"
		"�dit. Il vous faut juste indiquer les ch"
		"iffres, les espaces et barres ne sont pa"
		"s n�cessaires.",
		/* [22] */
		"Indiquez ici la date (MM/AA) d�expiratio"
		"n de la carte de cr�dit. Le mois (MM) et"
		" l�ann�e (YY) sont tous deux obligatoire"
		"s.",
		/* [23] */
		"Indiquez ici le First Virtual ID.",
		/* [24] */
		"Utilisez ce menu local pour s�lectionner"
		" la monnaie avec laquelle vous desirez p"
		"ayer. Notez que aurez probablement un me"
		"illeur taux de change dans une banque lo"
		"cale.",
		/* [25] */
		"Utilisez ce menu local pour s�lectionner"
		" un mode de paiement."
	}
};

resource 'STR#' (1900, "Fonts") {
	{	/* array StringArray: 30 elements */
		/* [1] */
		"geneva",
		/* [2] */
		"0",
		/* [3] */
		"geneva",
		/* [4] */
		"9",
		/* [5] */
		"geneva",
		/* [6] */
		"12",
		/* [7] */
		"courier",
		/* [8] */
		"0",
		/* [9] */
		"courier",
		/* [10] */
		"9",
		/* [11] */
		"courier",
		/* [12] */
		"12",
		/* [13] */
		"chicago",
		/* [14] */
		"0",
		/* [15] */
		"chicago",
		/* [16] */
		"9",
		/* [17] */
		"chicago",
		/* [18] */
		"12",
		/* [19] */
		"chicago",
		/* [20] */
		"0",
		/* [21] */
		"chicago",
		/* [22] */
		"9",
		/* [23] */
		"chicago",
		/* [24] */
		"12",
		/* [25] */
		"monaco",
		/* [26] */
		"0",
		/* [27] */
		"monaco",
		/* [28] */
		"9",
		/* [29] */
		"monaco",
		/* [30] */
		"12"
	}
};

data 'TMPL' (128, "PROG") {
	$"0850 726F 6772 616D 734F 434E 5405 2A2A"            /* .ProgramsOCNT.** */
	$"2A2A 2A4C 5354 4304 4E61 6D65 5053 5452"            /* ***LSTC.NamePSTR */
	$"0641 7574 686F 7250 5354 5204 436F 6465"            /* .AuthorPSTR.Code */
	$"5053 5452 0753 7065 6369 616C 5053 5452"            /* PSTR.SpecialPSTR */
	$"0546 6C61 6773 484C 4E47 1345 6163 6820"            /* .FlagsHLNG.Each  */
	$"436F 756E 7420 286D 6178 2031 3629 4F43"            /* Count (max 16)OC */
	$"4E54 052A 2A2A 2A2A 4C53 5443 0443 6F73"            /* NT.*****LSTC.Cos */
	$"7444 5752 441B 4D69 6E20 5174 7920 2866"            /* tDWRD.Min Qty (f */
	$"6972 7374 2073 686F 756C 6420 6265 2030"            /* irst should be 0 */
	$"2944 5752 4405 2A2A 2A2A 2A4C 5354 4504"            /* )DWRD.*****LSTE. */
	$"5369 7465 4457 5244 0557 6F72 6C64 4457"            /* SiteDWRD.WorldDW */
	$"5244 1345 6163 6820 436F 756E 7420 286D"            /* RD.Each Count (m */
	$"6178 2031 3629 4F43 4E54 052A 2A2A 2A2A"            /* ax 16)OCNT.***** */
	$"4C53 5443 0443 6F73 7444 5752 441B 4D69"            /* LSTC.CostDWRD.Mi */
	$"6E20 5174 7920 2866 6972 7374 2073 686F"            /* n Qty (first sho */
	$"756C 6420 6265 2030 2944 5752 4405 2A2A"            /* uld be 0)DWRD.** */
	$"2A2A 2A4C 5354 4504 5369 7465 4457 5244"            /* ***LSTE.SiteDWRD */
	$"0557 6F72 6C64 4457 5244 052A 2A2A 2A2A"            /* .WorldDWRD.***** */
	$"4C53 5445"                                          /* LSTE */
};

data 'TMPL' (129, "CTRY") {
	$"052A 2A2A 2A2A 4F43 4E54 052A 2A2A 2A2A"            /* .*****OCNT.***** */
	$"4C53 5443 0743 6F75 6E74 7279 5053 5452"            /* LSTC.CountryPSTR */
	$"0B45 6E67 6C69 7368 4E61 6D65 5053 5452"            /* .EnglishNamePSTR */
	$"0443 6F64 6550 5354 5204 5261 7465 5053"            /* .CodePSTR.RatePS */
	$"5452 0A4D 696E 2050 6170 6572 3144 4C4E"            /* TR.Min Paper1DLN */
	$"470A 4D69 6E20 5061 7065 7232 444C 4E47"            /* G.Min Paper2DLNG */
	$"052A 2A2A 2A2A 4C53 5445"                           /* .*****LSTE */
};

data 'TMPL' (130, "BARC") {
	$"052A 2A2A 2A2A 4C53 5442 0443 6F64 6548"            /* .*****LSTB.CodeH */
	$"4C4E 4705 2A2A 2A2A 2A4C 5354 45"                   /* LNG.*****LSTE */
};

data 'TMPL' (131, "SCRL") {
	$"1A50 726F 6772 616D 2063 6F64 6520 746F"            /* .Program code to */
	$"2053 6372 6F6C 6C20 746F 3A50 5354 52"              /*  Scroll to:PSTR */
};

resource 'MBAR' (128) {
	{	/* array MenuArray: 3 elements */
		/* [1] */
		128,
		/* [2] */
		129,
		/* [3] */
		130
	}
};

resource 'icl4' (128, purgeable) {
	$"0000 0000 0000 000F F000 0000 0000 0000"
	$"0000 0000 0000 00F7 7F00 0000 0000 0000"
	$"0000 0000 0000 0F77 77F0 0000 0000 0000"
	$"0000 0000 0000 F777 777F 0000 0000 0000"
	$"0000 0000 000F 7777 7777 F000 0000 0000"
	$"0000 0000 00F7 7777 7777 7F00 0000 0000"
	$"0000 0000 0F77 7771 1777 77F0 0000 0000"
	$"0000 0000 F777 7771 1777 777F 0000 0000"
	$"0000 000F 7777 7111 1117 7777 F000 0000"
	$"0000 00F7 7777 1111 1111 7777 7F00 0000"
	$"0000 0F77 7771 1771 1771 1777 77F0 0000"
	$"0000 F777 7771 1771 1771 1777 777F 0000"
	$"000F 7777 7771 1771 1777 7777 7777 F000"
	$"00F7 7777 7771 1771 1777 7777 7777 7F00"
	$"0F77 7777 7771 1171 1777 7777 7777 77F0"
	$"F777 7777 7777 1111 1117 7777 7777 777F"
	$"F777 7777 7777 7111 1111 7777 7777 777F"
	$"0F77 7777 7777 7771 1711 1777 7777 77F0"
	$"00F7 7777 7777 7771 1771 1777 7777 7F00"
	$"000F 7777 7777 7771 1771 1777 7777 F000"
	$"0000 F777 7771 1771 1771 1777 777F 0000"
	$"0000 0F77 7771 1771 1771 1777 77F0 0000"
	$"0000 00F7 7777 1111 1111 7777 7F00 0000"
	$"0000 000F 7777 7111 1117 7777 F000 0000"
	$"0000 0000 F777 7771 1777 777F 0000 0000"
	$"0000 0000 0F77 7771 1777 77F0 0000 0000"
	$"0000 0000 00F7 7777 7777 7F00 0000 0000"
	$"0000 0000 000F 7777 7777 F000 0000 0000"
	$"0000 0000 0000 F777 777F 0000 0000 0000"
	$"0000 0000 0000 0F77 77F0 0000 0000 0000"
	$"0000 0000 0000 00F7 7F00 0000 0000 0000"
	$"0000 0000 0000 000F F0"
};

resource 'ics4' (128, purgeable) {
	$"0000 000F 0000 0000 0000 00F7 F000 0000"
	$"0000 0F77 7F00 0000 0000 F77F 77F0 0000"
	$"000F 77FF F77F 0000 00F7 7F7F 7F77 F000"
	$"0F77 7F7F 7777 7F00 F777 7F7F 7777 77F0"
	$"F777 77FF F777 77F0 0F77 777F 7F77 7F00"
	$"00F7 7F7F 7F77 F000 000F 77FF F77F 0000"
	$"0000 F77F 77F0 0000 0000 0F77 7F00 0000"
	$"0000 00F7 F000 0000 0000 000F"
};

resource 'cicn' (128, purgeable) {
	8,
	{0, 0, 32, 32},
	2,
	$"0001 8000 0003 C000 0007 E000 000F F000"
	$"001F F800 003F FC00 007F FE00 00FF FF00"
	$"01FF FF80 03FF FFC0 07FF FFE0 0FFF FFF0"
	$"1FFF FFF8 3FFF FFFC 7FFF FFFE FFFF FFFF"
	$"FFFF FFFF 7FFF FFFE 3FFF FFFC 1FFF FFF8"
	$"0FFF FFF0 07FF FFE0 03FF FFC0 01FF FF80"
	$"00FF FF00 007F FE00 003F FC00 001F F800"
	$"000F F000 0007 E000 0003 C000 0001 8000",
	$"0001 8000 0002 4000 0004 2000 0008 1000"
	$"0010 0800 0020 0400 0041 8200 0081 8100"
	$"0107 E080 020F F040 0419 9820 0819 9810"
	$"1019 8008 2019 8004 401D 8002 800F E001"
	$"8007 F001 4001 B802 2001 9804 1001 9808"
	$"0819 9810 0419 9820 020F F040 0107 E080"
	$"0081 8100 0041 8200 0020 0400 0010 0800"
	$"0008 1000 0004 2000 0002 4000 0001 8000",
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		65535, 65535, 65535,
		/* [2] */
		0, 39321, 65535,
		/* [3] */
		65535, 65535, 0,
		/* [4] */
		0, 0, 0
	},
	$"0000 0003 C000 0000 0000 000D 7000 0000"
	$"0000 0035 5C00 0000 0000 00D5 5700 0000"
	$"0000 0355 55C0 0000 0000 0D55 5570 0000"
	$"0000 3556 955C 0000 0000 D556 9557 0000"
	$"0003 556A A955 C000 000D 55AA AA55 7000"
	$"0035 5696 9695 5C00 00D5 5696 9695 5700"
	$"0355 5696 9555 55C0 0D55 5696 9555 5570"
	$"3555 56A6 9555 555C D555 55AA A955 5557"
	$"D555 556A AA55 5557 3555 5556 9A95 555C"
	$"0D55 5556 9695 5570 0355 5556 9695 55C0"
	$"00D5 5696 9695 5700 0035 5696 9695 5C00"
	$"000D 55AA AA55 7000 0003 556A A955 C000"
	$"0000 D556 9557 0000 0000 3556 955C 0000"
	$"0000 0D55 5570 0000 0000 0355 55C0 0000"
	$"0000 00D5 5700 0000 0000 0035 5C00 0000"
	$"0000 000D 7000 0000 0000 0003 C000 0000"
};

resource 'cicn' (928, purgeable) {
	8,
	{0, 0, 32, 32},
	2,
	$"0001 0000 0003 8000 0007 C000 000F E000"
	$"001F F000 003F F800 007F FC00 00FF FE00"
	$"01FF FF00 03FF FF80 07FF FFC0 0FFF FFE0"
	$"1FFF FFF0 3FFF FFF8 7FFF FFFC FFFF FFFE"
	$"7FFF FFFC 3FFF FFF8 1FFF FFF0 0FFF FFE0"
	$"07FF FFC0 03FF FF80 01FF FF00 00FF FE00"
	$"007F FC00 003F F800 001F F000 000F E000"
	$"0007 C000 0003 8000 0001 0000 0000 0000",
	$"0001 0000 0002 8000 0004 4000 0008 2000"
	$"0010 1000 0020 0800 0040 0400 0080 0200"
	$"0100 0300 0200 0380 0400 03C0 0800 03E0"
	$"1000 03F0 2000 03F8 4000 03FC 80FF FFFE"
	$"40FF FFFC 20FF FFF8 10FF FFF0 08FF FFE0"
	$"04FF FFC0 02FF FF80 01FF FF00 00FF FE00"
	$"007F FC00 003F F800 001F F000 000F E000"
	$"0007 C000 0003 8000 0001 0000 0000 0000",
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		65535, 65535, 65535,
		/* [2] */
		0, 39321, 65535,
		/* [3] */
		0, 0, 56797,
		/* [4] */
		0, 0, 0
	},
	$"0000 0003 0000 0000 0000 000D C000 0000"
	$"0000 0035 7000 0000 0000 00D5 5C00 0000"
	$"0000 0355 5700 0000 0000 0D55 55C0 0000"
	$"0000 3555 5570 0000 0000 D555 555C 0000"
	$"0003 5555 555F 0000 000D 5555 555E C000"
	$"0035 5555 555E B000 00D5 5555 555E AC00"
	$"0355 5555 555E AB00 0D55 5555 555E AAC0"
	$"3555 5555 555E AAB0 D555 FFFF FFFE AAAC"
	$"3555 EAAA AAAA AAB0 0D55 EAAA AAAA AAC0"
	$"0355 EAAA AAAA AB00 00D5 EAAA AAAA AC00"
	$"0035 EAAA AAAA B000 000D EAAA AAAA C000"
	$"0003 EAAA AAAB 0000 0000 EAAA AAAC 0000"
	$"0000 3AAA AAB0 0000 0000 0EAA AAC0 0000"
	$"0000 03AA AB00 0000 0000 00EA AC00 0000"
	$"0000 003A B000 0000 0000 000E C000 0000"
	$"0000 0003 0000 0000 0000 0000 0000 0000"
};

resource 'cicn' (225, purgeable) {
	8,
	{0, 0, 32, 32},
	2,
	$"00FF FFF0 00FF FFF0 03FF FFFC 03FF FFFC"
	$"0FFF FFFF 0FFF FFFF 0FFF FFFF 0FFF FFFF"
	$"0FFF FFFF 0FFF FFFF 0FFF FFFF 0FFF FFFF"
	$"0FFF FFFF 0FFF FFFF 0FFF FFFF 0FFF FFFF"
	$"0FFF FFFF 0FFF FFFF 0FFF FFFF 0FFF FFFF"
	$"0FFF FFFF 0FFF FFFF 3FFF FFFF 3FFF FFFF"
	$"FFFF FFFC FFFF FFFC FFFF FFF0 FFFF FFF0"
	$"0000 0000 0000 0000 0000 0000 0000 0000",
	$"00FF FFF0 00FF FFF0 0300 000C 0300 000C"
	$"0C00 0003 0C00 0003 0C00 0003 0C00 0003"
	$"0C3C FFC3 0C3C FFC3 0C00 0003 0C00 0003"
	$"0C00 0003 0C00 0003 0C3F 3CC3 0C3F 3CC3"
	$"0C00 0003 0C00 0003 0C00 0003 0C00 0003"
	$"0C33 CFC3 0C33 CFC3 3000 0003 3000 0003"
	$"C000 000C C000 000C FFFF FFF0 FFFF FFF0"
	$"0000 0000 0000 0000 0000 0000 0000 0000",
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		65535, 65535, 65535,
		/* [2] */
		61166, 61166, 61166,
		/* [3] */
		34952, 34952, 34952,
		/* [4] */
		0, 0, 0
	},
	$"0000 FFFF FFFF FF00 0000 FFFF FFFF FF00"
	$"000F A555 5555 5AF0 000F A555 5555 5AF0"
	$"00FA 5555 5555 55AF 00FA 5555 5555 55AF"
	$"00F5 5555 5555 555F 00F5 5555 5555 555F"
	$"00F5 5FF5 FFFF F55F 00F5 5FF5 FFFF F55F"
	$"00F5 5555 5555 555F 00F5 5555 5555 555F"
	$"00F5 5555 5555 555F 00F5 5555 5555 555F"
	$"00F5 5FFF 5FF5 F55F 00F5 5FFF 5FF5 F55F"
	$"00F5 5555 5555 555F 00F5 5555 5555 555F"
	$"00F5 5555 5555 555F 00F5 5555 5555 555F"
	$"00F5 5F5F F5FF F55F 00F5 5F5F F5FF F55F"
	$"0FA5 5555 5555 55AF 0FA5 5555 5555 55AF"
	$"FA55 5555 5555 5AF0 FA55 5555 5555 5AF0"
	$"FFFF FFFF FFFF FF00 FFFF FFFF FFFF FF00"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
};

resource 'cicn' (226) {
	8,
	{0, 0, 32, 32},
	2,
	$"0000 0000 0000 0000 FFFF FFFC FFFF FFFC"
	$"FFFF FFFC FFFF FFFC FFFF FFFC FFFF FFFC"
	$"FFFF FFFC FFFF FFFC FFFF FFFC FFFF FFFC"
	$"FFFF FFFC FFFF FFFC FFFF FFFC FFFF FFFC"
	$"FFFF FFFC FFFF FFFC FFFF FFFC FFFF FFFC"
	$"FFFF FFFC FFFF FFFC FFFF FFFC FFFF FFFC"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000",
	$"0000 0000 0000 0000 FFFF FFFC FFFF FFFC"
	$"CCC0 030C CCC0 030C F300 030C F300 030C"
	$"CCC0 03FC CCC0 03FC C000 000C C000 000C"
	$"C033 300C C033 300C C0CC C00C C0CC C00C"
	$"C033 300C C033 300C C000 000C C000 000C"
	$"C000 000C C000 000C FFFF FFFC FFFF FFFC"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000",
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		65535, 65535, 65535,
		/* [2] */
		43690, 43690, 43690,
		/* [3] */
		56797, 56797, 56797,
		/* [4] */
		0, 0, 0
	},
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"FFFF FFFF FFFF FFF0 FFFF FFFF FFFF FFF0"
	$"F5F5 FAAA AAAF 55F0 F5F5 FAAA AAAF 55F0"
	$"FF5F AAAA AAAF 55F0 FF5F AAAA AAAF 55F0"
	$"F5F5 FAAA AAAF FFF0 F5F5 FAAA AAAF FFF0"
	$"FAAA AAAA AAAA AAF0 FAAA AAAA AAAA AAF0"
	$"FAAA AF5F 5FAA AAF0 FAAA AF5F 5FAA AAF0"
	$"FAAA F5F5 FAAA AAF0 FAAA F5F5 FAAA AAF0"
	$"FAAA AF5F 5FAA AAF0 FAAA AF5F 5FAA AAF0"
	$"FAAA AAAA AAAA AAF0 FAAA AAAA AAAA AAF0"
	$"FAAA AAAA AAAA AAF0 FAAA AAAA AAAA AAF0"
	$"FFFF FFFF FFFF FFF0 FFFF FFFF FFFF FFF0"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
};

data 'cicn' (0) {
	$"0000 0000 8010 0000 0000 0020 0020 0000"            /* ....�...... . .. */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0004 0001 0004 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0004 0000 0000 0020 0020"            /* ............. .  */
	$"0000 0000 0004 0000 0000 0020 0020 0000"            /* ........... . .. */
	$"0000 01FF FF80 03FF FFC0 07FF FFE0 0FFF"            /* ...���.���.���.� */
	$"FFF0 1FFF FFF8 3FFF FFFC 7FFF FFFE FFFF"            /* ��.���?���.����� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF 7FFF FFFE 3FFF"            /* ����������.���?� */
	$"FFFC 1FFF FFF8 0FFF FFF0 07FF FFE0 03FF"            /* ��.���.���.���.� */
	$"FFC0 00FF FF00 01FF FF80 03FF FFC0 07FE"            /* ��.��..���.���.� */
	$"FFE0 0FFC 7FF0 1FEC 67F8 3FC4 47FC 7FC4"            /* ��.�.�.�g�?�G�.� */
	$"47FE FF44 47FF FE44 47FF FE44 47FF FE44"            /* G��DG��DG��DG��D */
	$"47FF FE44 47FF FE44 47FF FE40 071F FE00"            /* G��DG��DG��@..�. */
	$"061F FE00 061F FE00 043F FE00 003F FE00"            /* ..�...�..?�..?�. */
	$"007F FE00 007F FE00 00FF FE00 00FF FE00"            /* ..�...�..��..��. */
	$"01FF FE00 01FF 7E04 03FE 3F02 07FC 1FFF"            /* .��..�~..�?..�.� */
	$"FFF8 0FFF FFF0 07FF FFE0 03FF FFC0 01FF"            /* ��.���.���.���.� */
	$"FF80 0000 0000 0000 000A 0000 FFFF FFFF"            /* ��..........���� */
	$"FFFF 0001 FFFF CCCC 9999 0002 FFFF 0000"            /* ��..���̙�..��.. */
	$"0000 0003 CCCC 9999 6666 0004 9999 6666"            /* ....�̙�ff..��ff */
	$"3333 0005 9999 0000 0000 0006 DDDD 0000"            /* 33..��......��.. */
	$"0000 0007 AAAA 0000 0000 0008 5555 0000"            /* ....��......UU.. */
	$"0000 0009 AAAA AAAA AAAA 000F 0000 0000"            /* ....������...... */
	$"0000 0000 0009 FFFF FFFF FFFF FFFF 9000"            /* ......���������. */
	$"0000 0000 009F 2222 2222 2222 2222 F900"            /* .....�""""""""�. */
	$"0000 0000 09F2 6666 666F 6666 6666 6F90"            /* .....�fffoffffo� */
	$"0000 0000 9F26 6666 66F3 F666 6666 66F9"            /* ....�&fff��ffff� */
	$"0000 0009 F266 666F 6F11 4F6F F666 666F"            /* ....�ffoo.Oo�ffo */
	$"9000 009F 2666 66F3 FF11 4FF3 4F66 6666"            /* �..�&ff��.O�Offf */
	$"F900 09F2 6666 6F11 4F11 4F11 4F66 6666"            /* �..�ffo.O.O.Offf */
	$"6F90 9F26 6666 FF11 4F11 4F11 4F66 6666"            /* o��&ff�.O.O.Offf */
	$"66F9 F266 666F 4F11 4F11 4F11 4F66 6666"            /* f��ffoO.O.O.Offf */
	$"665F F266 66F1 4F11 4F11 4F11 4F66 6666"            /* f_�ff�O.O.O.Offf */
	$"665F F266 66F1 4F11 4F11 4F11 4F66 6666"            /* f_�ff�O.O.O.Offf */
	$"665F F266 66F1 4F11 4F11 4F11 4F66 6666"            /* f_�ff�O.O.O.Offf */
	$"665F F266 66F1 4F11 3F11 3F11 4F66 6666"            /* f_�ff�O.?.?.Offf */
	$"665F F266 66F1 3F11 1F11 1F11 4F66 8FF6"            /* f_�ff�?.....Of�� */
	$"665F F266 66F1 1F11 1111 1111 4F68 433F"            /* f_�ff�......OhC? */
	$"665F F266 66F1 1111 1111 1111 4F74 114F"            /* f_�ff�......Ot.O */
	$"665F F266 66F1 1111 1111 1111 3FF1 114F"            /* f_�ff�......?�.O */
	$"665F F266 66F1 1111 1111 1111 1F11 14F6"            /* f_�ff�.........� */
	$"665F F266 66F1 1111 1111 1111 1111 14F6"            /* f_�ff�.........� */
	$"665F F266 66F1 1111 1111 1111 1111 4F66"            /* f_�ff�........Of */
	$"665F F266 66F1 1111 1111 1111 1113 4F66"            /* f_�ff�........Of */
	$"665F F266 66F1 1111 1111 1111 1114 F666"            /* f_�ff�........�f */
	$"665F F266 66F1 1111 1111 1111 1134 F666"            /* f_�ff�.......4�f */
	$"665F F266 66F1 1111 1111 1111 114F 6666"            /* f_�ff�.......Off */
	$"665F F266 6674 1111 1111 1111 134F 6666"            /* f_�fft.......Off */
	$"665F 9F66 666F 1111 1F31 1113 34F6 6666"            /* f_�ffo...1..4�ff */
	$"65F9 09F6 6666 F344 44F4 4444 4F66 6666"            /* e�.�ff�DD�DDOfff */
	$"5F90 009F 6666 6FFF FF6F FFFF F666 6665"            /* _�.�ffo��o���ffe */
	$"F900 0009 F666 6666 6666 6666 6666 665F"            /* �...�ffffffffff_ */
	$"9000 0000 9F66 6666 6666 6666 6666 65F9"            /* �...�fffffffffe� */
	$"0000 0000 09F5 5555 5555 5555 5555 5F90"            /* .....�UUUUUUUU_� */
	$"0000 0000 009F FFFF FFFF FFFF FFFF F900"            /* .....����������. */
	$"0000"                                               /* .. */
};

data 'cicn' (1) {
	$"0000 0000 8010 0000 0000 0020 0020 0000"            /* ....�...... . .. */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0004 0001 0004 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0004 0000 0000 0020 0020"            /* ............. .  */
	$"0000 0000 0004 0000 0000 0020 0020 0000"            /* ........... . .. */
	$"0000 FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ..�������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF 807F FFFF 807F FFFF 807F"            /* �������.���.���. */
	$"FFFF 807F FFFF 807F C0FF 887F 003F 887E"            /* ���.���.���..?�~ */
	$"001F 887C 000F 8078 0007 8078 0007 8070"            /* ..�|..�x..�x..�p */
	$"0003 8071 DDC3 8070 0003 8070 0003 8071"            /* ..�q�Àp..�p..�q */
	$"DD43 8070 0003 8070 0003 8071 D703 8070"            /* �C�p..�p..�q�.�p */
	$"0003 87F0 0003 81F1 EEC3 81F0 0007 81F0"            /* ..��..���Á�..�� */
	$"0007 81F0 000F 81E0 001F 8F80 007F 81FF"            /* ..��..��..��..�� */
	$"FFFF 81FF FFFF 81FF FFFF 81FF FFFF FFFF"            /* ���������������� */
	$"FFFF 0000 0000 0000 0007 0000 FFFF FFFF"            /* ��..........���� */
	$"FFFF 0001 FFFF CCCC 9999 0002 CCCC CCCC"            /* ��..���̙�..���� */
	$"FFFF 0003 CCCC 9999 6666 0004 9999 6666"            /* ��..�̙�ff..��ff */
	$"3333 0005 8888 8888 8888 0006 1111 1111"            /* 33..������...... */
	$"1111 000F 0000 0000 0000 6666 6666 6666"            /* ..........ffffff */
	$"6666 6666 6666 6666 6666 6111 1113 4666"            /* ffffffffffa...Ff */
	$"6666 6666 6666 6666 6666 6111 1111 4666"            /* ffffffffffa...Ff */
	$"6666 6666 6666 6666 6666 6111 1111 4666"            /* ffffffffffa...Ff */
	$"6666 6666 6666 6666 6666 6111 1111 4666"            /* ffffffffffa...Ff */
	$"6666 6666 6666 6666 6666 6113 3111 4666"            /* ffffffffffa.1.Ff */
	$"6666 6622 2222 6666 6666 6113 6111 4666"            /* fff"""ffffa.a.Ff */
	$"6666 2220 0002 2566 6666 6113 6111 4666"            /* ff" ..%fffa.a.Ff */
	$"6662 2000 0000 2256 6666 6111 6111 4666"            /* fb ..."Vffa.a.Ff */
	$"6622 0000 0000 0225 6666 6111 1111 4666"            /* f".....%ffa...Ff */
	$"6220 0000 0000 0022 5666 6111 1111 4666"            /* b ....."Vfa...Ff */
	$"6200 0000 0000 0002 5666 6111 1111 4666"            /* b.......Vfa...Ff */
	$"2200 0000 0000 0002 2566 6111 1111 4666"            /* ".......%fa...Ff */
	$"2006 6606 6606 6600 2566 6111 1111 4666"            /*  .f.f.f.%fa...Ff */
	$"2000 0000 0000 0000 2566 6111 1111 4666"            /*  .......%fa...Ff */
	$"2000 0000 0000 0000 2566 6111 1111 4666"            /*  .......%fa...Ff */
	$"2006 6606 6606 0600 2566 6111 1111 4666"            /*  .f.f...%fa...Ff */
	$"2000 0000 0000 0000 2566 6111 1111 4666"            /*  .......%fa...Ff */
	$"2000 0000 0000 0000 2566 6111 1111 4666"            /*  .......%fa...Ff */
	$"2006 6606 0666 0000 2566 6111 1133 4666"            /*  .f..f..%fa..3Ff */
	$"2000 0000 0000 0000 2566 6111 1666 6666"            /*  .......%fa..fff */
	$"2000 0000 0000 0002 2566 6111 1346 6666"            /*  .......%fa..Fff */
	$"2006 6660 6660 6602 5566 6111 1146 6666"            /*  .f`f`f.Ufa..Fff */
	$"2000 0000 0000 0022 5666 6111 1146 6666"            /*  ......"Vfa..Fff */
	$"2000 0000 0000 0225 5666 6111 1146 6666"            /*  ......%Vfa..Fff */
	$"2000 0000 0002 2255 6666 6113 3336 6662"            /*  ....."Uffa.36fb */
	$"2222 2222 2222 5556 6666 6111 6666 6222"            /* """"""UVffa.ffb" */
	$"5555 5555 5555 5666 6666 6111 1116 6666"            /* UUUUUUVfffa...ff */
	$"6666 6666 6666 6666 6666 6111 1146 6666"            /* ffffffffffa..Fff */
	$"6666 6666 6666 6666 6666 6111 1146 6666"            /* ffffffffffa..Fff */
	$"6666 6666 6666 6666 6666 6344 4446 6666"            /* ffffffffffcDDFff */
	$"6666 6666 6666 6666 6666 6666 6666 6666"            /* ffffffffffffffff */
	$"6666 6666 6666 6666 6666"                           /* ffffffffff */
};

data 'cicn' (2) {
	$"0000 0000 8010 0000 0000 0020 0020 0000"            /* ....�...... . .. */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0004 0001 0004 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0004 0000 0000 0020 0020"            /* ............. .  */
	$"0000 0000 0004 0000 0000 0020 0020 0000"            /* ........... . .. */
	$"0000 0001 8000 0003 C000 0007 E000 0007"            /* ....�...�...�... */
	$"E000 000F F000 000F F000 001F F800 001F"            /* �...�...�...�... */
	$"F800 003F FC00 003F FC00 007F FE00 007F"            /* �..?�..?�...�... */
	$"FE00 00FF FF00 00FF FF00 01FF FF80 01FF"            /* �..��..��..���.� */
	$"FF80 03FF FFC0 03FF FFC0 07FF FFE0 07FF"            /* ��.���.���.���.� */
	$"FFE0 0FFF FFF0 0FFF FFF0 1FFF FFF8 1FFF"            /* ��.���.���.���.� */
	$"FFF8 3FFF FFFC 3FFF FFFC 7FFF FFFE 7FFF"            /* ��?���?���.���.� */
	$"FFFE FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF 0001 8000 0003 C000 0003 C000 0006"            /* ��..�...�...�... */
	$"6000 0006 6000 000C 3000 000C 3000 0018"            /* `...`...0...0... */
	$"1800 0019 9800 0033 CC00 0033 CC00 0063"            /* ....�..3�..3�..c */
	$"C600 0063 C600 00C3 C300 00C3 C300 0183"            /* �..c�..��..��..� */
	$"C180 0183 C180 0303 C0C0 0303 C0C0 0603"            /* ��.���..��..��.. */
	$"C060 0601 8060 0C01 8030 0C00 0030 1800"            /* �`..�`..�0...0.. */
	$"0018 1801 8018 3003 C00C 3003 C00C 6001"            /* ....�.0.�.0.�.`. */
	$"8006 6000 0006 C000 0003 FFFF FFFF 7FFF"            /* �.`...�...����.� */
	$"FFFE 0000 0000 0000 0006 0000 FFFF FFFF"            /* ��..........���� */
	$"FFFF 0001 FFFF CCCC 3333 0002 CCCC 9999"            /* ��..����33..�̙� */
	$"0000 0003 9999 6666 0000 0004 3333 3333"            /* ....��ff....3333 */
	$"3333 0005 BBBB BBBB BBBB 000F 0000 0000"            /* 33..������...... */
	$"0000 0000 0000 0000 000F F000 0000 0000"            /* ..........�..... */
	$"0000 0000 0000 0000 004F F400 0000 0000"            /* .........O�..... */
	$"0000 0000 0000 0000 05FF FF50 0000 0000"            /* .........��P.... */
	$"0000 0000 0000 0000 04F3 3F40 0000 0000"            /* .........�?@.... */
	$"0000 0000 0000 0000 5FF1 1FF5 0000 0000"            /* ........_�.�.... */
	$"0000 0000 0000 0000 4F31 13F4 0000 0000"            /* ........O1.�.... */
	$"0000 0000 0000 0005 FF11 11FF 5000 0000"            /* ........�..�P... */
	$"0000 0000 0000 0004 F311 113F 4000 0000"            /* ........�..?@... */
	$"0000 0000 0000 005F F12F F21F F500 0000"            /* ......._�/�.�... */
	$"0000 0000 0000 004F 314F F413 F400 0000"            /* .......O1O�.�... */
	$"0000 0000 0000 05FF 11FF FF11 FF50 0000"            /* .......�.��.�P.. */
	$"0000 0000 0000 04F3 11FF FF11 3F40 0000"            /* .......�.��.?@.. */
	$"0000 0000 0000 5FF1 11FF FF11 1FF5 0000"            /* ......_�.��..�.. */
	$"0000 0000 0000 4F31 11FF FF11 13F4 0000"            /* ......O1.��..�.. */
	$"0000 0000 0005 FF11 11FF FF11 11FF 5000"            /* ......�..��..�P. */
	$"0000 0000 0004 F311 11FF FF11 113F 4000"            /* ......�..��..?@. */
	$"0000 0000 005F F111 11FF FF11 111F F500"            /* ....._�..��...�. */
	$"0000 0000 004F 3111 11FF FF11 1113 F400"            /* .....O1..��...�. */
	$"0000 0000 05FF 1111 11FF FF11 1111 FF50"            /* .....�...��...�P */
	$"0000 0000 04F3 1111 114F F411 1111 3F40"            /* .....�...O�...?@ */
	$"0000 0000 5FF1 1111 112F F211 1111 1FF5"            /* ...._�.../�....� */
	$"0000 0000 4F31 1111 111F F111 1111 13F4"            /* ....O1....�....� */
	$"0000 0005 FF11 1111 1112 2111 1111 11FF"            /* ....�.....!....� */
	$"5000 0004 F311 1111 1111 1111 1111 113F"            /* P...�..........? */
	$"4000 005F F111 1111 112F F211 1111 111F"            /* @.._�..../�..... */
	$"F500 004F 3111 1111 11FF FF11 1111 1113"            /* �..O1....��..... */
	$"F400 05FF 1111 1111 11FF FF11 1111 1111"            /* �..�.....��..... */
	$"FF50 04F3 1111 1111 112F F211 1111 1111"            /* �P.�...../�..... */
	$"3F40 5FF1 1111 1111 1111 1111 1111 1111"            /* ?@_�............ */
	$"1FF5 FF31 1111 1111 1111 1111 1111 1111"            /* .��1............ */
	$"13FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* .��������������� */
	$"FFFF 5FFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ��_������������� */
	$"FFF5"                                               /* �� */
};

resource 'dctb' (128) {
	{	/* array ColorSpec: 0 elements */
	}
};

resource 'dctb' (200) {
	{	/* array ColorSpec: 0 elements */
	}
};

resource 'ICON' (225) {
	$"00FF FFF0 00FF FFF0 0300 000C 0300 000C"
	$"0C00 0003 0C00 0003 0C00 0003 0C00 0003"
	$"0C3C FFC3 0C3C FFC3 0C00 0003 0C00 0003"
	$"0C00 0003 0C00 0003 0C3F 3CC3 0C3F 3CC3"
	$"0C00 0003 0C00 0003 0C00 0003 0C00 0003"
	$"0C33 CFC3 0C33 CFC3 3000 0003 3000 0003"
	$"C000 000C C000 000C FFFF FFF0 FFFF FFF0"
};

resource 'ICON' (128) {
	$"0001 8000 0002 4000 0004 2000 0008 1000"
	$"0010 0800 0020 0400 0041 8200 0081 8100"
	$"0107 E080 020F F040 0419 9820 0819 9810"
	$"1019 8008 2019 8004 401D 8002 800F E001"
	$"8007 F001 4001 B802 2001 9804 1001 9808"
	$"0819 9810 0419 9820 020F F040 0107 E080"
	$"0081 8100 0041 8200 0020 0400 0010 0800"
	$"0008 1000 0004 2000 0002 4000 0001 80"
};

resource 'ICON' (928) {
	$"0001 0000 0002 8000 0004 4000 0008 2000"
	$"0010 1000 0020 0800 0040 0400 0080 0200"
	$"0100 0300 0200 0380 0400 03C0 0800 03E0"
	$"1000 03F0 2000 03F8 4000 03FC 80FF FFFE"
	$"40FF FFFC 20FF FFF8 10FF FFF0 08FF FFE0"
	$"04FF FFC0 02FF FF80 01FF FF00 00FF FE00"
	$"007F FC00 003F F800 001F F000 000F E000"
	$"0007 C000 0003 8000 0001"
};

resource 'ICON' (226) {
	$"0000 0000 0000 0000 FFFF FFFC FFFF FFFC"
	$"CCC0 030C CCC0 030C F300 030C F300 030C"
	$"CCC0 03FC CCC0 03FC C000 000C C000 000C"
	$"C033 300C C033 300C C0CC C00C C0CC C00C"
	$"C033 300C C033 300C C000 000C C000 000C"
	$"C000 000C C000 000C FFFF FFFC FFFF FFFC"
};

data 'CTRY' (128) {
	$"0015 0941 7573 7472 616C 6961 0003 4155"            /* ...Australia..AU */
	$"4404 312E 3433 0000 0005 0000 0005 0F42"            /* D.1.43.........B */
	$"656C 6769 912F 4265 6C67 6971 7565 0742"            /* elgi�/Belgique.B */
	$"656C 6769 756D 0342 4546 0433 322E 3600"            /* elgium.BEF.32.6. */
	$"0000 0100 0000 0106 4361 6E61 6461 0003"            /* ........Canada.. */
	$"4341 4404 312E 3439 0000 0002 0000 0005"            /* CAD.1.49........ */
	$"0744 616E 6D61 726B 0744 656E 6D61 726B"            /* .Danmark.Denmark */
	$"0344 4B4B 0436 2E31 3400 0000 3200 0000"            /* .DKK.6.14...2... */
	$"320B 4465 7574 7363 686C 616E 6407 4765"            /* 2.Deutschland.Ge */
	$"726D 616E 7903 4445 4D04 312E 3538 0000"            /* rmany.DEM.1.58.. */
	$"000A 0000 000A 0445 6972 6507 4972 656C"            /* .......Eire.Irel */
	$"616E 6403 4945 5004 302E 3638 0000 0005"            /* and.IEP.0.68.... */
	$"0000 0005 0645 7370 6196 6105 5370 6169"            /* .....Espa�a.Spai */
	$"6E03 4553 5003 3133 3400 0000 6400 0000"            /* n.ESP.134...d... */
	$"6402 4555 0E45 7572 6F70 6561 6E20 556E"            /* d.EU.European Un */
	$"696F 6E03 5845 5504 302E 3837 0000 0001"            /* ion.XEU.0.87.... */
	$"0000 0001 0646 7261 6E63 6500 0346 5246"            /* .....France..FRF */
	$"0435 2E34 3500 0000 0100 0000 0106 4865"            /* .5.45.........He */
	$"6C6C 6173 0647 7265 6563 6503 4752 4403"            /* llas.Greece.GRD. */
	$"3236 3100 0000 6400 0000 6409 486F 6E67"            /* 261...d...d.Hong */
	$"204B 6F6E 6700 0348 4B44 0438 2E33 3500"            /*  Kong..HKD.8.35. */
	$"0000 1400 0000 3206 4974 616C 6961 0549"            /* ......2.Italia.I */
	$"7461 6C79 0349 544C 0431 3731 3000 0003"            /* taly.ITL.1710... */
	$"E800 0003 E809 4E65 6465 726C 616E 640B"            /* �...�.Nederland. */
	$"4E65 7468 6572 6C61 6E64 7303 4E4C 4704"            /* Netherlands.NLG. */
	$"312E 3738 0000 000A 0000 0019 064E 6970"            /* 1.78.........Nip */
	$"706F 6E05 4A61 7061 6E03 4A50 5903 3131"            /* pon.Japan.JPY.11 */
	$"3500 0003 E800 0003 E805 4E6F 7267 6506"            /* 5...�...�.Norge. */
	$"4E6F 7277 6179 034E 4F4B 0436 2E39 3400"            /* Norway.NOK.6.94. */
	$"0000 0100 0000 010A 8573 7465 7272 6569"            /* ........�sterrei */
	$"6368 0741 7573 7472 6961 0341 5453 0431"            /* ch.Austria.ATS.1 */
	$"312E 3200 0000 1400 0000 3209 5369 6E67"            /* 1.2.......2.Sing */
	$"6170 6F72 6500 0353 4744 0431 2E35 3300"            /* apore..SGD.1.53. */
	$"0000 0100 0000 0107 5376 6572 6967 6506"            /* ........Sverige. */
	$"5377 6564 656E 0353 454B 0437 2E35 3100"            /* Sweden.SEK.7.51. */
	$"0000 1400 0000 320B 5377 6974 7A65 726C"            /* ......2.Switzerl */
	$"616E 6400 0343 4846 0431 2E32 3900 0000"            /* and..CHF.1.29... */
	$"0A00 0000 0A0E 556E 6974 6564 204B 696E"            /* ......United Kin */
	$"6764 6F6D 0003 4742 5004 302E 3730 0000"            /* gdom..GBP.0.70.. */
	$"0005 0000 0005 0355 5341 0003 5553 4404"            /* .......USA..USD. */
	$"312E 3030 0000 0001 0000 0001"                      /* 1.00........ */
};

data 'hdlg' (200, "Register", purgeable) {
	$"0002 0000 0000 0000 0000 0000 002D 0004"            /* .............-.. */
	$"0100 0020 0003 0000 0000 0000 0000 0000"            /* ... ............ */
	$"0000 6864 0001 0000 0000 0000 0000 0000"            /* ..hd............ */
	$"0000 0020 0003 0000 0000 0000 0000 0000"            /* ... ............ */
	$"0000 6864 0002 0000 0000 0000 0000 0000"            /* ..hd............ */
	$"0000 0020 0003 0000 0000 0000 0000 0000"            /* ... ............ */
	$"0000 6864 0003 0000 0000 0000 0000 0000"            /* ..hd............ */
	$"0000 0020 0003 0000 0000 0000 0000 0000"            /* ... ............ */
	$"0000 6864 0004 0000 0000 0000 0000 0000"            /* ..hd............ */
	$"0000 0020 0003 0000 0000 0000 0000 0000"            /* ... ............ */
	$"0000 6864 0005 0000 0000 0000 0000 0000"            /* ..hd............ */
	$"0000 0020 0003 0000 0000 0000 0000 0000"            /* ... ............ */
	$"0000 6864 0006 0000 0000 0000 0000 0000"            /* ..hd............ */
	$"0000 0004 0100 0020 0003 0000 0000 0000"            /* ....... ........ */
	$"0000 0000 0000 6864 0007 0000 0000 0000"            /* ......hd........ */
	$"0000 0000 0000 0004 0100 0020 0003 0000"            /* ........... .... */
	$"0000 0000 0000 0000 0000 6864 0008 0000"            /* ..........hd.... */
	$"0000 0000 0000 0000 0000 0020 0003 0000"            /* ........... .... */
	$"0000 0000 0000 0000 0000 6864 0009 0000"            /* ..........hd.... */
	$"0000 0000 0000 0000 0000 0020 0003 0000"            /* ........... .... */
	$"0000 0000 0000 0000 0000 6864 000A 0000"            /* ..........hd.... */
	$"0000 6864 000B 0000 0000 0020 0003 0000"            /* ..hd....... .... */
	$"0000 0000 0000 0000 0000 6864 000C 0000"            /* ..........hd.... */
	$"0000 6864 000D 0000 0000 0020 0003 0000"            /* ..hd....... .... */
	$"0000 0000 0000 0000 0000 6864 000E 6864"            /* ..........hd..hd */
	$"000F 0000 0000 0000 0000 0020 0003 0000"            /* ........... .... */
	$"0000 0000 0000 0000 0000 6864 0010 0000"            /* ..........hd.... */
	$"0000 0000 0000 0000 0000 0020 0003 0000"            /* ........... .... */
	$"0000 0000 0000 0000 0000 6864 0008 0000"            /* ..........hd.... */
	$"0000 0000 0000 0000 0000 0020 0003 0000"            /* ........... .... */
	$"0000 0000 0000 0000 0000 6864 0009 0000"            /* ..........hd.... */
	$"0000 0000 0000 0000 0000 0020 0003 0000"            /* ........... .... */
	$"0000 0000 0000 0000 0000 6864 000A 0000"            /* ..........hd.... */
	$"0000 6864 000B 0000 0000 0020 0003 0000"            /* ..hd....... .... */
	$"0000 0000 0000 0000 0000 6864 000C 0000"            /* ..........hd.... */
	$"0000 6864 000D 0000 0000 0020 0003 0000"            /* ..hd....... .... */
	$"0000 0000 0000 0000 0000 6864 000E 6864"            /* ..........hd..hd */
	$"000F 0000 0000 0000 0000 0020 0003 0000"            /* ........... .... */
	$"0000 0000 0000 0000 0000 6864 0010 0000"            /* ..........hd.... */
	$"0000 0000 0000 0000 0000 0020 0003 0000"            /* ........... .... */
	$"0000 0000 0000 0000 0000 6864 0008 0000"            /* ..........hd.... */
	$"0000 0000 0000 0000 0000 0020 0003 0000"            /* ........... .... */
	$"0000 0000 0000 0000 0000 6864 0009 0000"            /* ..........hd.... */
	$"0000 0000 0000 0000 0000 0020 0003 0000"            /* ........... .... */
	$"0000 0000 0000 0000 0000 6864 000A 0000"            /* ..........hd.... */
	$"0000 6864 000B 0000 0000 0020 0003 0000"            /* ..hd....... .... */
	$"0000 0000 0000 0000 0000 6864 000C 0000"            /* ..........hd.... */
	$"0000 6864 000D 0000 0000 0020 0003 0000"            /* ..hd....... .... */
	$"0000 0000 0000 0000 0000 6864 000E 6864"            /* ..........hd..hd */
	$"000F 0000 0000 0000 0000 0020 0003 0000"            /* ........... .... */
	$"0000 0000 0000 0000 0000 6864 0010 0000"            /* ..........hd.... */
	$"0000 0000 0000 0000 0000 0004 0100 0020"            /* ...............  */
	$"0003 0000 0000 0000 0000 0000 0000 6864"            /* ..............hd */
	$"0011 0000 0000 0000 0000 0000 0000 0020"            /* ...............  */
	$"0003 0000 0000 0000 0000 0000 0000 6864"            /* ..............hd */
	$"0012 0000 0000 6864 0013 0000 0000 0004"            /* ......hd........ */
	$"0100 0020 0003 0000 0000 0000 0000 0000"            /* ... ............ */
	$"0000 6864 0014 0000 0000 0000 0000 0000"            /* ..hd............ */
	$"0000 0020 0003 0000 0000 0000 0000 0000"            /* ... ............ */
	$"0000 6864 0015 0000 0000 0000 0000 0000"            /* ..hd............ */
	$"0000 0020 0003 0000 0000 0000 0000 0000"            /* ... ............ */
	$"0000 6864 0016 0000 0000 0000 0000 0000"            /* ..hd............ */
	$"0000 0004 0100 0004 0100 0004 0100 0020"            /* ...............  */
	$"0003 0000 0000 0000 0000 0000 0000 6864"            /* ..............hd */
	$"0017 0000 0000 0000 0000 0000 0000 0004"            /* ................ */
	$"0100 0004 0100 0004 0100 0004 0100 0020"            /* ...............  */
	$"0003 0000 0000 0000 0000 0000 0000 6864"            /* ..............hd */
	$"0018 6864 0018 6864 0018 6864 0018 0004"            /* ..hd..hd..hd.... */
	$"0100 0020 0003 0000 0000 0000 0000 0000"            /* ... ............ */
	$"0000 6864 0019 6864 0019 6864 0019 6864"            /* ..hd..hd..hd..hd */
	$"0019"                                               /* .. */
};

data 'BARC' (128, purgeable) {
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"0002 7232 FFFF FFFF FFFF FFFF FFFF FFFF"            /* ..r2������������ */
	$"0002 6662 0002 2666 FFFF FFFF FFFF FFFF"            /* ..fb..&f�������� */
	$"FFFF FFFF FFFF FFFF 0002 6332 0002 6266"            /* ��������..c2..bf */
	$"FFFF FFFF 0002 6233 0003 6232 0002 6626"            /* ����..b3..b2..f& */
	$"0002 2732 0003 2623 0002 3623 0003 3622"            /* ..'2..&#..6#..6" */
	$"0002 2723 0003 2722 0002 3722 0002 2633"            /* ..'#..'"..7"..&3 */
	$"0003 2632 0002 3632 FFFF FFFF FFFF FFFF"            /* ..&2..62�������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF 0003 2263 0002 3263 0003 3262"            /* ����.."c..2c..2b */
	$"0002 2363 0003 2362 0002 3362 0002 2273"            /* ..#c..#b..3b.."s */
	$"0003 2272 0002 3272 0002 2372 0003 2227"            /* .."r..2r..#r.."' */
	$"0002 3227 0003 3226 0002 2327 0003 2326"            /* ..2'..2&..#'..#& */
	$"0002 3326 0002 2237 0003 2236 0002 3236"            /* ..3&.."7.."6..26 */
	$"0002 2336 0003 6223 0002 7223 0003 7222"            /* ..#6..b#..r#..r" */
	$"0002 6323 0003 6322 0002 7322 FFFF FFFF"            /* ..c#..c"..s"���� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ���������������� */
};

data 'CODE' (1, "Main", locked, protected) {
	$"0000 0001 9DCE 598F 2F3C 434F 4445 4267"            /* ....��Y�/<CODEBg */
	$"A9A0 2017 6700 00F2 2040 2050 2E18 2C10"            /* �� .g..� @ P..,. */
	$"A9A3 7000 204D 91C6 6002 10C0 B1CD 6DFA"            /* ��p. M��`..���m� */
	$"41ED 0028 43F5 7800 6002 10C0 B1C9 6DFA"            /* A�.(C�x.`..���m� */
	$"598F 2F3C 4441 5441 4267 A9A0 2057 2008"            /* Y�/<DATABg�� W . */
	$"6700 00B6 2F0D 2050 4868 0004 4EBA 00B0"            /* g..�/. PHh..N�.� */
	$"508F 43FA FF9C 2B49 EF6C 224D 4EBA 0218"            /* P�C���+I�l"MN�.. */
	$"226D EF6C 4EBA 0210 A9A3 4EBA 0296 422D"            /* "m�lN�..��N�.�B- */
	$"EF71 303C A89F A746 2F08 303C A198 A346"            /* �q0<���F/.0<���F */
	$"B1DF 670A 1B7C 0001 EF71 7001 A198 303C"            /* ��g..|..�qp.��0< */
	$"A9F0 A746 2B48 EF68 303C A9F1 A746 2B48"            /* ��F+H�h0<��F+H */
	$"EF64 303C A9F4 A746 2B48 EF60 303C A9F0"            /* �d0<���F+H�`0<�� */
	$"41FA 0268 A647 303C A9F1 41FA 0324 A647"            /* A�.h�G0<��A�.$�G */
	$"303C A9F4 41FA 002E A647 4EB9 0000 0488"            /* 0<��A�..�GN�...� */
	$"4EB9 0000 0600 487A 0022 4A2D FFFF 6702"            /* N�....Hz."J-��g. */
	$"4267 4267 4EB9 0000 6092 5C8F 42A7 4EB9"            /* BgBgN�..`�\�B�N� */
	$"0000 048A 4EBA 038C A9F4 0000 0000 48E7"            /* ...�N�.���....H� */
	$"1C30 594F 266F 001C 7800 6000 00E4 1E9B"            /* .0YO&o..x.`..�.� */
	$"1F5B 0001 1F5B 0002 1F5B 0003 246F 0020"            /* .[...[...[..$o.  */
	$"D5D7 161B 4883 3003 0240 0080 670E 0243"            /* ��..H�0..@.�g..C */
	$"007F 14DB 5343 4A43 6CF8 60E6 3003 0240"            /* ...�SCJCl�`�0..@ */
	$"0040 670E 3003 0240 003F 5240 48C0 D5C0"            /* .@g.0..@.?R@H��� */
	$"60D0 3003 0240 0020 670A 0243 001F 5243"            /* `�0..@. g..C..RC */
	$"1A1B 600E 3003 0240 0010 6710 0243 000F"            /* ..`.0..@..g..C.. */
	$"7AFF 14C5 5343 4A43 6CF8 60A6 3003 0C40"            /* z�.�SCJCl�`�0..@ */
	$"0004 6264 D040 303B 0006 4EFB 0002 0060"            /* ..bd�@0;..N�...` */
	$"000A 001C 002C 0042 588A 14FC FFFF 14FC"            /* .....,.BX�.���.� */
	$"FFFF 14DB 14DB 6000 FF7A 588A 14FC FFFF"            /* ��.�.�`.�zX�.��� */
	$"14DB 14DB 14DB 6000 FF6A 14FC FFA9 14FC"            /* .�.�.�`.�j.���.� */
	$"FFF0 548A 14DB 14DB 528A 14DB 6000 FF54"            /* ��T�.�.�R�.�`.�T */
	$"14FC FFA9 14FC FFF0 528A 14DB 14DB 14DB"            /* .���.���R�.�.�.� */
	$"528A 14DB 6000 FF3C 3F3C 000F A9C9 5244"            /* R�.�`.�<?<..��RD */
	$"0C44 0003 6D00 FF18 204B 584F 4CDF 0C38"            /* .D..m.�. KXOL�.8 */
	$"4E75 2F05 594F 226F 000C 1E99 1F59 0001"            /* Nu/.YO"o...�.Y.. */
	$"1F59 0002 1F59 0003 2A17 7400 604C 1219"            /* .Y...Y..*.t.`L.. */
	$"1001 0240 0080 670C D201 1001 4880 48C0"            /* ...@.�g.�...H�H� */
	$"D480 6028 1E81 1F59 0001 1001 0240 0040"            /* Ԁ`(.�.Y.....@.@ */
	$"670C 3017 E548 E240 48C0 D480 600E 1F59"            /* g.0.�H�@H�Ԁ`..Y */
	$"0002 1F59 0003 2417 E58A E282 206F 0010"            /* ...Y..$.�� o.. */
	$"202F 0014 D1B0 2800 5385 4A85 6EB0 2049"            /*  /..Ѱ(.S�J�n� I */
	$"584F 2A1F 4E75 2F0A 2449 2F0D 2F0A 2F08"            /* XO*.Nu/.$I/././. */
	$"4EBA FF80 2F2D EF6C 2F0A 2F08 4EBA FF74"            /* N���/-�l/./.N��t */
	$"2F0A 2F0A 2F08 4EBA FF6A 4FEF 0024 245F"            /* /././.N��jO�.$$_ */
	$"4E75 2F0A 2449 2F0D 4497 2F0A 2F08 4EBA"            /* Nu/.$I/.D�/./.N� */
	$"FF52 2F2D EF6C 4497 2F0A 2F08 4EBA FF44"            /* �R/-�lD�/./.N��D */
	$"2F0A 4497 2F0A 2F08 4EBA FF38 4FEF 0024"            /* /.D�/./.N��8O�.$ */
	$"245F 4E75 BBFA 0028 6602 4E75 48E7 0084"            /* $_Nu��.(f.NuH�.� */
	$"2A7A 001C 206D EF68 4A6F 000C 6604 206D"            /* *z.. m�hJo..f. m */
	$"EF64 2F48 000A 4CDF 2100 544F 4E75 0000"            /* �d/H..L�!.TONu.. */
	$"0000 41FA FFFA 208D 4E75 43F9 0000 0028"            /* ..A��� �NuC�...( */
	$"C0FC 0010 2388 08F0 4E75 3F3C 0001 4EBA"            /* ��..#�.�Nu?<..N� */
	$"FFB4 544F 48E7 E0E0 55AF 0018 246F 0018"            /* ��TOH���U�..$o.. */
	$"202D EF72 670A 2040 3F2A 0006 4E90 548F"            /*  -�rg. @?*..N�T� */
	$"50F8 0A5E 598F 2F3C 434F 4445 3F2A 0006"            /* P�.^Y�/<CODE?*.. */
	$"A9A0 2017 6616 202D EF7E 6604 700F A9C9"            /* �� .f. -�~f.p.�� */
	$"2040 3F2A 0006 4E90 548F 60DA 4A38 0BB2"            /*  @?*..N�T�`�J8.� */
	$"6704 2040 A064 2057 A029 205F 2050 2008"            /* g. @�d W�) _ P . */
	$"A055 2040 2F08 302A 0006 4EBA FF7E 2248"            /* �U @/.0*..N��~"H */
	$"D1E8 0008 4EBA FEE0 205F 224D D3E8 0004"            /* ��..N��� _"M��.. */
	$"3028 0002 2208 600C 337C 4EF9 0000 D3A9"            /* 0(..".`.3|N�..ө */
	$"0002 5089 51C8 FFF2 4A2D EF71 6704 7001"            /* ..P�Q���J-�qg.p. */
	$"A198 202D EF76 670A 2040 3F2A 0006 4E90"            /* �� -�vg. @?*..N� */
	$"548F 4CDF 0707 4A38 012D 6702 A9FF 4E75"            /* T�L�..J8.-g.��Nu */
	$"3F3C 0000 4EBA FEEE 544F 2F0A 246F 0008"            /* ?<..N���TO/.$o.. */
	$"0C6A 4EF9 0000 667A 0C6A 0002 0006 6D72"            /* .jN�..fz.j....mr */
	$"91C8 302A 0006 4EBA FF02 598F 2F3C 434F"            /* ��0*..N��.Y�/<CO */
	$"4445 3F2A 0006 A9A0 2017 6604 588F 6052"            /* DE?*..�� .f.X�`R */
	$"2040 2050 2248 D1E8 0008 4EBA FE76 2057"            /*  @ P"H��..N��v W */
	$"2050 224D D3E8 0004 3028 0002 2208 600C"            /*  P"M��..0(..".`. */
	$"337C A9F0 0000 93A9 0002 5089 51C8 FFF2"            /* 3|��..��..P�Q��� */
	$"2057 A02A 205F A049 4A2D EF71 6704 7001"            /*  W�* _�IJ-�qg.p. */
	$"A198 202D EF7A 670A 2040 3F2A 0006 4E90"            /* �� -�zg. @?*..N� */
	$"548F 245F 2E9F 4E75 4E75 4EBA 002A A9F4"            /* T�$_.�NuNuN�.*�� */
	$"4E75 2A78 0904 303C A9F4 206D EF60 A647"            /* Nu*x..0<�� m�`�G */
	$"303C A9F0 206D EF68 A647 303C A9F1 206D"            /* 0<�� m�h�G0<�� m */
	$"EF64 A647 4E75 2F0A 6014 2B52 EF82 3F3C"            /* �d�GNu/.`.+R�?< */
	$"FFFF 2F2A 0008 206A 0004 4E90 5C4F 246D"            /* ��/*.. j..N�\O$m */
	$"EF82 200A 66E4 245F 4E75 48E7 3000 7402"            /* � .f�$_NuH�0.t. */
	$"4EFB 2200 600A 4C01 0000 4CDF 000C 4E75"            /* N�".`.L...L�..Nu */
	$"2400 4842 C4C1 2601 4843 C6C0 D443 4842"            /* $.HB��&.HC���CHB */
	$"4242 C0C1 D082 4CDF 000C 4E75 48E7 3000"            /* BB��ЂL�..NuH�0. */
	$"7402 4EFB 2200 600A 4C41 0000 4CDF 000C"            /* t.N�".`.LA..L�.. */
	$"4E75 2401 4242 4842 661C 3600 4240 4840"            /* Nu$.BBHBf.6.B@H@ */
	$"6706 80C1 3400 4842 3003 80C1 3400 2002"            /* g.��4.HB0.��4. . */
	$"4CDF 000C 4E75 3400 4240 4840 4842 2601"            /* L�..Nu4.B@H@HB&. */
	$"720F D482 D180 B083 6504 9083 5202 51C9"            /* r.Ԃр��e.��R.Q� */
	$"FFF2 2002 4CDF 000C 4E75 4A80 6C0C 4480"            /* �� .L�..NuJ�l.D� */
	$"4A81 6C10 4481 4EFA FF94 4A81 6D04 4EFA"            /* J�l.D�N���J�m.N� */
	$"FF8C 4481 4EBA FF86 4480 4E75 48E7 3000"            /* ��D�N���D�NuH�0. */
	$"7402 4EFB 2200 600C 4C41 0001 2001 4CDF"            /* t.N�".`.LA.. .L� */
	$"000C 4E75 2401 4242 4842 661C 3600 4240"            /* ..Nu$.BBHBf.6.B@ */
	$"4840 6706 80C1 3400 4842 3003 80C1 4240"            /* H@g.��4.HB0.��B@ */
	$"4840 4CDF 000C 4E75 3400 4240 4840 4842"            /* H@L�..Nu4.B@H@HB */
	$"2601 720F D482 D180 B083 6502 9083 51C9"            /* &.r.Ԃр��e.��Q� */
	$"FFF4 4CDF 000C 4E75 4A81 6C02 4481 4A80"            /* ��L�..NuJ�l.D�J� */
	$"6D04 4EFA FF98 4480 4EBA FF92 4480 4E75"            /* m.N���D�N���D�Nu */
	$"4E75 4E56 FF00 2F03 162E 0008 486E FF00"            /* NuNV�./.....Hn�. */
	$"3F3C 008C 7000 1003 3F00 4EB9 0000 E980"            /* ?<.�p...?.N�..� */
	$"41EE FF00 2608 2043 7000 1010 5240 48C0"            /* A��.&. Cp...R@H� */
	$"2043 226E 000A A22E 261F 4E5E 205F 544F"            /*  C"n..�.&.N^ _TO */
	$"4ED0 8D47 4554 4449 5350 4C41 5953 5452"            /* NЍGETDISPLAYSTR */
	$"0000 4E56 0000 7000 102E 0009 0440 002C"            /* ..NV..p......@., */
	$"670C 5540 6702 600C 422E 000A 6006 1D7C"            /* g.U@g.`.B...`..| */
	$"0001 000A 4E5E 205F 544F 4ED0 8E49 5445"            /* ....N^ _TONЎITE */
	$"4D54 4F4D 454E 5554 5950 4500 0000 4E56"            /* MTOMENUTYPE...NV */
	$"FE00 48E7 1C20 246E 0008 554F 2F0A A950"            /* �.H�. $n..UO/.�P */
	$"301F 3A00 7601 604E 2F0A 3F03 486E FF00"            /* 0.:.v.`N/.?.Hn�. */
	$"A946 486D F870 486E FF00 486E FE00 3F3C"            /* �FHm�pHn�.Hn�.?< */
	$"0002 4EB9 0000 DE7E 41EE FE00 2808 2044"            /* ..N�..�~A��.(. D */
	$"7000 1010 5240 48C0 2044 43EE FF00 A22E"            /* p...R@H� DC��.�. */
	$"2F0A 3F03 486E FF00 A947 0C43 7FFF 4FEF"            /* /.?.Hn�.�G.C.�O� */
	$"000E 6706 5243 B645 6FAE 4CDF 0438 4E5E"            /* ..g.RC�Eo�L�.8N^ */
	$"2E9F 4E75 8F46 414B 454D 454E 5553 5452"            /* .�Nu�FAKEMENUSTR */
	$"494E 4753 0000 4E56 0000 2F0A 246E 0008"            /* INGS..NV../.$n.. */
	$"2F2E 000E 3F2E 000C 2F0A A946 2F0A 7000"            /* /...?.../.�F/.p. */
	$"1012 5540 3F00 3F3C 0003 4EB9 0000 DEF4"            /* ..U@?.?<..N�..�� */
	$"245F 4E5E 205F 4FEF 000A 4ED0 8B46 414B"            /* $_N^ _O�..NЋFAK */
	$"4547 4554 4954 454D 0000 4E56 0000 48E7"            /* EGETITEM..NV..H� */
	$"1020 306E 0008 2008 5380 223C 0000 02F6"            /* . 0n.. .S�"<...� */
	$"4EB9 0000 04DA 206D F298 D1C0 2448 7601"            /* N�...� m���$Hv. */
	$"6006 7001 D043 3600 0C43 0010 6C24 7000"            /* `.p.�C6..C..l$p. */
	$"102A 01E4 C1FC 0088 204A 41E8 01E6 D1C0"            /* .*.���.� JA�.��� */
	$"3243 2009 5380 E788 222A 01D4 B2B0 0804"            /* 2C .S��"*.Բ�.. */
	$"6CD0 0C43 0001 6F02 5343 7000 102A 01E4"            /* l�.C..o.SCp..*.� */
	$"C1FC 0088 204A 41E8 01E6 D1C0 3243 2009"            /* ��.� JA�.���2C . */
	$"5380 E788 2D70 0800 000A 4CDF 0408 4E5E"            /* S��-p....L�..N^ */
	$"205F 544F 4ED0 9447 4554 5052 4F47 5241"            /*  _TONДGETPROGRA */
	$"4D45 4143 4853 494E 474C 4500 0000 4E56"            /* MEACHSINGLE...NV */
	$"0000 2F0A 306E 0008 2008 5380 223C 0000"            /* ../.0n.. .S�"<.. */
	$"02F6 4EB9 0000 04DA 206D F298 D1C0 2448"            /* .�N�...� m���$H */
	$"7000 102A 01E4 C1FC 0088 204A 41E8 01E6"            /* p..*.���.� JA�.� */
	$"D1C0 2D68 0080 000A 245F 4E5E 205F 544F"            /* ��-h.�..$_N^ _TO */
	$"4ED0 9247 4554 5052 4F47 5241 4D45 4143"            /* NВGETPROGRAMEAC */
	$"4853 4954 4500 0000 4E56 0000 2F0A 306E"            /* HSITE...NV../.0n */
	$"0008 2008 5380 223C 0000 02F6 4EB9 0000"            /* .. .S�"<...�N�.. */
	$"04DA 206D F298 D1C0 2448 7000 102A 01E4"            /* .� m���$Hp..*.� */
	$"C1FC 0088 204A 41E8 01E6 D1C0 2D68 0084"            /* ��.� JA�.���-h.� */
	$"000A 245F 4E5E 205F 544F 4ED0 9347 4554"            /* ..$_N^ _TONГGET */
	$"5052 4F47 5241 4D45 4143 4857 4F52 4C44"            /* PROGRAMEACHWORLD */
	$"0000 4E56 0000 48E7 1020 162E 0010 246E"            /* ..NV..H�. ....$n */
	$"0008 0C03 0016 5CC0 4400 7200 1200 0C03"            /* ......\�D.r..... */
	$"0010 5CC0 4400 7400 1400 D441 206E 000C"            /* ..\�D.t...�A n.. */
	$"3082 7000 1003 0440 000A 0C40 000F 623E"            /* 0�p....@...@..b> */
	$"D040 303B 0006 4EFB 0002 0020 0030 0024"            /* �@0;..N�... .0.$ */
	$"002A 0034 0034 0020 0030 0024 002A 0034"            /* .*.4.4. .0.$.*.4 */
	$"0034 0020 0030 0024 002A 4212 6010 14BC"            /* .4. .0.$.*B.`..� */
	$"0002 600A 14BC 0003 6004 14BC 0001 4CDF"            /* ..`..�..`..�..L� */
	$"0408 4E5E 205F 4FEF 000A 4ED0 9452 4547"            /* ..N^ _O�..NДREG */
	$"4953 5445 5249 5445 4D54 4F4F 4646 434F"            /* ISTERITEMTOOFFCO */
	$"4C00 0000 4E56 FFF8 206E 0008 2D50 FFF8"            /* L...NV�� n..-P�� */
	$"2D68 0004 FFFC 0C6E 1F40 FFF8 5EC0 4400"            /* -h..��.n.@��^�D. */
	$"1D40 000C 4E5E 2E9F 4E75 8C52 4543 5449"            /* .@..N^.�Nu�RECTI */
	$"5348 4944 4445 4E00 0000 4E56 FFF8 2F2E"            /* SHIDDEN...NV��/. */
	$"000A 3F2E 0008 486E FFF8 4EB9 0000 B062"            /* ..?...Hn��N�..�b */
	$"554F 486E FFF8 4EBA FFAC 101F 1D40 000E"            /* UOHn��N���...@.. */
	$"4E5E 205F 5C4F 4ED0 8D44 4954 454D 4953"            /* N^ _\ONЍDITEMIS */
	$"4849 4444 454E 0000 4E56 0000 2F0A 246E"            /* HIDDEN..NV../.$n */
	$"0008 2F2E 000E 3F2E 000C 2F0A 4EB9 0000"            /* ../...?.../.N�.. */
	$"B062 554F 2F0A 4EBA FF6C 101F 670A 2F0A"            /* �bUO/.N��l..g./. */
	$"2F3C D8F0 0000 A8A8 245F 4E5E 205F 4FEF"            /* /<��..��$_N^ _O� */
	$"000A 4ED0 9047 4554 5245 414C 4449 5445"            /* ..NАGETREALDITE */
	$"4D52 4543 5400 0000 4E56 FFF8 206E 000C"            /* MRECT...NV�� n.. */
	$"2D50 FFF8 2D68 0004 FFFC 486E FFF8 2F3C"            /* -P��-h..��Hn��/< */
	$"FFFD FFFD A8A9 486E FFF8 A8A3 486E FFF8"            /* ������Hn����Hn�� */
	$"A928 4E5E 205F 504F 4ED0 885A 6170 5265"            /* �(N^ _PONЈZapRe */
	$"6374 3000 0000 4E56 FFF6 48E7 1C20 246E"            /* ct0...NV��H�. $n */
	$"000C 362E 000A 1A2E 0008 554F 2F0A 3F03"            /* ..6.......UO/.?. */
	$"4EBA FF18 101F B005 6700 00A0 2F0A 3F03"            /* N��...�.g..�/.?. */
	$"486E FFF8 4EB9 0000 B062 4A05 6706 383C"            /* Hn��N�..�bJ.g.8< */
	$"2710 6004 383C D8F0 486E FFF8 2F0E 4EBA"            /* '.`.8<��Hn��/.N� */
	$"FF78 486E FFF8 4267 3F04 A8A8 486E FFF8"            /* �xHn��Bg?.��Hn�� */
	$"2F0E 4EBA FF64 2F0A 3F03 486E FFF8 4EB9"            /* /.N��d/.?.Hn��N� */
	$"0000 B00A 2F0A 3F03 486E FFF6 4EB9 0000"            /* ..�./.?.Hn��N�.. */
	$"B096 554F 302E FFF6 727F C081 2F00 486D"            /* ��UO0.��r.��/.Hm */
	$"F874 4878 0100 4EB9 0000 DCD0 101F 672A"            /* �tHx..N�..��..g* */
	$"4A05 6714 594F 2F0A 3F03 4EB9 0000 B0CA"            /* J.g.YO/.?.N�..�� */
	$"205F 2F08 A958 6012 594F 2F0A 3F03 4EB9"            /*  _/.�X`.YO/.?.N� */
	$"0000 B0CA 205F 2F08 A957 4CDF 0438 4E5E"            /* ..�� _/.�WL�.8N^ */
	$"205F 504F 4ED0 934D 5953 4554 4849 4445"            /*  _PONГMYSETHIDE */
	$"4449 414C 4F47 4954 454D 0000 4E56 0000"            /* DIALOGITEM..NV.. */
	$"2F0A 246E 0008 302E 000E 5340 6706 5340"            /* /.$n..0...S@g.S@ */
	$"6708 600C 14BC 0010 600A 14BC 0016 6004"            /* g.`..�..`..�..`. */
	$"14BC 000A 7000 102E 000C 7200 1212 D240"            /* .�..p.....r...�@ */
	$"1481 245F 4E5E 205F 504F 4ED0 944F 4646"            /* .�$_N^ _PONДOFF */
	$"434F 4C54 4F52 4547 4953 5445 5249 5445"            /* COLTOREGISTERITE */
	$"4D00 0000 4E56 FFFE 48E7 1800 382E 000C"            /* M...NV��H�..8... */
	$"7600 6022 3F04 1F03 486E FFFF 4EBA FF8E"            /* v.`"?...Hn��N��� */
	$"2F2D F29C 7000 102E FFFF 3F00 1F3C 0001"            /* /-�p...��?..<.. */
	$"4EBA FE94 5203 7000 1003 0C40 0005 6FD4"            /* N���R.p....@..o� */
	$"4CDF 0018 4E5E 205F 5C4F 4ED0 8848 6964"            /* L�..N^ _\ONЈHid */
	$"654F 6666 3100 0000 4E56 0000 0C6D 0002"            /* eOff1...NV...m.. */
	$"F296 6C0A 3F3C 0001 2F0E 4EBA FF98 0C6D"            /* �l.?<../.N���.m */
	$"0003 F296 6C0A 3F3C 0002 2F0E 4EBA FF86"            /* ..�l.?<../.N��� */
	$"4E5E 4E75 9248 4944 4545 5854 5241 5052"            /* N^Nu�HIDEEXTRAPR */
	$"4F47 4954 454D 5300 0000 4E56 FF00 2F03"            /* OGITEMS...NV�./. */
	$"162E 0008 486E FF00 3F3C 0080 7000 1003"            /* ....Hn�.?<.�p... */
	$"3F00 4EB9 0000 E980 41EE FF00 2608 2043"            /* ?.N�..�A��.&. C */
	$"7000 1010 5240 48C0 2043 226E 000A A22E"            /* p...R@H� C"n..�. */
	$"261F 4E5E 205F 544F 4ED0 8C47 4554 474C"            /* &.N^ _TONЌGETGL */
	$"4F42 414C 5354 5200 0000 4E56 0000 1B7C"            /* OBALSTR...NV...| */
	$"0001 F2A1 426E 0008 4E5E 4E75 8644 4F51"            /* ..�Bn..N^Nu�DOQ */
	$"5549 5400 0000 4E56 FEF0 2F03 486D F974"            /* UIT...NV��/.Hm�t */
	$"486E FEF0 2F2E 0008 4EB9 0000 D6F2 584F"            /* Hn��/...N�..��XO */
	$"486E FEF0 486E FF00 3F3C 0002 4EB9 0000"            /* Hn��Hn�.?<..N�.. */
	$"DE7E 41EE FF00 2608 2043 7000 1010 5240"            /* �~A��.&. Cp...R@ */
	$"48C0 2043 226E 000C A22E 4FEF 000E 261F"            /* H� C"n..�.O�..&. */
	$"4E5E 2E9F 4E75 8A4E 554D 544F 4345 4E54"            /* N^.�Nu�NUMTOCENT */
	$"5300 0000 4E56 FFE0 48E7 1020 246E 000C"            /* S...NV��H�. $n.. */
	$"206E 0008 43EE FFE0 7007 22D8 51C8 FFFC"            /*  n..C���p."�Q��� */
	$"7601 6032 554F 7000 1032 3000 2F00 486E"            /* v.`2UOp..20./.Hn */
	$"FFE0 4878 0020 4EB9 0000 DCD0 101F 6708"            /* ��Hx. N�..��..g. */
	$"7001 D043 3600 600E 2F0A 3F03 3F3C 0001"            /* p.�C6.`./.?.?<.. */
	$"4EB9 0000 DEF4 7000 1012 B640 6FC6 4CDF"            /* N�..��p...�@o�L� */
	$"0408 4E5E 205F 504F 4ED0 8B53 5452 4950"            /* ..N^ _PONЋSTRIP */
	$"414C 4C42 5554 0000 4E56 0000 302E 0008"            /* ALLBUT..NV..0... */
	$"670A 5340 670E 5340 6712 6018 1D7C 000A"            /* g.S@g.S@g.`..|.. */
	$"000A 6016 1D7C 0010 000A 600E 1D7C 0016"            /* ..`..|....`..|.. */
	$"000A 6006 486D F978 ABFF 4E5E 205F 544F"            /* ..`.Hm�x��N^ _TO */
	$"4ED0 884F 4646 544F 524F 5700 0000 4E56"            /* NЈOFFTOROW...NV */
	$"FF00 2F03 162E 0008 486E FF00 3F3C 00C8"            /* �./.....Hn�.?<.� */
	$"7000 1003 3F00 4EB9 0000 E980 41EE FF00"            /* p...?.N�..�A��. */
	$"2608 2043 7000 1010 5240 48C0 2043 226E"            /* &. Cp...R@H� C"n */
	$"000A A22E 261F 4E5E 205F 544F 4ED0 8A47"            /* ..�.&.N^ _TONЊG */
	$"4554 464F 524D 5354 5200 0000 4E56 FF00"            /* ETFORMSTR...NV�. */
	$"2F03 162E 0008 486E FF00 3F3C 00C9 7000"            /* /.....Hn�.?<.�p. */
	$"1003 3F00 4EB9 0000 E980 41EE FF00 2608"            /* ..?.N�..�A��.&. */
	$"2043 7000 1010 5240 48C0 2043 226E 000A"            /*  Cp...R@H� C"n.. */
	$"A22E 261F 4E5E 205F 544F 4ED0 8D47 4554"            /* �.&.N^ _TONЍGET */
	$"4241 5246 4F52 4D53 5452 0000 4E56 FFF8"            /* BARFORMSTR..NV�� */
	$"48E7 1020 362E 0008 3043 2008 5380 223C"            /* H�. 6...0C .S�"< */
	$"0000 02F6 4EB9 0000 04DA 206D F298 D1C0"            /* ...�N�...� m��� */
	$"2448 594F 3F03 4EBA F9E0 201F 222A 01DC"            /* $HYO?.N��� ."*.� */
	$"4EB9 0000 04DA 2D40 FFF8 594F 3F03 4EBA"            /* N�...�-@��YO?.N� */
	$"F96E 201F 222A 01D8 4EB9 0000 04DA 2D40"            /* �n ."*.�N�...�-@ */
	$"FFFC 594F 3F03 4EBA F8B2 201F 222A 01D4"            /* ��YO?.N��� ."*.� */
	$"4EB9 0000 04DA D0AE FFFC D0AE FFF8 D0AA"            /* N�...�Ю��Ю��Ъ */
	$"01E0 2D40 000A 4CDF 0408 4E5E 205F 544F"            /* .�-@..L�..N^ _TO */
	$"4ED0 8F47 4554 5052 4F47 5241 4D54 4F54"            /* NЏGETPROGRAMTOT */
	$"414C 0000 4E56 0000 48E7 1C00 182E 000A"            /* AL..NV..H�...... */
	$"162E 0008 B604 6C06 1A04 1803 1605 B803"            /* ....�.l.......�. */
	$"5FC0 4400 1F00 4EB9 0000 ACEA 1A03 B803"            /* _�D...N�..��..�. */
	$"6706 4A04 6702 7A03 1D45 000C 4CDF 0038"            /* g.J.g.z..E..L�.8 */
	$"4E5E 2E9F 4E75 914F 5246 4C41 4752 4551"            /* N^.�Nu�ORFLAGREQ */
	$"5549 5245 5459 5045 0000 4E56 0000 48E7"            /* UIRETYPE..NV..H� */
	$"1E20 7800 4A6D F286 6702 7802 3C2D F296"            /* . x.Jm�g.x.<-� */
	$"7601 6042 3043 2008 5380 223C 0000 02F6"            /* v.`B0C .S�"<...� */
	$"4EB9 0000 04DA 206D F298 D1C0 2448 594F"            /* N�...� m���$HYO */
	$"3F03 4EBA FED8 201F 6714 7A03 CAAA 01D0"            /* ?.N��� .g.z.ʪ.� */
	$"554F 1F04 1F05 4EBA FF5C 101F 1800 0C43"            /* UO....N��\.....C */
	$"7FFF 6706 5243 B646 6FBA 1D44 0008 4CDF"            /* .�g.RC�Fo�.D..L� */
	$"0478 4E5E 205F 4ED0 9247 4554 464C 4147"            /* .xN^ _NВGETFLAG */
	$"5245 5155 4952 4554 5950 4500 0000 4E56"            /* REQUIRETYPE...NV */
	$"0000 48E7 1C00 306D F286 2808 3A2D F296"            /* ..H�..0m�(.:-� */
	$"7601 6016 594F 3F03 4EBA FE72 201F D084"            /* v.`.YO?.N��r .Є */
	$"2800 0C43 7FFF 6706 5243 B645 6FE6 2D44"            /* (..C.�g.RC�Eo�-D */
	$"0008 4CDF 0038 4E5E 4E75 8C47 4554 4655"            /* ..L�.8N^Nu�GETFU */
	$"4C4C 544F 5441 4C00 0000 4E56 0000 226E"            /* LLTOTAL...NV.."n */
	$"000C 206E 0008 2011 2290 2080 4E5E 205F"            /* .. n.. ."� �N^ _ */
	$"504F 4ED0 8453 5741 5000 0000 4E56 0000"            /* PONЄSWAP...NV.. */
	$"42AE 0010 4AAE 000C 6F3C 4AAE 0008 6F36"            /* B�..J�..o<J�..o6 */
	$"6028 202E 000C B0AE 0008 6F0C 486E 000C"            /* `( ...��..o.Hn.. */
	$"486E 0008 4EBA FFB4 202E 0008 222E 000C"            /* Hn..N��� ..."... */
	$"4EB9 0000 05E8 2D40 0008 4AAE 0008 66D2"            /* N�...�-@..J�..f� */
	$"2D6E 000C 0010 4E5E 205F 504F 4ED0 8743"            /* -n....N^ _PONЇC */
	$"414C 4347 4344 0000 4E56 FFFC 2F03 262E"            /* ALCGCD..NV��/.&. */
	$"000C 4A83 674C 206E 0008 2D68 FFF8 FFFC"            /* ..J�gL n..-h���� */
	$"594F 206E 0008 2028 0010 9083 2F00 4EB9"            /* YO n.. (..��/.N� */
	$"0000 D998 201F B0AE FFFC 6C26 594F 206E"            /* ..٘ .����l&YO n */
	$"0008 2028 0010 9083 2F00 4EB9 0000 D998"            /* .. (..��/.N�..٘ */
	$"201F 206E 0008 2140 FFF8 206E 0008 2143"            /*  . n..!@�� n..!C */
	$"FFFC 261F 4E5E 205F 504F 4ED0 8454 7279"            /* ��&.N^ _PONЄTry */
	$"3200 0000 4E56 FFF8 48E7 1C00 4AAE 0010"            /* 2...NV��H�..J�.. */
	$"6608 42AE FFFC 6000 00EE 594F 2F2E 000C"            /* f.B���`..�YO/... */
	$"2F2E 0008 4EBA FF16 201F 2600 202E 000C"            /* /...N��. .&. ... */
	$"2203 4EB9 0000 056A 222E 0008 4EB9 0000"            /* ".N�...j"...N�.. */
	$"04DA 2800 2D7C 7FFF FFFF FFF8 B8AE 0010"            /* .�(.-|.�������.. */
	$"6E3C 202E 0010 2203 4EB9 0000 056A 2203"            /* n< ...".N�...j". */
	$"4EB9 0000 04DA 2F00 2F0E 4EBA FF2C 202E"            /* N�...�/./.N��, . */
	$"0010 2203 4EB9 0000 056A 2203 4EB9 0000"            /* ..".N�...j".N�.. */
	$"04DA D083 2F00 2F0E 4EBA FF0E 6078 202E"            /* .�Ѓ/./.N��.`x . */
	$"000C B0AE 0008 6F0C 486E 000C 486E 0008"            /* ..��..o.Hn..Hn.. */
	$"4EBA FE78 2D44 FFFC 2A2E 000C 7800 6052"            /* N��x-D��*...x.`R */
	$"2004 222E 0008 4EB9 0000 04DA 2600 B6AE"            /*  ."...N�...�&.�� */
	$"0010 6C1E 202E 0010 9083 222E 000C 4EB9"            /* ..l. ...��"...N� */
	$"0000 056A 222E 000C 4EB9 0000 04DA D083"            /* ...j"...N�...�Ѓ */
	$"2600 2F03 2F0E 4EBA FEB0 2003 D0AE 000C"            /* &././.N��� .Ю.. */
	$"2F00 2F0E 4EBA FEA2 0C84 7FFF FFFF 6706"            /* /./.N���.�.���g. */
	$"5284 B885 6FAA 2D6E FFFC 0014 4CDF 0038"            /* R���o�-n��..L�.8 */
	$"4E5E 205F 4FEF 000C 4ED0 9047 4554 4355"            /* N^ _O�..NАGETCU */
	$"5252 454E 4359 5641 4C55 4500 0000 4E56"            /* RRENCYVALUE...NV */
	$"FDDC 48E7 1800 594F 4EBA FD94 201F 2800"            /* ��H�..YON��� .(. */
	$"0C2D 0002 F285 666E 594F 2D7C 3FFE FD70"            /* .-..�fnYO-|?��p */
	$"FDDC 2D7C A3D7 0A3D FDE0 3D7C 70A4 FDE4"            /* ��-|��.=��=|p��� */
	$"2D44 FDE6 486E FDE6 486E FDE6 3F3C 280E"            /* -D��Hn��Hn��?<(. */
	$"A9EB 486D F280 486E FDE6 3F3C 1004 A9EB"            /* ��Hm�Hn��?<..�� */
	$"486E FDDC 486E FDE6 3F3C 0000 A9EB 2F2E"            /* Hn��Hn��?<..��/. */
	$"FDEC 2F2E FDE8 3F2E FDE6 4EB9 0000 D968"            /* ��/.��?.��N�..�h */
	$"4FEF 000A 2F00 2F2D F27C 2F2D F278 4EBA"            /* O�.././-�|/-�xN� */
	$"FE54 201F 2800 0C2D 0002 F285 6656 7063"            /* �T .(..-..�fVpc */
	$"B0AD F27C 6C4E 7063 B0AD F278 6C46 486E"            /* ���|lNpc���xlFHn */
	$"FDF0 2F04 4EB9 0000 D6F2 584F 486E FDF0"            /* ��/.N�..��XOHn�� */
	$"486D F984 486D F274 486E FF00 3F3C 0003"            /* Hm��Hm�tHn�.?<.. */
	$"4EB9 0000 DE7E 41EE FF00 2608 2043 7000"            /* N�..�~A��.&. Cp. */
	$"1010 5240 48C0 2043 226E 0008 A22E 4FEF"            /* ..R@H� C"n..�.O� */
	$"0012 6042 486E FF00 2F04 4EBA F98A 584F"            /* ..`BHn�./.N���XO */
	$"486E FF00 486D F984 486D F274 486E FE00"            /* Hn�.Hm��Hm�tHn�. */
	$"3F3C 0003 4EB9 0000 DE7E 41EE FE00 2608"            /* ?<..N�..�~A��.&. */
	$"2043 7000 1010 5240 48C0 2043 226E 0008"            /*  Cp...R@H� C"n.. */
	$"A22E 4FEF 0012 4CDF 0018 4E5E 4E75 8D47"            /* �.O�..L�..N^Nu�G */
	$"4554 5241 5445 4454 4F54 414C 0000 4E56"            /* ETRATEDTOTAL..NV */
	$"FF00 2F03 162E 0008 2F2D F29C 7000 1003"            /* �./...../-�p... */
	$"3F00 486E FF00 4EB9 0000 ADB2 41EE FF00"            /* ?.Hn�.N�..��A��. */
	$"2608 2043 7000 1010 5240 48C0 2043 226E"            /* &. Cp...R@H� C"n */
	$"000A A22E 261F 4E5E 205F 544F 4ED0 8A47"            /* ..�.&.N^ _TONЊG */
	$"4554 4954 454D 5354 5200 0000 4E56 FD00"            /* ETITEMSTR...NV�. */
	$"206E 0008 43EE FE00 703F 22D8 51C8 FFFC"            /*  n..C��.p?"�Q��� */
	$"486E FF00 486E FD00 3F3C 00A0 7000 102E"            /* Hn�.Hn�.?<.�p... */
	$"000C 3F00 4EB9 0000 C746 584F 486E FD00"            /* ..?.N�..�FXOHn�. */
	$"486E FE00 486D F986 486D F986 4EB9 0000"            /* Hn�.Hm��Hm��N�.. */
	$"CC7E 486D F986 486E FF00 486D F986 486D"            /* �~Hm��Hn�.Hm��Hm */
	$"F986 4EB9 0000 7640 554F 3F3C 00A0 4EB9"            /* ��N�..v@UO?<.�N� */
	$"0000 82CA 301F 5340 6708 206E 000E 30BC"            /* ..��0.S@g. n..0� */
	$"FF80 4E5E 205F 4FEF 000A 4ED0 8D56 414C"            /* ��N^ _O�..NЍVAL */
	$"4944 4154 4541 4C45 5254 0000 4E56 FD00"            /* IDATEALERT..NV�. */
	$"2F03 162E 000C 206E 0008 43EE FE00 703F"            /* /..... n..C��.p? */
	$"22D8 51C8 FFFC 486E FF00 486E FD00 3F3C"            /* "�Q���Hn�.Hn�.?< */
	$"00A0 7000 1003 3F00 4EB9 0000 C746 584F"            /* .�p...?.N�..�FXO */
	$"486E FD00 486E FE00 486D F986 486D F986"            /* Hn�.Hn�.Hm��Hm�� */
	$"4EB9 0000 CC7E 486D F986 486E FF00 486D"            /* N�..�~Hm��Hn�.Hm */
	$"F986 486D F986 4EB9 0000 7640 554F 3F3C"            /* ��Hm��N�..v@UO?< */
	$"00A1 4EB9 0000 82CA 301F 3600 261F 4E5E"            /* .�N�..��0.6.&.N^ */
	$"205F 5C4F 4ED0 8C46 4149 4C55 5245 414C"            /*  _\ONЌFAILUREAL */
	$"4552 5400 0000 4E56 0000 554F 486D F988"            /* ERT...NV..UOHm�� */
	$"2F2E 0008 4EB9 0000 CA30 301F 4A40 6E1A"            /* /...N�..�00.J@n. */
	$"554F 486D F98A 2F2E 0008 4EB9 0000 CA30"            /* UOHm��/...N�..�0 */
	$"301F 4A40 6E04 7000 6002 7001 1D40 000C"            /* 0.J@n.p.`.p..@.. */
	$"4E5E 2E9F 4E75 8E4C 4F4F 4B53 4C49 4B45"            /* N^.�Nu�LOOKSLIKE */
	$"454D 4149 4C00 0000 4E56 FF00 206E 000C"            /* EMAIL...NV�. n.. */
	$"43EE FF00 703F 22D8 51C8 FFFC 206E 0008"            /* C��.p?"�Q��� n.. */
	$"4A68 FDFE 661A 4A2E 0012 6714 206E 0008"            /* Jh��f.J...g. n.. */
	$"4868 FDFE 1F2E 0010 486E FF00 4EBA FE5E"            /* Hh��....Hn�.N��^ */
	$"4E5E 205F 4FEF 000C 4ED0 8645 7272 6F72"            /* N^ _O�..NІError */
	$"3400 0000 4E56 FF00 206E 000C 43EE FF00"            /* 4...NV�. n..C��. */
	$"703F 22D8 51C8 FFFC 206E 0008 4A68 FDFE"            /* p?"�Q��� n..Jh�� */
	$"661C 4A2E 0012 6716 1F2E 0010 486E FF00"            /* f.J...g.....Hn�. */
	$"4EBA FEAA 206E 0008 317C FF80 FDFE 4E5E"            /* N��� n..1|����N^ */
	$"205F 4FEF 000C 4ED0 8846 6169 6C75 7265"            /*  _O�..NЈFailure */
	$"3500 0000 4E56 FDFC 48E7 1C00 426E FDFE"            /* 5...NV��H�..Bn�� */
	$"554F 4EBA F976 101F 1800 594F 4EBA F9F0"            /* UON��v....YON��� */
	$"201F 2A00 306D F286 BA88 5FC0 4400 1F00"            /*  .*.0m򆺈_�D... */
	$"1F3C 000F 486D F986 2F0E 4EBA FF78 486E"            /* .<..Hm��/.N��xHn */
	$"FE00 1F3C 0008 4EBA FD66 41EE FE00 2608"            /* �..<..N��fA��.&. */
	$"2043 7000 1010 5240 48C0 2043 43EE FF00"            /*  Cp...R@H� CC��. */
	$"A22E 7000 1004 2F00 486D F98C 4878 0001"            /* �.p.../.Hm��Hx.. */
	$"4EB9 0000 DCD0 101F 544F 6756 554F 486E"            /* N�..��..TOgVUOHn */
	$"FF00 486E FE00 2F3C 0003 00B4 4EB9 0000"            /* �.Hn�./<...�N�.. */
	$"C746 584F 486E FE00 4EB9 0000 E872 301F"            /* �FXOHn�.N�..�r0. */
	$"4A40 57C0 4400 1D40 FDFD 554F 486E FF00"            /* J@W�D..@��UOHn�. */
	$"486D F986 4267 4EB9 0000 DD64 101F 802E"            /* Hm��BgN�..�d..�. */
	$"FDFD 1F00 1F3C 000A 486D F986 2F0E 4EBA"            /* ��...<..Hm��/.N� */
	$"FEE4 486E FE00 1F3C 0006 4EBA FCD2 41EE"            /* ��Hn�..<..N���A� */
	$"FE00 2608 2043 7000 1010 5240 48C0 2043"            /* �.&. Cp...R@H� C */
	$"43EE FF00 A22E 486E FF00 486D F986 4267"            /* C��.�.Hn�.Hm��Bg */
	$"4EB9 0000 DD64 101F 4A00 544F 662C 554F"            /* N�..�d..J.TOf,UO */
	$"486E FF00 486E FE00 2F3C 0002 00B4 4EB9"            /* Hn�.Hn�./<...�N� */
	$"0000 C746 584F 486E FE00 4EB9 0000 E872"            /* ..�FXOHn�.N�..�r */
	$"301F 4A40 6704 7000 6002 7001 1600 554F"            /* 0.J@g.p.`.p...UO */
	$"7000 1004 2F00 486D F98D 4878 0001 4EB9"            /* p.../.Hm��Hx..N� */
	$"0000 DCD0 101F 6712 1F03 1F3C 000E 486E"            /* ..��..g....<..Hn */
	$"FF00 2F0E 4EBA FE4E 6010 1F03 1F3C 000C"            /* �./.N��N`....<.. */
	$"486E FF00 2F0E 4EBA FDF0 554F 486E FF00"            /* Hn�./.N���UOHn�. */
	$"4EBA FD94 101F 57C0 4400 1F00 1F3C 0001"            /* N���..W�D....<.. */
	$"486E FF00 2F0E 4EBA FDD0 486E FE00 1F3C"            /* Hn�./.N���Hn�..< */
	$"0005 4EBA FC0A 41EE FE00 2608 2043 7000"            /* ..N��.A��.&. Cp. */
	$"1010 5240 48C0 2043 43EE FF00 A22E 554F"            /* ..R@H� CC��.�.UO */
	$"486E FF00 486E FE00 2F3C 0001 00B4 4EB9"            /* Hn�.Hn�./<...�N� */
	$"0000 C746 584F 486E FE00 4EB9 0000 E872"            /* ..�FXOHn�.N�..�r */
	$"301F 4A40 57C0 4400 1D40 FDFD 554F 486E"            /* 0.J@W�D..@��UOHn */
	$"FF00 486D F986 4267 4EB9 0000 DD64 101F"            /* �.Hm��BgN�..�d.. */
	$"802E FDFD 1F00 1F3C 0008 486E FF00 2F0E"            /* �.��...<..Hn�./. */
	$"4EBA FD56 7064 BA80 5CC0 4400 1F00 1F3C"            /* N��Vpd��\�D....< */
	$"0002 486E FE00 4EBA FA46 584F 486E FE00"            /* ..Hn�.N��FXOHn�. */
	$"2F0E 4EBA FD34 7000 102D F285 584F 5340"            /* /.N��4p..-�XOS@ */
	$"0C40 0006 6200 01E2 5740 6D00 01DC 5740"            /* .@..b..�W@m..�W@ */
	$"6D04 6000 018A 486E FE00 1F3C 0020 4EBA"            /* m.`..�Hn�..<. N� */
	$"FB4E 41EE FE00 2608 2043 7000 1010 5240"            /* �NA��.&. Cp...R@ */
	$"48C0 2043 43EE FF00 A22E 554F 486E FF00"            /* H� CC��.�.UOHn�. */
	$"486D F986 4267 4EB9 0000 DD64 101F 1F00"            /* Hm��BgN�..�d.... */
	$"1F3C 0005 486D F986 2F0E 4EBA FD18 486E"            /* .<..Hm��/.N��.Hn */
	$"FE00 1F3C 0021 4EBA FB06 41EE FE00 2608"            /* �..<.!N��.A��.&. */
	$"2043 7000 1010 5240 48C0 2043 43EE FF00"            /*  Cp...R@H� CC��. */
	$"A22E 486E FF00 486D F98E 4EBA F478 554F"            /* �.Hn�.Hm��N��xUO */
	$"486E FF00 486D F9AE 4267 4EB9 0000 DD64"            /* Hn�.Hm��BgN�..�d */
	$"101F 1F00 1F3C 0006 486E FE00 1F3C 0021"            /* .....<..Hn�..<.! */
	$"4EBA FABC 584F 486E FE00 2F0E 4EBA FCB6"            /* N���XOHn�./.N��� */
	$"554F 486E FF00 1F2D F285 4EB9 0000 67A6"            /* UOHn�..-�N�..g� */
	$"101F 1F00 1F3C 0007 486E FE00 1F3C 0021"            /* .....<..Hn�..<.! */
	$"4EBA FA8C 584F 486E FE00 2F0E 4EBA FC3A"            /* N���XOHn�./.N��: */
	$"486E FE00 1F3C 0022 4EBA FA74 41EE FE00"            /* Hn�..<."N��tA��. */
	$"2608 2043 7000 1010 5240 48C0 2043 43EE"            /* &. Cp...R@H� CC� */
	$"FF00 A22E 486D F9C0 486E FF00 4EB9 0000"            /* �.�.Hm��Hn�.N�.. */
	$"CA30 301F 5740 4FEF 000A 6712 486D F9C2"            /* �00.W@O�..g.Hm�� */
	$"486E FF00 3F3C 0001 4EB9 0000 DFAC 554F"            /* Hn�.?<..N�..߬UO */
	$"486E FF00 4EB9 0000 68D0 101F 1F00 1F3C"            /* Hn�.N�..h�.....< */
	$"0003 486E FE00 1F3C 0022 4EBA FA12 584F"            /* ..Hn�..<."N��.XO */
	$"486E FE00 2F0E 4EBA FBC0 4A6E FDFE 661A"            /* Hn�./.N���Jn��f. */
	$"554F 486D F160 486D F060 4EB9 0000 63CA"            /* UOHm�`Hm�`N�..c� */
	$"101F 6606 3D7C FF80 FDFE 1F3C 0001 1F3C"            /* ..f.=|����.<...< */
	$"000D 486D F986 2F0E 4EBA FB8E 604A 486E"            /* ..Hm��/.N���`JHn */
	$"FE00 1F3C 0027 4EBA F9C6 41EE FE00 2608"            /* �..<.'N���A��.&. */
	$"2043 7000 1010 5240 48C0 2043 43EE FF00"            /*  Cp...R@H� CC��. */
	$"A22E 554F 486E FF00 486D F986 4267 4EB9"            /* �.UOHn�.Hm��BgN� */
	$"0000 DD64 101F 1F00 1F3C 0004 486E FF00"            /* ..�d.....<..Hn�. */
	$"2F0E 4EBA FB90 584F 3D6E FDFE 0008 4CDF"            /* /.N���XO=n��..L� */
	$"0038 4E5E 4E75 8856 414C 4944 4154 4500"            /* .8N^Nu�VALIDATE. */
	$"0000 4E56 FDFE 48E7 1F20 246E 0008 41ED"            /* ..NV��H�. $n..A� */
	$"F986 2808 2044 7000 1010 5240 48C0 2044"            /* ��(. Dp...R@H� D */
	$"43EE FF00 A22E 594F A975 201F 0280 0000"            /* C��.�.YO�u ..�.. */
	$"7FFF 7211 4EB9 0000 05E8 3A00 7E00 1E12"            /* .�r.N�...�:.~... */
	$"7601 6000 00D6 7000 1032 3000 0C40 0039"            /* v.`..�p..20..@.9 */
	$"5EC0 4400 7200 1232 3000 0C41 002A 5DC1"            /* ^�D.r..20..A.*]� */
	$"4401 8200 6706 15BC 002D 3000 7000 1032"            /* D.�.g..�.-0.p..2 */
	$"3000 0440 002A D045 48C0 7211 4EB9 0000"            /* 0..@.*�EH�r.N�.. */
	$"05E8 3C00 7061 D046 48C0 7200 1200 0041"            /* .�<.pa�FH�r....A */
	$"0100 3D41 FDFE 486E FDFE 486E FF00 486E"            /* ..=A��Hn��Hn�.Hn */
	$"FE00 3F3C 0002 4EB9 0000 DE7E 41EE FE00"            /* �.?<..N�..�~A��. */
	$"2808 2044 7000 1010 5240 48C0 2044 43EE"            /* (. Dp...R@H� DC� */
	$"FF00 A22E 7000 1012 B640 4FEF 000E 6732"            /* �.�.p...�@O�..g2 */
	$"486D F984 486E FF00 486E FE00 3F3C 0002"            /* Hm��Hn�.Hn�.?<.. */
	$"4EB9 0000 DE7E 41EE FE00 2808 2044 7000"            /* N�..�~A��.(. Dp. */
	$"1010 5240 48C0 2044 43EE FF00 A22E 4FEF"            /* ..R@H� DC��.�.O� */
	$"000E 700B D045 48C0 7211 4EB9 0000 05E8"            /* ..p.�EH�r.N�...� */
	$"3A00 0C43 7FFF 6708 5243 B647 6F00 FF28"            /* :..C.�g.RC�Go.�( */
	$"41EE FF00 2808 2044 7000 1010 5240 48C0"            /* A��.(. Dp...R@H� */
	$"2044 224A A22E 4CDF 04F8 4E5E 2E9F 4E75"            /*  D"J�.L�.�N^.�Nu */
	$"8853 4352 414D 424C 4500 0000 4E56 0000"            /* �SCRAMBLE...NV.. */
	$"48E7 1030 266E 0008 4A53 6668 594F 2F2D"            /* H�.0&n..JSfhYO/- */
	$"F9C4 3F2E 000C A9A0 205F 2448 554F A9AF"            /* ��?...�� _$HUO�� */
	$"301F 3680 4A53 6608 200A 6604 36BC FF40"            /* 0.6�JSf. .f.6��@ */
	$"4A53 6640 200A 673C 2F0A 205F A029 594F"            /* JSf@ .g</. _�)YO */
	$"2F2E 000E 42A7 4878 0000 42A7 2F12 594F"            /* /...B�Hx..B�/.YO */
	$"2F0A 4EB9 0000 E790 201F 2F00 A9E0 201F"            /* /.N�..� ./.�� . */
	$"2600 4A83 6C02 3683 2F0A 205F A049 2F0A"            /* &.J�l.6�/. _�I/. */
	$"205F A02A 4CDF 0C08 4E5E 205F 4FEF 000A"            /*  _�*L�..N^ _O�.. */
	$"4ED0 9350 5245 5045 4E44 5445 5854 5245"            /* NГPREPENDTEXTRE */
	$"534F 5552 4345 0000 4E56 0000 2F0A 246E"            /* SOURCE..NV../.$n */
	$"0008 2F0A 205F A029 2F12 594F 2F0A 4EB9"            /* ../. _�)/.YO/.N� */
	$"0000 E790 201F 3F00 301F 205F A256 2F0A"            /* ..� .?.0. _�V/. */
	$"205F A02A 245F 4E5E 2E9F 4E75 8B53 5452"            /*  _�*$_N^.�Nu�STR */
	$"4950 4841 4E44 4C45 0000 4E56 0000 206E"            /* IPHANDLE..NV.. n */
	$"0008 4A68 FAFE 660A 206E 0008 316E 000C"            /* ..Jh��f. n..1n.. */
	$"FAFE 4E5E 205F 5C4F 4ED0 8753 6574 4572"            /* ��N^ _\ONЇSetEr */
	$"7236 0000 4E56 FE00 2F03 206E 000C 43EE"            /* r6..NV�./. n..C� */
	$"FF00 703F 22D8 51C8 FFFC 486D F9C8 486E"            /* �.p?"�Q���Hm��Hn */
	$"FF00 486E FE00 3F3C 0002 4EB9 0000 DE7E"            /* �.Hn�.?<..N�..�~ */
	$"41EE FE00 2608 2043 7000 1010 5240 48C0"            /* A��.&. Cp...R@H� */
	$"2043 43EE FF00 A22E 554F 486E FF01 2F2E"            /*  CC��.�.UOHn�./. */
	$"0010 7000 102E FF00 48C0 2F00 201F 225F"            /* ..p...�.H�/. ."_ */
	$"205F A9EF 3E80 301F 3F00 2F2E 0008 4EBA"            /*  _��>�0.?./...N� */
	$"FF6A 4FEF 000E 261F 4E5E 205F 4FEF 000C"            /* �jO�..&.N^ _O�.. */
	$"4ED0 8B41 7070 656E 644C 696E 6537 0000"            /* NЋAppendLine7.. */
	$"4E56 0000 2F0A 206E 0008 4A68 FAFE 6670"            /* NV../. n..Jh��fp */
	$"594F 2F2D F9C4 3F2E 000C A9A0 205F 2448"            /* YO/-��?...�� _$H */
	$"554F A9AF 301F 206E 0008 3140 FAFE 206E"            /* UO��0. n..1@�� n */
	$"0008 4A68 FAFE 660E 200A 660A 206E 0008"            /* ..Jh��f. .f. n.. */
	$"317C FF40 FAFE 206E 0008 4A68 FAFE 6630"            /* 1|�@�� n..Jh��f0 */
	$"200A 672C 2F0A 205F A04A 554F 2F0A 206E"            /*  .g,/. _�JUO/. n */
	$"0008 2068 000C 2F10 225F 205F A9E4 3E80"            /* .. h../."_ _��>� */
	$"301F 206E 0008 3140 FAFE 2F0A 205F A049"            /* 0. n..1@��/. _�I */
	$"245F 4E5E 205F 5C4F 4ED0 9341 7070 656E"            /* $_N^ _\ONГAppen */
	$"6454 6578 7452 6573 6F75 7263 6538 0000"            /* dTextResource8.. */
	$"4E56 FD00 206E 0008 2068 000C 2F10 486E"            /* NV�. n.. h../.Hn */
	$"FE00 3F3C 00AA 7000 102D F285 3F00 4EB9"            /* �.?<.�p..-�?.N� */
	$"0000 C746 584F 486E FE00 486E FD00 1F3C"            /* ..�FXOHn�.Hn�..< */
	$"0001 4EBA F00A 584F 486E FD00 486E FF00"            /* ..N��.XOHn�.Hn�. */
	$"3F3C 0002 4EB9 0000 DE7E 4FEF 000E 486E"            /* ?<..N�..�~O�..Hn */
	$"FF00 2F2E 0008 4EBA FE7C 206E 0008 2068"            /* �./...N��| n.. h */
	$"0008 2F10 486E FE00 3F3C 00AB 7000 102D"            /* ../.Hn�.?<.�p..- */
	$"F285 3F00 4EB9 0000 C746 584F 486E FE00"            /* �?.N�..�FXOHn�. */
	$"486E FD00 1F3C 0001 4EBA F002 584F 486E"            /* Hn�..<..N��.XOHn */
	$"FD00 486E FF00 3F3C 0002 4EB9 0000 DE7E"            /* �.Hn�.?<..N�..�~ */
	$"4FEF 000E 486E FF00 2F2E 0008 4EBA FE26"            /* O�..Hn�./...N��& */
	$"4E5E 2E9F 4E75 8D41 7070 656E 644D 6574"            /* N^.�Nu�AppendMet */
	$"686F 6439 0000 4E56 FBF0 48E7 1F00 1E2E"            /* hod9..NV��H�.... */
	$"0016 2A2E 0012 2C2E 000E 382E 000C 4A85"            /* ..*...,...8...J� */
	$"6700 01A4 41ED F986 2608 2043 7000 1010"            /* g..�A���&. Cp... */
	$"5240 48C0 2043 43EE FF00 A22E 3044 2008"            /* R@H� CC��.�.0D . */
	$"5380 223C 0000 02F6 4EB9 0000 04DA 206D"            /* S�"<...�N�...� m */
	$"F298 D1C0 4A28 01E4 6726 486E FE00 1F3C"            /* ���J(.�g&Hn�..< */
	$"0010 4EBA EF1A 41EE FE00 2608 2043 7000"            /* ..N��.A��.&. Cp. */
	$"1010 5240 48C0 2043 43EE FF00 A22E 584F"            /* ..R@H� CC��.�.XO */
	$"486E FD00 486E FE00 1F07 4EBA EEF2 584F"            /* Hn�.Hn�...N���XO */
	$"486E FE00 486D F9CA 486E FBF0 2F05 4EBA"            /* Hn�.Hm��Hn��/.N� */
	$"EDC6 584F 486E FBF0 486E FCF0 2F06 4EB9"            /* ��XOHn��Hn��/.N� */
	$"0000 D6F2 584F 486E FCF0 3044 2008 5380"            /* ..��XOHn��0D .S� */
	$"223C 0000 02F6 4EB9 0000 04DA 206D F298"            /* "<...�N�...� m� */
	$"D1C0 4850 486E FF00 4EB9 0000 CBE4 206E"            /* ��HPHn�.N�..�� n */
	$"0008 2068 000C 2F10 486E FD00 2F2E 0008"            /* .. h../.Hn�./... */
	$"4EBA FD22 41ED F986 2608 2043 7000 1010"            /* N��"A���&. Cp... */
	$"5240 48C0 2043 43EE FF00 A22E 3044 2008"            /* R@H� CC��.�.0D . */
	$"5380 223C 0000 02F6 4EB9 0000 04DA 206D"            /* S�"<...�N�...� m */
	$"F298 D1C0 4A28 01E4 6726 486E FE00 1F3C"            /* ���J(.�g&Hn�..< */
	$"0010 4EBA EE98 41EE FE00 2608 2043 7000"            /* ..N��A��.&. Cp. */
	$"1010 5240 48C0 2043 43EE FF00 A22E 584F"            /* ..R@H� CC��.�.XO */
	$"486E FD00 486E FE00 1F07 4EBA EE70 584F"            /* Hn�.Hn�...N��pXO */
	$"486E FE00 486D F9CA 486E FBF0 2F05 4EBA"            /* Hn�.Hm��Hn��/.N� */
	$"ECF6 584F 486E FBF0 486E FCF0 2F06 4EB9"            /* ��XOHn��Hn��/.N� */
	$"0000 D6F2 584F 486E FCF0 3044 2008 5380"            /* ..��XOHn��0D .S� */
	$"223C 0000 02F6 4EB9 0000 04DA 206D F298"            /* "<...�N�...� m� */
	$"D1C0 4868 0080 486E FF00 4EB9 0000 CBE4"            /* ��Hh.�Hn�.N�..�� */
	$"206E 0008 2068 0008 2F10 486E FD00 2F2E"            /*  n.. h../.Hn�./. */
	$"0008 4EBA FC50 4CDF 00F8 4E5E 205F 4FEF"            /* ..N��PL�.�N^ _O� */
	$"0010 4ED0 9041 7070 656E 6450 7572 6368"            /* ..NАAppendPurch */
	$"6173 6531 3000 0000 4E56 FAEE 48E7 1820"            /* ase10...NV��H�.  */
	$"206E 000C 4290 206E 0008 4290 554F 4EBA"            /*  n..B� n..B�UON� */
	$"F584 301F 3D40 FAFE 4A6E FAFE 6600 0934"            /* ��0.=@��Jn��f..4 */
	$"594F 42A7 201F A122 2E88 205F 226E 0008"            /* YOB� .�".� _"n.. */
	$"2288 594F 42A7 201F A122 2E88 205F 226E"            /* "�YOB� .�".� _"n */
	$"000C 2288 7000 102D F285 0C40 0007 6200"            /* .."�p..-�.@..b. */
	$"03E8 D040 303B 0006 4EFB 0002 03DC 0010"            /* .��@0;..N�...�.. */
	$"0038 0060 0088 0088 0088 032A 3F3C 00C8"            /* .8.`.�.�.�.*?<.� */
	$"2F0E 4EBA FC3C 3F3C 012C 2F0E 4EBA FC32"            /* /.N��<?<.,/.N��2 */
	$"3F3C 0136 2F0E 4EBA FC28 2F0E 4EBA FCC2"            /* ?<.6/.N��(/.N��� */
	$"6000 03AC 3F3C 00C9 2F0E 4EBA FC14 3F3C"            /* `..�?<.�/.N��.?< */
	$"012C 2F0E 4EBA FC0A 3F3C 0136 2F0E 4EBA"            /* .,/.N��.?<.6/.N� */
	$"FC00 2F0E 4EBA FC9A 6000 0384 3F3C 00CB"            /* �./.N���`..�?<.� */
	$"2F0E 4EBA FBEC 3F3C 012C 2F0E 4EBA FBE2"            /* /.N���?<.,/.N��� */
	$"3F3C 0136 2F0E 4EBA FBD8 2F0E 4EBA FC72"            /* ?<.6/.N���/.N��r */
	$"6000 035C 3F3C 00CA 2F0E 4EBA FBC4 3F3C"            /* `..\?<.�/.N���?< */
	$"012C 2F0E 4EBA FBBA 3F3C 0136 2F0E 4EBA"            /* .,/.N���?<.6/.N� */
	$"FBB0 2F0E 4EBA FC4A 206E 000C 2F10 486E"            /* ��/.N��J n../.Hn */
	$"FE00 1F3C 0020 4EBA F226 584F 486E FE00"            /* �..<. N��&XOHn�. */
	$"486E FD00 1F3C 0002 4EBA EC64 584F 486E"            /* Hn�..<..N��dXOHn */
	$"FD00 486E FB00 3F3C 0002 4EB9 0000 DE7E"            /* �.Hn�.?<..N�..�~ */
	$"4FEF 000E 486E FB00 2F0E 4EBA FAD8 206E"            /* O�..Hn�./.N��� n */
	$"0008 2F10 486E FE00 1F3C 0020 4EBA F1E0"            /* ../.Hn�..<. N��� */
	$"584F 486E FE00 486E FD00 1F3C 0002 4EBA"            /* XOHn�.Hn�..<..N� */
	$"EC6C 584F 486E FD00 486E FB00 3F3C 0002"            /* �lXOHn�.Hn�.?<.. */
	$"4EB9 0000 DE7E 4FEF 000E 486E FB00 2F0E"            /* N�..�~O�..Hn�./. */
	$"4EBA FA92 486E FD00 1F3C 0021 4EBA F1A0"            /* N���Hn�..<.!N�� */
	$"41EE FD00 2608 2043 7000 1010 5240 48C0"            /* A��.&. Cp...R@H� */
	$"2043 43EE FF00 A22E 486E FF00 486D F98E"            /*  CC��.�.Hn�.Hm�� */
	$"4EBA EB12 486E FF00 486D F9CE 486E FF00"            /* N��.Hn�.Hm��Hn�. */
	$"486E FD00 1F3C 0022 4EBA F164 584F 486E"            /* Hn�..<."N��dXOHn */
	$"FD00 486D F986 4EB9 0000 CC7E 486E FF00"            /* �.Hm��N�..�~Hn�. */
	$"4EBA F7E0 206E 000C 2F10 486E FF00 486E"            /* N��� n../.Hn�.Hn */
	$"FD00 1F3C 0003 4EBA EB86 584F 486E FD00"            /* �..<..N��XOHn�. */
	$"486E FE00 3F3C 0002 4EB9 0000 DE7E 4FEF"            /* Hn�.?<..N�..�~O� */
	$"000E 486E FE00 2F0E 4EBA F9FA 486E FF00"            /* ..Hn�./.N���Hn�. */
	$"486D F9D6 4EBA EA9E 206E 0008 2F10 486E"            /* Hm��N�� n../.Hn */
	$"FF00 486E FD00 1F3C 0003 4EBA EB90 584F"            /* �.Hn�..<..N��XO */
	$"486E FD00 486E FE00 3F3C 0002 4EB9 0000"            /* Hn�.Hn�.?<..N�.. */
	$"DE7E 4FEF 000E 486E FE00 2F0E 4EBA F9B6"            /* �~O�..Hn�./.N��� */
	$"486D F160 486D F986 3F3C 0001 4EB9 0000"            /* Hm�`Hm��?<..N�.. */
	$"DD64 101F 544F 6770 206E 000C 2F10 486D"            /* �d..TOgp n../.Hm */
	$"F160 486E FD00 1F3C 0011 4EBA EAF2 584F"            /* �`Hn�..<..N���XO */
	$"486E FD00 486E FE00 3F3C 0002 4EB9 0000"            /* Hn�.Hn�.?<..N�.. */
	$"DE7E 4FEF 000E 486E FE00 2F0E 4EBA F966"            /* �~O�..Hn�./.N��f */
	$"206E 0008 2F10 486D F160 486E FD00 1F3C"            /*  n../.Hm�`Hn�..< */
	$"0011 4EBA EB08 584F 486E FD00 486E FE00"            /* ..N��.XOHn�.Hn�. */
	$"3F3C 0002 4EB9 0000 DE7E 4FEF 000E 486E"            /* ?<..N�..�~O�..Hn */
	$"FE00 2F0E 4EBA F92E 554F 486D F060 486D"            /* �./.N��.UOHm�`Hm */
	$"F986 3F3C 0001 4EB9 0000 DD64 101F 6700"            /* ��?<..N�..�d..g. */
	$"012E 206E 000C 2F10 486D F060 486E FD00"            /* .. n../.Hm�`Hn�. */
	$"1F3C 0012 4EBA EA68 584F 486E FD00 486E"            /* .<..N��hXOHn�.Hn */
	$"FE00 3F3C 0002 4EB9 0000 DE7E 4FEF 000E"            /* �.?<..N�..�~O�.. */
	$"486E FE00 2F0E 4EBA F8DC 206E 0008 2F10"            /* Hn�./.N��� n../. */
	$"486D F060 486E FD00 1F3C 0012 4EBA EA7E"            /* Hm�`Hn�..<..N��~ */
	$"584F 486E FD00 486E FE00 3F3C 0002 4EB9"            /* XOHn�.Hn�.?<..N� */
	$"0000 DE7E 4FEF 000E 486E FE00 2F0E 4EBA"            /* ..�~O�..Hn�./.N� */
	$"F8A4 6000 00BA 3F3C 00CA 2F0E 4EBA F922"            /* ��`..�?<.�/.N��" */
	$"3F3C 012C 2F0E 4EBA F918 3F3C 0136 2F0E"            /* ?<.,/.N��.?<.6/. */
	$"4EBA F90E 2F0E 4EBA F9A8 206E 000C 2F10"            /* N��./.N��� n../. */
	$"486E FE00 1F3C 0027 4EBA EF84 584F 486E"            /* Hn�..<.'N��XOHn */
	$"FE00 486E FD00 1F3C 0004 4EBA E9C2 584F"            /* �.Hn�..<..N���XO */
	$"486E FD00 486E FB00 3F3C 0002 4EB9 0000"            /* Hn�.Hn�.?<..N�.. */
	$"DE7E 4FEF 000E 486E FB00 2F0E 4EBA F836"            /* �~O�..Hn�./.N��6 */
	$"206E 0008 2F10 486E FE00 1F3C 0027 4EBA"            /*  n../.Hn�..<.'N� */
	$"EF3E 584F 486E FE00 486E FD00 1F3C 0004"            /* �>XOHn�.Hn�..<.. */
	$"4EBA E9CA 584F 486E FD00 486E FB00 3F3C"            /* N���XOHn�.Hn�.?< */
	$"0002 4EB9 0000 DE7E 4FEF 000E 486E FB00"            /* ..N�..�~O�..Hn�. */
	$"2F0E 4EBA F7F0 6006 486D F9F6 ABFF 206E"            /* /.N���`.Hm���� n */
	$"000C 2F10 486E FAEE 2F2D F270 4EB9 0000"            /* ../.Hn��/-�pN�.. */
	$"D6F2 584F 486E FAEE 486E FD00 1F3C 000F"            /* ��XOHn��Hn�..<.. */
	$"4EBA E92C 584F 486E FD00 486E FE00 3F3C"            /* N��,XOHn�.Hn�.?< */
	$"0002 4EB9 0000 DE7E 4FEF 000E 486E FE00"            /* ..N�..�~O�..Hn�. */
	$"2F0E 4EBA F7A0 206E 0008 2F10 486E FAEE"            /* /.N��� n../.Hn�� */
	$"2F2D F270 4EB9 0000 D6F2 584F 486E FAEE"            /* /-�pN�..��XOHn�� */
	$"486E FD00 1F3C 000F 4EBA E932 584F 486E"            /* Hn�..<..N��2XOHn */
	$"FD00 486E FE00 3F3C 0002 4EB9 0000 DE7E"            /* �.Hn�.?<..N�..�~ */
	$"4FEF 000E 486E FE00 2F0E 4EBA F758 206E"            /* O�..Hn�./.N��X n */
	$"000C 2F10 486E FE00 1F3C 0005 4EBA EE60"            /* ../.Hn�..<..N��` */
	$"584F 486E FE00 486E FD00 1F3C 0005 4EBA"            /* XOHn�.Hn�..<..N� */
	$"E89E 584F 486E FD00 486E FB00 3F3C 0002"            /* �XOHn�.Hn�.?<.. */
	$"4EB9 0000 DE7E 4FEF 000E 486E FB00 2F0E"            /* N�..�~O�..Hn�./. */
	$"4EBA F712 206E 0008 2F10 486E FE00 1F3C"            /* N��. n../.Hn�..< */
	$"0005 4EBA EE1A 584F 486E FE00 486E FD00"            /* ..N��.XOHn�.Hn�. */
	$"1F3C 0005 4EBA E8A6 584F 486E FD00 486E"            /* .<..N��XOHn�.Hn */
	$"FB00 3F3C 0002 4EB9 0000 DE7E 4FEF 000E"            /* �.?<..N�..�~O�.. */
	$"486E FB00 2F0E 4EBA F6CC 206E 000C 2F10"            /* Hn�./.N��� n../. */
	$"486E FE00 1F3C 0006 4EBA EDD4 584F 486E"            /* Hn�..<..N���XOHn */
	$"FE00 486E FD00 1F3C 0006 4EBA E812 584F"            /* �.Hn�..<..N��.XO */
	$"486E FD00 486E FB00 3F3C 0002 4EB9 0000"            /* Hn�.Hn�.?<..N�.. */
	$"DE7E 4FEF 000E 486E FB00 2F0E 4EBA F686"            /* �~O�..Hn�./.N��� */
	$"206E 0008 2F10 486E FE00 1F3C 0006 4EBA"            /*  n../.Hn�..<..N� */
	$"ED8E 584F 486E FE00 486E FD00 1F3C 0006"            /* �XOHn�.Hn�..<.. */
	$"4EBA E81A 584F 486E FD00 486E FB00 3F3C"            /* N��.XOHn�.Hn�.?< */
	$"0002 4EB9 0000 DE7E 4FEF 000E 486E FB00"            /* ..N�..�~O�..Hn�. */
	$"2F0E 4EBA F640 486E FD00 1F3C 0008 4EBA"            /* /.N��@Hn�..<..N� */
	$"ED4E 41EE FD00 2608 2043 7000 1010 5240"            /* �NA��.&. Cp...R@ */
	$"48C0 2043 43EE FF00 A22E 584F 6000 00A0"            /* H� CC��.�.XO`..� */
	$"486E FF00 3F3C 000D 486E FC00 486E FF00"            /* Hn�.?<..Hn�.Hn�. */
	$"4EB9 0000 CD24 554F 486E FC00 486D F986"            /* N�..�$UOHn�.Hm�� */
	$"3F3C 0001 4EB9 0000 DD64 101F 6770 206E"            /* ?<..N�..�d..gp n */
	$"000C 2F10 486E FC00 486E FD00 1F3C 0007"            /* ../.Hn�.Hn�..<.. */
	$"4EBA E73C 584F 486E FD00 486E FE00 3F3C"            /* N��<XOHn�.Hn�.?< */
	$"0002 4EB9 0000 DE7E 4FEF 000E 486E FE00"            /* ..N�..�~O�..Hn�. */
	$"2F0E 4EBA F5B0 206E 0008 2F10 486E FC00"            /* /.N��� n../.Hn�. */
	$"486E FD00 1F3C 0007 4EBA E752 584F 486E"            /* Hn�..<..N��RXOHn */
	$"FD00 486E FE00 3F3C 0002 4EB9 0000 DE7E"            /* �.Hn�.?<..N�..�~ */
	$"4FEF 000E 486E FE00 2F0E 4EBA F578 554F"            /* O�..Hn�./.N��xUO */
	$"486E FF00 486D F986 3F3C 0001 4EB9 0000"            /* Hn�.Hm��?<..N�.. */
	$"DD64 101F 6600 FF4A 382D F296 7601 6000"            /* �d..f.�J8-�v.`. */
	$"0140 3043 2008 5380 223C 0000 02F6 4EB9"            /* .@0C .S�"<...�N� */
	$"0000 04DA 206D F298 D1C0 2448 1F3C 0008"            /* ...� m���$H.<.. */
	$"594F 3F03 4EBA E044 201F 222A 01D4 4EB9"            /* YO?.N��D ."*.�N� */
	$"0000 04DA 2F00 2F2A 01D4 3F03 2F0E 4EBA"            /* ...�/./*.�?./.N� */
	$"F706 1F3C 0009 594F 3F03 4EBA E0C2 201F"            /* �..<..YO?.N��� . */
	$"222A 01D8 4EB9 0000 04DA 2F00 2F2A 01D8"            /* "*.�N�...�/./*.� */
	$"3F03 2F0E 4EBA F6E0 1F3C 000A 594F 3F03"            /* ?./.N���.<..YO?. */
	$"4EBA E0F6 201F 222A 01DC 4EB9 0000 04DA"            /* N��� ."*.�N�...� */
	$"2F00 2F2A 01DC 3F03 2F0E 4EBA F6BA 1F3C"            /* /./*.�?./.N���.< */
	$"000B 2F2A 01E0 42A7 3F03 2F0E 4EBA F6A8"            /* ../*.�B�?./.N��� */
	$"554F 486A 00D0 486D F986 3F3C 0001 4EB9"            /* UOHj.�Hm��?<..N� */
	$"0000 DD64 101F 6700 0080 486E FF00 486E"            /* ..�d..g..�Hn�.Hn */
	$"FD00 1F3C 000C 4EBA E5F6 584F 486E FD00"            /* �..<..N���XOHn�. */
	$"486A 00D0 486D F986 486D F986 2F0A 486D"            /* Hj.�Hm��Hm��/.Hm */
	$"F986 4EB9 0000 CBE4 206E 000C 2F10 486E"            /* ��N�..�� n../.Hn */
	$"FF00 2F0E 4EBA F45E 486E FF00 486E FD00"            /* �./.N��^Hn�.Hn�. */
	$"1F3C 000C 4EBA E606 584F 486E FD00 486A"            /* .<..N��.XOHn�.Hj */
	$"00D0 486D F986 486D F986 486A 0080 486D"            /* .�Hm��Hm��Hj.�Hm */
	$"F986 4EB9 0000 CBE4 206E 0008 2F10 486E"            /* ��N�..�� n../.Hn */
	$"FF00 2F0E 4EBA F41E 0C43 7FFF 6708 5243"            /* �./.N��..C.�g.RC */
	$"B644 6F00 FEBE 4A6D F286 6700 00A2 486E"            /* �Do.��Jm�g..�Hn */
	$"FF00 486E FD00 1F3C 000D 4EBA E562 584F"            /* �.Hn�..<..N��bXO */
	$"486E FD00 486D F9CA 486E FE00 306D F286"            /* Hn�.Hm��Hn�.0m� */
	$"2F08 4EBA E432 584F 486E FE00 486D F986"            /* /.N��2XOHn�.Hm�� */
	$"486D F986 486D F986 4EB9 0000 CBE4 206E"            /* Hm��Hm��N�..�� n */
	$"000C 2F10 486E FF00 2F0E 4EBA F3B8 486E"            /* ../.Hn�./.N��Hn */
	$"FF00 486E FD00 1F3C 000D 4EBA E560 584F"            /* �.Hn�..<..N��`XO */
	$"486E FD00 486D F9CA 486E FE00 306D F286"            /* Hn�.Hm��Hn�.0m� */
	$"2F08 4EBA E3E2 584F 486E FE00 486D F986"            /* /.N���XOHn�.Hm�� */
	$"486D F986 486D F986 4EB9 0000 CBE4 206E"            /* Hm��Hm��N�..�� n */
	$"0008 2F10 486E FF00 2F0E 4EBA F368 486E"            /* ../.Hn�./.N��hHn */
	$"FF00 486E FD00 1F3C 000E 4EBA E4C2 584F"            /* �.Hn�..<..N���XO */
	$"486E FD00 486E FE00 4EBA E924 584F 486E"            /* Hn�.Hn�.N��$XOHn */
	$"FE00 486D F986 486D F986 486D F986 486D"            /* �.Hm��Hm��Hm��Hm */
	$"F986 4EB9 0000 CBE4 206E 000C 2F10 486E"            /* ��N�..�� n../.Hn */
	$"FF00 2F0E 4EBA F31E 486E FF00 486E FD00"            /* �./.N��.Hn�.Hn�. */
	$"1F3C 000E 4EBA E4C6 584F 486E FD00 486E"            /* .<..N���XOHn�.Hn */
	$"FE00 4EBA E8DA 584F 486E FE00 486D F986"            /* �.N���XOHn�.Hm�� */
	$"486D F986 486D F986 486D F986 4EB9 0000"            /* Hm��Hm��Hm��N�.. */
	$"CBE4 206E 0008 2F10 486E FF00 2F0E 4EBA"            /* �� n../.Hn�./.N� */
	$"F2D4 4A6E FAFE 6714 206E 000C 2F10 205F"            /* ��Jn��g. n../. _ */
	$"A023 206E 0008 2F10 205F A023 3D6E FAFE"            /* �# n../. _�#=n�� */
	$"0010 4CDF 0418 4E5E 205F 504F 4ED0 8747"            /* ..L�..N^ _PONЇG */
	$"4554 4441 5441 0000 4E56 FD00 2F03 162E"            /* ETDATA..NV�./... */
	$"000C 206E 000E 43EE FF00 703F 22D8 51C8"            /* .. n..C��.p?"�Q� */
	$"FFFC 4A2E 0012 6626 554F 486E FD00 486E"            /* ��J...f&UOHn�.Hn */
	$"FF00 4EB9 0000 C334 584F 486E FD00 486D"            /* �.N�..�4XOHn�.Hm */
	$"F986 4267 4EB9 0000 DD64 101F 6728 2F2D"            /* ��BgN�..�d..g(/- */
	$"F29C 7000 1003 3F00 486E FE00 4EB9 0000"            /* �p...?.Hn�.N�.. */
	$"ADB2 554F 486E FF00 486E FE00 4EB9 0000"            /* ��UOHn�.Hn�.N�.. */
	$"C388 301F 3600 261F 4E5E 205F 4FEF 000C"            /* È0.6.&.N^ _O�.. */
	$"4ED0 9253 6574 4465 6661 756C 7453 7472"            /* NВSetDefaultStr */
	$"696E 6731 3100 0000 4E56 FFFE 554F 1F3C"            /* ing11...NV��UO.< */
	$"0002 4EB9 0000 C3F6 301F 3D40 FFFE 4227"            /* ..N�..��0.=@��B' */
	$"486D FA06 1F3C 0005 2F0E 4EBA FF4C 4227"            /* Hm�..<../.N��LB' */
	$"486D FA10 1F3C 0006 2F0E 4EBA FF3C 1F3C"            /* Hm�..<../.N��<.< */
	$"0001 486D FA16 1F3C 0008 2F0E 4EBA FF2A"            /* ..Hm�..<../.N��* */
	$"554F 4EB9 0000 C42E 301F 3D40 FFFE 4E5E"            /* UON�..�.0.=@��N^ */
	$"4E75 8953 4156 4550 5245 4653 0000 4E56"            /* Nu�SAVEPREFS..NV */
	$"FDF0 2F03 362E 000A 4A43 675E 0C43 FF80"            /* ��/.6...JCg^.C�� */
	$"6758 486E FF00 486E FDF0 1F2E 0008 4EBA"            /* gXHn�.Hn��....N� */
	$"E16A 584F 486E FDF0 486E FEF0 3043 2F08"            /* �jXOHn��Hn��0C/. */
	$"4EB9 0000 D6F2 584F 486E FEF0 486D F986"            /* N�..��XOHn��Hm�� */
	$"486D F986 4EB9 0000 CC7E 486D F986 486E"            /* Hm��N�..�~Hm��Hn */
	$"FF00 486D F986 486D F986 4EB9 0000 7640"            /* �.Hm��Hm��N�..v@ */
	$"3F3C 0096 4EB9 0000 830A 261F 4E5E 2E9F"            /* ?<.�N�..�.&.N^.� */
	$"4E75 8C44 4953 504C 4159 4552 524F 5200"            /* Nu�DISPLAYERROR. */
	$"0000 4E56 FE0E 48E7 1C20 2A2E 0010 246E"            /* ..NV�.H�. *...$n */
	$"0008 206E 000C 43EE FE0E 700F 22D8 51C8"            /* .. n..C��.p."�Q� */
	$"FFFC 78FF 7001 BA80 6700 0082 7800 41EE"            /* ��x�p.��g..�x.A� */
	$"FE0E 2608 2043 7000 1010 5240 48C0 2043"            /* �.&. Cp...R@H� C */
	$"224A A22E 3D6E 0014 FFBA 2D45 FFBC 6050"            /* "J�.=n..��-E��`P */
	$"554F 486E FFBA 3F3C FFFF 486E FE4E 4EB9"            /* UOHn��?<��Hn�NN� */
	$"0000 C59A 301F 3800 2F0A 486D FA28 486E"            /* ..Ś0.8./.Hm�(Hn */
	$"FFC0 486E FEBA 3F3C 0003 4EB9 0000 DE7E"            /* ��Hn��?<..N�..�~ */
	$"41EE FEBA 2608 2043 7000 1010 5240 48C0"            /* A���&. Cp...R@H� */
	$"2043 224A A22E 2D6E FEB2 FFBC 4FEF 0012"            /*  C"J�.-n����O�.. */
	$"4A44 6608 7001 B0AE FFBC 66A4 3D44 0016"            /* JDf.p.����f�=D.. */
	$"4CDF 0438 4E5E 205F 4FEF 000E 4ED0 9648"            /* L�.8N^ _O�..NЖH */
	$"4143 4B53 5953 5445 4D36 4745 5446 554C"            /* ACKSYSTEM6GETFUL */
	$"4C50 4154 4800 0000 4E56 FEC0 48E7 1C00"            /* LPATH...NV��H�.. */
	$"3A2E 0010 282E 000C 206E 0008 43EE FFC0"            /* :...(... n..C��� */
	$"700F 22D8 51C8 FFFC 4A2D F86F 670C 3F05"            /* p."�Q���J-�og.?. */
	$"2F04 486E FFC0 A81B 6020 554F 3F05 2F04"            /* /.Hn���.` UO?./. */
	$"486E FFC0 486E FEC0 4EBA FEE8 301F 3600"            /* Hn��Hn��N���0.6. */
	$"4A43 6606 486E FEC0 A9B1 4CDF 0038 4E5E"            /* JCf.Hn����L�.8N^ */
	$"205F 4FEF 000A 4ED0 9848 4143 4B53 5953"            /*  _O�..NИHACKSYS */
	$"5445 4D36 4352 4541 5445 5245 5346 494C"            /* TEM6CREATERESFIL */
	$"4500 0000 4E56 FEC0 48E7 1C20 3A2E 0016"            /* E...NV��H�. :... */
	$"282E 0012 246E 0008 206E 000E 43EE FFC0"            /* (...$n.. n..C��� */
	$"700F 22D8 51C8 FFFC 4A2D F86F 671E 554F"            /* p."�Q���J-�og.UO */
	$"3F05 2F04 486E FFC0 1F2E 000C A81A 301F"            /* ?./.Hn��....�.0. */
	$"3480 554F A9AF 301F 3600 6030 76FF 554F"            /* 4�UO��0.6.`0v�UO */
	$"3F05 2F04 486E FFC0 486E FEC0 4EBA FE54"            /* ?./.Hn��Hn��N��T */
	$"301F 3600 4A43 6614 554F 486E FEC0 A997"            /* 0.6.JCf.UOHn���� */
	$"301F 3480 554F A9AF 301F 3600 4A43 6704"            /* 0.4�UO��0.6.JCg. */
	$"34BC FFFF 4A43 6608 0C52 FFFF 6602 76FE"            /* 4���JCf..R��f.v� */
	$"3D43 0018 4CDF 0438 4E5E 205F 4FEF 0010"            /* =C..L�.8N^ _O�.. */
	$"4ED0 9648 4143 4B53 5953 5445 4D36 4F50"            /* NЖHACKSYSTEM6OP */
	$"454E 5245 5346 494C 4500 0000 4E56 FCA4"            /* ENRESFILE...NV�� */
	$"48E7 1E20 95CA 554F 486E FDAE 486E FDA4"            /* H�. ��UOHn��Hn�� */
	$"4EBA F2D6 301F 3D40 FFB2 4A6E FFB2 6600"            /* N���0.=@��Jn��f. */
	$"030A 554F 7000 102D F285 2F00 486D FA2B"            /* ..UOp..-�/.Hm�+ */
	$"4878 0001 4EB9 0000 DCD0 101F 6704 7C01"            /* Hx..N�..��..g.|. */
	$"601A 554F 3F3C 00AA 4EB9 0000 82CA 301F"            /* `.UO?<.�N�..��0. */
	$"3600 0C43 0001 56C0 4400 1C00 4A06 6722"            /* 6..C..V�D...J.g" */
	$"2F2E FDAE 3F3C 0141 486E FFB2 4EBA ED9E"            /* /.��?<.AHn��N�� */
	$"594F 2F2E FDA4 4EB9 0000 741A 205F 2448"            /* YO/.��N�..t. _$H */
	$"6018 2F2E FDAE 3F3C 0140 486E FFB2 4EBA"            /* `./.��?<.@Hn��N� */
	$"ED7C 2F2E FDAE 4EBA EE10 4A6E FFB2 6600"            /* �|/.��N��.Jn��f. */
	$"0274 486E FEB2 1F3C 0005 4EBA DE4E 584F"            /* .tHn��.<..N��NXO */
	$"486E FEB2 486E FCA4 1F3C 0006 4EBA DE3C"            /* Hn��Hn��.<..N��< */
	$"584F 486E FCA4 486E FFB4 4EB9 0000 9A9E"            /* XOHn��Hn��N�..�� */
	$"4A2E FFB4 6700 023E 554F 3F2E FFBA 2F2E"            /* J.��g..>UO?.��/. */
	$"FFBC 486E FFC0 4EB9 0000 EB20 301F 3D40"            /* ��Hn��N�..� 0.=@ */
	$"FFB2 4A06 674A 554F 3F2E FFBA 2F2E FFBC"            /* ��J.gJUO?.��/.�� */
	$"486E FFC0 2F2D FA2C 2F2D FA30 4EB9 0000"            /* Hn��/-�,/-�0N�.. */
	$"EABA 301F 3D40 FFB2 4A2D F86F 6710 3F2E"            /* �0.=@��J-�og.?. */
	$"FFBA 2F2E FFBC 486E FFC0 A81B 6034 3F2E"            /* ��/.��Hn���.`4?. */
	$"FFBA 2F2E FFBC 486E FFC0 4EBA FD8C 6022"            /* ��/.��Hn��N���`" */
	$"554F 3F2E FFBA 2F2E FFBC 486E FFC0 2F2D"            /* UO?.��/.��Hn��/- */
	$"FA2C 2F2D F9C4 4EB9 0000 EABA 301F 3D40"            /* �,/-��N�..�0.=@ */
	$"FFB2 554F 3F2E FFBA 2F2E FFBC 486E FFC0"            /* ��UO?.��/.��Hn�� */
	$"1F3C 0003 486E FDAC 4EB9 0000 EA26 301F"            /* .<..Hn��N�..�&0. */
	$"3D40 FFB2 4A6E FFB2 6600 0120 2F2E FDAE"            /* =@��Jn��f.. /.�� */
	$"205F A029 594F 2F2E FDAE 4EB9 0000 E790"            /*  _�)YO/.��N�..� */
	$"201F 2D40 FDA8 554F 3F2E FDAC 486E FDA8"            /*  .-@��UO?.��Hn�� */
	$"206E FDAE 2F10 4EB9 0000 E7FA 301F 3D40"            /*  n��/.N�..��0.=@ */
	$"FFB2 4A6E FFB2 6600 00C8 4A06 6700 00C2"            /* ��Jn��f..�J.g..� */
	$"486D F9C8 486D FA34 486D F9C8 486D F9C8"            /* Hm��Hm�4Hm��Hm�� */
	$"486E FEB2 3F3C 0004 4EB9 0000 DE7E 41EE"            /* Hn��?<..N�..�~A� */
	$"FEB2 2608 2043 7000 1010 5240 48C0 2043"            /* ��&. Cp...R@H� C */
	$"43EE FDB2 A22E 2052 2252 3029 0006 9068"            /* C����. R"R0)..�h */
	$"0002 48C0 2A00 E685 E08D E08D E08D E88D"            /* ..H�*.�������� */
	$"DA80 E885 7801 4FEF 0016 603A 486D F9C8"            /* ڀ�x.O�..`:Hm�� */
	$"486E FDB2 486E FEB2 3F3C 0002 4EB9 0000"            /* Hn��Hn��?<..N�.. */
	$"DE7E 41EE FEB2 2608 2043 7000 1010 5240"            /* �~A���&. Cp...R@ */
	$"48C0 2043 43EE FDB2 A22E 0C44 7FFF 4FEF"            /* H� CC����..D.�O� */
	$"000E 6706 5244 B845 6FC2 7000 102E FDB2"            /* ..g.RD�Eo�p...�� */
	$"48C0 2D40 FDA8 554F 3F2E FDAC 486E FDA8"            /* H�-@��UO?.��Hn�� */
	$"486E FDB3 4EB9 0000 E7FA 301F 3D40 FFB2"            /* Hn��N�..��0.=@�� */
	$"554F 3F2E FDAC 4EB9 0000 E7DC 301F 3600"            /* UO?.��N�..��0.6. */
	$"4A6E FFB2 6604 3D43 FFB2 4A6E FFB2 6646"            /* Jn��f.=C��Jn��fF */
	$"4A06 6742 554F 3F2E FFBA 2F2E FFBC 486E"            /* J.gBUO?.��/.��Hn */
	$"FFC0 1F3C 0003 486E FDAC 4EBA FC78 301F"            /* ��.<..Hn��N��x0. */
	$"3D40 FFB2 4A6E FFB2 661C 2F0A 2F2D FA36"            /* =@��Jn��f././-�6 */
	$"3F3C 03E8 486D F986 A9AB 2F0A A9B0 3F2E"            /* ?<.�Hm����/.��?. */
	$"FDAC A99A 95CA 4A6E FFB2 6718 554F 3F2E"            /* ������Jn��g.UO?. */
	$"FFBA 2F2E FFBC 486E FFC0 4EB9 0000 EB20"            /* ��/.��Hn��N�..�  */
	$"301F 3600 2F2E FDAE 205F A023 2F2E FDA4"            /* 0.6./.�� _�#/.�� */
	$"205F A023 2F0A 205F A023 4A6E FFB2 6606"            /*  _�#/. _�#Jn��f. */
	$"1B7C 0001 F261 3F2E FFB2 1F3C 0007 4EBA"            /* .|..�a?.��.<..N� */
	$"FA2E 4CDF 0478 4E5E 4E75 8844 4F53 4156"            /* �.L�.xN^Nu�DOSAV */
	$"4541 5300 0000 4E56 FFF2 554F 486E FFFA"            /* EAS...NV��UOHn�� */
	$"486E FFF6 4EBA EF82 301F 3D40 FFFE 4A6E"            /* Hn��N��0.=@��Jn */
	$"FFFE 6600 00D8 554F 7000 102D F285 2F00"            /* ��f..�UOp..-�/. */
	$"486D FA2B 4878 0001 4EB9 0000 DCD0 101F"            /* Hm�+Hx..N�..��.. */
	$"6712 486E FFFE 1F3C 000B 486D F986 4EBA"            /* g.Hn��.<..Hm��N� */
	$"E2DC 6010 486E FFFE 1F3C 0009 486D F986"            /* ��`.Hn��.<..Hm�� */
	$"4EBA E2CA 4A6E FFFE 6646 554F 7000 102D"            /* N���Jn��fFUOp..- */
	$"F285 2F00 486D FA2B 4878 0001 4EB9 0000"            /* �/.Hm�+Hx..N�.. */
	$"DCD0 101F 6712 2F2E FFFA 3F3C 0142 486E"            /* ��..g./.��?<.BHn */
	$"FFFE 4EBA EA28 6010 2F2E FFFA 3F3C 0140"            /* ��N��(`./.��?<.@ */
	$"486E FFFE 4EBA EA16 2F2E FFFA 4EBA EAAA"            /* Hn��N��./.��N�� */
	$"4A6E FFFE 6636 594F A9FC 201F 2D40 FFF2"            /* Jn��f6YO�� .-@�� */
	$"2F2E FFFA 205F A029 594F 594F 2F2E FFFA"            /* /.�� _�)YOYO/.�� */
	$"4EB9 0000 E790 201F 2F00 2F2D F9C4 206E"            /* N�..� ././-�� n */
	$"FFFA 2F10 A9FE 201F 2D40 FFF2 2F2E FFFA"            /* ��/.�� .-@��/.�� */
	$"205F A023 2F2E FFF6 205F A023 4A6E FFFE"            /*  _�#/.�� _�#Jn�� */
	$"6606 1B7C 0001 F261 3F2E FFFE 1F3C 0009"            /* f..|..�a?.��.<.. */
	$"4EBA F90C 4E5E 4E75 8644 4F43 4F50 5900"            /* N��.N^Nu�DOCOPY. */
	$"0000 4E56 FFF8 2F03 554F 486E FFF8 486E"            /* ..NV��/.UOHn��Hn */
	$"FFFC 4EBA EE64 301F 3600 4A43 6624 554F"            /* ��N��d0.6.JCf$UO */
	$"2F2E FFF8 2F2E FFFC 4EB9 0000 74BC 301F"            /* /.��/.��N�..t�0. */
	$"3600 2F2E FFF8 205F A023 2F2E FFFC 205F"            /* 6./.�� _�#/.�� _ */
	$"A023 4A43 6606 1B7C 0001 F261 3F03 1F3C"            /* �#JCf..|..�a?..< */
	$"0008 4EBA F8AA 261F 4E5E 4E75 8744 4F50"            /* ..N���&.N^Nu�DOP */
	$"5249 4E54 0000 4E56 FEF8 48E7 1E20 246E"            /* RINT..NV��H�. $n */
	$"0016 362E 0014 3C2E 0012 3A2E 0010 382E"            /* ..6...<...:...8. */
	$"000E 206E 000A 43EE FF00 703F 22D8 51C8"            /* .. n..C��.p?"�Q� */
	$"FFFC 4A2E 0008 6710 554F 486E FF00 A88C"            /* ��J...g.UOHn�.�� */
	$"301F 3203 9240 3601 3F03 3006 D052 3F00"            /* 0.2.�@6.?.0.�R?. */
	$"A893 0C45 8000 6604 3A03 5345 0C44 8000"            /* ��.E�.f.:.SE.D�. */
	$"6610 554F 486E FF00 A88C 301F D043 5240"            /* f.UOHn�.��0.�CR@ */
	$"3800 486E FEF8 3F05 3006 5340 3F00 3F04"            /* 8.Hn��?.0.S@?.?. */
	$"3006 D052 D06A 0002 5240 3F00 A8A7 486E"            /* 0.�R�j..R@?.��Hn */
	$"FEF8 A8A3 486E FF00 A884 4CDF 0478 4E5E"            /* ����Hn�.��L�.xN^ */
	$"205F 4FEF 0012 4ED0 8644 5241 5741 5400"            /*  _O�..NІDRAWAT. */
	$"0000 4E56 0000 7000 102E 000C 206E 0008"            /* ..NV..p..... n.. */
	$"7200 1228 FD9F D240 3D41 000E 4E5E 205F"            /* r..(���@=A..N^ _ */
	$"5C4F 4ED0 8849 7465 6D4E 6F31 3200 0000"            /* \ONЈItemNo12... */
	$"4E56 FEE0 206E 000C 43EE FEE0 7007 22D8"            /* NV�� n..C���p."� */
	$"51C8 FFFC 4AAE 0010 6622 2F2D F29C 554F"            /* Q���J�..f"/-�UO */
	$"1F2E 0014 2F2E 0008 4EBA FFA8 301F 3F00"            /* ..../...N���0.?. */
	$"486E FEE0 4EB9 0000 AD44 602E 2F2E 0010"            /* Hn��N�..�D`./... */
	$"486E FF00 4EB9 0000 E8AE 2F2D F29C 554F"            /* Hn�.N�..�/-�UO */
	$"1F2E 0014 2F2E 0008 4EBA FF78 301F 3F00"            /* ..../...N��x0.?. */
	$"486E FF00 4EB9 0000 AD44 4E5E 205F 4FEF"            /* Hn�.N�..�DN^ _O� */
	$"000E 4ED0 8853 6574 4E75 6D31 3300 0000"            /* ..NЈSetNum13... */
	$"4E56 FD9C 48E7 1F20 3A2E 000A 2F2D F29C"            /* NV��H�. :.../-� */
	$"1F3C 0001 4267 486E FDA0 4EB9 0000 B626"            /* .<..BgHn��N�..�& */
	$"486E FEF0 A88B 554F 3005 5340 3F00 4EBA"            /* Hn��UO0.S@?.N� */
	$"D9D8 101F 1D40 FD9F 2F2D F29C 3F3C 001C"            /* ��...@��/-�?<.. */
	$"486E FEF8 4EB9 0000 B062 302E FEFC 906E"            /* Hn��N�..�b0.���n */
	$"FEF8 48C0 7203 4EB9 0000 056A 3600 3005"            /* ��H�r.N�...j6.0. */
	$"5340 C1C3 D06E FEF8 3D40 FEF8 302E FEF8"            /* S@���n��=@��0.�� */
	$"D043 5240 3D40 FEFC 486E FEF8 A8A1 486E"            /* �CR@=@��Hn����Hn */
	$"FEF8 2F3C 0001 0001 A8A9 554F 2F2D F28C"            /* ��/<....��UO/-� */
	$"A960 301F D045 5340 3800 4A44 6F00 058A"            /* �`0.�ES@8.JDo..� */
	$"B86D F296 6E00 0582 3044 2008 5380 223C"            /* �m�n..�0D .S�"< */
	$"0000 02F6 4EB9 0000 04DA 206D F298 D1C0"            /* ...�N�...� m��� */
	$"2448 554F 486A 0090 486D F986 3F3C 0001"            /* $HUOHj.�Hm��?<.. */
	$"4EB9 0000 DD64 101F 1D40 FDBE 594F 3F04"            /* N�..�d...@��YO?. */
	$"4EBA D3BC 201F 4A80 56C0 4400 1D40 FDBF"            /* N�Ӽ .J�V�D..@�� */
	$"594F 3F04 4EBA D402 201F 4A80 56C0 4400"            /* YO?.N��. .J�V�D. */
	$"1E00 202A 01D0 0800 0004 56C0 4400 57C0"            /* .. *.�....V�D.W� */
	$"4400 1600 2F2D F29C 554F 1F3C 0004 2F0E"            /* D.../-�UO.<../. */
	$"4EBA FE30 301F 3F00 102E FDBE 57C0 4400"            /* N��00.?...��W�D. */
	$"1F00 4EBA D5C2 2F2D F29C 554F 1F3C 0002"            /* ..N���/-�UO.<.. */
	$"2F0E 4EBA FE0E 301F 3F00 102E FDBF 57C0"            /* /.N��.0.?...��W� */
	$"4400 1F00 4EBA D5A0 2F2D F29C 554F 1F3C"            /* D...N�ՠ/-�UO.< */
	$"0003 2F0E 4EBA FDEC 301F 3F00 1007 57C0"            /* ../.N���0.?...W� */
	$"4400 1F00 4EBA D580 554F 1F3C 0001 2F0E"            /* D...N�ՀUO.<../. */
	$"4EBA FDD0 301F 3D40 FD9C 554F 2F2D F29C"            /* N���0.=@��UO/-� */
	$"4EB9 0000 B2FC 301F B06E FD9C 661C 4A03"            /* N�..��0.�n��f.J. */
	$"6618 2F2D F29C 554F 4227 2F0E 4EBA FDA4"            /* f./-�UOB'/.N��� */
	$"301F 3F00 4EB9 0000 B328 2F2D F29C 554F"            /* 0.?.N�..�(/-�UO */
	$"1F3C 0001 2F0E 4EBA FD8A 301F 3F00 1003"            /* .<../.N���0.?... */
	$"57C0 4400 1F00 4EBA D51E 4227 2F2A 01D4"            /* W�D...N��.B'/*.� */
	$"486D F9C2 2F0E 4EBA FD98 2F2D F29C 554F"            /* Hm��/.N���/-�UO */
	$"1F3C 0002 2F0E 4EBA FD5A 301F 3F00 7001"            /* .<../.N��Z0.?.p. */
	$"B0AA 01D8 57C0 4400 1F00 4EB9 0000 B280"            /* ��.�W�D...N�..�� */
	$"2F2D F29C 554F 1F3C 0003 2F0E 4EBA FD34"            /* /-�UO.<../.N��4 */
	$"301F 3F00 7001 B0AA 01DC 57C0 4400 1F00"            /* 0.?.p.��.�W�D... */
	$"4EB9 0000 B280 1F3C 0001 2F2A 01E0 486D"            /* N�..��.<../*.�Hm */
	$"F986 2F0E 4EBA FD3A 2F2D F29C 554F 1F3C"            /* ��/.N��:/-�UO.< */
	$"0001 2F0E 4EBA FCFC 301F 3F00 486E FDD0"            /* ../.N���0.?.Hn�� */
	$"4EBA D406 2F2D F29C 554F 4227 2F0E 4EBA"            /* N��./-�UOB'/.N� */
	$"FCE2 301F 3F00 486E FDAE 4EBA D3EC 2F2D"            /* ��0.?.Hn��N���/- */
	$"F29C 554F 1F3C 0002 2F0E 4EBA FCC6 301F"            /* �UO.<../.N���0. */
	$"3F00 486E FDC0 4EBA D3D0 2F2D F29C 554F"            /* ?.Hn��N���/-�UO */
	$"1F3C 0003 2F0E 4EBA FCAA 301F 3F00 486E"            /* .<../.N���0.?.Hn */
	$"FDC8 4EBA D3B4 2F2D F29C 554F 1F3C 0004"            /* ��N�Ӵ/-�UO.<.. */
	$"2F0E 4EBA FC8E 301F 3F00 486E FDE8 4EBA"            /* /.N���0.?.Hn��N� */
	$"D398 2F2D F29C 554F 1F3C 0005 2F0E 4EBA"            /* Ә/-�UO.<../.N� */
	$"FC72 301F 3F00 486E FDB6 4EB9 0000 B062"            /* �r0.?.Hn��N�..�b */
	$"7C00 DC6E FDD0 7A03 DA6E FDC0 4A2E 0008"            /* |.�n��z.�n��J... */
	$"6700 00B4 4A03 6728 486E FDF0 1F3C 0002"            /* g..�J.g(Hn��.<.. */
	$"4EBA CF90 41EE FDF0 2608 2043 7000 1010"            /* N�ϐA���&. Cp... */
	$"5240 48C0 2043 43EE FF00 A22E 584F 6018"            /* R@H� CC��.�.XO`. */
	$"41ED F986 2608 2043 7000 1010 5240 48C0"            /* A���&. Cp...R@H� */
	$"2043 43EE FF00 A22E 4A2E FDBE 6746 486E"            /*  CC��.�.J.��gFHn */
	$"FEF0 302E FDD2 5B40 3F00 3F06 7012 D06E"            /* ��0.��[@?.?.p.�n */
	$"FDEA 3F00 3F3C 8000 486E FF00 1F3C 0001"            /* ��?.?<�.Hn�..<.. */
	$"4EBA FB34 486E FEF0 7012 D06E FDEA 3F00"            /* N��4Hn��p.�n��?. */
	$"3F06 2F3C 8000 8000 486A 0090 4227 4EBA"            /* ?./<�.�.Hj.�B'N� */
	$"FB16 6022 486E FEF0 302E FDD2 5B40 3F00"            /* �.`"Hn��0.��[@?. */
	$"3F06 3F2E FDEA 3F3C 8000 486E FF00 1F3C"            /* ?.?.��?<�.Hn�..< */
	$"0001 4EBA FAF2 486E FF00 486E FDF0 1F3C"            /* ..N���Hn�.Hn��.< */
	$"0004 4EBA CEDE 584F 486E FDF0 486E FDD8"            /* ..N���XOHn��Hn�� */
	$"594F 3F04 4EBA D024 201F 2F00 4EB9 0000"            /* YO?.N��$ ./.N�.. */
	$"D6F2 584F 486E FDD8 486D F986 486D F986"            /* ��XOHn��Hm��Hm�� */
	$"4EB9 0000 CC7E 486E FEF0 7005 D06E FDB4"            /* N�..�~Hn��p.�n�� */
	$"3F00 3F05 3F3C 8000 302E FDC2 5340 3F00"            /* ?.?.?<�.0.��S@?. */
	$"486E FF00 4227 4EBA FA8E 4A2E 0008 6700"            /* Hn�.B'N���J...g. */
	$"0184 4A2E FDBF 6742 486E FF00 486E FDF0"            /* .�J.��gBHn�.Hn�� */
	$"1F3C 0005 4EBA CE6C 584F 486E FDF0 486E"            /* .<..N��lXOHn��Hn */
	$"FDD8 594F 3F04 4EBA D056 201F 2F00 4EB9"            /* ��YO?.N��V ./.N� */
	$"0000 D6F2 584F 486E FDD8 486D F986 486D"            /* ..��XOHn��Hm��Hm */
	$"F986 4EB9 0000 CC7E 6018 41ED F986 2608"            /* ��N�..�~`.A���&. */
	$"2043 7000 1010 5240 48C0 2043 43EE FF00"            /*  Cp...R@H� CC��. */
	$"A22E 486E FEF0 7012 D06E FDC2 3F00 3F05"            /* �.Hn��p.�n��?.?. */
	$"3F3C 8000 302E FDCA 5340 3F00 486E FF00"            /* ?<�.0.��S@?.Hn�. */
	$"4227 4EBA FA02 4A07 6742 486E FF00 486E"            /* B'N��.J.gBHn�.Hn */
	$"FDF0 1F3C 0006 4EBA CDEA 584F 486E FDF0"            /* ��.<..N���XOHn�� */
	$"486E FDD8 594F 3F04 4EBA D02E 201F 2F00"            /* Hn��YO?.N��. ./. */
	$"4EB9 0000 D6F2 584F 486E FDD8 486D F986"            /* N�..��XOHn��Hm�� */
	$"486D F986 4EB9 0000 CC7E 6018 41ED F986"            /* Hm��N�..�~`.A��� */
	$"2608 2043 7000 1010 5240 48C0 2043 43EE"            /* &. Cp...R@H� CC� */
	$"FF00 A22E 486E FEF0 7012 D06E FDCA 3F00"            /* �.�.Hn��p.�n��?. */
	$"3F05 3F3C 8000 302E FEFE 5340 3F00 486E"            /* ?.?<�.0.��S@?.Hn */
	$"FF00 4227 4EBA F980 3F3C 0001 A888 554F"            /* �.B'N���?<..��UO */
	$"486A 0040 486D F986 4267 4EB9 0000 DD64"            /* Hj.@Hm��BgN�..�d */
	$"101F 6716 260A 2043 7000 1010 5240 48C0"            /* ..g.&. Cp...R@H� */
	$"2043 43EE FF00 A22E 6026 486E FF00 486E"            /*  CC��.�.`&Hn�.Hn */
	$"FDF0 1F3C 0001 4EBA CD3A 584F 486E FDF0"            /* ��.<..N��:XOHn�� */
	$"2F0A 486A 0040 486D F986 4EB9 0000 CC7E"            /* /.Hj.@Hm��N�..�~ */
	$"486E FEF0 7014 D06E FDB8 3F00 3F06 3F3C"            /* Hn��p.�n��?.?.?< */
	$"8000 3F2E FDEA 486E FF00 4227 4EBA F908"            /* �.?.��Hn�.B'N��. */
	$"4267 A888 594F 3F04 4EBA D542 201F 2600"            /* Bg��YO?.N��B .&. */
	$"4A83 6738 486E FF00 486E FDF0 1F3C 0003"            /* J�g8Hn�.Hn��.<.. */
	$"4EBA CCE0 584F 486E FDF0 486E FDD8 2F03"            /* N���XOHn��Hn��/. */
	$"4EB9 0000 D6F2 584F 486E FDD8 486D F986"            /* N�..��XOHn��Hm�� */
	$"486D F986 4EB9 0000 CC7E 6018 41ED F986"            /* Hm��N�..�~`.A��� */
	$"2608 2043 7000 1010 5240 48C0 2043 43EE"            /* &. Cp...R@H� CC� */
	$"FF00 A22E 486E FEF0 302E FEFE 0440 000A"            /* �.�.Hn��0.��.@.. */
	$"3F00 3F05 3F2E FDCE 3F3C 8000 486E FF00"            /* ?.?.?.��?<�.Hn�. */
	$"1F3C 0001 4EBA F880 486E FDA0 4EB9 0000"            /* .<..N���Hn��N�.. */
	$"B684 4CDF 04F8 4E5E 2E9F 4E75 8753 4554"            /* ��L�.�N^.�Nu�SET */
	$"4C49 4E45 0000 4E56 0000 2F03 7601 600C"            /* LINE..NV../.v.`. */
	$"3F03 1F3C 0001 4EBA F9A8 5243 0C43 0003"            /* ?..<..N���RC.C.. */
	$"6FEE 261F 4E5E 4E75 8853 4554 4C49 4E45"            /* o�&.N^Nu�SETLINE */
	$"5300 0000 4E56 0000 3B6E 0008 F05E 2F2D"            /* S...NV..;n..�^/- */
	$"F28C 3F2E 0008 A963 4EBA FFBC 4E5E 205F"            /* �?...�cN���N^ _ */
	$"544F 4ED0 8653 4554 524F 5700 0000 4E56"            /* TONІSETROW...NV */
	$"FFFA 48E7 1F20 3E2E 0008 3C2D F05E 206D"            /* ��H�. >...<-�^ m */
	$"F29C 2068 00A0 2450 3A2A 0020 382A 0022"            /* � h.�$P:*. 8*." */
	$"3F07 4EBA FFB0 554F 2F2D F29C 4EB9 0000"            /* ?.N���UO/-�N�.. */
	$"B2FC 301F 1600 BE46 6700 0090 554F 7000"            /* ��0...�Fg..�UOp. */
	$"1003 2F00 486D FA3A 4878 0006 4EB9 0000"            /* ../.Hm�:Hx..N�.. */
	$"DCD0 101F 6774 1F03 486E FFFE 486E FFFD"            /* ��..gt..Hn��Hn�� */
	$"4EBA CE50 3006 9047 D06E FFFE 3D40 FFFE"            /* N��P0.�G�n��=@�� */
	$"594F 42A7 306E FFFE 2F08 4878 0002 201F"            /* YOB�0n��/.Hx.. . */
	$"221F B280 6F02 2200 201F B280 6C02 2200"            /* ".��o.". .��l.". */
	$"2E81 201F 3600 B66E FFFE 6706 7A00 383C"            /* .� .6.�n��g.z.8< */
	$"00FF 2F2D F29C 7000 102E FFFD 3D40 FFFA"            /* .�/-�p...��=@�� */
	$"554F 3F03 4EBA D2B2 101F 7200 1200 D26E"            /* UO?.N�Ҳ..r...�n */
	$"FFFA 3F01 3F05 3F04 A97E 4CDF 04F8 4E5E"            /* ��?.?.?.�~L�.�N^ */
	$"205F 544F 4ED0 8953 4554 524F 5754 4142"            /*  _TONЉSETROWTAB */
	$"0000 4E56 FCD8 48E7 1F00 2F2D F29C 1F3C"            /* ..NV��H�../-�.< */
	$"0001 4267 486E FCD8 4EB9 0000 B626 486E"            /* ..BgHn��N�..�&Hn */
	$"FDF0 A88B 2F2D F29C 3F3C 001F 486E FEF8"            /* ��/-�?<..Hn�� */
	$"4EB9 0000 B062 2F2D F29C 3F3C 001E 486E"            /* N�..�b/-�?<..Hn */
	$"FDE6 4EB9 0000 B062 7603 D66E FDE6 3003"            /* ��N�..�bv.�n��0. */
	$"0440 0010 3D40 FDEE 7E10 DE43 2F2D F29C"            /* .@..=@��~.�C/-� */
	$"3F3C 001E 4A6D F286 56C0 4400 1F00 4EB9"            /* ?<..Jm�V�D...N� */
	$"0000 B280 486E FF00 1F3C 0007 4EBA CAA4"            /* ..��Hn�..<..N�ʤ */
	$"41EE FF00 2808 2044 7000 1010 5240 48C0"            /* A��.(. Dp...R@H� */
	$"2044 43EE FDF8 A22E 7C12 DC6E FDE8 486E"            /*  DC����.|.�n��Hn */
	$"FDF8 A88C 301F D046 3A00 382E FEFE 0444"            /* ����0.�F:.8.��.D */
	$"000A 486E FDF0 3F06 3F03 3F3C 8000 302E"            /* ..Hn��?.?.?<�.0. */
	$"FEFE 5340 3F00 486E FDF8 4227 4EBA F658"            /* ��S@?.Hn��B'N��X */
	$"4A6D F286 544F 6752 486E FDF8 486E FF00"            /* Jm�TOgRHn��Hn�. */
	$"1F3C 0008 4EBA CA3C 584F 486E FF00 486E"            /* .<..N��<XOHn�.Hn */
	$"FCE6 306D F286 2F08 4EBA D0BC 584F 486E"            /* ��0m�/.N�мXOHn */
	$"FCE6 486D F986 486D F986 4EB9 0000 CC7E"            /* ��Hm��Hm��N�..�~ */
	$"486E FDF0 3F04 3F03 2F3C 8000 8000 486E"            /* Hn��?.?./<�.�.Hn */
	$"FDF8 1F3C 0001 4EBA F5FE 486E FDF0 3F05"            /* ��.<..N���Hn��?. */
	$"3F2E FDEE 3F2E FEFA 3F2E FEFE 486E FF00"            /* ?.��?.��?.��Hn�. */
	$"1F3C 0009 4EBA C9DC 584F 486E FF00 1F3C"            /* .<..N���XOHn�..< */
	$"0001 4EBA F5D2 486E FDF8 486E FF00 1F3C"            /* ..N���Hn��Hn�..< */
	$"0008 4EBA C9BE 584F 486E FF00 486E FCE6"            /* ..N�ɾXOHn�.Hn�� */
	$"594F 4EBA D36A 201F 306D F286 9088 2F00"            /* YON��j .0m򆐈/. */
	$"4EBA D034 584F 486E FCE6 486D F986 486D"            /* N��4XOHn��Hm��Hm */
	$"F986 4EB9 0000 CC7E 486E FDF0 3F04 3F2E"            /* ��N�..�~Hn��?.?. */
	$"FDEE 2F3C 8000 8000 486E FDF8 1F3C 0001"            /* ��/<�.�.Hn��.<.. */
	$"4EBA F574 3F3C 0001 A888 486E FDF0 3F05"            /* N��t?<..��Hn��?. */
	$"3F07 3F2E FEFA 3F2E FEFE 486E FF00 1F3C"            /* ?.?.��?.��Hn�..< */
	$"000A 4EBA C94E 584F 486E FF00 1F3C 0001"            /* ..N��NXOHn�..<.. */
	$"4EBA F544 486E FDF0 3F04 3F07 2F3C 8000"            /* N��DHn��?.?./<�. */
	$"8000 486E FF00 4EBA D546 584F 486E FF00"            /* �.Hn�.N��FXOHn�. */
	$"1F3C 0001 4EBA F520 4267 A888 554F 4EBA"            /* .<..N�� Bg��UON� */
	$"D24A 101F 1600 554F 7000 1003 2F00 486D"            /* �J....UOp.../.Hm */
	$"F98D 4878 0001 4EB9 0000 DCD0 101F 6722"            /* ��Hx..N�..��..g" */
	$"2F2D F29C 3F3C 0007 486E FF00 1F3C 0016"            /* /-�?<..Hn�..<.. */
	$"4EBA C8E0 584F 486E FF00 4EB9 0000 AD44"            /* N���XOHn�.N�..�D */
	$"6020 2F2D F29C 3F3C 0007 486E FF00 1F3C"            /* ` /-�?<..Hn�..< */
	$"0015 4EBA C8BE 584F 486E FF00 4EB9 0000"            /* ..N�ȾXOHn�.N�.. */
	$"AD44 554F 7000 1003 2F00 486D F98C 4878"            /* �DUOp.../.Hm��Hx */
	$"0001 4EB9 0000 DCD0 101F 6722 2F2D F29C"            /* ..N�..��..g"/-� */
	$"3F3C 0009 486E FF00 1F3C 000C 4EBA C884"            /* ?<..Hn�..<..N�Ȅ */
	$"584F 486E FF00 4EB9 0000 AD44 6020 2F2D"            /* XOHn�.N�..�D` /- */
	$"F29C 3F3C 0009 486E FF00 1F3C 000B 4EBA"            /* �?<..Hn�..<..N� */
	$"C862 584F 486E FF00 4EB9 0000 AD44 4CDF"            /* �bXOHn�.N�..�DL� */
	$"00F8 4E5E 4E75 8C53 4554 4655 4C4C 544F"            /* .�N^Nu�SETFULLTO */
	$"5441 4C00 0000 4E56 FFF2 48E7 1C00 362E"            /* TAL...NV��H�..6. */
	$"000A 1A2E 0008 554F 2F2D F29C 4EB9 0000"            /* ......UO/-�N�.. */
	$"B3CA 301F 3800 4A05 6704 D644 5543 3043"            /* ��0.8.J.g.�DUC0C */
	$"3244 2008 2209 4EB9 0000 05E8 5280 3600"            /* 2D .".N�...�R�6. */
	$"2F2D F29C 3F03 486E FFF6 486E FFF2 486E"            /* /-�?.Hn��Hn��Hn */
	$"FFF8 A98D 0C6E 0010 FFF6 66CA 554F 486E"            /* ����.n..��f�UOHn */
	$"FFF8 4EBA CB30 101F 66BC 3D43 000C 4CDF"            /* ��N��0..f�=C..L� */
	$"0038 4E5E 2E9F 4E75 9046 494E 444E 4558"            /* .8N^.�Nu�FINDNEX */
	$"5454 4558 5449 5445 4D00 0000 4E56 0000"            /* TTEXTITEM...NV.. */
	$"0C6E 000A 0008 6D08 0C6E 001B 0008 6F04"            /* .n....m..n....o. */
	$"7000 6002 7001 1D40 000A 4E5E 205F 544F"            /* p.`.p..@..N^ _TO */
	$"4ED0 8949 5352 4F57 4954 454D 0000 4E56"            /* NЉISROWITEM..NV */
	$"0000 48E7 1E00 1C2E 0008 554F 2F2D F29C"            /* ..H�......UO/-� */
	$"4EB9 0000 B2FC 301F 3800 0C44 0001 6C02"            /* N�..��0.8..D..l. */
	$"7805 554F 2F2D F28C A960 301F 3A00 554F"            /* x.UO/-�`0.:.UO */
	$"3F04 1F06 4EBA FF10 301F 3600 4A06 667C"            /* ?...N��.0.6.J.f| */
	$"554F 3F04 4EBA FF86 101F 6734 554F 3F03"            /* UO?.N���..g4UO?. */
	$"4EBA FF7A 101F 6628 302D F296 5540 BA40"            /* N��z..f(0-�U@�@ */
	$"6C1E 7001 D045 3F00 4EBA FAEA 554F 3F3C"            /* l.p.�E?.N���UO?< */
	$"0015 1F06 4EBA FED0 301F 3600 6000 00B4"            /* ....N���0.6.`..� */
	$"554F 3F04 4EBA FF46 101F 6600 00A6 554F"            /* UO?.N��F..f..�UO */
	$"3F03 4EBA FF38 101F 6700 0098 0C45 0001"            /* ?.N��8..g..�.E.. */
	$"6700 0090 3F3C 0001 4EBA FAAA 554F 3F04"            /* g..�?<..N���UO?. */
	$"1F06 4EBA FE92 301F 3600 6076 554F 3F04"            /* ..N���0.6.`vUO?. */
	$"4EBA FF0A 101F 672E 554F 3F03 4EBA FEFE"            /* N��...g.UO?.N��� */
	$"101F 6622 0C45 0001 671C 3005 5340 3F00"            /* ..f".E..g.0.S@?. */
	$"4EBA FA72 554F 3F3C 0010 1F06 4EBA FE58"            /* N��rUO?<....N��X */
	$"301F 3600 603C 554F 3F04 4EBA FED0 101F"            /* 0.6.`<UO?.N���.. */
	$"6630 554F 3F03 4EBA FEC4 101F 6724 302D"            /* f0UO?.N���..g$0- */
	$"F296 5540 BA40 671A 302D F296 5540 3F00"            /* �U@�@g.0-�U@?. */
	$"4EBA FA32 554F 3F04 1F06 4EBA FE1A 301F"            /* N��2UO?...N��.0. */
	$"3600 2F2D F29C 3F03 4EB9 0000 B328 4CDF"            /* 6./-�?.N�..�(L� */
	$"0078 4E5E 205F 544F 4ED0 8544 4F54 4142"            /* .xN^ _TONЅDOTAB */
	$"0000 4E56 0000 2F03 362D F26C 3043 2008"            /* ..NV../.6-�l0C . */
	$"5380 7230 4EB9 0000 04DA 206D F292 2B70"            /* S�r0N�...� m�+p */
	$"0824 F280 3043 2008 5380 7230 4EB9 0000"            /* .$�0C .S�r0N�.. */
	$"04DA 206D F292 2B70 0828 F27C 3043 2008"            /* .� m�+p.(�|0C . */
	$"5380 7230 4EB9 0000 04DA 206D F292 2B70"            /* S�r0N�...� m�+p */
	$"082C F278 3043 2008 5380 7230 4EB9 0000"            /* .,�x0C .S�r0N�.. */
	$"04DA 206D F292 2B70 0820 F274 4EBA FAA4"            /* .� m�+p. �tN��� */
	$"261F 4E5E 4E75 8E53 454C 4543 5443 5552"            /* &.N^Nu�SELECTCUR */
	$"5245 4E43 5900 0000 4E56 0000 2B7C 3F80"            /* RENCY...NV..+|?� */
	$"0000 F280 7001 2B40 F27C 7001 2B40 F278"            /* ..�p.+@�|p.+@�x */
	$"2B6D FA40 F274 4E5E 4E75 9153 454C 4543"            /* +m�@�tN^Nu�SELEC */
	$"5455 5341 4355 5252 454E 4359 0000 4E56"            /* TUSACURRENCY..NV */
	$"FF00 48E7 1C00 162D F267 B62D F285 6700"            /* �.H�...-�g�-�g. */
	$"00DE 4EBA FFB4 1B43 F285 7000 1003 0C40"            /* .�N���.C�p....@ */
	$"0007 627C D040 303B 0006 4EFB 0002 0072"            /* ..b|�@0;..N�...r */
	$"0010 005E 0010 0068 0068 0068 006E 7A2A"            /* ...^...h.h.h.nz* */
	$"782A 0C03 0001 6622 2F2D F29C 3F3C 002A"            /* x*....f"/-�?<.* */
	$"486E FF00 1F3C 0011 4EBA C518 584F 486E"            /* Hn�..<..N��.XOHn */
	$"FF00 4EB9 0000 AD44 6036 2F2D F29C 3F3C"            /* �.N�..�D`6/-�?< */
	$"002A 486E FF00 1F3C 0014 4EBA C4F6 584F"            /* .*Hn�..<..N���XO */
	$"486E FF00 4EB9 0000 AD44 6014 7A2B 782D"            /* Hn�.N�..�D`.z+x- */
	$"4EBA FEB0 600A 7A20 7826 6004 7A27 7829"            /* N���`.z x&`.z'x) */
	$"7620 6020 2F2D F29C 7000 1003 3F00 B605"            /* v ` /-�p...?.�. */
	$"6D08 B604 6E04 7000 6002 7001 1F00 4EBA"            /* m.�.n.p.`.p...N� */
	$"C906 5203 7000 1003 0C40 002D 6FD6 4EBA"            /* �.R.p....@.-o�N� */
	$"F982 2F2D F29C 554F 3F3C 0017 4227 4EBA"            /* ��/-�UO?<..B'N� */
	$"FC56 301F 3F00 2F3C 00FF 00FF A97E 4CDF"            /* �V0.?./<.�.��~L� */
	$"0038 4E5E 4E75 8C53 454C 4543 544D 4554"            /* .8N^Nu�SELECTMET */
	$"484F 4400 0000 4E56 0000 48E7 1C20 246E"            /* HOD...NV..H�. $n */
	$"000A 382E 0008 4A44 6700 0086 3004 0440"            /* ..8...JDg..�0..@ */
	$"0014 670E 5340 670A 5340 670A 5340 6706"            /* ..g.S@g.S@g.S@g. */
	$"6008 7601 6006 7602 6002 7600 0C44 0017"            /* `.v.`.v.`.v..D.. */
	$"57C0 4400 0C44 0015 57C1 4401 8200 6702"            /* W�D..D..W�D.�.g. */
	$"4443 554F 2F0A A960 301F 3A00 594F 554F"            /* DCUO/.�`0.:.YOUO */
	$"2F0A A961 301F 48C0 2F00 3005 9043 48C0"            /* /.�a0.H�/.0.�CH� */
	$"2F00 554F 2F0A A962 301F 48C0 2F00 201F"            /* /.UO/.�b0.H�/. . */
	$"221F B280 6F02 2200 201F B280 6C02 2200"            /* ".��o.". .��l.". */
	$"2E81 201F 3800 BA44 6706 3F04 4EBA F7D0"            /* .� .8.�Dg.?.N��� */
	$"4CDF 0438 4E5E 205F 5C4F 4ED0 8B56 4143"            /* L�.8N^ _\ONЋVAC */
	$"5449 4F4E 5052 4F43 0000 4E56 FFEC 48E7"            /* TIONPROC..NV��H� */
	$"1800 206E 0008 43EE FFEC 22D8 22D8 22D8"            /* .. n..C���"�"�"� */
	$"22D8 2F2D F29C A873 0C6D 0003 F296 6F78"            /* "�/-�s.m..�ox */
	$"486E FFF6 A871 554F 2F2E FFF6 2F2D F29C"            /* Hn���qUO/.��/-� */
	$"486E FFFC A96C 301F 3600 0C43 0081 6644"            /* Hn���l0.6..C.�fD */
	$"554F 2F2E FFFC A960 301F 3800 554F 2F2E"            /* UO/.���`0.8.UO/. */
	$"FFFC 2F2E FFF6 4878 0000 A968 301F 3600"            /* ��/.��Hx..�h0.6. */
	$"4A43 6734 554F 2F2E FFFC A960 301F B840"            /* JCg4UO/.���`0.�@ */
	$"6726 554F 2F2E FFFC A960 301F 3F00 4EBA"            /* g&UO/.���`0.?.N� */
	$"F72E 6014 554F 2F2E FFFC 2F2E FFF6 487A"            /* �.`.UO/.��/.��Hz */
	$"FEB6 A968 301F 3800 4CDF 0018 4E5E 2E9F"            /* ���h0.8.L�..N^.� */
	$"4E75 8B44 4F53 4352 4F4C 4C42 4152 0000"            /* Nu�DOSCROLLBAR.. */
	$"4E56 FEEA 48E7 1820 246E 000A 382E 0008"            /* NV��H�. $n..8... */
	$"2F0A 1F3C 0009 4267 486E FFEA 4EB9 0000"            /* /..<..BgHn��N�.. */
	$"B626 554F 3F04 4EBA C32A 101F 1600 2F0A"            /* �&UO?.N��*...... */
	$"3F04 486E FFF8 4EB9 0000 B062 7000 1003"            /* ?.Hn��N�..�bp... */
	$"C1FC 0006 41ED F262 2470 0800 2F0A 7000"            /* ��..A��b$p../.p. */
	$"1003 C1FC 0006 41ED F262 3F30 0804 486E"            /* ..��..A��b?0..Hn */
	$"FEEA 4EBA C3B2 302E FFFE 5340 3D40 FFFE"            /* ��N�ò0.��S@=@�� */
	$"302E FFFC 5340 3D40 FFFC 486E FFF8 2F3C"            /* 0.��S@=@��Hn��/< */
	$"0001 0001 A8A9 486E FFF8 A8A3 700E D06E"            /* ....��Hn����p.�n */
	$"FFFA 3F00 302E FFFC 5940 3F00 A893 486E"            /* ��?.0.��Y@?.��Hn */
	$"FEEA A884 486E FFF8 4878 FFFF A8A9 486E"            /* �ꨄHn��Hx����Hn */
	$"FFF8 A8A1 3F2E FFFE 7002 D06E FFF8 3F00"            /* ����?.��p.�n��?. */
	$"A893 3F2E FFFE 3F2E FFFC A891 7002 D06E"            /* ��?.��?.����p.�n */
	$"FFFA 3F00 3F2E FFFC A891 7600 6026 302E"            /* ��?.?.����v.`&0. */
	$"FFFE 0440 000D 9043 3F00 302E FFFC 5F40"            /* ��.@..�C?.0.��_@ */
	$"9043 3F00 A893 7002 C1C3 5240 3F00 4267"            /* �C?.��p.��R@?.Bg */
	$"A892 5243 0C43 0005 6FD4 486E FFEA 4EB9"            /* ��RC.C..o�Hn��N� */
	$"0000 B684 4CDF 0418 4E5E 205F 5C4F 4ED0"            /* ..��L�..N^ _\ON� */
	$"8944 5241 5750 4F50 5550 0000 4E56 FFF0"            /* �DRAWPOPUP..NV�� */
	$"48E7 1C20 3A2E 0008 2F2D F29C A873 422E"            /* H�. :.../-�sB. */
	$"000A 554F 3F05 4EBA C20A 101F 1600 2F2D"            /* ..UO?.N��...../- */
	$"F29C 3F05 486E FFF4 4EB9 0000 B062 7000"            /* �?.Hn��N�..�bp. */
	$"1003 C1FC 0006 41ED F262 2470 0800 2F0A"            /* ..��..A��b$p../. */
	$"3F3C FFFF A935 7001 D06E FFF6 3D40 FFFE"            /* ?<���5p.�n��=@�� */
	$"7001 D06E FFF4 3D40 FFFC 486E FFFC A870"            /* p.�n��=@��Hn���p */
	$"2F0A 7000 1003 C1FC 0006 41ED F262 3F30"            /* /.p...��..A��b?0 */
	$"0804 1F3C 0001 A945 594F 2F0A 3F2E FFFC"            /* ...<..�EYO/.?.�� */
	$"3F2E FFFE 7000 1003 C1FC 0006 41ED F262"            /* ?.��p...��..A��b */
	$"3F30 0804 A80B 201F 2800 2F0A 7000 1003"            /* ?0..�. .(./.p... */
	$"C1FC 0006 41ED F262 3F30 0804 4227 A945"            /* ��..A��b?0..B'�E */
	$"2052 3F10 A936 7000 1003 C1FC 0006 41ED"            /*  R?.�6p...��..A� */
	$"F262 3D70 0804 FFF0 554F 2F04 A86B 301F"            /* �b=p..��UO/.�k0. */
	$"B06E FFF0 56C0 4400 1D40 FFF3 554F 2F04"            /* �n��V�D..@��UO/. */
	$"A86A 301F 4A40 56C0 4400 C02E FFF3 6728"            /* �j0.J@V�D.�.��g( */
	$"1D7C 0001 000A 554F 2F04 A86B 301F 7200"            /* .|....UO/.�k0.r. */
	$"1203 C3FC 0006 41ED F262 3180 1804 2F2D"            /* ..��..A��b1�../- */
	$"F29C 3F05 4EBA FDBA 4CDF 0438 4E5E 205F"            /* �?.N���L�.8N^ _ */
	$"544F 4ED0 8744 4F50 4F50 5550 0000 4E56"            /* TONЇDOPOPUP..NV */
	$"0000 306E 0008 2008 5380 223C 0000 02F6"            /* ..0n.. .S�"<...� */
	$"4EB9 0000 04DA 206D F298 D1C0 4850 306E"            /* N�...� m���HP0n */
	$"0008 2008 5380 223C 0000 02F6 4EB9 0000"            /* .. .S�"<...�N�.. */
	$"04DA 206D F298 D1C0 4868 00D0 4EB9 0000"            /* .� m���Hh.�N�.. */
	$"66C0 4E5E 205F 544F 4ED0 8F44 4F43 4F4D"            /* f�N^ _TONЏDOCOM */
	$"4D45 4E54 4255 5454 4F4E 0000 4E56 0000"            /* MENTBUTTON..NV.. */
	$"2F03 162E 000C 206E 0008 B628 FFEF 675C"            /* /..... n..�(��g\ */
	$"206E 0008 1143 FFEF 206E 0008 4AA8 FFF0"            /*  n...C�� n..J��� */
	$"6740 554F 206E 0008 4868 FFE6 4267 594F"            /* g@UO n..Hh��BgYO */
	$"206E 0008 1F28 FFEF 4878 4000 42A7 201F"            /*  n...(��Hx@.B� . */
	$"221F 4A1F 6602 2200 2E81 201F 3F00 206E"            /* ".J.f."..� .?. n */
	$"0008 2F28 FFF0 303C 061F ABC9 301F 3600"            /* ../(��0<..��0.6. */
	$"600A 206E 0008 4868 FFF4 A8A4 261F 4E5E"            /* `. n..Hh����&.N^ */
	$"205F 5C4F 4ED0 8650 6C6F 7431 3400 0000"            /*  _\ONІPlot14... */
	$"4E56 FFE6 422E 000C 2F2D F29C A873 2F2D"            /* NV��B.../-�s/- */
	$"F29C 3F2E 000A 486E FFE6 4EB9 0000 B062"            /* �?...Hn��N�..�b */
	$"2D6E FFE6 FFF4 2D6E FFEA FFF8 7010 D06E"            /* -n����-n����p.�n */
	$"FFF6 3D40 FFFA 7010 D06E FFF4 3D40 FFF8"            /* ��=@��p.�n��=@�� */
	$"422E FFEF 486E FFFC A972 554F 2F2E FFFC"            /* B.��Hn���rUO/.�� */
	$"486E FFF4 A8AD 101F 6758 4A2D F86F 6710"            /* Hn����..gXJ-�og. */
	$"594F 3F2E 0008 AA1E 205F 2D48 FFF0 6004"            /* YO?...�. _-H��`. */
	$"42AE FFF0 486E FFFC A972 554F 2F2E FFFC"            /* B���Hn���rUO/.�� */
	$"486E FFF4 A8AD 101F 1F00 2F0E 4EBA FEEE"            /* Hn����..../.N��� */
	$"554F A973 101F 66DC 1D6E FFEF 000C 4227"            /* UO�s..f�.n��..B' */
	$"2F0E 4EBA FED8 4AAE FFF0 6706 2F2E FFF0"            /* /.N���J���g./.�� */
	$"AA25 4E5E 2E9F 4E75 8F46 4C41 5348 4943"            /* �%N^.�Nu�FLASHIC */
	$"4F4E 4255 5454 4F4E 0000 4E56 FFF8 48E7"            /* ONBUTTON..NV��H� */
	$"1E00 362E 0008 1803 0C04 000A 6D26 0C04"            /* ..6.........m&.. */
	$"001B 6E20 554F 2F2D F28C A960 301F 3C00"            /* ..n UO/-�`0.<. */
	$"1F04 486E FFFE 486E FFFD 4EBA C176 3A06"            /* ..Hn��Hn��N��v:. */
	$"DA6E FFFE 7000 1004 5340 6700 024A 5340"            /* �n��p...S@g..JS@ */
	$"6770 5340 6700 0246 5340 6700 0234 5140"            /* gpS@g..FS@g..4Q@ */
	$"6776 5340 6700 00CC 5340 6700 0120 5340"            /* gvS@g..�S@g.. S@ */
	$"6700 0170 5740 6760 5340 6700 00B6 5340"            /* g..pW@g`S@g..�S@ */
	$"6700 010A 5340 6700 015A 5740 674A 5340"            /* g...S@g..ZW@gJS@ */
	$"6700 00A0 5340 6700 00F4 5340 6700 0144"            /* g..�S@g..�S@g..D */
	$"5540 6728 5340 6700 0178 5B40 6700 0150"            /* U@g(S@g..x[@g..P */
	$"0440 0009 6700 01EC 5540 6700 01E6 6000"            /* .@..g..�U@g..�`. */
	$"0208 1B7C 0001 F2A1 6000 01FE 2F2E 000A"            /* ...|..�`..�/... */
	$"4EBA FA78 6000 01F2 2F2D F29C 3F03 4EB9"            /* N��x`..�/-�?.N� */
	$"0000 B2BA 554F 2F2D F29C 3F03 4EB9 0000"            /* ..��UO/-�?.N�.. */
	$"B240 101F 7200 1200 48C1 3045 2008 5380"            /* �@..r...H�0E .S� */
	$"2D41 FFF8 223C 0000 02F6 4EB9 0000 04DA"            /* -A��"<...�N�...� */
	$"206D F298 D1C0 216E FFF8 01D8 7001 D06E"            /*  m���!n��.�p.�n */
	$"FFFE 3F00 4227 4EBA EB38 4EBA F2B6 6000"            /* ��?.B'N��8N��`. */
	$"0198 2F2D F29C 3F03 4EB9 0000 B2BA 554F"            /* .�/-�?.N�..��UO */
	$"2F2D F29C 3F03 4EB9 0000 B240 101F 7200"            /* /-�?.N�..�@..r. */
	$"1200 48C1 3045 2008 5380 2D41 FFF8 223C"            /* ..H�0E .S�-A��"< */
	$"0000 02F6 4EB9 0000 04DA 206D F298 D1C0"            /* ...�N�...� m��� */
	$"216E FFF8 01DC 7001 D06E FFFE 3F00 4227"            /* !n��.�p.�n��?.B' */
	$"4EBA EADE 4EBA F25C 6000 013E 2F2D F29C"            /* N���N��\`..>/-� */
	$"3F03 4EB9 0000 B2BA 554F 2F2D F29C 3F03"            /* ?.N�..��UO/-�?. */
	$"4EB9 0000 B240 101F 3045 2208 5381 1D40"            /* N�..�@..0E".S�.@ */
	$"FFFC 203C 0000 02F6 4EB9 0000 04DA 206D"            /* �� <...�N�...� m */
	$"F298 D1C0 116E FFFC 01E4 7001 D06E FFFE"            /* ���.n��.�p.�n�� */
	$"3F00 1F3C 0001 4EBA EA88 4EBA F206 6000"            /* ?..<..N��N��.`. */
	$"00E8 554F 3F03 3F3C 00E1 4EBA FD54 101F"            /* .�UO?.?<.�N��T.. */
	$"6700 00D6 3F05 4EBA FC66 6000 00CC 554F"            /* g..�?.N��f`..�UO */
	$"3F03 3F3C 00E2 4EBA FD38 101F 6700 00BA"            /* ?.?<.�N��8..g..� */
	$"554F 4EB9 0000 625E 101F 1600 6000 00AA"            /* UON�..b^....`..� */
	$"7801 554F 2F2D F29C 3F03 4EB9 0000 B240"            /* x.UO/-�?.N�..�@ */
	$"101F 661A 554F 3F3C 00AF 4EB9 0000 82CA"            /* ..f.UO?<.�N�..�� */
	$"301F 3A00 0C45 0001 57C0 4400 1800 4A04"            /* 0.:..E..W�D...J. */
	$"6776 2F2D F29C 3F03 4EB9 0000 B2BA 554F"            /* gv/-�?.N�..��UO */
	$"2F2D F29C 3F03 4EB9 0000 B240 101F 7200"            /* /-�?.N�..�@..r. */
	$"1200 3B41 F286 4A6D F286 6F0E 2F2D F29C"            /* ..;A�Jm�o./-� */
	$"3F3C 0008 4EB9 0000 B328 4EBA F156 6038"            /* ?<..N�..�(N��V`8 */
	$"4EBA E6F4 6032 4EBA E394 602C 4EBA E804"            /* N���`2N��`,N��. */
	$"6026 554F 3F03 4EBA FA84 101F 671A 7000"            /* `&UO?.N���..g.p. */
	$"1004 0440 002C 670C 5540 6702 600A 4EBA"            /* ...@.,g.U@g.`.N� */
	$"F6CE 6004 4EBA F60C 4CDF 0078 4E5E 205F"            /* ��`.N��.L�.xN^ _ */
	$"5C4F 4ED0 8B44 4F49 5445 4D57 4845 5245"            /* \ONЋDOITEMWHERE */
	$"0000 4E56 FFE0 2F0A 246E 0008 554F 2F2D"            /* ..NV��/.$n..UO/- */
	$"F29C 4EB9 0000 B2FC 301F 7200 1200 5D41"            /* �N�..��0.r...]A */
	$"6748 5541 6734 5541 6720 5341 671C 5B41"            /* gHUAg4UAg SAg.[A */
	$"6718 5341 6714 5B41 6710 5341 670C 0441"            /* g.SAg.[Ag.SAg..A */
	$"000A 6736 5341 6742 6050 41ED FA44 43D2"            /* ..g6SAgB`PA��DC� */
	$"7007 22D8 51C8 FFFC 604E 41ED FA64 43D2"            /* p."�Q���`NA��dC� */
	$"7007 22D8 51C8 FFFC 603E 41ED FA84 43D2"            /* p."�Q���`>A���C� */
	$"7007 22D8 51C8 FFFC 602E 41ED FAA4 43D2"            /* p."�Q���`.A���C� */
	$"7007 22D8 51C8 FFFC 601E 41ED FAC4 43D2"            /* p."�Q���`.A���C� */
	$"7007 22D8 51C8 FFFC 600E 41ED FAE4 43D2"            /* p."�Q���`.A���C� */
	$"7007 22D8 51C8 FFFC 594F 2F0A 4878 0020"            /* p."�Q���YO/.Hx.  */
	$"486D FB04 4878 0020 486E FFE0 4878 0020"            /* Hm�.Hx. Hn��Hx.  */
	$"4EB9 0000 DC0E 205F 43D2 7007 22D8 51C8"            /* N�..�. _C�p."�Q� */
	$"FFFC 245F 4E5E 2E9F 4E75 8A42 4144 4348"            /* ��$_N^.�Nu�BADCH */
	$"4152 5345 5400 0000 4E56 FEE0 48E7 1820"            /* ARSET...NV��H�.  */
	$"246E 000E 382E 000C 206E 0008 43EE FFE0"            /* $n..8... n..C��� */
	$"7007 22D8 51C8 FFFC 7601 6006 7001 D043"            /* p."�Q���v.`.p.�C */
	$"3600 7000 1012 B640 6E20 B644 6E1C 554F"            /* 6.p...�@n �Dn.UO */
	$"7000 1032 3000 2F00 486E FFE0 4878 0020"            /* p..20./.Hn��Hx.  */
	$"4EB9 0000 DCD0 101F 66D2 5343 7000 1012"            /* N�..��..f�SCp... */
	$"B640 672C 486E FEE0 2F0A 3F3C 0001 3F03"            /* �@g,Hn��/.?<..?. */
	$"4EB9 0000 C992 41EE FEE0 2808 2044 7000"            /* N�..ɒA���(. Dp. */
	$"1010 5240 48C0 2044 224A A22E 584F 6004"            /* ..R@H� D"J�.XO`. */
	$"422E 0012 4CDF 0418 4E5E 205F 4FEF 000A"            /* B...L�..N^ _O�.. */
	$"4ED0 884C 4547 414C 495A 4500 0000 4E56"            /* NЈLEGALIZE...NV */
	$"FEF8 48E7 1C00 362E 0008 554F 7000 1003"            /* ��H�..6...UOp... */
	$"2F00 486D FA3A 4878 0006 4EB9 0000 DCD0"            /* /.Hm�:Hx..N�..�� */
	$"101F 6700 0124 2F2D F29C 3F03 486E FF00"            /* ..g..$/-�?.Hn�. */
	$"4EB9 0000 ADB2 1A03 7000 1005 0440 000A"            /* N�..��..p....@.. */
	$"6716 5340 6716 5B40 670E 5340 670E 5B40"            /* g.S@g.[@g.S@g.[@ */
	$"6706 5340 6706 6008 7803 6006 7803 6002"            /* g.S@g.`.x.`.x.`. */
	$"7800 554F 486E FF00 3F04 486D F98E 4EBA"            /* x.UOHn�.?.Hm��N� */
	$"FEE8 101F 6724 2F2D F29C 3F03 486E FF00"            /* ��..g$/-�?.Hn�. */
	$"4EB9 0000 AD44 2F2D F29C 3F03 2F3C 00FF"            /* N�..�D/-�?./<.� */
	$"00FF A97E 3F3C 0001 A9C8 486E FF00 486E"            /* .��~?<..��Hn�.Hn */
	$"FEFA 4EB9 0000 E89A 554F 2F2D F28C A960"            /* ��N�..�UO/-�` */
	$"301F 3600 7000 1005 0440 000A 0C40 000D"            /* 0.6.p....@...@.. */
	$"6200 0082 5540 6D0C 5940 6D78 5540 6D04"            /* b..�U@m.Y@mxU@m. */
	$"5940 6D70 1F05 486E FEFE 486E FEF9 4EBA"            /* Y@mp..Hn��Hn��N� */
	$"BC62 7000 102E FEF9 6706 5340 6726 6046"            /* �bp...��g.S@g&`F */
	$"3003 D06E FEFE 48C0 5380 223C 0000 02F6"            /* 0.�n��H�S�"<...� */
	$"4EB9 0000 04DA 206D F298 D1C0 216E FEFA"            /* N�...� m���!n�� */
	$"01D4 6022 3003 D06E FEFE 48C0 5380 223C"            /* .�`"0.�n��H�S�"< */
	$"0000 02F6 4EB9 0000 04DA 206D F298 D1C0"            /* ...�N�...� m��� */
	$"216E FEFA 01E0 7001 D06E FEFE 3F00 4227"            /* !n��.�p.�n��?.B' */
	$"4EBA E6AE 4EBA EE2C 4CDF 0038 4E5E 205F"            /* N��N��,L�.8N^ _ */
	$"544F 4ED0 8B54 4558 5443 4841 4E47 4544"            /* TONЋTEXTCHANGED */
	$"0000 4E56 FF00 2F2E 000A A873 2F2E 000A"            /* ..NV�./...�s/... */
	$"3F2E 0008 486E FF00 1F3C 0001 4EBA BF3C"            /* ?...Hn�..<..N��< */
	$"584F 486E FF00 4EB9 0000 B76A 4E5E 205F"            /* XOHn�.N�..�jN^ _ */
	$"5C4F 4ED0 8D44 5241 574D 4554 484F 4442"            /* \ONЍDRAWMETHODB */
	$"4F58 0000 4E56 0000 3D6E 0008 0008 2F2E"            /* OX..NV..=n..../. */
	$"000A A873 4EBA EC80 4E5E 205F 5C4F 4ED0"            /* ..�sN��N^ _\ON� */
	$"8B44 5241 5752 4F57 5342 4F58 0000 4E56"            /* �DRAWROWSBOX..NV */
	$"0000 3D6E 0008 0008 2F2E 000A A873 4EBA"            /* ..=n..../...�sN� */
	$"ED92 4E5E 205F 5C4F 4ED0 8944 5241 5754"            /* �N^ _\ONЉDRAWT */
	$"4F54 414C 0000 4E56 0000 48E7 1838 266E"            /* OTAL..NV..H�.8&n */
	$"0012 246E 000E 286E 000A 422E 0016 594F"            /* ..$n..(n..B...YO */
	$"2F0B 4EB9 0000 E790 201F 2800 B892 6F78"            /* /.N�..� .(.��ox */
	$"594F 2F13 2F12 201F D09F 2E80 205F 1010"            /* YO/./. .П.� _.. */
	$"4880 0280 0000 00FF 3600 3043 2012 D088"            /* H�.�...�6.0C .Ј */
	$"5280 B084 6E52 594F 306E 0008 2F08 3043"            /* R���nRYO0n../.0C */
	$"2F08 201F 2E9F B097 6C02 2E80 201F 3800"            /* /. ..���l..� .8. */
	$"594F 2F13 2F12 201F D09F 2E80 205F 2F08"            /* YO/./. .П.� _/. */
	$"2F0C 7001 D044 48C0 2F00 201F 225F 205F"            /* /.p.�DH�/. ."_ _ */
	$"A22E 7000 3004 1880 3043 2012 D088 5280"            /* �.p.0..�0C .ЈR� */
	$"2480 1D7C 0001 0016 4CDF 1C18 4E5E 205F"            /* $�.|....L�..N^ _ */
	$"4FEF 000E 4ED0 9347 4554 5354 5249 4E47"            /* O�..NГGETSTRING */
	$"4652 4F4D 4841 4E44 4C45 0000 4E56 0000"            /* FROMHANDLE..NV.. */
	$"2F0A 246E 000C 422E 0014 594F 2F2E 0010"            /* /.$n..B...YO/... */
	$"4EB9 0000 E790 201F 7204 D292 B280 6E30"            /* N�..� .r.Ғ��n0 */
	$"594F 206E 0010 2F10 2F12 201F D09F 2E80"            /* YO n.././. .П.� */
	$"205F 2F08 2F2E 0008 4878 0004 201F 225F"            /*  _/./...Hx.. ."_ */
	$"205F A22E 7004 D092 2480 1D7C 0001 0014"            /*  _�.p.В$�.|.... */
	$"245F 4E5E 205F 4FEF 000C 4ED0 9147 4554"            /* $_N^ _O�..NБGET */
	$"4C4F 4E47 4652 4F4D 4841 4E44 4C45 0000"            /* LONGFROMHANDLE.. */
	$"4E56 FFDA 206E 0010 226E 000C 4291 7201"            /* NV�� n.."n..B�r. */
	$"606C 7000 1030 1000 0440 0030 3D40 FFDA"            /* `lp..0...@.0=@�� */
	$"486E FFDA 486E FFDA 3F3C 200E A9EB 2D7C"            /* Hn��Hn��?< .��-| */
	$"4002 A000 FFE4 42AE FFE8 426E FFEC 4851"            /* @.�.��B���Bn��HQ */
	$"486E FFEE 3F3C 100E A9EB 486E FFE4 486E"            /* Hn��?<..��Hn��Hn */
	$"FFEE 3F3C 0004 A9EB 486E FFDA 486E FFEE"            /* ��?<..��Hn��Hn�� */
	$"3F3C 0000 A9EB 486E FFEE 486E FFF8 3F3C"            /* ?<..��Hn��Hn��?< */
	$"1010 A9EB 22AE FFF8 7001 D041 3200 7000"            /* ..��"���p.�A2.p. */
	$"1010 B240 6E0C 7000 1030 1000 0C40 002E"            /* ..�@n.p..0...@.. */
	$"6680 7000 1010 B240 6E12 7000 1030 1000"            /* f�p...�@n.p..0.. */
	$"0C40 002E 6606 7001 D041 3200 2D7C 3F80"            /* .@..f.p.�A2.-|?� */
	$"0000 FFFC 6000 00AC 2D7C 4002 A000 FFEE"            /* ..��`..�-|@.�.�� */
	$"42AE FFF2 426E FFF6 486E FFFC 486E FFE4"            /* B���Bn��Hn��Hn�� */
	$"3F3C 100E A9EB 486E FFEE 486E FFE4 3F3C"            /* ?<..��Hn��Hn��?< */
	$"0006 A9EB 486E FFE4 486E FFF8 3F3C 1010"            /* ..��Hn��Hn��?<.. */
	$"A9EB 2D6E FFF8 FFFC 7000 1030 1000 0440"            /* ��-n����p..0...@ */
	$"0030 3D40 FFEE 486E FFEE 486E FFEE 3F3C"            /* .0=@��Hn��Hn��?< */
	$"200E A9EB 486E FFFC 486E FFE4 3F3C 100E"            /*  .��Hn��Hn��?<.. */
	$"A9EB 486E FFEE 486E FFE4 3F3C 0004 A9EB"            /* ��Hn��Hn��?<..�� */
	$"4851 486E FFDA 3F3C 100E A9EB 486E FFE4"            /* HQHn��?<..��Hn�� */
	$"486E FFDA 3F3C 0000 A9EB 486E FFDA 486E"            /* Hn��?<..��Hn��Hn */
	$"FFF8 3F3C 1010 A9EB 22AE FFF8 7001 D041"            /* ��?<..��"���p.�A */
	$"3200 7000 1010 B240 6F00 FF4E 4E5E 205F"            /* 2.p...�@o.�NN^ _ */
	$"4FEF 000C 4ED0 8E53 7472 696E 6754 6F52"            /* O�..NЎStringToR */
	$"6561 6C31 3500 0000 4E56 0000 48E7 0038"            /* eal15...NV..H�.8 */
	$"286E 0014 266E 0010 246E 000C 554F 2F0C"            /* (n..&n..$n..UO/. */
	$"2F0B 2F0A 3F3C 001F 4EBA FD1C 101F 4A00"            /* /./.?<..N��...J. */
	$"6770 554F 2F0C 2F0B 486A 0020 3F3C 001F"            /* gpUO/./.Hj. ?<.. */
	$"4EBA FD04 101F 4A00 6758 554F 2F0C 2F0B"            /* N��...J.gXUO/./. */
	$"486A 0040 3F3C 001F 4EBA FCEC 101F 4A00"            /* Hj.@?<..N���..J. */
	$"6740 554F 2F0C 2F0B 486A 0060 3F3C 001F"            /* g@UO/./.Hj.`?<.. */
	$"4EBA FCD4 101F 4A00 6728 554F 2F0C 2F0B"            /* N���..J.g(UO/./. */
	$"486A 0080 4EBA FD86 101F 4A00 6714 554F"            /* Hj.�N���..J.g.UO */
	$"2F0C 2F0B 486A 0084 4EBA FD72 101F 4A00"            /* /./.Hj.�N��r..J. */
	$"6604 7000 6002 7001 1D40 0018 4CDF 1C00"            /* f.p.`.p..@..L�.. */
	$"4E5E 205F 4FEF 0010 4ED0 9247 6574 5465"            /* N^ _O�..NВGetTe */
	$"6D70 6C61 7465 456E 7472 7931 3600 0000"            /* mplateEntry16... */
	$"4E56 FE74 48E7 1E30 246E 0008 7A00 594F"            /* NV�tH�.0$n..z.YO */
	$"2F2D FB24 3F3C 0080 A9A0 205F 2648 200B"            /* /-�$?<.��� _&H . */
	$"6700 019C 4A93 6700 0196 594F 2F0B 4EB9"            /* g..�J�g..�YO/.N� */
	$"0000 E790 201F 7202 B081 6D00 0182 2053"            /* ..� .r.��m..� S */
	$"3B50 F290 594F 306D F290 7030 2208 4EB9"            /* ;P�YO0m�p0".N� */
	$"0000 04DA 2F00 201F A11E 2E88 205F 2B48"            /* ...�/. .�..� _+H */
	$"F292 4AAD F292 6700 0152 3B7C 0001 F26E"            /* �J��g..R;|..�n */
	$"7002 2D40 FE74 7A01 3C2D F290 7601 6000"            /* p.-@�tz.<-�v.`. */
	$"0116 554F 2F0B 486E FE74 486E FF78 2F0E"            /* ..UO/.Hn�tHn�x/. */
	$"4EBA FEA6 101F 6606 7A00 6000 0100 41EE"            /* N���..f.z.`...A� */
	$"FF78 2808 2044 7000 1010 5240 48C0 2F00"            /* �x(. Dp...R@H�/. */
	$"3043 2008 5380 7230 4EB9 0000 04DA 206D"            /* 0C .S�r0N�...� m */
	$"F292 D1C0 43D0 201F 2044 A22E 3043 2008"            /* ���C� . D�.0C . */
	$"5380 7230 4EB9 0000 04DA 206D F292 21AE"            /* S�r0N�...� m�!� */
	$"FFB8 0820 486E FFD8 3043 2008 5380 7230"            /* ��. Hn��0C .S�r0 */
	$"4EB9 0000 04DA 206D F292 4870 0824 2F0E"            /* N�...� m�Hp.$/. */
	$"4EBA FCAE 3043 2008 5380 7230 4EB9 0000"            /* N���0C .S�r0N�.. */
	$"04DA 206D F292 21AE FFF8 0828 3043 2008"            /* .� m�!���.(0C . */
	$"5380 7230 4EB9 0000 04DA 206D F292 21AE"            /* S�r0N�...� m�!� */
	$"FFFC 082C 554F 486E FF78 486D FB28 4267"            /* ��.,UOHn�xHm�(Bg */
	$"4EB9 0000 DD64 101F 6704 3B43 F26E 2F0A"            /* N�..�d..g.;C�n/. */
	$"486D FB30 486E FFD8 486D FB2C 3043 2008"            /* Hm�0Hn��Hm�,0C . */
	$"5380 7230 4EB9 0000 04DA 206D F292 D1C0"            /* S�r0N�...� m��� */
	$"4850 486E FE78 3F3C 0004 4EB9 0000 DE7E"            /* HPHn�x?<..N�..�~ */
	$"4FEF 0016 486E FE78 4EB9 0000 C642 0C43"            /* O�..Hn�xN�..�B.C */
	$"7FFF 6708 5243 B646 6F00 FEE8 4A05 6712"            /* .�g.RC�Fo.��J.g. */
	$"594F 2F0B 4EB9 0000 E790 201F B0AE FE74"            /* YO/.N�..� .���t */
	$"6704 7000 6002 7001 1A00 2F0B A9A3 4A05"            /* g.p.`.p.../.��J. */
	$"661A 426D F290 6008 2F0A 3F3C 0001 A952"            /* f.Bm�`./.?<..�R */
	$"554F 2F0A A950 301F 4A40 6EEC 4CDF 0C78"            /* UO/.�P0.J@n�L�.x */
	$"4E5E 2E9F 4E75 8C46 494C 4C43 4153 484D"            /* N^.�Nu�FILLCASHM */
	$"454E 5500 0000 4E56 FF00 48E7 1C20 7801"            /* ENU...NV�.H�. x. */
	$"594F 2F2D FB32 3F3C 0080 A9A0 205F 2448"            /* YO/-�2?<.��� _$H */
	$"200A 6778 2F12 486E FF00 594F 594F 2F0A"            /*  .gx/.Hn�.YOYO/. */
	$"4EB9 0000 E790 201F 2F00 4878 0100 201F"            /* N�..� ./.Hx.. . */
	$"2E9F B097 6C02 2E80 201F 2F00 201F 225F"            /* .���l..� ./. ."_ */
	$"205F A22E 3A2D F296 7601 6038 554F 3043"            /*  _�.:-�v.`8UO0C */
	$"2008 5380 223C 0000 02F6 4EB9 0000 04DA"            /*  .S�"<...�N�...� */
	$"206D F298 D1C0 4868 0080 486E FF00 4267"            /*  m���Hh.�Hn�.Bg */
	$"4EB9 0000 DD64 101F 6702 3803 0C43 7FFF"            /* N�..�d..g.8..C.� */
	$"6706 5243 B645 6FC4 2F0A A9A3 3D44 0008"            /* g.RC�Eo�/.��=D.. */
	$"4CDF 0438 4E5E 4E75 9047 4554 4155 544F"            /* L�.8N^Nu�GETAUTO */
	$"5343 524F 4C4C 524F 5700 0000 4E56 FD00"            /* SCROLLROW...NV�. */
	$"2F03 206E 0010 43EE FD00 703F 22D8 51C8"            /* /. n..C��.p?"�Q� */
	$"FFFC 486E FE00 486E FD00 4EB9 0000 C334"            /* ��Hn�.Hn�.N�..�4 */
	$"41EE FE00 2608 2043 7000 1010 5240 48C0"            /* A��.&. Cp...R@H� */
	$"2043 43EE FF00 A22E 486E FF00 486D F986"            /*  CC��.�.Hn�.Hm�� */
	$"4267 4EB9 0000 DD64 101F 544F 672C 486E"            /* BgN�..�d..TOg,Hn */
	$"FE00 3F3C 00B4 3F2E 000E 4EB9 0000 C746"            /* �.?<.�?...N�..�F */
	$"41EE FE00 2608 2043 7000 1010 5240 48C0"            /* A��.&. Cp...R@H� */
	$"2043 43EE FF00 A22E 584F 2F2D F29C 7000"            /*  CC��.�.XO/-�p. */
	$"102E 000C 3F00 486E FF00 4EB9 0000 AD44"            /* ....?.Hn�.N�..�D */
	$"261F 4E5E 205F 4FEF 000C 4ED0 9253 6574"            /* &.N^ _O�..NВSet */
	$"4465 6661 756C 7453 7472 696E 6731 3700"            /* DefaultString17. */
	$"0000 4E56 FFF2 48E7 1820 182E 0010 246E"            /* ..NV��H�. ....$n */
	$"000C 2F0A 4EBA B228 2F2D F29C 7000 1004"            /* ../.N��(/-�p... */
	$"3F00 486E FFF6 486E FFF2 486E FFF8 A98D"            /* ?.Hn��Hn��Hn���� */
	$"2F0A A948 2052 302E FFFA D068 0002 5240"            /* /.�H R0.���h..R@ */
	$"3D40 FFFE 7012 D06E FFF8 5240 3D40 FFFC"            /* =@��p.�n��R@=@�� */
	$"2F2D F29C 7000 1004 3F00 3F2E FFF6 487A"            /* /-�p...?.?.��Hz */
	$"EE50 486E FFF8 A98E 554F 7000 1004 3F00"            /* �PHn����UOp...?. */
	$"4EBA B190 101F 1600 7000 1003 C1FC 0006"            /* N���....p...��.. */
	$"41ED F262 218A 0800 7000 1003 C1FC 0006"            /* A��b!�..p...��.. */
	$"41ED F262 31BC 0001 0804 4CDF 0418 4E5E"            /* A��b1�....L�..N^ */
	$"205F 4FEF 000A 4ED0 8C53 6574 7570 506F"            /*  _O�..NЌSetupPo */
	$"7075 7031 3800 0000 4E56 FEF6 2F0A 422E"            /* pup18...NV��/.B. */
	$"0008 594F 3F3C 00C8 4878 0000 4878 FFFF"            /* ..YO?<.�Hx..Hx�� */
	$"A97C 205F 2B48 F29C 4AAD F29C 6700 01CC"            /* �| _+H�J��g..� */
	$"2F2D F29C A873 1F3C 002E 594F 3F3C 00C8"            /* /-�s.<..YO?<.� */
	$"A9BF 205F 2F08 2F0E 4EBA FF08 594F 3F3C"            /* �� _/./.N��.YO?< */
	$"00C9 A9BF 205F 2448 2F0A 4EBA FB94 1F3C"            /* .ɩ� _$H/.N���.< */
	$"002C 2F0A 2F0E 4EBA FEEA 4EBA B67C 2F2D"            /* .,/./.N���N��|/- */
	$"F29C 1F3C 0001 4267 4EB9 0000 B6CE 2F2D"            /* �.<..BgN�..��/- */
	$"F29C 3F3C 002F 487A F74A 4EB9 0000 B138"            /* �?<./Hz�JN�..�8 */
	$"2F2D F29C 3F3C 001C 487A F77A 4EB9 0000"            /* /-�?<..Hz�zN�.. */
	$"B138 2F2D F29C 3F3C 001F 487A F792 4EB9"            /* �8/-�?<..Hz��N� */
	$"0000 B138 2F2D F29C 3F3C 001D 486E FFF8"            /* ..�8/-�?<..Hn�� */
	$"4EB9 0000 B062 594F 2F2D F29C 486E FFF8"            /* N�..�bYO/-�Hn�� */
	$"486D F986 1F3C 0001 2F3C 0001 0001 594F"            /* Hm��.<../<....YO */
	$"4878 0001 302D F296 5540 48C0 2F00 201F"            /* Hx..0-�U@H�/. . */
	$"2E9F B097 6F02 2E80 201F 3F00 3F3C 0010"            /* .���o..� .?.?<.. */
	$"42A7 A954 205F 2B48 F28C 594F 4878 0001"            /* B��T _+H�YOHx.. */
	$"554F 4EBA FCD2 301F 48C0 2F00 306D F296"            /* UON���0.H�/.0m� */
	$"2F08 201F 221F B280 6F02 2200 201F B280"            /* /. .".��o.". .�� */
	$"6C02 2200 2E81 201F 3F00 4EBA E398 4EBA"            /* l."..� .?.N��N� */
	$"E366 426D F286 4EBA E49A 422D F285 4EBA"            /* �fBm�N��B-�N� */
	$"EA3E 3B6D F26E F26C 4EBA E978 2F2D F29C"            /* �>;m�n�lN��x/-� */
	$"486D F288 4EB9 0000 D2C2 554F 1F3C 0001"            /* Hm�N�..��UO.<.. */
	$"4EB9 0000 C3F6 301F 3D40 FEF6 486D FA06"            /* N�..��0.=@��Hm�. */
	$"3F3C 0001 1F3C 0005 2F0E 4EBA FD10 486D"            /* ?<...<../.N��.Hm */
	$"FA10 3F3C 0002 1F3C 0006 2F0E 4EBA FCFE"            /* �.?<...<../.N��� */
	$"486D FA16 3F3C 0003 1F3C 0008 2F0E 4EBA"            /* Hm�.?<...<../.N� */
	$"FCEC 554F 4EB9 0000 C42E 301F 3D40 FEF6"            /* ��UON�..�.0.=@�� */
	$"2F2D F29C 3F3C 0005 4EB9 0000 B328 2F2D"            /* /-�?<..N�..�(/- */
	$"F29C 3F3C 002B 486E FEF8 1F3C 0010 4EBA"            /* �?<.+Hn��.<..N� */
	$"AF22 584F 486E FEF8 4EB9 0000 AD44 2F2D"            /* �"XOHn��N�..�D/- */
	$"F29C A915 1D7C 0001 0008 245F 4E5E 205F"            /* �..|....$_N^ _ */
	$"4ED0 8B53 4554 5550 4449 414C 4F47 0000"            /* NЋSETUPDIALOG.. */
	$"4E56 0000 554F 206E 0008 2F28 FD04 206E"            /* NV..UO n../(�. n */
	$"0008 4868 FCFE 2F2E 0010 3F2E 000E 4EBA"            /* ..Hh��/...?...N� */
	$"F636 101F 1F00 4EB9 0000 ACEA 4E5E 205F"            /* �6....N�..��N^ _ */
	$"4FEF 000C 4ED0 8C52 6561 6453 7472 696E"            /* O�..NЌReadStrin */
	$"6731 3900 0000 4E56 FFFE 594F 206E 0008"            /* g19...NV��YO n.. */
	$"2068 FD04 2F10 206E 0008 2F28 FCFE 201F"            /*  h�./. n../(�� . */
	$"D09F 2E80 205F 2F08 486E FFFE 4878 0002"            /* П.� _/.Hn��Hx.. */
	$"201F 225F 205F A02E 206E 0008 7002 D0A8"            /*  ."_ _�. n..p.Ш */
	$"FCFE 206E 0008 2140 FCFE 302E FFFE 0280"            /* �� n..!@��0.��.� */
	$"0000 FFFF 2D40 000C 4E5E 2E9F 4E75 8B52"            /* ..��-@..N^.�Nu�R */
	$"6561 6453 686F 7274 3230 0000 4E56 FFFC"            /* eadShort20..NV�� */
	$"594F 206E 0008 2068 FD04 2F10 206E 0008"            /* YO n.. h�./. n.. */
	$"2F28 FCFE 201F D09F 2E80 205F 2F08 486E"            /* /(�� .П.� _/.Hn */
	$"FFFC 4878 0004 201F 225F 205F A02E 206E"            /* ��Hx.. ."_ _�. n */
	$"0008 7004 D0A8 FCFE 206E 0008 2140 FCFE"            /* ..p.Ш�� n..!@�� */
	$"2D6E FFFC 000C 4E5E 2E9F 4E75 8A52 6561"            /* -n��..N^.�Nu�Rea */
	$"644C 6F6E 6732 3100 0000 4E56 FCFC 48E7"            /* dLong21...NV��H� */
	$"1F20 594F 42A7 201F A122 2E88 205F 2448"            /* . YOB� .�".� _$H */
	$"554F 2F2D FB36 A80D 301F 3D40 FCFC 3D7C"            /* UO/-�6�.0.=@��=| */
	$"0001 FD02 6000 0242 594F 2F2D FB36 3F2E"            /* ..�.`..BYO/-�6?. */
	$"FD02 A80E 205F 2D48 FD04 4AAE FD04 6700"            /* �.�. _-H�.J��.g. */
	$"021C 206E FD04 4A90 6700 0212 594F 2F2E"            /* .. n�.J�g...YO/. */
	$"FD04 4EB9 0000 E790 201F 7202 B081 6D00"            /* �.N�..� .r.��m. */
	$"01FC 206E FD04 2050 3610 7002 2D40 FCFE"            /* .� n�. P6.p.-@�� */
	$"3D43 FD08 7E01 6000 01D6 486E FD0A 4878"            /* =C�.~.`..�Hn�.Hx */
	$"003F 2F0E 4EBA FE6A 486E FD4A 4878 003F"            /* .?/.N��jHn�JHx.? */
	$"2F0E 4EBA FE5C 486E FD8A 4878 000F 2F0E"            /* /.N��\Hn��Hx../. */
	$"4EBA FE4E 486E FD9A 4878 003F 2F0E 4EBA"            /* N��NHn��Hx.?/.N� */
	$"FE40 594F 2F0E 4EBA FEE4 201F 2D40 FEDA"            /* �@YO/.N��� .-@�� */
	$"7800 6000 0134 594F 2F0E 4EBA FE6A 201F"            /* x.`..4YO/.N��j . */
	$"3C00 594F 42A7 3046 2F08 4878 0010 201F"            /* <.YOB�0F/.Hx.. . */
	$"221F B280 6F02 2200 201F B280 6C02 2200"            /* ".��o.". .��l.". */
	$"2E81 201F 3046 B1C0 57C0 4400 1F00 4EB9"            /* .� .0F��W�D...N� */
	$"0000 ACEA 3A06 7601 6058 594F 2F0E 4EBA"            /* ..��:.v.`XYO/.N� */
	$"FE26 201F 7200 1204 C3FC 0088 41EE FD0A"            /* �& .r...��.�A��. */
	$"41E8 01E6 D1C1 3243 2209 5381 E789 2180"            /* A�.���2C".S��!� */
	$"1800 594F 2F0E 4EBA FDFE 201F 7200 1204"            /* ..YO/.N��� .r... */
	$"C3FC 0088 41EE FD0A 41E8 01E6 D1C1 3243"            /* ��.�A��.A�.���2C */
	$"2209 5381 E789 2180 1804 0C43 7FFF 6706"            /* ".S��!�...C.�g. */
	$"5243 B645 6FA4 7A01 DA46 3605 6042 7000"            /* RC�Eo�z.�F6.`Bp. */
	$"1004 C1FC 0088 41EE FD0A 41E8 01E6 D1C0"            /* ..��.�A��.A�.��� */
	$"3243 2009 5380 E788 42B0 0800 7000 1004"            /* 2C .S��B�..p... */
	$"C1FC 0088 41EE FD0A 41E8 01E6 D1C0 3243"            /* ��.�A��.A�.���2C */
	$"2009 5380 E788 21BC 7FFF FFFF 0804 5243"            /*  .S��!�.���..RC */
	$"0C43 0010 6FB8 594F 2F0E 4EBA FD7A 201F"            /* .C..o�YO/.N��z . */
	$"7200 1204 C3FC 0088 41EE FD0A 41E8 01E6"            /* r...��.�A��.A�.� */
	$"D1C1 2140 0080 594F 2F0E 4EBA FD5A 201F"            /* ��!@.�YO/.N��Z . */
	$"7200 1204 C3FC 0088 41EE FD0A 41E8 01E6"            /* r...��.�A��.A�.� */
	$"D1C1 2140 0084 5204 0C04 0001 6F00 FEC8"            /* ��!@.�R.....o.�� */
	$"42AE FEDE 42AE FEE2 42AE FEE6 42AE FEEA"            /* B���B���B���B��� */
	$"422E FEEE 41ED F986 2608 2043 7000 1010"            /* B.��A���&. Cp... */
	$"5240 48C0 2043 43EE FDDA A22E 554F 486E"            /* R@H� CC��ڢ.UOHn */
	$"FD0A 2F0A 4878 02F6 201F 225F 205F A9EF"            /* �./.Hx.� ."_ _�� */
	$"3E80 301F 3600 0C47 7FFF 670A 5247 BE6E"            /* >�0.6..G.�g.RG�n */
	$"FD08 6F00 FE26 2F2E FD04 A9A3 0C6E 7FFF"            /* �.o.�&/.�.��.n.� */
	$"FD02 6710 526E FD02 302E FD02 B06E FCFC"            /* �.g.Rn�.0.�.�n�� */
	$"6F00 FDB6 594F 2F0A 4EB9 0000 E790 201F"            /* o.��YO/.N�..� . */
	$"223C 0000 02F6 4EB9 0000 056A 3B40 F296"            /* "<...�N�...j;@� */
	$"2F0A 205F A064 2F0A 205F A029 2B52 F298"            /* /. _�d/. _�)+R� */
	$"4A6D F296 5EC0 4400 1D40 0008 4CDF 04F8"            /* Jm�^�D..@..L�.� */
	$"4E5E 205F 4ED0 8C52 4541 4450 524F 4752"            /* N^ _NЌREADPROGR */
	$"414D 5300 0000 4E56 0000 2F3C 0001 0082"            /* AMS...NV../<...� */
	$"4227 4EB9 0000 C6CA 2F3C 0003 0082 4227"            /* B'N�..��/<...�B' */
	$"4EB9 0000 C6CA 2F3C 0004 0082 4227 4EB9"            /* N�..��/<...�B'N� */
	$"0000 C6CA 2F3C 0005 0082 4227 4EB9 0000"            /* ..��/<...�B'N�.. */
	$"C6CA 2F3C 0006 0082 4227 4EB9 0000 C6CA"            /* ��/<...�B'N�..�� */
	$"4E5E 4E75 8B41 444A 5553 544D 454E 5553"            /* N^Nu�ADJUSTMENUS */
	$"0000 4E56 FFFE 2D6E 0008 0008 554F 4EBA"            /* ..NV��-n....UON� */
	$"B12A 301F 3D40 FFFE 4E5E 2E9F 4E75 8744"            /* �*0.=@��N^.�Nu�D */
	$"4F43 4C4F 5345 0000 4E56 FF00 2F03 362E"            /* OCLOSE..NV�./.6. */
	$"0008 302E 000A 0440 0080 670E 5340 6746"            /* ..0....@.�g.S@gF */
	$"5340 6700 009A 6000 00CC 3003 5340 6708"            /* S@g..�`..�0.S@g. */
	$"5340 6700 00C0 600A 4EB9 0000 6590 6000"            /* S@g..�`.N�..e�`. */
	$"00B4 594F 3F3C 0080 A949 205F 2F08 3F03"            /* .�YO?<.��I _/.?. */
	$"486E FF00 A946 554F 486E FF00 A9B6 301F"            /* Hn�.�FUOHn�.��0. */
	$"3600 6000 0090 3003 0C40 0007 6200 0086"            /* 6.`..�0..@..b..� */
	$"D040 303B 0006 4EFB 0002 007A 0010 001E"            /* �@0;..N�...z.... */
	$"007A 0024 0032 007A 0038 594F A924 205F"            /* .z.$.2.z.8YO�$ _ */
	$"2F08 4EBA FF4E 605C 4EBA D132 6056 554F"            /* /.N��N`\N��2`VUO */
	$"4EB9 0000 6AB8 301F 3600 6048 4EBA D594"            /* N�..j�0.6.`HN�Ք */
	$"6042 554F 4EBA B064 301F 3600 6036 3003"            /* `BUON��d0.6.`60. */
	$"5340 6730 0C40 0006 622A 5540 6D26 5940"            /* S@g0.@..b*U@m&Y@ */
	$"6D22 594F A924 205F 2F08 554F 594F A924"            /* m"YO�$ _/.UOYO�$ */
	$"205F 2F08 4EB9 0000 B2FC 301F 3F00 4EB9"            /*  _/.N�..��0.?.N� */
	$"0000 B328 4A2D F2A1 6604 4267 A938 261F"            /* ..�(J-�f.Bg�8&. */
	$"4E5E 2E9F 4E75 8644 4F4D 454E 5500 0000"            /* N^.�Nu�DOMENU... */
	$"4E56 FFE8 48E7 1820 246E 000A 382E 0008"            /* NV��H�. $n..8... */
	$"206E 000E 43EE FFF0 22D8 22D8 22D8 22D8"            /*  n..C���"�"�"�"� */
	$"B5FC 0000 0000 670A 594F A924 205F B5C8"            /* ��....g.YO�$ _�� */
	$"6604 7000 6002 7001 1600 4A03 671C 554F"            /* f.p.`.p...J.g.UO */
	$"3044 2F08 486D FB3A 4878 0100 4EB9 0000"            /* 0D/.Hm�:Hx..N�.. */
	$"DCD0 101F 6604 2F0A A91F 3004 0C40 0008"            /* ��..f./.�.0..@.. */
	$"6200 00BE D040 303B 0006 4EFB 0002 00B2"            /* b..��@0;..N�...� */
	$"0012 00AA 00A0 004A 00B2 008A 00B2 00B2"            /* ...�.�.J.�.�.�.� */
	$"4EBA FDF4 594F 2F2E FFFA A93D 201F 2600"            /* N���YO/.���= .&. */
	$"4A83 6718 554F 2F03 A86A 301F 3F00 554F"            /* J�g.UO/.�j0.?.UO */
	$"2F03 A86B 301F 3F00 4EBA FE4E 4A2D F2A1"            /* /.�k0.?.N��NJ-� */
	$"666E 4267 A938 6068 302E FFFE 0280 0000"            /* fnBg�8`h0.��.�.. */
	$"0100 4A80 57C0 4400 C003 6704 2F0A A91F"            /* ..J�W�D.�.g./.�. */
	$"2F0A A873 594F 2EB8 09EE 205F 2050 2D68"            /* /.�sYO.�.� _ P-h */
	$"0002 FFE8 2D68 0006 FFEC 2F0A 2F2E FFFA"            /* ..��-h..��/./.�� */
	$"486E FFE8 A925 6028 554F 2F0A 2F2E FFFA"            /* Hn��%`(UO/./.�� */
	$"A91E 101F 671A 2F0A 4EBA FDC8 6012 4A03"            /* �...g./.N���`.J. */
	$"670E 2F0A A91F 6008 486E FFF0 2F0A A9B3"            /* g./.�.`.Hn��/.�� */
	$"4CDF 0418 4E5E 205F 4FEF 000A 4ED0 8B44"            /* L�..N^ _O�..NЋD */
	$"4F4D 4149 4E43 4C49 434B 0000 4E56 FFC2"            /* OMAINCLICK..NV�� */
	$"48E7 1C00 554F 3F3C FFFF 486E FFEE 4878"            /* H�..UO?<��Hn��Hx */
	$"000F 4878 0000 A860 101F 1600 2F2D F29C"            /* ..Hx..�`..../-� */
	$"A873 7601 282E FFF0 0284 0000 00FF 302E"            /* �sv.(.��.�...�0. */
	$"FFFC 0280 0000 0100 4A80 56C0 4400 1A00"            /* ��.�....J�V�D... */
	$"4A03 676A 4A05 6666 0C6E 0003 FFEE 6708"            /* J.gjJ.ff.n..��g. */
	$"0C6E 0005 FFEE 6656 594F A924 205F B1ED"            /* .n..��fVYO�$ _�� */
	$"F29C 664A 486E FFC6 4EBA EBC8 554F 7000"            /* �fJHn��N���UOp. */
	$"3004 2F00 486E FFC6 4878 0020 4EB9 0000"            /* 0./.Hn��Hx. N�.. */
	$"DCD0 101F 670A 3F3C 0001 A9C8 7600 601E"            /* ��..g.?<..��v.`. */
	$"0C44 0009 6618 302E FFFC 0280 0000 0200"            /* .D..f.0.��.�.... */
	$"4A80 56C0 4400 1F00 4EBA E024 7600 4A03"            /* J�V�D...N��$v.J. */
	$"6736 554F 486E FFEE A97F 101F 672A 554F"            /* g6UOHn��...g*UO */
	$"486E FFEE 486E FFC2 486E FFFE A980 101F"            /* Hn��Hn��Hn����.. */
	$"6716 206E FFC2 B1ED F29C 660C 486E FFEE"            /* g. n�±��f.Hn�� */
	$"3F2E FFFE 4EBA E874 4A03 6700 017E 302E"            /* ?.��N��tJ.g..~0. */
	$"FFEE 5340 672C 5540 675A 5540 6700 016C"            /* ��S@g,U@gZU@g..l */
	$"5340 6700 0086 5340 6700 0104 5340 6700"            /* S@g..�S@g...S@g. */
	$"008A 5F40 6700 009C 5140 6700 00DA 6000"            /* .�_@g..�Q@g..�`. */
	$"014A 554F 2F2E FFF8 486E FFEA A92C 301F"            /* .JUO/.��Hn��,0. */
	$"3600 4AAE FFEA 660A 594F A924 205F 2D48"            /* 6.J���f.YO�$ _-H */
	$"FFEA 486E FFEE 2F2E FFEA 3F03 4EBA FD72"            /* ��Hn��/.��?.N��r */
	$"6000 0118 7600 4A05 670E 4EBA FBDA 594F"            /* `...v.J.g.N���YO */
	$"3F04 A93E 201F 2600 4A83 6700 00FE 554F"            /* ?.�> .&.J�g..�UO */
	$"2F03 A86A 301F 3F00 554F 2F03 A86B 301F"            /* /.�j0.?.UO/.�k0. */
	$"3F00 4EBA FC34 6000 00E2 2F2E FFF0 A922"            /* ?.N��4`..�/.��" */
	$"2F2E FFF0 A923 6000 00D2 302E FFFC 0240"            /* /.��#`..�0.��.@ */
	$"0001 4A00 6700 00C4 2F2E FFF0 A91F 6000"            /* ..J.g..�/.��.`. */
	$"00BA 202E FFF0 E198 0280 0000 00FF 5380"            /* .� .���.�...�S� */
	$"6600 00A8 7001 C0AE FFF0 4A80 56C0 4400"            /* f..�p.����J�V�D. */
	$"1600 1F03 4EB9 0000 CEF4 594F A924 205F"            /* ....N�..��YO�$ _ */
	$"2008 670E 4A03 670A 594F A924 205F 2F08"            /*  .g.J.g.YO�$ _/. */
	$"A91F A850 6074 4A2D F869 676E 554F 486E"            /* �.�P`tJ-�ignUOHn */
	$"FFEE 303C 021B A816 301F 3600 605C 554F"            /* ��0<..�.0.6.`\UO */
	$"2F2E FFF0 A86A 301F 6750 302D EFE2 906D"            /* /.��j0.gP0-��m */
	$"EFDE 0440 0130 48C0 2200 E089 E089 E089"            /* ��.@.0H�".������ */
	$"EE89 D280 E281 3D41 FFE8 302D EFE0 906D"            /* �Ҁ�=A��0-���m */
	$"EFDC 0440 009C 48C0 7203 4EB9 0000 056A"            /* ��.@.�H�r.N�...j */
	$"3D40 FFE6 A850 554F 2F2E FFE6 2F2E FFF0"            /* =@��PUO/.��/.�� */
	$"7000 3F00 A9E9 301F 3600 7600 554F 2F2D"            /* p.?.��0.6.v.UO/- */
	$"F29C 4EB9 0000 B3CA 301F 3800 3D7C 0001"            /* �N�..��0.8.=|.. */
	$"FFFE 602E 554F 2F2D F288 2F2D F29C 3F2E"            /* ��`.UO/-�/-�?. */
	$"FFFE 4EB9 0000 D432 101F 670A 3F2E FFFE"            /* ��N�..�2..g.?.�� */
	$"4EBA EB1C 7601 0C6E 7FFF FFFE 670A 526E"            /* N��.v..n.���g.Rn */
	$"FFFE B86E FFFE 6CCC 4A03 670E 2F2D F288"            /* ���n��l�J.g./-� */
	$"2F2D F29C 4EB9 0000 D382 4CDF 0038 4E5E"            /* /-�N�..ӂL�.8N^ */
	$"4E75 8C48 414E 444C 4545 5645 4E54 5300"            /* Nu�HANDLEEVENTS. */
	$"0000 4E56 FF00 4EB9 0000 D922 4EB9 0000"            /* ..NV�.N�..�"N�.. */
	$"9936 4EB9 0000 D7AE 422D F2A1 4EB9 0000"            /* �6N�..׮B-�N�.. */
	$"CFFE 4EB9 0000 C07E 422D F261 422D F2A3"            /* ��N�..�~B-�aB-� */
	$"486D F270 205F 20B8 020C 202D F270 0480"            /* Hm�p _ �.. -�p.� */
	$"A1C4 4E00 2B40 F270 4A2D F869 6716 4878"            /* ��N.+@�pJ-�ig.Hx */
	$"0000 4878 0000 4878 0000 487A AB8E 4EB9"            /* ..Hx..Hx..Hz��N� */
	$"0000 AC06 594F 3F3C 0080 A9C0 205F 2B48"            /* ..�.YO?<.��� _+H */
	$"F05A 4AAD F05A 56C0 4400 1F00 4EB9 0000"            /* �ZJ��ZV�D...N�.. */
	$"ACEA 2F2D F05A A93C 4EB9 0000 75E0 4EB9"            /* ��/-�Z�<N�..u�N� */
	$"0000 9C68 4EB9 0000 A2FA 4EB9 0000 BE30"            /* ..�hN�..��N�..�0 */
	$"2F3C FFFF 0080 4EB9 0000 8440 2F2D FC3A"            /* /<��.�N�..�@/-�: */
	$"4227 4EB9 0000 C530 4EB9 0000 7572 594F"            /* B'N�..�0N�..urYO */
	$"486D F058 4EB9 0000 C0BE 201F 3B40 F054"            /* Hm�XN�..�� .;@�T */
	$"4A6D F054 6600 00A8 594F 3F3C 0080 A949"            /* Jm�Tf..�YO?<.��I */
	$"205F 2F08 2F2D FC3E A94D A937 3B7C 0004"            /*  _/./-�>�M�7;|.. */
	$"F058 554F 4EBA F694 101F 6700 0082 3B7C"            /* �XUON���..g..�;| */
	$"0005 F058 554F 4EBA F370 101F 6770 426D"            /* ..�XUON��p..gpBm */
	$"F058 4EB9 0000 A140 605E 4EBA FC00 554F"            /* �XN�..�@`^N��.UO */
	$"4EB9 0000 BD08 101F 6708 4EB9 0000 A170"            /* N�..�...g.N�..�p */
	$"6006 4EB9 0000 A140 4EB9 0000 BF86 4A2D"            /* `.N�..�@N�..��J- */
	$"F2A1 6734 4A2D F261 662E 594F 4EBA ADE0"            /* �g4J-�af.YON��� */
	$"201F 4A80 6F22 554F 3F3C 00B4 4EB9 0000"            /*  .J�o"UO?<.�N�.. */
	$"82CA 301F 3B40 F056 0C6D 0001 F056 6708"            /* ��0.;@�V.m..�Vg. */
	$"4267 A938 422D F2A1 4A2D F2A1 679C 4A6D"            /* Bg�8B-�J-�g�Jm */
	$"F058 6734 486D F986 486E FF00 3F3C 0096"            /* �Xg4Hm��Hn�.?<.� */
	$"3F2D F058 4EB9 0000 C746 584F 486E FF00"            /* ?-�XN�..�FXOHn�. */
	$"486D F986 486D F986 4EB9 0000 7640 3F3C"            /* Hm��Hm��N�..v@?< */
	$"0096 4EB9 0000 830A 4EBA C7EE 4EB9 0000"            /* .�N�..�.N���N�.. */
	$"C17A 4E5E 4E75 846D 6169 6E00 0000 4E56"            /* �zN^Nu�main...NV */
	$"FDFA 48E7 1020 422E 0008 594F 3F3C 00E2"            /* ��H�. B...YO?<.� */
	$"4878 0000 4878 FFFF A97C 205F 2448 200A"            /* Hx..Hx���| _$H . */
	$"6700 0126 2F0A 2F3C 0003 0001 4EB9 0000"            /* g..&/./<....N�.. */
	$"AF6A 2F0A 3F3C 0005 486E FDFE 486D FC42"            /* �j/.?<..Hn��Hm�B */
	$"4EB9 0000 C334 584F 486E FDFE 4EB9 0000"            /* N�..�4XOHn��N�.. */
	$"AD44 2F0A 3F3C 0006 486E FDFE 486D FC56"            /* �D/.?<..Hn��Hm�V */
	$"4EB9 0000 C334 584F 486E FDFE 4EB9 0000"            /* N�..�4XOHn��N�.. */
	$"AD44 2F0A 3F3C 0005 4EB9 0000 B328 2F0A"            /* �D/.?<..N�..�(/. */
	$"A915 486E FDFA 3F3C FFFF 4EB9 0000 8A0E"            /* �.Hn��?<��N�..�. */
	$"2F2D F64A 486E FFFE 4EB9 0000 8DBC 162E"            /* /-�JHn��N�..��.. */
	$"FFFF 554F 7000 1003 2F00 486D FC69 4878"            /* ��UOp.../.Hm�iHx */
	$"0001 4EB9 0000 DCD0 101F 67D4 7000 1003"            /* ..N�..��..g�p... */
	$"5340 670A 5340 6772 5540 675E 606C 2F0A"            /* S@g.S@grU@g^`l/. */
	$"3F3C 0005 486E FEFE 4EB9 0000 ADB2 554F"            /* ?<..Hn��N�..��UO */
	$"486D FC42 486E FEFE 4EB9 0000 C388 301F"            /* Hm�BHn��N�..È0. */
	$"3600 2F0A 3F3C 0006 486E FEFE 4EB9 0000"            /* 6./.?<..Hn��N�.. */
	$"ADB2 554F 486D FC56 486E FEFE 4EB9 0000"            /* ��UOHm�VHn��N�.. */
	$"C388 301F 3600 1D7C 0001 0008 1B7C 0001"            /* È0.6..|.....|.. */
	$"F2A3 1B7C 0001 F2A2 6010 422D F2A2 1D7C"            /* �.|..�`.B-�.| */
	$"0001 0008 1B7C 0001 F2A3 486E FDFA 4EB9"            /* .....|..�Hn��N� */
	$"0000 8B34 2F0A A982 4CDF 0408 4E5E 205F"            /* ..�4/.��L�..N^ _ */
	$"4ED0 9443 4F4E 4649 4755 5245 4249 4C4C"            /* NДCONFIGUREBILL */
	$"4144 4452 4553 5300 0000 4E56 FF00 48E7"            /* ADDRESS...NV�.H� */
	$"1030 266E 000C 246E 0008 4A2D F2A3 660A"            /* .0&n..$n..J-�f. */
	$"554F 4EBA FE7A 101F 1600 102D F2A3 C02D"            /* UON��z.....-��- */
	$"F2A2 674C 486E FF00 486D FC42 4EB9 0000"            /* �gLHn�.Hm�BN�.. */
	$"C334 41EE FF00 2608 2043 7000 1010 5240"            /* �4A��.&. Cp...R@ */
	$"48C0 2043 224B A22E 486E FF00 486D FC56"            /* H� C"K�.Hn�.Hm�V */
	$"4EB9 0000 C334 41EE FF00 2608 2043 7000"            /* N�..�4A��.&. Cp. */
	$"1010 5240 48C0 2043 224A A22E 504F 602C"            /* ..R@H� C"J�.PO`, */
	$"41ED FC6A 2608 2043 7000 1010 5240 48C0"            /* A��j&. Cp...R@H� */
	$"2043 224B A22E 41ED FC6A 2608 2043 7000"            /*  C"K�.A��j&. Cp. */
	$"1010 5240 48C0 2043 224A A22E 1D6D F2A3"            /* ..R@H� C"J�..m� */
	$"0010 4CDF 0C08 4E5E 205F 504F 4ED0 8E47"            /* ..L�..N^ _PONЎG */
	$"4554 4249 4C4C 4144 4452 4553 5300 0000"            /* ETBILLADDRESS... */
	$"4E56 FF00 2F2E 000A A873 486E FF00 3F3C"            /* NV�./...�sHn�.?< */
	$"03A0 3F2E 0008 4EB9 0000 E980 486E FF00"            /* .�?...N�..�Hn�. */
	$"486E FF00 486D F2AA 486D F3BA 486D F2BA"            /* Hn�.Hm�Hm�Hm� */
	$"4EB9 0000 CC7E 2F2E 000A 3F2E 0008 486E"            /* N�..�~/...?...Hn */
	$"FF00 4EB9 0000 B974 4E5E 205F 5C4F 4ED0"            /* �.N�..�tN^ _\ON� */
	$"8B44 4953 504C 4159 4954 454D 0000 4E56"            /* �DISPLAYITEM..NV */
	$"FEF0 2F03 554F 206E 0008 2F28 FFFA 7000"            /* ��/.UO n../(��p. */
	$"102E 0012 3F00 7000 102E 0010 3F00 7000"            /* ....?.p.....?.p. */
	$"102E 000E 3F00 4EB9 0000 B8E6 101F 675C"            /* ....?.N�..��..g\ */
	$"554F 486D FC6C 486E FEF0 3F3C 0320 3F2E"            /* UOHm�lHn��?<. ?. */
	$"000C 4EB9 0000 C746 584F 486E FEF0 4EB9"            /* ..N�..�FXOHn��N� */
	$"0000 C21A 301F 3600 4A43 6730 486D FC6C"            /* ..�.0.6.JCg0Hm�l */
	$"486E FFF0 3043 2F08 4EB9 0000 D6F2 584F"            /* Hn��0C/.N�..��XO */
	$"486E FFF0 486D FC6C 486D FC6C 4EB9 0000"            /* Hn��Hm�lHm�lN�.. */
	$"7640 3F3C 00B9 4EB9 0000 830A 261F 4E5E"            /* v@?<.�N�..�.&.N^ */
	$"205F 4FEF 000C 4ED0 8544 6F69 7430 0000"            /*  _O�..NЅDoit0.. */
	$"4E56 FEF6 2F03 486D F2A4 4EB9 0000 D7E0"            /* NV��/.Hm�N�..�� */
	$"594F 3F3C 0080 4878 0000 4878 FFFF A97C"            /* YO?<.�Hx..Hx���| */
	$"205F 2D48 FFFA 4AAE FFFA 6700 00EC 7601"            /*  _-H��J���g..�v. */
	$"603C 554F 486E FEFA 3F3C 03A0 3F03 4EB9"            /* `<UOHn��?<.�?.N� */
	$"0000 C746 584F 486E FEFA 486D FC6C 3F3C"            /* ..�FXOHn��Hm�l?< */
	$"0001 4EB9 0000 DD64 101F 6710 2F2E FFFA"            /* ..N�..�d..g./.�� */
	$"3F03 487A FE9C 4EB9 0000 B138 5243 0C43"            /* ?.Hz��N�..�8RC.C */
	$"0014 6FBE 2F2E FFFA 2F3C 0002 0001 4EB9"            /* ..o�/.��/<....N� */
	$"0000 AF6A 2F2E FFFA A915 486E FEF6 3F3C"            /* ..�j/.���.Hn��?< */
	$"FFFF 4EB9 0000 8A0E 2F2D F64E 486E FFFE"            /* ��N�..�./-�NHn�� */
	$"4EB9 0000 8DBC 7000 102E FFFF 5740 0C40"            /* N�..��p...��W@.@ */
	$"0006 624C 5540 6D08 6746 5340 6718 602A"            /* ..bLU@m.gFS@g.`* */
	$"1F3C 0003 1F3C 0004 4227 3F3C 0001 2F0E"            /* .<...<..B'?<../. */
	$"4EBA FE8C 602A 1F3C 0006 4227 4227 3F3C"            /* N���`*.<..B'B'?< */
	$"0003 2F0E 4EBA FE78 6016 1F3C 0007 1F3C"            /* ../.N��x`..<...< */
	$"0008 1F3C 0009 3F3C 0002 2F0E 4EBA FE60"            /* ...<..?<../.N��` */
	$"0C6E 0001 FFFE 6690 486E FEF6 4EB9 0000"            /* .n..��f�Hn��N�.. */
	$"8B34 2F2E FFFA A982 261F 4E5E 4E75 8F44"            /* �4/.����&.N^Nu�D */
	$"4F52 4547 4953 5445 5241 424F 5554 0000"            /* OREGISTERABOUT.. */
	$"4E56 FEFA 2F0A 206E 000C 43EE FEFA 703F"            /* NV��/. n..C���p? */
	$"22D8 51C8 FFFC 486D FC6E 486E FEFA 486D"            /* "�Q���Hm�nHn��Hm */
	$"FC6E 486D FC6E A98B 594F 3F3C 00E1 4878"            /* �nHm�n��YO?<.�Hx */
	$"0000 4878 FFFF A97C 205F 2448 200A 6700"            /* ..Hx���| _$H .g. */
	$"008C 2F0A 2F3C 0003 0001 4EB9 0000 AF6A"            /* .�/./<....N�..�j */
	$"2F0A 3F3C 0004 2F2E 0008 4EB9 0000 AD44"            /* /.?<../...N�..�D */
	$"2F0A 4878 0004 3F3C 7FFF A97E 2F0A A915"            /* /.Hx..?<.��~/.�. */
	$"486E FFFA 3F3C FFFF 4EB9 0000 8A0E 2F2D"            /* Hn��?<��N�..�./- */
	$"F64A 486E FFFE 4EB9 0000 8DBC 554F 306E"            /* �JHn��N�..��UO0n */
	$"FFFE 2F08 486D FC70 4878 0100 4EB9 0000"            /* ��/.Hm�pHx..N�.. */
	$"DCD0 101F 67D8 0C6E 0001 FFFE 6610 2F0A"            /* ��..g�.n..��f./. */
	$"3F3C 0004 2F2E 0008 4EB9 0000 ADB2 486E"            /* ?<../...N�..��Hn */
	$"FFFA 4EB9 0000 8B34 2F0A A982 245F 4E5E"            /* ��N�..�4/.��$_N^ */
	$"205F 504F 4ED0 8C45 4449 5441 434F 4D4D"            /*  _PONЌEDITACOMM */
	$"454E 5400 0000 4E56 FEFA 48E7 1E00 206E"            /* ENT...NV��H�.. n */
	$"000A 43EE FEFA 703F 22D8 51C8 FFFC 1D7C"            /* ..C���p?"�Q���.| */
	$"0001 000E 7A00 1A2E FEFA 0C45 0010 5EC0"            /* ....z...��.E..^� */
	$"4400 0C45 000D 5DC1 4401 8200 6600 00DA"            /* D..E..]�D.�.f..� */
	$"7000 102E 0008 5940 672E 5340 673A 5340"            /* p.....Y@g.S@g:S@ */
	$"6702 6042 7000 102E FEFC 0C40 0037 56C0"            /* g.`Bp...��.@.7V� */
	$"4400 7200 122E FEFB 0C41 0033 56C1 4401"            /* D.r...��.A.3V�D. */
	$"8200 6600 00A4 601E 7000 102E FEFB 0C40"            /* �.f..�`.p...��.@ */
	$"0034 6600 0094 600E 7000 102E FEFB 0C40"            /* .4f..�`.p...��.@ */
	$"0035 6600 0084 7800 3C05 7601 6060 41EE"            /* .5f..�x.<.v.``A� */
	$"FEFA 7000 1030 3000 0040 0100 3D40 FFFA"            /* ��p..00..@..=@�� */
	$"486E FFFA 486E FFFC 4EB9 0000 E89A 3005"            /* Hn��Hn��N�..�0. */
	$"9043 0800 0000 6710 7002 222E FFFC 4EB9"            /* �C....g.p.".��N� */
	$"0000 04DA 2D40 FFFC 700A B0AE FFFC 6E0C"            /* ...�-@��p.����n. */
	$"202E FFFC 7209 9081 2D40 FFFC 3044 2008"            /*  .��r.��-@��0D . */
	$"D0AE FFFC 3800 0C43 7FFF 6706 5243 B646"            /* Ю��8..C.�g.RC�F */
	$"6F9C 3044 2008 720A 4EB9 0000 05E8 4A80"            /* o�0D .r.N�...�J� */
	$"56C0 4400 1D40 000E 4CDF 0078 4E5E 205F"            /* V�D..@..L�.xN^ _ */
	$"5C4F 4ED0 8943 4845 434B 4341 5244 0000"            /* \ONЉCHECKCARD.. */
	$"4E56 FCEA 48E7 1800 206E 0008 43EE FDEA"            /* NV��H�.. n..C��� */
	$"703F 22D8 51C8 FFFC 7801 486E FEEA 205F"            /* p?"�Q���x.Hn�� _ */
	$"2038 020C A9C6 41EE FDEA 2608 2043 7000"            /*  8..��A���&. Cp. */
	$"1010 5240 48C0 2043 43EE FF00 A22E 7000"            /* ..R@H� CC��.�.p. */
	$"102E FF00 5B40 6600 0180 554F 7000 102E"            /* ..�.[@f..�UOp... */
	$"FF01 3F00 321F 0C41 0030 5CC0 6D08 0C41"            /* �.?.2..A.0\�m..A */
	$"0039 6F02 5FC0 4400 1E80 101F 6700 015A"            /* .9o._�D..�..g..Z */
	$"554F 7000 102E FF02 3F00 321F 0C41 0030"            /* UOp...�.?.2..A.0 */
	$"5CC0 6D08 0C41 0039 6F02 5FC0 4400 1E80"            /* \�m..A.9o._�D..� */
	$"101F 6700 0134 7000 102E FF03 0C40 002F"            /* ..g..4p...�..@./ */
	$"6600 0126 554F 7000 102E FF04 3F00 321F"            /* f..&UOp...�.?.2. */
	$"0C41 0030 5CC0 6D08 0C41 0039 6F02 5FC0"            /* .A.0\�m..A.9o._� */
	$"4400 1E80 101F 6700 0100 554F 7000 102E"            /* D..�..g...UOp... */
	$"FF05 3F00 321F 0C41 0030 5CC0 6D08 0C41"            /* �.?.2..A.0\�m..A */
	$"0039 6F02 5FC0 4400 1E80 101F 6700 00DA"            /* .9o._�D..�..g..� */
	$"486E FCEA 486E FDEA 2F3C 0002 0004 4EB9"            /* Hn��Hn��/<....N� */
	$"0000 C992 41EE FCEA 2608 2043 7000 1010"            /* ..ɒA���&. Cp... */
	$"5240 48C0 2043 43EE FF00 A22E 486E FF00"            /* R@H� CC��.�.Hn�. */
	$"486E FEFC 4EB9 0000 E89A 486E FCEA 486E"            /* Hn��N�..�Hn��Hn */
	$"FDEA 2F3C 0002 0001 4EB9 0000 C992 41EE"            /* ��/<....N�..ɒA� */
	$"FCEA 2608 2043 7000 1010 5240 48C0 2043"            /* ��&. Cp...R@H� C */
	$"43EE FF00 A22E 486E FF00 486E FEF8 4EB9"            /* C��.�.Hn�.Hn��N� */
	$"0000 E89A 7032 B0AE FEFC 504F 6F10 203C"            /* ..�p2����POo. < */
	$"0000 07D0 D0AE FEFC 2D40 FEFC 600E 203C"            /* ...�Ю��-@��`. < */
	$"0000 076C D0AE FEFC 2D40 FEFC 7001 B0AE"            /* ...lЮ��-@��p.�� */
	$"FEF8 6E34 700C B0AE FEF8 6D2C 306E FEEC"            /* ��n4p.����m,0n�� */
	$"B1EE FEF8 5FC0 4400 306E FEEA B1EE FEFC"            /* ����_�D.0n����� */
	$"57C1 4401 C200 306E FEEA B1EE FEFC 5DC0"            /* W�D.�.0n�����]� */
	$"4400 8001 6702 7800 1D44 000C 4CDF 0018"            /* D.�.g.x..D..L�.. */
	$"4E5E 2E9F 4E75 8F43 4845 434B 4558 5049"            /* N^.�Nu�CHECKEXPI */
	$"5241 5449 4F4E 0000 4E56 FFFE 554F A994"            /* RATION..NV��UO�� */
	$"301F 3D40 FFFE 554F 2F2D F466 2F2D F61E"            /* 0.=@��UO/-�f/-�. */
	$"4EB9 0000 A4D8 301F 3D40 0008 3F2E FFFE"            /* N�..��0.=@..?.�� */
	$"A998 4E5E 4E75 8D50 5444 4F50 4147 4553"            /* ��N^Nu�PTDOPAGES */
	$"4554 5550 0000 4E56 0000 322E 0008 0C41"            /* ETUP..NV..2....A */
	$"000A 6D06 7007 D041 3200 7030 D041 3D40"            /* ..m.p.�A2.p0�A=@ */
	$"000A 4E5E 205F 544F 4ED0 864E 4942 424C"            /* ..N^ _TONІNIBBL */
	$"4500 0000 4E56 FFEA 48E7 1020 206E 0008"            /* E...NV��H�.  n.. */
	$"2D50 FFEA 2D68 0004 FFEE 76FF 45EE FFEA"            /* -P��-h..��v�E��� */
	$"701F D06A 0006 48C0 2200 E881 E089 E089"            /* p.�j..H�".����� */
	$"E089 E689 D280 EA81 7004 4EB9 0000 04DA"            /* ���Ҁ�p.N�...� */
	$"3D40 FFF6 594F 7002 D06A 0004 C1EE FFF6"            /* =@��YOp.�j..���� */
	$"2F00 201F A11E 2E88 205F 2D48 FFF2 554F"            /* /. .�..� _-H��UO */
	$"3EB8 0220 301F 3600 2D6E FFEA FFF8 2D6E"            /* >�. 0.6.-n����-n */
	$"FFEE FFFC 7002 D06E FFFC 3D40 FFFC 4A43"            /* ����p.�n��=@��JC */
	$"660C 486D F3FA A86F 486E FFF2 A875 3D43"            /* f.Hm���oHn��u=C */
	$"000C 4CDF 0408 4E5E 2E9F 4E75 8D4F 5045"            /* ..L�..N^.�Nu�OPE */
	$"4E4F 4646 5343 5245 454E 0000 4E56 0000"            /* NOFFSCREEN..NV.. */
	$"2F2D F3FC 205F A01F 486D F3FA A87D 4E5E"            /* /-�� _�.Hm���}N^ */
	$"4E75 8E43 4C4F 5345 4F46 4653 4352 4545"            /* Nu�CLOSEOFFSCREE */
	$"4E00 0000 4E56 FFF4 48E7 1800 362E 000C"            /* N...NV��H�..6... */
	$"41ED FD70 2808 2044 7000 1010 5240 48C0"            /* A��p(. Dp...R@H� */
	$"2044 43EE FFF4 A22E 554F 7000 3003 2F00"            /*  DC����.UOp.0./. */
	$"486D FD72 4878 0020 4EB9 0000 DCD0 101F"            /* Hm�rHx. N�..��.. */
	$"6704 0443 0020 7000 3003 7200 1200 0041"            /* g..C. p.0.r....A */
	$"0100 3D41 FFF4 554F 486E FFF5 206E 0008"            /* ..=A��UOHn�� n.. */
	$"2F28 FFFC 4878 0001 201F 225F 205F A9EF"            /* /(��Hx.. ."_ _�� */
	$"3E80 301F 3600 4CDF 0018 4E5E 205F 5C4F"            /* >�0.6.L�..N^ _\O */
	$"4ED0 8841 6464 4368 6172 3000 0000 4E56"            /* NЈAddChar0...NV */
	$"FFFC 48E7 1C20 246E 0008 594F 42A7 201F"            /* ��H�. $n..YOB� . */
	$"A122 2E88 205F 2D48 FFFC 594F 2F0A 4EB9"            /* �".� _-H��YO/.N� */
	$"0000 E790 201F 5380 2A00 7800 6000 00C2"            /* ..� .S�*.x.`..� */
	$"594F 2F12 2F04 201F D09F 2E80 205F 1010"            /* YO/./. .П.� _.. */
	$"4880 0280 0000 00FF 3600 3003 0440 000D"            /* H�.�...�6.0..@.. */
	$"673E 0C40 006D 6244 0440 0013 6D3E 6726"            /* g>.@.mbD.@..m>g& */
	$"0440 000B 6D36 671E 5540 6D30 5540 6D16"            /* .@..m6g.U@m0U@m. */
	$"672A 0440 000B 6D0E 5F40 6D20 0440 001A"            /* g*.@..m._@m .@.. */
	$"6D04 5D40 6D16 3F03 2F0E 4EBA FEE8 6056"            /* m.]@m.?./.N���`V */
	$"3F3C 002F 2F0E 4EBA FEDC 604A 3F3C 0025"            /* ?<.//.N���`J?<.% */
	$"2F0E 4EBA FED0 554F 700F 3043 2208 E681"            /* /.N���UOp.0C".� */
	$"E089 E089 E089 E889 D288 E881 C280 3F01"            /* �������҈�?. */
	$"4EBA FDB4 301F 3F00 2F0E 4EBA FEA8 554F"            /* N���0.?./.N���UO */
	$"3003 720F C081 3F00 4EBA FD9C 301F 3F00"            /* 0.r.��?.N���0.?. */
	$"2F0E 4EBA FE90 0C84 7FFF FFFF 6714 5284"            /* /.N���.�.���g.R� */
	$"B885 6F00 FF3C 600A 3F3C 0020 2F0E 4EBA"            /* ��o.�<`.?<. /.N� */
	$"FE74 594F 2F2E FFFC 4EB9 0000 E790 201F"            /* �tYO/.��N�..� . */
	$"720B 4EB9 0000 05E8 4A80 66DC 2D6E FFFC"            /* r.N�...�J�f�-n�� */
	$"000C 4CDF 0438 4E5E 2E9F 4E75 8E45 4E43"            /* ..L�.8N^.�Nu�ENC */
	$"4F44 4542 4152 434F 4445 5300 0000 4E56"            /* ODEBARCODES...NV */
	$"0000 594F 2F2E 0008 4EB9 0000 E790 201F"            /* ..YO/...N�..� . */
	$"720B 4EB9 0000 056A 3D40 000C 4E5E 2E9F"            /* r.N�...j=@..N^.� */
	$"4E75 9343 4F55 4E54 4542 4152 434F 4445"            /* Nu�COUNTEBARCODE */
	$"4348 554E 4B53 0000 4E56 0000 554F 2F2E"            /* CHUNKS..NV..UO/. */
	$"0008 4EBA FFBA 301F 5240 48C0 2200 E089"            /* ..N���0.R@H�".�� */
	$"E089 E089 EE89 D280 E281 3D41 000C 4E5E"            /* �����Ҁ�=A..N^ */
	$"2E9F 4E75 9243 4F55 4E54 4542 4152 434F"            /* .�Nu�COUNTEBARCO */
	$"4445 4C49 4E45 5300 0000 4E56 FEFC 48E7"            /* DELINES...NV��H� */
	$"1830 266E 000E 362E 000C 246E 0008 554F"            /* .0&n..6...$n..UO */
	$"2F0B 4EBA FF6A 301F 3800 0C43 0001 6D04"            /* /.N��j0.8..C..m. */
	$"B644 6F04 7000 6002 7001 1F00 4EB9 0000"            /* �Do.p.`.p...N�.. */
	$"ACEA 14BC 000B 594F 2F13 3003 5340 C1FC"            /* ��.�..YO/.0.S@�� */
	$"000B 48C0 2F00 201F D09F 2E80 205F 2F08"            /* ..H�/. .П.� _/. */
	$"486A 0001 4878 000B 201F 225F 205F A02E"            /* Hj..Hx.. ."_ _�. */
	$"0C43 0001 6606 363C 0510 9644 486D FD92"            /* .C..f.6<..�DHm�� */
	$"2F0A 554F 3043 2008 7224 4EB9 0000 05E8"            /* /.UO0C .r$N�...� */
	$"3F00 4EBA FC32 301F 7200 3200 7000 1001"            /* ?.N��20.r.2.p... */
	$"0040 0100 3D40 FEFE 486E FEFE 554F 3043"            /* .@..=@��Hn��UO0C */
	$"2008 7224 4EB9 0000 056A 3F00 4EBA FC08"            /*  .r$N�...j?.N��. */
	$"301F 7200 3200 7000 1001 0040 0100 3D40"            /* 0.r.2.p....@..=@ */
	$"FEFC 486E FEFC 486D FD92 486E FF00 3F3C"            /* ��Hn��Hm��Hn�.?< */
	$"0005 4EB9 0000 DE7E 41EE FF00 2808 2044"            /* ..N�..�~A��.(. D */
	$"7000 1010 5240 48C0 2044 224A A22E 4FEF"            /* p...R@H� D"J�.O� */
	$"001A 4CDF 0C18 4E5E 205F 4FEF 000A 4ED0"            /* ..L�..N^ _O�..N� */
	$"8F47 4554 4542 4152 434F 4445 4C49 4E45"            /* �GETEBARCODELINE */
	$"0000 4E56 FEFE 48E7 1C00 362E 000A 3A2E"            /* ..NV��H�..6...:. */
	$"0008 2F2E 0010 3F03 486E FEFE 4EBA FECC"            /* ../...?.Hn��N��� */
	$"306E 000E 3003 9045 0240 0001 7200 1200"            /* 0n..0.�E.@..r... */
	$"48C1 203C 0000 0100 4EB9 0000 04DA D088"            /* H� <....N�...�Ј */
	$"3D40 FFFE 3003 9045 48C0 2200 E089 E089"            /* =@��0.�EH�".���� */
	$"E089 EE89 D280 E281 7021 4EB9 0000 04DA"            /* ���Ҁ�p!N�...� */
	$"306E 000C D088 3800 486E FEFE 486E FFFE"            /* 0n..Ј8.Hn��Hn�� */
	$"3F04 1F3C 0001 4EB9 0000 9738 4CDF 0038"            /* ?..<..N�..�8L�.8 */
	$"4E5E 205F 4FEF 000C 4ED0 9144 5241 5745"            /* N^ _O�..NБDRAWE */
	$"4241 5243 4F44 4543 4855 4E4B 0000 4E56"            /* BARCODECHUNK..NV */
	$"0000 48E7 1E20 246E 000C 3C2E 000A 3A2E"            /* ..H�. $n..<...:. */
	$"0008 554F 2F0A 4EBA FDB6 301F 3800 7601"            /* ..UO/.N���0.8.v. */
	$"6018 2F0A 3F06 3F05 3F03 3F3C 0001 4EBA"            /* `./.?.?.?.?<..N� */
	$"FF32 0C43 7FFF 6706 5243 B644 6FE4 4CDF"            /* �2.C.�g.RC�Do�L� */
	$"0478 4E5E 205F 504F 4ED0 8644 5241 5749"            /* .xN^ _PONІDRAWI */
	$"5400 0000 4E56 0000 1F3C 0005 4EB9 0000"            /* T...NV...<..N�.. */
	$"D52A 4267 A888 A89E 2F2E 0008 2F3C 000A"            /* �*Bg����/.../<.. */
	$"0010 A8A9 4E5E 2E9F 4E75 8953 4554 5550"            /* ..��N^.�Nu�SETUP */
	$"504F 5254 0000 4E56 FFF4 2F0A 246E 000C"            /* PORT..NV��/.$n.. */
	$"206E 0010 2D50 FFF8 2D68 0004 FFFC 206E"            /*  n..-P��-h..�� n */
	$"0008 2050 2F28 0004 205F A029 206E 0008"            /* .. P/(.. _�) n.. */
	$"2050 2068 0004 2F10 594F 206E 0008 2050"            /*  P h../.YO n.. P */
	$"2F28 0004 4EB9 0000 E790 201F 2F00 486E"            /* /(..N�..� ./.Hn */
	$"FFF8 42A7 2F0A 486E FFF4 486E FFF6 4EB9"            /* ��B�/.Hn��Hn��N� */
	$"0000 9F50 206E 0008 2050 2F28 0004 205F"            /* ..�P n.. P/(.. _ */
	$"A02A 7014 D052 3480 245F 4E5E 205F 4FEF"            /* �*p.�R4�$_N^ _O� */
	$"000C 4ED0 9C50 7269 6E74 5465 7874 4F62"            /* ..NМPrintTextOb */
	$"6A65 6374 5F44 7261 7744 6174 6154 6578"            /* ject_DrawDataTex */
	$"7400 0000 4E56 FFF8 48E7 1830 382E 0016"            /* t...NV��H�.08... */
	$"266E 000C 246E 0008 206E 0010 2D50 FFF8"            /* &n..$n.. n..-P�� */
	$"2D68 0004 FFFC 36BC 0001 302E FFFC 906E"            /* -h..��6�..0.���n */
	$"0014 48C0 7221 4EB9 0000 056A 7202 4EB9"            /* ..H�r!N�...jr.N� */
	$"0000 04DA 3480 0C44 0001 6F32 302E FFFC"            /* ...�4�.D..o20.�� */
	$"906E FFF8 48C0 7221 4EB9 0000 056A 7202"            /* �n��H�r!N�...jr. */
	$"4EB9 0000 04DA 3600 3004 5540 C1C3 7201"            /* N�...�6.0.U@��r. */
	$"D252 D240 3681 3013 D043 5340 3480 4CDF"            /* �R�@6�0.�CS@4�L� */
	$"0C18 4E5E 205F 4FEF 0010 4ED0 8F47 4554"            /* ..N^ _O�..NЏGET */
	$"5041 4745 4241 5243 4F44 4553 0000 4E56"            /* PAGEBARCODES..NV */
	$"FFF2 48E7 1C00 206E 000C 2D50 FFF8 2D68"            /* ��H�.. n..-P��-h */
	$"0004 FFFC 7600 554F 486E FFF8 4EBA F956"            /* ..��v.UOHn��N��V */
	$"301F 6600 00AC 486E FFF8 4EBA FE68 486E"            /* 0.f..�Hn��N��hHn */
	$"FFF8 486E FFF4 2F2E 0008 4878 0007 2F2E"            /* ��Hn��/...Hx../. */
	$"0008 4EB9 0000 E35A 504F 2050 4E90 206E"            /* ..N�..�ZPO PN� n */
	$"0008 2050 316E FFF4 000C 554F 206E 0008"            /* .. P1n��..UO n.. */
	$"2050 2F28 0008 4EBA FBA6 301F 3A00 3F3C"            /*  P/(..N���0.:.?< */
	$"0001 206E 0008 2050 3F28 000C 486E FFF8"            /* .. n.. P?(..Hn�� */
	$"486E FFF2 486E FFF6 4EBA FEDA BA6E FFF6"            /* Hn��Hn��N��ںn�� */
	$"6E04 7601 6036 302E FFFC 906E FFF8 48C0"            /* n.v.`60.���n��H� */
	$"7221 4EB9 0000 056A 7202 4EB9 0000 04DA"            /* r!N�...jr.N�...� */
	$"3800 3005 906E FFF6 D044 5340 48C0 3044"            /* 8.0.�n���DS@H�0D */
	$"2208 4EB9 0000 056A 5280 3600 4EBA F94E"            /* ".N�...jR�6.N��N */
	$"3D43 0010 4CDF 0038 4E5E 205F 504F 4ED0"            /* =C..L�.8N^ _PON� */
	$"9A50 7269 6E74 5465 7874 4F62 6A65 6374"            /* �PrintTextObject */
	$"5F43 6F75 6E74 5061 6765 7300 0000 4E56"            /* _CountPages...NV */
	$"FFF2 48E7 1C00 3A2E 0010 182E 000E 162E"            /* ��H�..:......... */
	$"000C 206E 0016 2D50 FFF8 2D68 0004 FFFC"            /* .. n..-P��-h..�� */
	$"1804 1603 486E FFF8 4EBA FD6A 0C45 0001"            /* ....Hn��N��j.E.. */
	$"662E 486E FFF8 486E FFF6 2F2E 0008 4878"            /* f.Hn��Hn��/...Hx */
	$"0007 2F2E 0008 4EB9 0000 E35A 504F 2050"            /* ../...N�..�ZPO P */
	$"4E90 206E 0008 2050 316E FFF6 000C 606E"            /* N� n.. P1n��..`n */
	$"206E 0008 2050 0C68 8000 000C 665A 554F"            /*  n.. P.h�...fZUO */
	$"486E FFF8 4EBA F7FE 301F 6640 486E FFF8"            /* Hn��N���0.f@Hn�� */
	$"4EBA FD12 486E FFF8 486E FFF6 2F2E 0008"            /* N��.Hn��Hn��/... */
	$"4878 0007 2F2E 0008 4EB9 0000 E35A 504F"            /* Hx../...N�..�ZPO */
	$"2050 4E90 206E 0008 2050 316E FFF6 000C"            /*  PN� n.. P1n��.. */
	$"4EBA F86A 2F2E 0012 A873 600C 206E 0008"            /* N��j/...�s`. n.. */
	$"2050 316E FFF8 000C 3D6E FFF8 FFF6 3F05"            /*  P1n��..=n����?. */
	$"206E 0008 2050 3F28 000C 486E FFF8 486E"            /*  n.. P?(..Hn��Hn */
	$"FFF4 486E FFF2 4EBA FD7C 554F 206E 0008"            /* ��Hn��N��|UO n.. */
	$"2050 2F28 0008 4EBA FA16 301F 3600 B66E"            /*  P/(..N��.0.6.�n */
	$"FFF2 6C04 3D43 FFF2 3A2E FFF4 382E FFF2"            /* ��l.=C��:.��8.�� */
	$"3605 6024 206E 0008 2050 2F28 0008 3F2E"            /* 6.`$ n.. P/(..?. */
	$"FFFA 3F2E FFF6 3F03 3F2E FFF4 4EBA FB74"            /* ��?.��?.?.��N��t */
	$"0C43 7FFF 6706 5243 B644 6FD8 426E 001A"            /* .C.�g.RC�Do�Bn.. */
	$"4CDF 0038 4E5E 205F 4FEF 0012 4ED0 9850"            /* L�.8N^ _O�..NИP */
	$"7269 6E74 5465 7874 4F62 6A65 6374 5F44"            /* rintTextObject_D */
	$"7261 7750 6167 6500 0000 4E56 FFF0 48E7"            /* rawPage...NV��H� */
	$"0030 97CB 594F 2F2E 0008 4EBA F852 205F"            /* .0��YO/...N��R _ */
	$"2448 486E FFF8 42A7 3F3C 01F0 554F 2F0A"            /* $HHn��B�?<.�UO/. */
	$"4EBA F9B6 301F 48C0 7221 4EB9 0000 04DA"            /* N���0.H�r!N�...� */
	$"3F00 A8A7 554F 486E FFF8 4EBA F6C8 301F"            /* ?.��UOHn��N���0. */
	$"6632 594F 486E FFF8 A8F3 205F 2648 486E"            /* f2YOHn���� _&HHn */
	$"FFF0 2F3C 8AD0 8AD0 2F3C 7530 7530 A8A7"            /* ��/<�Њ�/<u0u0�� */
	$"486E FFF0 A87B 2F0A 42A7 4EBA FB62 A8F4"            /* Hn��{/.B�N��b�� */
	$"4EBA F73A 2F0A 205F A023 2D4B 000C 4CDF"            /* N��:/. _�#-K..L� */
	$"0C00 4E5E 2E9F 4E75 9147 4554 4241 5243"            /* ..N^.�Nu�GETBARC */
	$"4F44 4550 4943 5455 5245 0000 4E56 FFFE"            /* ODEPICTURE..NV�� */
	$"554F A994 301F 3D40 FFFE 206D F466 2050"            /* UO��0.=@�� m�f P */
	$"216E 000C 0004 594F 2F2E 0008 4EBA F7A0"            /* !n....YO/...N��� */
	$"205F 226D F466 2251 2348 0008 206D F466"            /*  _"m�f"Q#H.. m�f */
	$"2050 317C 8000 000C 554F 2F2D F466 2F2D"            /*  P1|�...UO/-�f/- */
	$"F61E 4EB9 0000 A53A 301F 3D40 0010 206D"            /* �.N�..�:0.=@.. m */
	$"F466 2050 2F28 0008 205F A023 3F2E FFFE"            /* �f P/(.. _�#?.�� */
	$"A998 4E5E 205F 504F 4ED0 8B50 5249 4E54"            /* ��N^ _PONЋPRINT */
	$"4841 4E44 4C45 0000 4E56 0000 206E 0008"            /* HANDLE..NV.. n.. */
	$"226E 0008 3290 486D F466 4878 000E 486D"            /* "n..2�Hm�fHx..Hm */
	$"FD94 4EB9 0000 E3DC 42AE 000C 4E5E 2E9F"            /* ��N�..��B�..N^.� */
	$"4E75 8D49 4E49 5450 5249 4E54 5445 5854"            /* Nu�INITPRINTTEXT */
	$"0000 4E56 0000 4EB9 0000 A7FC 4EB9 0000"            /* ..NV..N�..��N�.. */
	$"BE30 487A FFB4 4878 0000 42A7 4878 0000"            /* �0Hz��Hx..B�Hx.. */
	$"4EB9 0000 BE5E 4E5E 4E75 9053 5441 5254"            /* N�..�^N^Nu�START */
	$"5550 5052 494E 5454 4558 5400 0000 4E56"            /* UPPRINTTEXT...NV */
	$"0000 594F 487A 0074 2E9F 205F 2B48 F46A"            /* ..YOHz.t.� _+H�j */
	$"4EBA 004E 42AE 000C 4E5E 2E9F 4E75 8E49"            /* N�.NB�..N^.�Nu�I */
	$"4E49 5450 5245 5345 5256 4541 3500 0000"            /* NITPRESERVEA5... */
	$"4E56 0000 487A FFC8 4878 0000 42A7 4878"            /* NV..Hz��Hx..B�Hx */
	$"0000 4EB9 0000 BE5E 4E5E 4E75 9153 5441"            /* ..N�..�^N^Nu�STA */
	$"5254 5550 5052 4553 4552 5645 4135 0000"            /* RTUPPRESERVEA5.. */
	$"41FA 002A 208D 4E75 2F4D 0004 2A7A 001E"            /* A�.* �Nu/M..*z.. */
	$"4E75 2A6F 0004 2E9F 4E75 2F0D 2A7A 000E"            /* Nu*o...�Nu/.*z.. */
	$"2F08 2068 FFFC 4E90 2A5F 4E75 0000 0000"            /* /. h��N�*_Nu.... */
	$"4E56 FC00 206E 0014 43EE FC00 703F 22D8"            /* NV�. n..C��.p?"� */
	$"51C8 FFFC 206E 0010 43EE FD00 703F 22D8"            /* Q��� n..C��.p?"� */
	$"51C8 FFFC 206E 000C 43EE FE00 703F 22D8"            /* Q��� n..C��.p?"� */
	$"51C8 FFFC 206E 0008 43EE FF00 703F 22D8"            /* Q��� n..C��.p?"� */
	$"51C8 FFFC 4AAD F48A 660E 594F 4EB9 0000"            /* Q���J��f.YON�.. */
	$"C700 205F 2B48 F48A 4AAD F48A 6748 2F2D"            /* �. _+H�J��gH/- */
	$"F48A 3F3C 0001 486E FC00 4EB9 0000 C8B2"            /* �?<..Hn�.N�..Ȳ */
	$"2F2D F48A 3F3C 0002 486E FD00 4EB9 0000"            /* /-�?<..Hn�.N�.. */
	$"C8B2 2F2D F48A 3F3C 0003 486E FE00 4EB9"            /* Ȳ/-�?<..Hn�.N� */
	$"0000 C8B2 2F2D F48A 3F3C 0004 486E FF00"            /* ..Ȳ/-�?<..Hn�. */
	$"4EB9 0000 C8B2 4E5E 205F 4FEF 0010 4ED0"            /* N�..ȲN^ _O�..N� */
	$"8F43 4C45 5645 5250 4152 414D 5445 5854"            /* �CLEVERPARAMTEXT */
	$"0000 4E56 FE00 48E7 1830 246E 000C 266E"            /* ..NV�.H�.0$n..&n */
	$"0008 7600 6000 00D6 2052 2068 003E 2250"            /* ..v.`..� R h.>"P */
	$"7000 1031 3800 0C40 005E 6600 00BA 554F"            /* p..18..@.^f..�UO */
	$"7001 D083 2052 2068 003E 2250 7200 1231"            /* p.Ѓ R h.>"Pr..1 */
	$"0800 2F01 486D FDC8 4878 0020 4EB9 0000"            /* ../.Hm��Hx. N�.. */
	$"DCD0 101F 6700 0090 200B 661A 41ED FDE8"            /* ��..g..� .f.A��� */
	$"2808 2044 7000 1010 5240 48C0 2044 43EE"            /* (. Dp...R@H� DC� */
	$"FF00 A22E 6040 486E FE00 2F0B 7001 D083"            /* �.�.`@Hn�./.p.Ѓ */
	$"2052 2068 003E 2250 7200 1231 0800 0441"            /*  R h.>"Pr..1...A */
	$"0030 5241 3F01 4EB9 0000 C812 41EE FE00"            /* .0RA?.N�..�.A��. */
	$"2808 2044 7000 1010 5240 48C0 2044 43EE"            /* (. Dp...R@H� DC� */
	$"FF00 A22E 584F 2F03 7002 D083 2F00 2F0A"            /* �.�.XO/.p.Ѓ/./. */
	$"A9D1 2F0A A9D7 486E FF01 7000 102E FF00"            /* ��/.��Hn�.p...�. */
	$"48C0 2F00 2F0A A9DE 7000 102E FF00 48C0"            /* H�/./.��p...�.H� */
	$"D083 2600 6006 7001 D083 2600 2052 3028"            /* Ѓ&.`.p.Ѓ&. R0( */
	$"003C 5340 48C0 B680 6D00 FF1E 4CDF 0C18"            /* .<S@H���m.�.L�.. */
	$"4E5E 205F 504F 4ED0 9149 4E53 4552 5450"            /* N^ _PONБINSERTP */
	$"4152 414D 4154 4552 4553 0000 4E56 0000"            /* ARAMATERES..NV.. */
	$"48E7 1830 246E 000C 266E 0008 41ED FDE8"            /* H�.0$n..&n..A��� */
	$"2608 2043 7000 1010 5240 48C0 2043 224B"            /* &. Cp...R@H� C"K */
	$"A22E 7600 7800 601C 2052 7000 1030 3000"            /* �.v.x.`. Rp..00. */
	$"0C40 000D 57C0 4400 1800 4A04 6606 7001"            /* .@..W�D...J.f.p. */
	$"D043 3600 594F 2F0A 4EB9 0000 E790 201F"            /* �C6.YO/.N�..� . */
	$"3043 B1C0 6C0A 0C43 00FF 6C04 4A04 67C8"            /* 0C��l..C.�l.J.g� */
	$"4A04 6718 2F12 486B 0001 3043 2F08 201F"            /* J.g./.Hk..0C/. . */
	$"225F 205F A22E 7000 3003 1680 4CDF 0C18"            /* "_ _�.p.0..�L�.. */
	$"4E5E 205F 504F 4ED0 8C47 4554 4649 5253"            /* N^ _PONЌGETFIRS */
	$"544C 494E 4500 0000 4E56 FF00 2F0A 246E"            /* TLINE...NV�./.$n */
	$"0008 2052 2F28 003E 486E FF00 4EBA FF4E"            /* .. R/(.>Hn�.N��N */
	$"42A7 7000 102E FF00 5240 48C0 2F00 2F0A"            /* B�p...�.R@H�/./. */
	$"A9D1 2F0A A9D7 245F 4E5E 2E9F 4E75 8F52"            /* ��/.��$_N^.�Nu�R */
	$"454D 4F56 4546 4952 5354 4C49 4E45 0000"            /* EMOVEFIRSTLINE.. */
	$"4E56 FFFE 554F 486E 000C 206E 0008 2F28"            /* NV��UOHn.. n../( */
	$"FCFC 4878 0002 201F 225F 205F A9EF 3E80"            /* ��Hx.. ."_ _��>� */
	$"301F 3D40 FFFE 4E5E 205F 5C4F 4ED0 8B41"            /* 0.=@��N^ _\ONЋA */
	$"7070 656E 6457 6F72 6430 0000 4E56 FFFE"            /* ppendWord0..NV�� */
	$"302E 000C 0280 0000 00FF 3D40 000C 7000"            /* 0....�...�=@..p. */
	$"302E 000C 7200 322E 000C E189 8280 3D41"            /* 0...r.2...ቂ�=A */
	$"000C 554F 486E 000C 206E 0008 2F28 FCFC"            /* ..UOHn.. n../(�� */
	$"4878 0001 201F 225F 205F A9EF 3E80 301F"            /* Hx.. ."_ _��>�0. */
	$"3D40 FFFE 4E5E 205F 5C4F 4ED0 8B41 7070"            /* =@��N^ _\ONЋApp */
	$"656E 6442 7974 6531 0000 4E56 FFFE 554F"            /* endByte1..NV��UO */
	$"486E 000C 206E 0008 2F28 FCFC 4878 0004"            /* Hn.. n../(��Hx.. */
	$"201F 225F 205F A9EF 3E80 301F 3D40 FFFE"            /*  ."_ _��>�0.=@�� */
	$"4E5E 205F 504F 4ED0 8B41 7070 656E 644C"            /* N^ _PONЋAppendL */
	$"6F6E 6732 0000 4E56 0000 42A7 2F2E 0008"            /* ong2..NV..B�/... */
	$"4EBA FFB8 3F2E 0016 2F2E 0008 4EBA FF12"            /* N���?.../...N��. */
	$"3F2E 0014 2F2E 0008 4EBA FF06 3F2E 0012"            /* ?.../...N��.?... */
	$"2F2E 0008 4EBA FEFA 3F2E 0010 2F2E 0008"            /* /...N���?.../... */
	$"4EBA FEEE 3F2E 000E 2F2E 0008 4EBA FF1E"            /* N���?.../...N��. */
	$"3F2E 000C 2F2E 0008 4EBA FF12 4E5E 205F"            /* ?.../...N��.N^ _ */
	$"4FEF 0010 4ED0 8B41 7070 656E 6449 7465"            /* O�..NЋAppendIte */
	$"6D33 0000 4E56 FC8E 48E7 1F38 286E 0010"            /* m3..NV��H�.8(n.. */
	$"266E 000C 246E 0008 206E 0014 43EE FE00"            /* &n..$n.. n..C��. */
	$"703F 22D8 51C8 FFFC 486E FC8E A86F 1F3C"            /* p?"�Q���Hn���o.< */
	$"0009 4EB9 0000 D52A 41ED FDE8 2808 2044"            /* ..N�..�*A���(. D */
	$"7000 1010 5240 48C0 2044 224A A22E 4253"            /* p...R@H� D"J�.BS */
	$"7A00 1A2E FE00 7601 6046 41EE FE00 7000"            /* z...�.v.`FA��.p. */
	$"1030 3000 0C40 003A 662E 7001 D053 3680"            /* .00..@.:f.p.�S6� */
	$"486D FDEA 2F0A 486E FD00 3F3C 0002 4EB9"            /* Hm��/.Hn�.?<..N� */
	$"0000 DE7E 41EE FD00 2808 2044 224A 7010"            /* ..�~A��.(. D"Jp. */
	$"4EBA 658C 4FEF 000E 0C43 7FFF 6706 5243"            /* N�e�O�...C.�g.RC */
	$"B645 6FB6 0C53 0001 6D12 7000 102A 0001"            /* �Eo�.S..m.p..*.. */
	$"0C40 0020 6606 157C 000D 0001 0C53 0002"            /* .@. f..|.....S.. */
	$"6D12 7000 102A 0002 0C40 0020 6606 157C"            /* m.p..*...@. f..| */
	$"002E 0002 7000 102E FE01 0440 0043 6710"            /* ....p...�..@.Cg. */
	$"0440 000B 6710 5B40 6702 6010 4254 6014"            /* .@..g.[@g.`.BT`. */
	$"38BC 0002 600E 38BC 0001 6008 4227 4EB9"            /* 8�..`.8�..`.B'N� */
	$"0000 ACEA 594F 42A7 201F A122 2E88 205F"            /* ..��YOB� .�".� _ */
	$"2D48 FCFC 7003 D053 5340 3F00 2F0E 4EBA"            /* -H��p.�SS@?./.N� */
	$"FDA0 486E FE00 3F3C 003A 486E FF00 486E"            /* ��Hn�.?<.:Hn�.Hn */
	$"FE00 4EB9 0000 CD24 7E4A 3A3C 01A6 3D53"            /* �.N�..�$~J:<.�=S */
	$"FCFA 7601 6000 0150 486E FE00 3F3C 003A"            /* ��v.`..PHn�.?<.: */
	$"486E FF00 486E FE00 4EB9 0000 CD24 7C00"            /* Hn�.Hn�.N�..�$|. */
	$"7000 102E FF01 0C40 002D 6612 7C01 486E"            /* p...�..@.-f.|.Hn */
	$"FF00 2F3C 0001 0001 4EB9 0000 DEF4 7000"            /* �./<....N�..��p. */
	$"102E FF00 0C40 0002 6F66 7000 102E FF00"            /* ..�..@..ofp...�. */
	$"5340 41EE FF00 7200 1230 0000 0C41 002F"            /* S@A��.r..0...A./ */
	$"664E 554F 7000 102E FF00 41EE FF00 7200"            /* fNUOp...�.A��.r. */
	$"1230 0000 3F01 301F 0C00 0061 6500 000E"            /* .0..?.0....ae... */
	$"0C00 007B 6400 0006 0400 0020 3E80 301F"            /* ...{d...... >�0. */
	$"7200 3200 1581 3000 486E FF00 7000 102E"            /* r.2..�0.Hn�.p... */
	$"FF00 5340 3F00 3F3C 0002 4EB9 0000 DEF4"            /* �.S@?.?<..N�..�� */
	$"594F 554F 486E FF00 A88C 301F 0640 0016"            /* YOUOHn�.��0..@.. */
	$"48C0 2F00 4878 003A 201F 2E9F B097 6F02"            /* H�/.Hx.: ..���o. */
	$"2E80 201F 3800 4A06 670A 3C07 DE44 0647"            /* .� .8.J.g.<.�D.G */
	$"000A 6018 3C05 9C44 0C43 0001 6608 9A44"            /* ..`.<.�D.C..f.�D */
	$"0445 000E 6006 9A44 0445 000A 4267 3F06"            /* .E..`.�D.E..Bg?. */
	$"3F3C 0014 3006 D044 3F00 3F3C 0004 7000"            /* ?<..0.�D?.?<..p. */
	$"102E FF00 3F00 2F0E 4EBA FD3C 554F 486E"            /* ..�.?./.N��<UOHn */
	$"FF01 2F2E FCFC 7000 102E FF00 48C0 2F00"            /* �./.��p...�.H�/. */
	$"201F 225F 205F A9EF 3E80 301F 3800 082E"            /*  ."_ _��>�0.8... */
	$"0000 FF00 6708 4267 2F0E 4EBA FC70 0C43"            /* ..�.g.Bg/.N��p.C */
	$"7FFF 670A 5243 B66E FCFA 6F00 FEAC 42A7"            /* .�g.RC�n��o.��B� */
	$"42A7 4878 0080 2F0E 4EBA FCEC 2F3C 0014"            /* B�Hx.�/.N���/<.. */
	$"000A 2F3C 0034 002A 2F3C 0002 00A0 2F0E"            /* ../<.4.*.<...�/. */
	$"4EBA FCD4 3F14 2F0E 4EBA FBF6 2F3C 004A"            /* N���?./.N���/<.J */
	$"0007 2F3C 01A6 03EF 4878 0080 2F0E 4EBA"            /* ../<.�.�Hx.�/.N� */
	$"FCB6 486E FC8E A87D 2D6E FCFC 0018 4CDF"            /* ��Hn���}-n��..L� */
	$"1CF8 4E5E 205F 4FEF 0010 4ED0 874E 4557"            /* .�N^ _O�..NЇNEW */
	$"4449 544C 0000 4E56 FFF8 2F2E 000A 3F2E"            /* DITL..NV��/...?. */
	$"0008 486E FFF8 4EB9 0000 B062 486E FFF8"            /* ..Hn��N�..�bHn�� */
	$"2F2D F47E A9D3 4E5E 205F 5C4F 4ED0 8B44"            /* /-�~��N^ _\ONЋD */
	$"5241 574F 5552 5445 5854 0000 4E56 0000"            /* RAWOURTEXT..NV.. */
	$"48E7 1C00 3A2E 000C 554F 3F05 301F 0C00"            /* H�..:...UO?.0... */
	$"0061 6500 000E 0C00 007B 6400 0006 0400"            /* .ae......{d..... */
	$"0020 3E80 301F 3A00 7601 7800 604A 41ED"            /* . >�0.:.v.x.`JA� */
	$"F46E 7000 1030 3000 B045 6602 7801 4A04"            /* �np..00.�Ef.x.J. */
	$"6606 7001 D043 3600 4A04 672C 206E 0008"            /* f.p.�C6.J.g, n.. */
	$"2068 0008 3083 206E 0008 2F28 0010 206E"            /*  h..0� n../(.. n */
	$"0008 2068 0008 3F10 4EB9 0000 AFC2 206E"            /* .. h..?.N�..�� n */
	$"0008 117C 0001 FFFF 7000 102D F46E B640"            /* ...|..��p..-�n�@ */
	$"6E04 4A04 67A8 4CDF 0038 4E5E 205F 5C4F"            /* n.J.g�L�.8N^ _\O */
	$"4ED0 8A44 6F43 6F6D 6D61 6E64 3400 0000"            /* NЊDoCommand4... */
	$"4E56 FFFE 48E7 1020 246E 000C 422E FFFF"            /* NV��H�. $n..B.�� */
	$"0C52 0005 57C0 4400 0C52 0003 57C1 4401"            /* .R..W�D..R..W�D. */
	$"8200 6776 262A 0002 0283 0000 00FF 0C43"            /* �.gv&*...�...�.C */
	$"0003 57C0 4400 0C43 000D 57C1 4401 8200"            /* ..W�D..C..W�D.�. */
	$"670C 3F3C 000D 2F0E 4EBA FF12 604C 0C43"            /* g.?<../.N��.`L.C */
	$"001B 57C0 4400 1D40 FFFE 302A 000E 0280"            /* ..W�D..@��0*...� */
	$"0000 0100 4A80 56C0 4400 0C43 002E 57C1"            /* ....J�V�D..C..W� */
	$"4401 C200 822E FFFE 670C 3F3C 002E 2F0E"            /* D.�.�.��g.?<../. */
	$"4EBA FEDA 6014 302A 000E 0280 0000 0100"            /* N���`.0*...�.... */
	$"6708 3F03 2F0E 4EBA FEC4 1D6E FFFF 0014"            /* g.?./.N���.n��.. */
	$"4CDF 0408 4E5E 205F 4FEF 000C 4ED0 8E4F"            /* L�..N^ _O�..NЎO */
	$"5552 4D4F 4441 4C46 494C 5445 5200 0000"            /* URMODALFILTER... */
	$"4E56 FDD0 48E7 1F38 3A2E 000E 182D F86F"            /* NV��H�.8:....-�o */
	$"486E FDDC A874 594F 487A FE4C 2E9F 205F"            /* Hn�ܨtYOHz�L.� _ */
	$"2E08 594F 487A FF1A 2E9F 205F 2648 594F"            /* ..YOHz�..� _&HYO */
	$"2F2D FDEC 3F05 A9A0 205F 2848 B8FC 0000"            /* /-��?.�� _(H��.. */
	$"56C0 4400 1F00 4EB9 0000 ACEA 594F 2F2D"            /* V�D...N�..��YO/- */
	$"FDF0 3F05 A9A0 205F 2608 2F0C 486E FEF0"            /* ��?.�� _&./.Hn�� */
	$"4EBA F8DA 486E FEF0 3F3C 0009 486E FEF0"            /* N���Hn��?<..Hn�� */
	$"486E FDE8 4EB9 0000 CD24 594F 486E FEF0"            /* Hn��N�..�$YOHn�� */
	$"486E FDD0 486E FFF4 486D F46E 4EBA FAD6"            /* Hn��Hn��Hm�nN��� */
	$"205F 2C08 486E FFF8 2F3C 0064 0064 2F3C"            /*  _,.Hn��/<.d.d/< */
	$"0066 0066 A8A7 594F 1F04 4878 0005 4878"            /* .f.f��YO..Hx..Hx */
	$"0001 201F 221F 4A1F 6602 2200 2E81 201F"            /* .. .".J.f."..� . */
	$"3A00 4A2D F864 6724 594F 4878 0000 486E"            /* :.J-�dg$YOHx..Hn */
	$"FFF8 486E FDE8 4227 3F05 4878 FFFF 4227"            /* ��Hn��B'?.Hx��B' */
	$"42A7 2F06 AA4B 205F 2448 6022 594F 4878"            /* B�/.�K _$H`"YOHx */
	$"0000 486E FFF8 486E FDE8 4227 3F05 4878"            /* ..Hn��Hn��B'?.Hx */
	$"FFFF 4227 42A7 2F06 A97D 205F 2448 2F0A"            /* ��B'B�/.�} _$H/. */
	$"A873 1F3C 0009 4EB9 0000 D52A 486E FFF8"            /* �s.<..N�..�*Hn�� */
	$"2F3C 0007 004A 2F3C 03E8 01A6 A8A7 594F"            /* /<...J/<.�.���YO */
	$"486E FFF8 486E FFF8 A83E 205F 2B48 F47E"            /* Hn��Hn���> _+H�~ */
	$"2F0C 205F A029 4A83 6618 2F14 594F 2F0C"            /* /. _�)J�f./.YO/. */
	$"4EB9 0000 E790 201F 2F00 2F2D F47E A9DE"            /* N�..� ././-�~�� */
	$"6020 2F14 594F 2F0C 4EB9 0000 E790 201F"            /* ` /.YO/.N�..� . */
	$"2F00 2F03 2F2D F47E 3F3C 0007 A83D 2F03"            /* /././-�~?<..�=/. */
	$"A9A3 2F0C A9A3 2F2D F47E 4EBA F84C 2F2D"            /* ��/.��/-�~N��L/- */
	$"F47E 2F2E 000A 4EBA F68A 594F 594F 206D"            /* �~/...N���YOYO m */
	$"F47E 2050 3268 003C 2F09 42A7 2F2D F47E"            /* �~ P2h.</.B�/-�~ */
	$"3F3C 0009 A83D 201F 2F00 4878 0020 201F"            /* ?<..�= ./.Hx.  . */
	$"2E9F B097 6F02 2E80 201F 5E80 0680 0000"            /* .���o..� .^�.�.. */
	$"0028 3A00 486E FFF0 4267 554F 3EB8 0BAA"            /* .(:.Hn��BgUO>�.� */
	$"301F 3F00 A880 594F A924 205F 2848 200C"            /* 0.?.��YO�$ _(H . */
	$"6752 2F0C 486E FEE8 4EB9 0000 8F7C 7000"            /* gR/.Hn��N�..�|p. */
	$"102E FEF3 0440 004D 673A 5D40 6714 5940"            /* ..��.@.Mg:]@g.Y@ */
	$"6702 6028 3D6E FEEA FFF2 3D6E FEE8 FFF0"            /* g.`(=n����=n���� */
	$"6022 486E FEE8 486E FDD4 486E FDD3 4EB9"            /* `"Hn��Hn��Hn��N� */
	$"0000 90AA 2D6E FDD4 FFF0 6008 4227 4EB9"            /* ..��-n����`.B'N� */
	$"0000 ACEA 7028 D06E FFF2 3D40 FFF2 7000"            /* ..��p(�n��=@��p. */
	$"1004 C1FC 0014 7214 D26E FFF0 D240 3D41"            /* ..��..r.�n���@=A */
	$"FFF0 2F0A 3F2E FFF2 3F2E FFF0 1F3C 0001"            /* ��/.?.��?.��.<.. */
	$"A91B 3D7C 01B0 FDE6 3D45 FDE4 2F0A 4267"            /* �.=|.���=E��/.Bg */
	$"2F2E FDE4 4EB9 0000 92A4 2F0A 7003 D06E"            /* /.��N�..��/.p.�n */
	$"FFF4 3F00 2F07 4EB9 0000 B138 3C2E FFF4"            /* ��?./.N�..�8<.�� */
	$"7601 604E 2F0A 3F03 486E FFF8 4EB9 0000"            /* v.`N/.?.Hn��N�.. */
	$"B062 486E FFF8 4267 3005 0440 001E 3F00"            /* �bHn��Bg0..@..?. */
	$"A8A8 2F0A 3F03 486E FFF8 4EB9 0000 B00A"            /* ��/.?.Hn��N�..�. */
	$"594F 2F0A 3F03 4EB9 0000 B0CA 205F 2F08"            /* YO/.?.N�..�� _/. */
	$"3F2E FFFA 3F2E FFF8 A959 0C43 7FFF 6706"            /* ?.��?.���Y.C.�g. */
	$"5243 B646 6FAE 2F0A 3F3C 0001 7001 D06E"            /* RC�Fo�/.?<..p.�n */
	$"FFF4 3F00 4EB9 0000 AF6A 7000 102E FEF2"            /* ��?.N�..�jp...�� */
	$"0C40 0042 661A 4A2E 0008 672A 3F3C 0001"            /* .@.Bf.J...g*?<.. */
	$"594F 2EB8 0A9C 205F 2F08 205F 4E90 6016"            /* YO.�.� _/. _N�`. */
	$"7000 102E FEF2 0C40 002D 57C0 4400 1F00"            /* p...��.@.-W�D... */
	$"4EB9 0000 ACEA 2F0A A915 0C6E 0001 FFF4"            /* N�..��/.�..n..�� */
	$"6F06 286D F64A 6004 286D F64E 4EB9 0000"            /* o.(m�J`.(m�NN�.. */
	$"A140 4227 4EB9 0000 A1B4 4A04 670E 486E"            /* �@B'N�..��J.g.Hn */
	$"FDE0 3F3C FFFF 4EB9 0000 8A0E 4A04 670E"            /* ��?<��N�..�.J.g. */
	$"2F0B 486E FFF6 4EB9 0000 8DBC 6008 2F0B"            /* /.Hn��N�..��`./. */
	$"486E FFF6 A991 0C6E 0001 FFF6 6DDE 302E"            /* Hn����.n..��m�0. */
	$"FFF6 B06E FFF4 6ED4 4A04 670A 486E FDE0"            /* ���n��n�J.g.Hn�� */
	$"4EB9 0000 8B34 2F0A A983 3D6E FFF6 0010"            /* N�..�4/.��=n��.. */
	$"2F0B 584F 2F07 584F 2F2E FDDC A873 4CDF"            /* /.XO/.XO/.�ܨsL� */
	$"1CF8 4E5E 205F 504F 4ED0 8C44 4953 504C"            /* .�N^ _PONЌDISPL */
	$"4159 414C 4552 5400 0000 4E56 0000 554F"            /* AYALERT...NV..UO */
	$"3F2E 0008 2F2D F48A 1F3C 0001 4EBA FC02"            /* ?.../-�.<..N��. */
	$"301F 3D40 000A 2F2D F48A 4EB9 0000 C724"            /* 0.=@../-�N�..�$ */
	$"42AD F48A 4E5E 205F 544F 4ED0 8B43 4C45"            /* B��N^ _TONЋCLE */
	$"5645 5241 4C45 5254 0000 4E56 FFF8 2F03"            /* VERALERT..NV��/. */
	$"362E 0008 554F 4EB9 0000 CF18 101F 6710"            /* 6...UON�..�...g. */
	$"554F 3F03 4EBA FFA4 301F 3D40 FFF8 603C"            /* UO?.N���0.=@��`< */
	$"2D6D F48A FFFC 3D43 FFFA 554F 2F2D F486"            /* -m���=C��UO/-� */
	$"486E FFFA 4EB9 0000 95EC 301F 3600 42AD"            /* Hn��N�..��0.6.B� */
	$"F48A 1F3C 0001 4227 3F2D F484 3F2D F482"            /* �.<..B'?-�?-� */
	$"4878 FFFF 42A7 4EB9 0000 8656 261F 4E5E"            /* Hx��B�N�..�V&.N^ */
	$"205F 544F 4ED0 9143 4C45 5645 524E 4F54"            /*  _TONБCLEVERNOT */
	$"4946 5941 4C45 5254 0000 4E56 FFFA 2F03"            /* IFYALERT..NV��/. */
	$"554F 4EB9 0000 CF18 101F 6752 603E 2F2D"            /* UON�..�...gR`>/- */
	$"F486 4878 0001 486E FFFA 4EB9 0000 9640"            /* �Hx..Hn��N�..�@ */
	$"2F2D F486 4878 0001 4EB9 0000 96C4 554F"            /* /-�Hx..N�..��UO */
	$"3F2E FFFA 2F2E FFFC 4227 4EBA FB14 301F"            /* ?.��/.��B'N��.0. */
	$"3600 2F2D F48A 4EB9 0000 C724 594F 2F2D"            /* 6./-�N�..�$YO/- */
	$"F486 4EB9 0000 959A 201F 4A80 6EB0 261F"            /* �N�..�� .J�n�&. */
	$"4E5E 4E75 8F49 444C 4543 4C45 5645 5241"            /* N^Nu�IDLECLEVERA */
	$"4C45 5254 0000 4E56 0000 42AD F48A 554F"            /* LERT..NV..B��UO */
	$"486D F486 4878 0006 4EB9 0000 954E 301F"            /* Hm�Hx..N�..�N0. */
	$"48C0 2D40 000C 4E5E 2E9F 4E75 9049 4E49"            /* H�-@..N^.�Nu�INI */
	$"5443 4C45 5645 5241 4C45 5254 5300 0000"            /* TCLEVERALERTS... */
	$"4E56 0000 4EBA 0054 3B6E 000A F484 3B6E"            /* NV..N�.T;n..�;n */
	$"0008 F482 4E5E 2E9F 4E75 9543 4F4E 4649"            /* ..�N^.�Nu�CONFI */
	$"4755 5245 434C 4556 4552 414C 4552 5453"            /* GURECLEVERALERTS */
	$"0000 4E56 0000 2F2D F48A 4EB9 0000 C724"            /* ..NV../-�N�..�$ */
	$"4E5E 4E75 9246 494E 4953 4843 4C45 5645"            /* N^Nu�FINISHCLEVE */
	$"5241 4C45 5254 5300 0000 4E56 0000 4EB9"            /* RALERTS...NV..N� */
	$"0000 BE30 4EB9 0000 A2FA 4EB9 0000 88F2"            /* ..�0N�..��N�..�� */
	$"487A FF54 487A FED4 4878 000F 487A FFB4"            /* Hz�THz��Hx..Hz�� */
	$"4EB9 0000 BE5E 4E5E 4E75 9353 5441 5254"            /* N�..�^N^Nu�START */
	$"5550 434C 4556 4552 414C 4552 5453 0000"            /* UPCLEVERALERTS.. */
	$"4E56 0000 206E 0008 2068 0020 10BC 0001"            /* NV.. n.. h. .�.. */
	$"4E5E 2E9F 4E75 8A4D 5952 4553 504F 4E53"            /* N^.�Nu�MYRESPONS */
	$"4500 0000 4E56 FFFE 2F0A 4AAD F492 673E"            /* E...NV��/.J���g> */
	$"554F 2F2D F492 205F A05F 3E80 301F 3D40"            /* UO/-�� _�_>�0.=@ */
	$"FFFE 246D F492 4AAA 0018 6708 2F2A 0018"            /* ��$m��J�..g./*.. */
	$"205F A01F 4AAA 0010 6708 2F2A 0010 205F"            /*  _�.J�..g./*.. _ */
	$"A023 2F2D F492 205F A01F 42AD F492 422D"            /* �#/-�� _�.B���B- */
	$"F49B 422D F49A 2B7C 7FFF FFFF F496 245F"            /* ��B-��+|.�����$_ */
	$"4E5E 4E75 8855 4E4E 4F54 4946 5900 0000"            /* N^Nu�UNNOTIFY... */
	$"4E56 FFFC 48E7 1820 282E 0008 4EBA FF86"            /* NV��H�. (...N��� */
	$"594F 3F3C A89F 1F3C 0001 4EB9 0000 E7B6"            /* YO?<��.<..N�..� */
	$"205F 2D48 FFFC 594F 3F3C A05E 4227 4EB9"            /*  _-H��YO?<�^B'N� */
	$"0000 E7B6 205F B1EE FFFC 660A 3F3C 0001"            /* ..� _����f.?<.. */
	$"A9C8 6000 008A 594F 4878 0024 201F A11E"            /* ��`..�YOHx.$ .�. */
	$"2E88 205F 2B48 F492 4AAD F492 6608 3F3C"            /* .� _+H��J���f.?< */
	$"0001 A9C8 6068 246D F492 357C 0008 0004"            /* ..��`h$m��5|.... */
	$"7600 41ED F49B 2548 0020 356E 0018 000E"            /* v.A���%H. 5n.... */
	$"256E 000C 0018 256E 0010 0010 256E 0014"            /* %n....%n....%n.. */
	$"0014 256D F48E 001C 554F 2F2D F492 205F"            /* ..%m�..UO/-�� _ */
	$"A05E 3E80 301F 3600 4A43 670C 42AD F492"            /* �^>�0.6.JCg.B��� */
	$"3F3C 0001 A9C8 6016 1B7C 0001 F49A 4A84"            /* ?<..��`..|..��J� */
	$"6F0C 594F A975 201F D084 2B40 F496 4CDF"            /* o.YO�u .Є+@��L� */
	$"0418 4E5E 205F 4FEF 0012 4ED0 874E 4F54"            /* ..N^ _O�..NЇNOT */
	$"4946 5948 0000 4E56 FEF4 48E7 1F30 3A2E"            /* IFYH..NV��H�.0:. */
	$"0010 3E2E 000E 362E 000C 7800 4A2E 0016"            /* ..>...6...x.J... */
	$"6704 7C01 6002 7C00 97CB 4A47 6700 00A8"            /* g.|.`.|.��JGg..� */
	$"4A43 6F10 486E FEFC 3F07 3F03 4EB9 0000"            /* JCo.Hn��?.?.N�.. */
	$"E980 6042 41ED FDF4 2608 2043 7000 1010"            /* �`BA���&. Cp... */
	$"5240 48C0 2043 43EE FEFC A22E 594F 3F07"            /* R@H� CC����.YO?. */
	$"A9BA 205F 2448 200A 671C 4A92 6714 2612"            /* �� _$H .g.J�g.&. */
	$"2043 7000 1010 5240 48C0 2043 43EE FEFC"            /*  Cp...R@H� CC��� */
	$"A22E 2F0A A9A3 554F 486E FEFC 486D FDF4"            /* �./.��UOHn��Hm�� */
	$"4267 4EB9 0000 DD64 101F 6704 7801 6036"            /* BgN�..�d..g.x.`6 */
	$"594F 7000 102E FEFC 5240 48C0 2F00 201F"            /* YOp...��R@H�/. . */
	$"A11E 2E88 205F 2648 200B 6604 7801 6016"            /* �..� _&H .f.x.`. */
	$"41EE FEFC 2608 2043 7000 1010 5240 48C0"            /* A���&. Cp...R@H� */
	$"2043 224B A22E 42AE FFFC 4A6E 0012 6700"            /*  C"K�.B���Jn..g. */
	$"00E2 42AE FFFC 554F 2F2D FDF6 486E FEF8"            /* .�B���UO/-��Hn�� */
	$"225F 201F A1AD 2288 3E80 301F 6628 0CAE"            /* "_ .��"�>�0.f(.� */
	$"0000 0700 FEF8 6D1E 554F 486E FFFC 3F2E"            /* ....��m.UOHn��?. */
	$"0012 2F3C 0000 FF00 303C 0501 ABC9 301F"            /* ../<..�.0<..��0. */
	$"6704 42AE FFFC 4AAE FFFC 6600 0096 0C45"            /* g.B���J���f..�.E */
	$"0001 6C02 7A01 5345 CBFC 0020 594F 2F2D"            /* ..l.z.SE��. YO/- */
	$"FDFA 3F2E 0012 A9A0 205F 2448 2F0A 205F"            /* ��?...�� _$H/. _ */
	$"A04A 200A 6604 7801 6068 594F 4878 0020"            /* �J .f.x.`hYOHx.  */
	$"201F A122 2E88 205F 2D48 FFFC 4AAE FFFC"            /*  .�".� _-H��J��� */
	$"6604 7801 6048 206E FFFC 4A90 6604 7801"            /* f.x.`H n��J�f.x. */
	$"603C 7020 D045 48C0 2D40 FEF4 594F 2F0A"            /* `<p �EH�-@��YO/. */
	$"4EB9 0000 E790 201F B0AE FEF4 6C04 7801"            /* N�..� .����l.x. */
	$"601C 3045 2012 D088 2040 4850 206E FFFC"            /* `.0E .Ј @HP n�� */
	$"2F10 4878 0020 201F 225F 205F A22E 2F0A"            /* /.Hx.  ."_ _�./. */
	$"A9A3 102E 0014 8004 6706 70FF 2440 6002"            /* ��....�.g.p�$@`. */
	$"95CA 3F06 2F0A 2F2E FFFC 2F0B 2F2E 0008"            /* ��?././.��/./... */
	$"4EBA FD3E 4CDF 0CF8 4E5E 205F 4FEF 0010"            /* N��>L�.�N^ _O�.. */
	$"4ED0 864E 4F54 4946 5900 0000 4E56 0000"            /* NІNOTIFY...NV.. */
	$"42AD F492 422D F49B 422D F49A 2B7C 7FFF"            /* B���B-��B-��+|.� */
	$"FFFF F496 594F 487A FC78 2E9F 205F 2B48"            /* ����YOHz�x.� _+H */
	$"F48E 42AE 000C 4E5E 2E9F 4E75 8C49 4E49"            /* �B�..N^.�Nu�INI */
	$"544E 4F54 4946 4945 5200 0000 4E56 0000"            /* TNOTIFIER...NV.. */
	$"4AAD F492 6704 4EBA FC6C 4E5E 4E75 8E46"            /* J���g.N��lN^Nu�F */
	$"494E 4953 484E 4F54 4946 4945 5200 0000"            /* INISHNOTIFIER... */
	$"4E56 FFFE 594F A975 201F B0AD F496 5EC0"            /* NV��YO�u .����^� */
	$"4400 1D40 FFFF 554F 4EB9 0000 CF18 101F"            /* D..@��UON�..�... */
	$"C02D F49B 802E FFFF 6704 4EBA FC28 4E5E"            /* �-���.��g.N��(N^ */
	$"4E75 8C49 444C 454E 4F54 4946 4945 5200"            /* Nu�IDLENOTIFIER. */
	$"0000 4E56 0000 487A FF54 487A FFB4 4878"            /* ..NV..Hz�THz��Hx */
	$"000A 487A FF88 4EB9 0000 BE5E 4E5E 4E75"            /* ..Hz��N�..�^N^Nu */
	$"8F53 5441 5254 5550 4E4F 5449 4649 4552"            /* �STARTUPNOTIFIER */
	$"0000 4E56 FFFC 554F 2F2D FDFE 486E FFFC"            /* ..NV��UO/-��Hn�� */
	$"225F 201F A1AD 2288 3E80 301F 4A40 6614"            /* "_ .��"�>�0.J@f. */
	$"554F 2F2E FFFC 4267 4EB9 0000 D492 101F"            /* UO/.��BgN�..Ԓ.. */
	$"4A00 6604 7000 6002 7001 1D40 0008 4E5E"            /* J.f.p.`.p..@..N^ */
	$"205F 4ED0 8E48 4153 4845 4C50 4D41 4E41"            /*  _NЎHASHELPMANA */
	$"4745 5200 0000 4E56 FFFA 4AAE 0008 677A"            /* GER...NV��J�..gz */
	$"2F2E 0008 486E FFFA 486E FFFC 486E FFFE"            /* /...Hn��Hn��Hn�� */
	$"4EB9 0000 B358 4A6E FFFA 6F5E 2F3C 0003"            /* N�..�XJn��o^/<.. */
	$"0082 302E FFFC B06E FFFE 5DC0 4400 1F00"            /* .�0.���n��]�D... */
	$"4EB9 0000 C6CA 2F3C 0004 0082 302E FFFC"            /* N�..��/<...�0.�� */
	$"B06E FFFE 5DC0 4400 1F00 4EB9 0000 C6CA"            /* �n��]�D...N�..�� */
	$"2F3C 0005 0082 1F3C 0001 4EB9 0000 C6CA"            /* /<...�.<..N�..�� */
	$"2F3C 0006 0082 302E FFFC B06E FFFE 5DC0"            /* /<...�0.���n��]� */
	$"4400 1F00 4EB9 0000 C6CA 4E5E 2E9F 4E75"            /* D...N�..��N^.�Nu */
	$"8B53 4554 4544 4954 4D45 4E55 0000 4E56"            /* �SETEDITMENU..NV */
	$"FFFE 48E7 1F38 282E 000A 554F 4EBA FF04"            /* ��H�.8(...UON��. */
	$"101F 1E00 594F A924 205F 2448 B4FC 0000"            /* ....YO�$ _$H��.. */
	$"6710 554F 2F0A 4EB9 0000 B2FC 301F 4A40"            /* g.UO/.N�..��0.J@ */
	$"6E04 7000 6002 7001 1C00 594F 2EB8 0A1C"            /* n.p.`.p...YO.�.. */
	$"205F 2848 2054 3250 2009 7206 4EB9 0000"            /*  _(H T2P .r.N�.. */
	$"056A 3600 594F 4878 0008 201F A11E 2E88"            /* .j6.YOHx.. .�..� */
	$"205F 2244 2288 2044 2650 4293 3A03 5345"            /*  _"D"� D&PB�:.SE */
	$"7600 607A 7006 C1C3 2054 5C88 2470 0800"            /* v.`zp.�� T\�$p.. */
	$"2052 3810 0C44 C180 6F5C 0C44 0082 661E"            /*  R8..D��o\.D.�f. */
	$"2052 2768 000A 0004 4A06 670A 2052 7039"            /*  R'h....J.g. Rp9 */
	$"2140 000A 6040 2F0A 4267 A93A 6038 554F"            /* !@..`@/.Bg�:`8UO */
	$"2052 2F28 000A 4267 4EB9 0000 D492 101F"            /*  R/(..BgN�..Ԓ.. */
	$"670C 2013 07C0 2680 2F0A 4267 A93A 4A07"            /* g. ..�&�/.Bg�:J. */
	$"6714 554F 3F04 3F2E 0008 303C 020D A830"            /* g.UO?.?...0<..�0 */
	$"301F 3D40 FFFE 0C43 7FFF 6706 5243 B645"            /* 0.=@��.C.�g.RC�E */
	$"6F82 4267 A938 A937 4227 4EB9 0000 A1B4"            /* o�Bg�8�7B'N�..�� */
	$"4EB9 0000 A140 4CDF 1CF8 4E5E 205F 5C4F"            /* N�..�@L�.�N^ _\O */
	$"4ED0 8E44 4953 4142 4C45 4D45 4E55 4241"            /* NЎDISABLEMENUBA */
	$"5200 0000 4E56 0000 48E7 1F38 206E 0008"            /* R...NV..H�.8 n.. */
	$"2650 554F 4EBA FDDC 101F 1C00 594F 2EB8"            /* &PUON���....YO.� */
	$"0A1C 205F 2848 2054 3250 2009 7206 4EB9"            /* .. _(H T2P .r.N� */
	$"0000 056A 3600 3A03 5345 7600 605A 7006"            /* ...j6.:.SEv.`Zp. */
	$"C1C3 2054 5C88 2470 0800 2052 3810 0C44"            /* �� T\�$p.. R8..D */
	$"C180 6F3C 0C44 0082 660A 2052 216B 0004"            /* ��o<.D.�f. R!k.. */
	$"000A 6016 554F 2F13 3F03 4EB9 0000 D492"            /* ..`.UO/.?.N�..Ԓ */
	$"101F 6706 2F0A 4267 A939 4A06 6712 554F"            /* ..g./.Bg�9J.g.UO */
	$"3F04 3F3C FFFF 303C 020D A830 301F 3E00"            /* ?.?<��0<..�00.>. */
	$"0C43 7FFF 6706 5243 B645 6FA2 206E 0008"            /* .C.�g.RC�Eo� n.. */
	$"2F10 205F A01F 206E 0008 4290 A937 4CDF"            /* /. _�. n..B��7L� */
	$"1CF8 4E5E 2E9F 4E75 8F52 4545 4E41 424C"            /* .�N^.�Nu�REENABL */
	$"454D 454E 5542 4152 0000 4E56 FFFE 48E7"            /* EMENUBAR..NV��H� */
	$"1C20 246E 0014 2A2E 0008 422E 0018 554F"            /* . $n..*...B...UO */
	$"2F05 A86A 301F 3600 554F 2F05 A86B 301F"            /* /.�j0.6.UO/.�k0. */
	$"3800 0C43 0082 6600 00A4 554F 2F0A 4EB9"            /* 8..C.�f..�UO/.N� */
	$"0000 B2FC 301F 3600 2F0A 3F03 486E FFFE"            /* ..��0.6./.?.Hn�� */
	$"4EB9 0000 B096 302E FFFE 0280 0000 0080"            /* N�..��0.��.�...� */
	$"660C 1D7C 0001 0018 206E 000C 3083 3004"            /* f..|.... n..0�0. */
	$"5740 670E 5340 6728 5340 6742 5340 6754"            /* W@g.S@g(S@gBS@gT */
	$"605A 2F0A 4EB9 0000 E8DA 594F A9FC 201F"            /* `Z/.N�..��YO�� . */
	$"3600 554F 4EB9 0000 E95A 301F 3600 603C"            /* 6.UON�..�Z0.6.`< */
	$"2F0A 4EB9 0000 E8E0 594F A9FC 201F 3600"            /* /.N�..��YO�� .6. */
	$"554F 4EB9 0000 E95A 301F 3600 601E 554F"            /* UON�..�Z0.6.`.UO */
	$"4EB9 0000 E904 301F 3600 2F0A 4EB9 0000"            /* N�..�.0.6./.N�.. */
	$"E8D2 6008 2F0A 4EB9 0000 E8E6 4267 A938"            /* ��`./.N�..��Bg�8 */
	$"4CDF 0438 4E5E 205F 4FEF 0010 4ED0 8C44"            /* L�.8N^ _O�..NЌD */
	$"4F4D 454E 5543 484F 4943 4500 0000 4E56"            /* OMENUCHOICE...NV */
	$"FFF4 48E7 1030 266E 0010 246E 000C 422E"            /* ��H�.0&n..$n..B. */
	$"0014 554F 2F2A 000A 486E FFFC A92C 301F"            /* ..UO/*..Hn���,0. */
	$"3600 0C43 0001 6628 2F0B 4EBA FC5A 554F"            /* 6..C..f(/.N��ZUO */
	$"2F0B 2F0A 2F2E 0008 594F 2F2A 000A A93D"            /* /././...YO/*..�= */
	$"201F 2F00 4EBA FEC4 101F 1D40 0014 605C"            /*  ./.N���...@..`\ */
	$"554F 2F2A 000A 2F2B 0072 A8E8 101F 661A"            /* UO/*...+.r��..f. */
	$"594F 2EB8 0A9C 205F 2448 200A 673E 3F3C"            /* YO.�.� _$H .g>?< */
	$"0001 2F0A 205F 4E90 6032 0C43 0004 662C"            /* ../. _N�`2.C..f, */
	$"B7EE FFFC 6626 594F 2EB8 09EE 205F 2050"            /* ����f&YO.�.� _ P */
	$"2D68 0002 FFF4 2D68 0006 FFF8 2F2E FFFC"            /* -h..��-h..��/.�� */
	$"2F2A 000A 486E FFF4 A925 4252 4CDF 0C08"            /* /*..Hn���%BRL�.. */
	$"4E5E 205F 4FEF 000C 4ED0 8F48 414E 444C"            /* N^ _O�..NЏHANDL */
	$"454D 4F55 5345 444F 574E 0000 4E56 FFEC"            /* EMOUSEDOWN..NV�� */
	$"48E7 1038 286E 000C 266E 0008 4253 594F"            /* H�.8(n..&n..BSYO */
	$"A924 205F 2448 200A 6700 00F0 2F0A A873"            /* �$ _$H .g..�/.�s */
	$"2F0A 4EBA FB92 554F 3F3C 817E 486E FFF0"            /* /.N���UO?<�~Hn�� */
	$"42A7 4878 0000 A860 101F 1600 2F0A A873"            /* B�Hx..�`..../.�s */
	$"2F0A 4EBA FB72 200C 6716 554F 2F0A 486E"            /* /.N��r .g.UO/.Hn */
	$"FFF0 2F0B 2F0C 205F 4E90 101F 6600 00AC"            /* ��/./. _N�..f..� */
	$"0C6E 000F FFF0 6626 202E FFF2 E198 0280"            /* .n..��f& .���.� */
	$"0000 00FF 5380 6616 7001 C0AE FFF2 4A80"            /* ...�S�f.p.����J� */
	$"56C0 4400 1600 1F03 4EB9 0000 CEF4 0C6E"            /* V�D.....N�..��.n */
	$"0001 FFF0 6612 554F 2F0A 486E FFF0 2F0B"            /* ..��f.UO/.Hn��/. */
	$"4EBA FE8C 101F 6662 0C6E 0003 FFF0 6638"            /* N���..fb.n..��f8 */
	$"302E FFFE 0280 0000 0100 672C 2F0A 4EBA"            /* 0.��.�....g,/.N� */
	$"FAF6 554F 2F0A 486E FFF0 2F0B 594F 202E"            /* ��UO/.Hn��/.YO . */
	$"FFF2 0280 0000 00FF 3F00 A93E 201F 2F00"            /* ��.�...�?.�> ./. */
	$"4EBA FD58 101F 6622 554F 486E FFF0 A97F"            /* N��X..f"UOHn��. */
	$"101F 6700 FF32 554F 486E FFF0 486E FFEC"            /* ..g.�2UOHn��Hn�� */
	$"2F0B A980 101F 6700 FF1E 4CDF 1C08 4E5E"            /* /.��..g.�.L�..N^ */
	$"205F 504F 4ED0 924D 4F56 4142 4C45 4D4F"            /*  _PONВMOVABLEMO */
	$"4441 4C44 4941 4C4F 4700 0000 4E56 0000"            /* DALDIALOG...NV.. */
	$"206E 0008 2D68 0076 000C 4E5E 2E9F 4E75"            /*  n..-h.v..N^.�Nu */
	$"9647 4554 5749 4E44 4F57 434F 4E54 454E"            /* �GETWINDOWCONTEN */
	$"5452 4547 494F 4E00 0000 4E56 0000 206E"            /* TREGION...NV.. n */
	$"0008 2D68 0072 000C 4E5E 2E9F 4E75 9847"            /* ..-h.r..N^.�Nu�G */
	$"4554 5749 4E44 4F57 5354 5255 4354 5552"            /* ETWINDOWSTRUCTUR */
	$"4552 4547 494F 4E00 0000 4E56 0000 206E"            /* EREGION...NV.. n */
	$"000C 226E 0008 22A8 0010 2368 0014 0004"            /* .."n.."�..#h.... */
	$"4E5E 205F 504F 4ED0 9147 4554 5749 4E44"            /* N^ _PONБGETWIND */
	$"4F57 504F 5254 5245 4354 0000 4E56 0000"            /* OWPORTRECT..NV.. */
	$"2F0A 246E 0008 2F2E 000C A873 2F2E 000C"            /* /.$n../...�s/... */
	$"2F0A 4EBA FFB6 2F0A A870 486A 0004 A870"            /* /.N���/.�pHj..�p */
	$"245F 4E5E 205F 504F 4ED0 8D47 4554 5749"            /* $_N^ _PONЍGETWI */
	$"4E44 4F57 5245 4354 0000 4E56 0000 2F0A"            /* NDOWRECT..NV../. */
	$"246E 0008 2F2E 000C 3F2A 0002 3F12 4227"            /* $n../...?*..?.B' */
	$"A91B 2F2E 000C 302A 0006 906A 0002 3F00"            /* �./...0*..�j..?. */
	$"302A 0004 9052 3F00 1F3C 0001 A91D 245F"            /* 0*..�R?..<..�.$_ */
	$"4E5E 205F 504F 4ED0 8D53 4554 5749 4E44"            /* N^ _PONЍSETWIND */
	$"4F57 5245 4354 0000 4E56 FFF0 48E7 1830"            /* OWRECT..NV��H�.0 */
	$"206E 0008 2D50 FFF0 2D68 0004 FFF4 594F"            /*  n..-P��-h..��YO */
	$"AA29 205F 2448 7800 594F AA2A 205F 2648"            /* �) _$Hx.YO�* _&H */
	$"6056 554F 2F0A 3F3C 000D AA2C 101F 673E"            /* `VUO/.?<..�,..g> */
	$"554F 2F0A 3F3C 000F AA2C 101F 6730 554F"            /* UO/.?<..�,..g0UO */
	$"486E FFF0 2052 4868 0022 486E FFF8 A8AA"            /* Hn�� RHh."Hn���� */
	$"101F 1600 302E FFFC 906E FFF8 362E FFFE"            /* ....0.���n��6.�� */
	$"966E FFFA C7C0 B684 6F04 264A 2803 594F"            /* �n������o.&J(.YO */
	$"2F0A AA2B 205F 2448 200A 66A6 2D4B 000C"            /* /.�+ _$H .f�-K.. */
	$"4CDF 0C18 4E5E 2E9F 4E75 8D47 4554 4245"            /* L�..N^.�Nu�GETBE */
	$"5354 4445 5649 4345 0000 4E56 FFF8 48E7"            /* STDEVICE..NV��H� */
	$"0038 246E 000C 286E 0008 206E 0010 2D50"            /* .8$n..(n.. n..-P */
	$"FFF8 2D68 0004 FFFC 4A2D F864 672A 594F"            /* ��-h..��J-�dg*YO */
	$"486E FFF8 4EBA FF32 205F 2648 2053 24A8"            /* Hn��N��2 _&H S$� */
	$"0022 2568 0026 0004 594F AA2A 205F B1CB"            /* ."%h.&..YO�* _�� */
	$"57C0 4400 1880 601C 594F 2015 0480 0000"            /* W�D..�`.YO ..�.. */
	$"00CA 2E80 205F 24A8 0056 2568 005A 0004"            /* .�.� _$�.V%h.Z.. */
	$"18BC 0001 4A14 670C 554F 3EB8 0BAA 301F"            /* .�..J.g.UO>�.�0. */
	$"D052 3480 4CDF 1C00 4E5E 205F 4FEF 000C"            /* �R4�L�..N^ _O�.. */
	$"4ED0 9147 4554 4245 5354 5343 5245 454E"            /* NБGETBESTSCREEN */
	$"5245 4354 0000 4E56 0000 48E7 0700 3E2E"            /* RECT..NV..H�..>. */
	$"0012 342E 0010 3C2E 000A 3A2E 0008 BE46"            /* ..4...<...:...�F */
	$"6C08 B445 6F04 7200 603C 302E 000E 906E"            /* l.�Eo.r.`<0...�n */
	$"000C 6614 B446 6C08 3206 9247 5841 6026"            /* ..f.�Fl.2.�GXA`& */
	$"3205 9242 5941 601E 302E 000C 906E 000E"            /* 2.�BYA`.0...�n.. */
	$"3202 9247 9240 4A41 6706 7004 D041 3200"            /* 2.�G�@JAg.p.�A2. */
	$"B445 6F02 4441 3D41 0014 4CDF 00E0 4E5E"            /* �Eo.DA=A..L�.�N^ */
	$"205F 4FEF 000C 4ED0 9543 414C 4355 4C41"            /*  _O�..NЕCALCULA */
	$"5445 4F46 4653 4554 414D 4F55 4E54 0000"            /* TEOFFSETAMOUNT.. */
	$"4E56 FFF0 2F0A 246E 0008 206E 0010 2D50"            /* NV��/.$n.. n..-P */
	$"FFF0 2D68 0004 FFF4 206E 000C 2D50 FFF8"            /* ��-h..�� n..-P�� */
	$"2D68 0004 FFFC 302E FFF0 D06E FFF8 3480"            /* -h..��0.���n��4� */
	$"302E FFF4 D06E FFFC 3540 0004 302E FFF2"            /* 0.���n��5@..0.�� */
	$"D06E FFFA 3540 0002 302E FFF6 D06E FFFE"            /* �n��5@..0.���n�� */
	$"3540 0006 245F 4E5E 205F 4FEF 000C 4ED0"            /* 5@..$_N^ _O�..N� */
	$"8741 4444 5245 4354 0000 4E56 FFF0 2F0A"            /* �ADDRECT..NV��/. */
	$"246E 0008 206E 0010 2D50 FFF0 2D68 0004"            /* $n.. n..-P��-h.. */
	$"FFF4 206E 000C 2D50 FFF8 2D68 0004 FFFC"            /* �� n..-P��-h..�� */
	$"302E FFF0 906E FFF8 3480 302E FFF4 906E"            /* 0.��n��4�0.���n */
	$"FFFC 3540 0004 302E FFF2 906E FFFA 3540"            /* ��5@..0.��n��5@ */
	$"0002 302E FFF6 906E FFFE 3540 0006 245F"            /* ..0.���n��5@..$_ */
	$"4E5E 205F 4FEF 000C 4ED0 8753 5542 5245"            /* N^ _O�..NЇSUBRE */
	$"4354 0000 4E56 FFB6 48E7 1838 246E 000E"            /* CT..NV��H�.8$n.. */
	$"2F0A A873 2F0A 486E FFC8 4EBA FCC0 594F"            /* /.�s/.Hn��N���YO */
	$"2F0A 4EBA FC28 205F 2848 594F 2F0A 4EBA"            /* /.N��( _(HYO/.N� */
	$"FC4A 205F 2648 2F0A 486E FFB6 4EBA FC6C"            /* �J _&H/.Hn��N��l */
	$"554F 2F0B A8E2 101F 6730 2F0A 486E FFE8"            /* UO/.��..g0/.Hn�� */
	$"4EBA FC8A 2D6E FFE8 FFD8 2D6E FFEC FFDC"            /* N���-n����-n���� */
	$"302E FFE8 906E 000C 3D40 FFE8 2D6E FFE8"            /* 0.��n..=@��-n�� */
	$"FFE0 2D6E FFEC FFE4 601C 2054 2D68 0002"            /* ��-n����`. T-h.. */
	$"FFD8 2D68 0006 FFDC 2053 2D68 0002 FFE0"            /* ��-h..�� S-h..�� */
	$"2D68 0006 FFE4 302E FFE0 906E FFD8 3D40"            /* -h..��0.���n��=@ */
	$"FFD0 302E FFE2 906E FFDA 3D40 FFD2 302E"            /* ��0.��n��=@��0. */
	$"FFE6 906E FFDE 3D40 FFD6 302E FFE4 906E"            /* ��n��=@��0.��n */
	$"FFDC 3D40 FFD4 2D6E FFD8 FFC0 2D6E FFDC"            /* ��=@��-n����-n�� */
	$"FFC4 594F A8D8 205F 2648 2F0B 486E FFC0"            /* ��YO�� _&H/.Hn�� */
	$"A8DF 594F 2EB8 09EE 205F 2F08 2F0B 2F0B"            /* ��YO.�.� _/././. */
	$"A8E4 554F 2F0B A8E2 101F 670C 2D6E FFE0"            /* ��UO/.��..g.-n�� */
	$"FFC0 2D6E FFE4 FFC4 2F0B A8D9 486E FFC0"            /* ��-n����/.��Hn�� */
	$"486E FFF0 486E FFBF 4EBA FCF0 486E FFF8"            /* Hn��Hn��N���Hn�� */
	$"42A7 3F2E 000A 3F2E 0008 A8A7 486E FFF8"            /* B�?...?...��Hn�� */
	$"3F2E FFCA 3F2E FFC8 A8A8 486E FFF8 486E"            /* ?.��?.�Ȩ�Hn��Hn */
	$"FFD0 486E FFF8 4EBA FDE8 554F 486E FFF8"            /* ��Hn��N���UOHn�� */
	$"486E FFF0 486E FFE8 A8AA 101F 1600 554F"            /* Hn��Hn�訪....UO */
	$"486E FFF8 486E FFE8 A8A6 101F 664E 554F"            /* Hn��Hn�訦..fNUO */
	$"3F2E FFFA 3F2E FFFE 3F2E FFEA 3F2E FFEE"            /* ?.��?.��?.��?.�� */
	$"3F2E FFF2 3F2E FFF6 4EBA FD1C 301F 3800"            /* ?.��?.��N��.0.8. */
	$"554F 3F2E FFF8 3F2E FFFC 3F2E FFE8 3F2E"            /* UO?.��?.��?.��?. */
	$"FFEC 3F2E FFF0 3F2E FFF4 4EBA FCFA 301F"            /* ��?.��?.��N���0. */
	$"3600 486E FFF8 3F04 3F03 A8A8 554F 486E"            /* 6.Hn��?.?.��UOHn */
	$"FFF8 486E FFF0 486E FFE8 A8AA 101F 1600"            /* ��Hn��Hn�訪.... */
	$"554F 486E FFF8 486E FFE8 A8A6 101F 6664"            /* UOHn��Hn�訦..fd */
	$"302E FFF6 906E FFF2 322E FFFE 926E FFFA"            /* 0.���n��2.���n�� */
	$"B240 6F28 7004 D06E FFF2 3D40 FFFA 4A2E"            /* �@o(p.�n��=@��J. */
	$"FFBF 670E 302E FFF6 0440 0040 3D40 FFFE"            /* ��g.0.��.@.@=@�� */
	$"600A 302E FFF6 5940 3D40 FFFE 302E FFF4"            /* `.0.��Y@=@��0.�� */
	$"906E FFF0 322E FFFC 926E FFF8 B240 6F14"            /* �n��2.���n���@o. */
	$"7004 D06E FFF0 3D40 FFF8 302E FFF4 5940"            /* p.�n��=@��0.��Y@ */
	$"3D40 FFFC 486E FFF8 486E FFD0 486E FFF8"            /* =@��Hn��Hn��Hn�� */
	$"4EBA FD48 302E FFFA B06E FFCA 6628 302E"            /* N��H0.���n��f(0. */
	$"FFF8 B06E FFC8 661E 2F0A 302E FFFE 906E"            /* ���n��f./.0.���n */
	$"FFFA 3F00 302E FFFC 906E FFF8 3F00 1F3C"            /* ��?.0.���n��?..< */
	$"0001 A91D 600A 2F0A 486E FFF8 4EBA FA8C"            /* ..�.`./.Hn��N��� */
	$"4CDF 1C18 4E5E 205F 4FEF 000A 4ED0 8D5A"            /* L�..N^ _O�..NЍZ */
	$"4F4F 4D57 494E 444F 574F 5554 0000 4E56"            /* OOMWINDOWOUT..NV */
	$"0000 2F03 554F 2F2E 000C 4878 0004 4EB9"            /* ../.UO/...Hx..N� */
	$"0000 D212 301F 3600 4A43 660C 206E 000C"            /* ..�.0.6.JCf. n.. */
	$"2050 2050 20AE 0008 3D43 0010 261F 4E5E"            /*  P P �..=C..&.N^ */
	$"205F 504F 4ED0 9148 414E 444C 4541 5252"            /*  _PONБHANDLEARR */
	$"4159 4352 4541 5445 0000 4E56 0000 2F0A"            /* AYCREATE..NV../. */
	$"246E 0008 B4FC 0000 56C0 4400 1F00 4EB9"            /* $n..��..V�D...N� */
	$"0000 ACEA 594F 2F0A 4EB9 0000 E790 201F"            /* ..��YO/.N�..� . */
	$"5980 2052 2210 4EB9 0000 056A 2D40 000C"            /* Y� R".N�...j-@.. */
	$"245F 4E5E 2E9F 4E75 9048 414E 444C 4541"            /* $_N^.�Nu�HANDLEA */
	$"5252 4159 434F 554E 5400 0000 4E56 0000"            /* RRAYCOUNT...NV.. */
	$"2F0A 246E 000C B4FC 0000 56C0 4400 1F00"            /* /.$n..��..V�D... */
	$"4EB9 0000 ACEA 554F 2F2E 0008 2F0A 2052"            /* N�..��UO/.../. R */
	$"2F10 201F 225F 205F A9EF 3E80 301F 3D40"            /* /. ."_ _��>�0.=@ */
	$"0010 245F 4E5E 205F 504F 4ED0 9148 414E"            /* ..$_N^ _PONБHAN */
	$"444C 4541 5252 4159 4150 5045 4E44 0000"            /* DLEARRAYAPPEND.. */
	$"4E56 FFFC 48E7 1020 246E 0010 262E 000C"            /* NV��H�. $n..&... */
	$"B4FC 0000 6712 4A83 6F0E 594F 2F0A 4EBA"            /* ��..g.J�o.YO/.N� */
	$"FF3A 201F B680 6F04 7000 6002 7001 1F00"            /* �: .��o.p.`.p... */
	$"4EB9 0000 ACEA 7004 D092 2203 5381 2052"            /* N�..��p.В".S� R */
	$"2D40 FFFC 2010 4EB9 0000 04DA D0AE FFFC"            /* -@�� .N�...�Ю�� */
	$"2040 4850 2F2E 0008 2052 2F10 201F 225F"            /*  @HP/... R/. ."_ */
	$"205F A22E 4CDF 0408 4E5E 205F 4FEF 000C"            /*  _�.L�..N^ _O�.. */
	$"4ED0 8E48 414E 444C 4541 5252 4159 4745"            /* NЎHANDLEARRAYGE */
	$"5400 0000 4E56 0000 48E7 1020 246E 000C"            /* T...NV..H�. $n.. */
	$"262E 0008 B4FC 0000 6712 4A83 6F0E 594F"            /* &...��..g.J�o.YO */
	$"2F0A 4EBA FEB6 201F B680 6F04 7000 6002"            /* /.N��� .��o.p.`. */
	$"7001 1F00 4EB9 0000 ACEA 2F0A 2003 5380"            /* p...N�..��/. .S� */
	$"2052 2210 4EB9 0000 04DA 5880 2F00 2052"            /*  R".N�...�X�/. R */
	$"2F10 4EB9 0000 D284 4CDF 0408 4E5E 205F"            /* /.N�..҄L�..N^ _ */
	$"504F 4ED0 9148 414E 444C 4541 5252 4159"            /* PONБHANDLEARRAY */
	$"4445 4C45 5445 0000 4E56 FF00 48E7 1E20"            /* DELETE..NV�.H�.  */
	$"246E 000C 3C2E 000A 1A2E 0008 206E 0010"            /* $n..<....... n.. */
	$"43EE FF00 703F 22D8 51C8 FFFC 7800 182E"            /* C��.p?"�Q���x... */
	$"FF00 7601 601E 41EE FF00 7000 1030 3000"            /* �.v.`.A��.p..00. */
	$"3F00 2F0A 3F06 1F05 4EBA 00C0 0C43 7FFF"            /* ?./.?...N�.�.C.� */
	$"6706 5243 B644 6FDE 4CDF 0478 4E5E 205F"            /* g.RC�Do�L�.xN^ _ */
	$"4FEF 000C 4ED0 8E44 5241 5742 4152 434F"            /* O�..NЎDRAWBARCO */
	$"4445 5354 5200 0000 4E56 0000 206E 0008"            /* DESTR...NV.. n.. */
	$"2068 000C 3010 D06E 000C 206E 0008 2068"            /*  h..0.�n.. n.. h */
	$"000C 3080 4E5E 205F 5C4F 4ED0 8657 6869"            /* ..0�N^ _\ONІWhi */
	$"7465 3000 0000 4E56 0000 3F2E 000C 3F3C"            /* te0...NV..?...?< */
	$"0001 A89B 206E 0008 2068 000C 3F10 206E"            /* ..�� n.. h..?. n */
	$"0008 3F28 000A A893 206E 0008 2068 000C"            /* ..?(..�� n.. h.. */
	$"3F10 206E 0008 7012 D068 000A 3F00 A891"            /* ?. n..p.�h..?.�� */
	$"206E 0008 2068 000C 3010 D06E 000C 206E"            /*  n.. h..0.�n.. n */
	$"0008 2068 000C 3080 4E5E 205F 5C4F 4ED0"            /* .. h..0�N^ _\ON� */
	$"8642 6C61 636B 3100 0000 4E56 0000 48E7"            /* �Black1...NV..H� */
	$"1E20 3C2E 0010 594F 2F2D FE02 3F3C 0080"            /* . <...YO/-�.?<.� */
	$"A9A0 205F 2448 0C46 0061 6D0A 0C46 007A"            /* �� _$H.F.am..F.z */
	$"6E04 0446 0020 200A 6700 00AC 0C46 007F"            /* n..F.  .g..�.F.. */
	$"6E00 00A4 7000 3006 E588 2052 72FF B2B0"            /* n..�p.0.� Rr��� */
	$"0800 6700 0092 7000 3006 E588 2052 2A30"            /* ..g..�p.0.� R*0 */
	$"0800 7608 604E 7002 C1C3 2805 E0AC 7003"            /* ..v.`Np.��(.�p. */
	$"C880 3004 670E 5340 6716 5340 671E 5340"            /* Ȁ0.g.S@g.S@g.S@ */
	$"6726 602E 3F3C 0001 2F0E 4EBA FEEC 6022"            /* g&`.?<../.N���`" */
	$"3F3C 0003 2F0E 4EBA FEE0 6016 3F3C 0001"            /* ?<../.N���`.?<.. */
	$"2F0E 4EBA FF02 600A 3F3C 0003 2F0E 4EBA"            /* /.N��.`.?<../.N� */
	$"FEF6 5343 4A43 6CAE 3F3C 0001 2F0E 4EBA"            /* ��SCJCl�?<../.N� */
	$"FEB8 4A2E 0008 671E 206E 000C 3010 0440"            /* ��J...g. n..0..@ */
	$"000C 3F00 7012 D06E 000A 0640 000B 3F00"            /* ..?.p.�n...@..?. */
	$"A893 3F06 A883 4CDF 0478 4E5E 205F 4FEF"            /* ��?.��L�.xN^ _O� */
	$"000A 4ED0 8F44 5241 5742 4152 434F 4445"            /* ..NЏDRAWBARCODE */
	$"4348 4152 0000 4E56 0000 2F03 486D F050"            /* CHAR..NV../.Hm�P */
	$"A86E A8FE A912 A930 A9CC 4878 0000 A97B"            /* �n���.�0��Hx..�{ */
	$"594F 2E8F 201F 0480 0000 8000 2040 4850"            /* YO.� ..�..�. @HP */
	$"205F A02D A063 7601 6004 A036 5243 0C43"            /*  _�-�cv.`.�6RC.C */
	$"0003 6FF6 261F 4E5E 4E75 8E49 4E49 5449"            /* ..o�&.N^Nu�INITI */
	$"414C 495A 4154 494F 4E00 0000 4E56 FFFC"            /* ALIZATION...NV�� */
	$"3D7C 0028 FFFC 3D7C 0028 FFFE 2D6E FFFC"            /* =|.(��=|.(��-n�� */
	$"0008 4E5E 4E75 854D 4653 5054 0000 4E56"            /* ..N^Nu�MFSPT..NV */
	$"FFA8 48E7 1020 206E 0008 43EE FFA8 7015"            /* ��H�.  n..C���p. */
	$"22D8 51C8 FFFC 246E 000C 14AE FFA8 4A2E"            /* "�Q���$n...���J. */
	$"FFF8 56C0 4400 1540 0001 256E FFAA 0002"            /* ��V�D..@..%n��.. */
	$"356E FFAE 0006 256E FFB0 0008 41EE FFA8"            /* 5n��..%n��..A��� */
	$"5088 5888 2608 2043 7000 1010 5240 48C0"            /* P�X�&. Cp...R@H� */
	$"2043 43EA 000C A22E 4CDF 0408 4E5E 205F"            /*  CC�..�.L�..N^ _ */
	$"504F 4ED0 8B53 4554 5354 4452 4550 4C59"            /* PONЋSETSTDREPLY */
	$"0000 4E56 FFB6 48E7 1020 206E 0008 43EE"            /* ..NV��H�.  n..C� */
	$"FFB6 7011 22D8 51C8 FFFC 32D8 246E 000C"            /* ��p."�Q���2�$n.. */
	$"14AE FFB6 156E FFB7 0001 256E FFB8 0002"            /* .���.n��..%n��.. */
	$"554F 3F2E FFBC 486A 0006 486A 0008 4EB9"            /* UO?.��Hj..Hj..N� */
	$"0000 C5F2 301F 3600 41EE FFB6 5088 5488"            /* ..��0.6.A���P�T� */
	$"2608 2043 7000 1010 5240 48C0 2043 43EA"            /* &. Cp...R@H� CC� */
	$"000C A22E 4CDF 0408 4E5E 205F 504F 4ED0"            /* ..�.L�..N^ _PON� */
	$"8B53 4554 4F4C 4452 4550 4C59 0000 4E56"            /* �SETOLDREPLY..NV */
	$"FD56 2F0A 246E 0008 206E 0010 43EE FDB6"            /* �V/.$n.. n..C��� */
	$"703F 22D8 51C8 FFFC 206E 000C 43EE FEB6"            /* p?"�Q��� n..C��� */
	$"703F 22D8 51C8 FFFC 2D4A FD56 4A2D F866"            /* p?"�Q���-J�VJ-�f */
	$"671E 486E FDB6 486E FEB6 486E FD5E 3F3C"            /* g.Hn��Hn��Hn�^?< */
	$"0005 A9EA 2F0A 486E FD5E 4EBA FEC2 6032"            /* ..��/.Hn�^N���`2 */
	$"594F 4EBA FE98 2D5F FD5A 2F2E FD5A 486E"            /* YON���-_�Z/.�ZHn */
	$"FDB6 486E FEB6 4878 0000 486E FFB6 3F3C"            /* ��Hn��Hx..Hn��?< */
	$"0001 A9EA 422E FFB7 2F0A 486E FFB6 4EBA"            /* ..��B.��/.Hn��N� */
	$"FF02 245F 4E5E 205F 4FEF 000C 4ED0 8750"            /* �.$_N^ _O�..NЇP */
	$"5554 4649 4C45 0000 4E56 FFFC 2F0A 594F"            /* UTFILE..NV��/.YO */
	$"2E89 205F 2448 594F 4EB9 0000 7618 205F"            /* .� _$HYON�..v. _ */
	$"2D48 FFFC 4AAA 0016 670A 2F0A 2F2A 0016"            /* -H��J�..g././*.. */
	$"205F 4E90 2F2E FFFC 4EB9 0000 7622 245F"            /*  _N�/.��N�..v"$_ */
	$"4E5E 4E75 8A54 494D 454D 414E 4745 5200"            /* N^Nu�TIMEMANGER. */
	$"0000 4E56 0000 2F0A 246E 0008 42AA 000A"            /* ..NV../.$n..B�.. */
	$"256D F49C 0006 42AA 000E 42AA 0012 42AA"            /* %m��..B�..B�..B� */
	$"0016 2F0A 205F A458 245F 4E5E 2E9F 4E75"            /* ../. _�X$_N^.�Nu */
	$"8B58 494E 5345 5254 5449 4D45 0000 4E56"            /* �XINSERTTIME..NV */
	$"0000 2F2E 0008 205F A059 4E5E 2E9F 4E75"            /* ../... _�YN^.�Nu */
	$"8B58 5245 4D4F 5645 5449 4D45 0000 4E56"            /* �XREMOVETIME..NV */
	$"0000 2F0A 246E 0010 206A 0006 B1ED F49C"            /* ../.$n.. j..���� */
	$"57C0 4400 1F00 4EB9 0000 ACEA 4AAA 0006"            /* W�D...N�..��J�.. */
	$"56C0 4400 1F00 4EB9 0000 ACEA 256E 000C"            /* V�D...N�..��%n.. */
	$"0016 2F0A 2F2E 0008 201F 205F A05A 245F"            /* .././... . _�Z$_ */
	$"4E5E 205F 4FEF 000C 4ED0 8A58 5052 494D"            /* N^ _O�..NЊXPRIM */
	$"4554 494D 4500 0000 4E56 0000 594F 487A"            /* ETIME...NV..YOHz */
	$"FEF8 2E9F 205F 2B48 F49C 42AE 000C 4E5E"            /* ��.� _+H��B�..N^ */
	$"2E9F 4E75 9058 494E 4954 5449 4D45 4D41"            /* .�Nu�XINITTIMEMA */
	$"4E41 4745 5200 0000 4E56 0000 4EB9 0000"            /* NAGER...NV..N�.. */
	$"75E0 487A FFC4 4878 0000 42A7 4878 0000"            /* u�Hz��Hx..B�Hx.. */
	$"4EB9 0000 BE5E 4E5E 4E75 9253 5441 5254"            /* N�..�^N^Nu�START */
	$"5550 5449 4D45 4D41 4E41 4745 5200 0000"            /* UPTIMEMANAGER... */
	$"4E56 FFE0 48E7 1820 382E 000C 246E 0008"            /* NV��H�. 8...$n.. */
	$"206E 000E 2D50 FFEA 2D68 0004 FFEE 486E"            /*  n..-P��-h..��Hn */
	$"FFF8 A88B 4A44 6C00 0118 3D7C 0001 FFF6"            /* ����JDl...=|..�� */
	$"3D7C 0001 FFF4 594F 3F3C 009F 1F3C 0001"            /* =|..��YO?<.�.<.. */
	$"4EB9 0000 E7B6 205F 2D48 FFE0 594F 3F3C"            /* N�..� _-H��YO?< */
	$"0054 1F3C 0001 4EB9 0000 E7B6 205F B1EE"            /* .T.<..N�..� _�� */
	$"FFE0 56C0 4400 1600 4A03 6742 554F 2F2E"            /* ��V�D...J.gBUO/. */
	$"FFF4 2F2E FFF4 7000 A854 101F 6730 554F"            /* ��/.��p.�T..g0UO */
	$"3F2E 0014 2F2E 0016 2F2E FFF4 2F2E FFF4"            /* ?.../.../.��/.�� */
	$"486E FFF2 486E FFE8 4878 0000 4878 0000"            /* Hn��Hn��Hx..Hx.. */
	$"4878 0000 7008 A854 301F 3600 6002 76FF"            /* Hx..p.�T0.6.`.v� */
	$"4A43 6708 426E FFF2 426E FFE8 306E FFFE"            /* JCg.Bn��Bn��0n�� */
	$"2D48 FFE0 594F 306E FFFA 2F08 302E FFE8"            /* -H��YO0n��/.0.�� */
	$"4440 48C0 2F00 201F 2E9F B097 6F02 2E80"            /* D@H�/. ..���o..� */
	$"201F 2D40 FFE4 594F 306E FFF8 2F08 306E"            /*  .-@��YO0n��/.0n */
	$"FFF2 2F08 201F 2E9F B097 6F02 2E80 201F"            /* ��/. ..���o..� . */
	$"D0AE FFE4 D0AE FFE0 3600 306E FFFE 326E"            /* Ю��Ю��6.0n��2n */
	$"FFEA 2D48 FFE4 2D49 FFE0 594F 306E FFF8"            /* ��-H��-I��YO0n�� */
	$"2F08 306E FFF2 2F08 201F 2E9F B097 6F02"            /* /.0n��/. ..���o. */
	$"2E80 201F D0AE FFE0 D0AE FFE4 3480 602E"            /* .� .Ю��Ю��4�`. */
	$"4A44 661C 362E FFF8 D66E FFFA D66E FFFE"            /* JDf.6.���n���n�� */
	$"302E FFEA D06E FFF8 D06E FFFE 3480 600E"            /* 0.���n���n��4�`. */
	$"3604 302E FFEA D044 D06E FFFE 3480 3D43"            /* 6.0.���D�n��4�=C */
	$"001A 4CDF 0418 4E5E 205F 4FEF 0012 4ED0"            /* ..L�..N^ _O�..N� */
	$"8D4E 5442 4C49 4E45 4845 4947 4854 0000"            /* �NTBLINEHEIGHT.. */
	$"4E56 FFF8 48E7 1F20 246E 0016 2C2E 0012"            /* NV��H�. $n..,... */
	$"3A2E 000C 382E 000A 206E 000E 2D50 FFF8"            /* :...8... n..-P�� */
	$"2D68 0004 FFFC 594F 2F0A 2F06 2F3C 8408"            /* -h..��YO/././<�. */
	$"0028 A8B5 201F 2600 0C45 0080 6656 554F"            /* .(�� .&..E.�fVUO */
	$"2F0A 4267 3F03 A886 301F 322E 0008 9240"            /* /.Bg?.��0.2...�@ */
	$"3E01 3F2E FFFA 3F04 A893 0C2E 0002 001A"            /* >.?.��?.��...... */
	$"6718 594F 2F0A 2006 5380 2F00 201F D09F"            /* g.YO/. .S�/. .П */
	$"2E80 205F 0C10 000D 660C 554F 3EB8 0BAC"            /* .� _....f.UO>�.� */
	$"301F 3A00 600E 2F0A 3F03 3F07 2F3C 8008"            /* 0.:.`./.?.?./<�. */
	$"001E A8B5 3005 5440 670E 5340 6714 5340"            /* ..��0.T@g.S@g.S@ */
	$"6706 5340 6726 6052 3F2E FFFA 3F04 A893"            /* g.S@g&`R?.��?.�� */
	$"6048 554F 2F0A 4267 3F03 A886 301F 322E"            /* `HUO/.Bg?.��0.2. */
	$"FFFE 9240 3F01 3F04 A893 602E 554F 2F0A"            /* ���@?.?.��`.UO/. */
	$"4267 3F03 A886 301F 322E 0008 9240 48C1"            /* Bg?.��0.2...�@H� */
	$"2001 E088 E088 E088 EE88 D081 E280 306E"            /*  .�������Ё�0n */
	$"FFFA D088 3F00 3F04 A893 0C45 0080 6708"            /* ��Ј?.?.��.E.�g. */
	$"2F0A 4267 3F06 A885 4CDF 04F8 4E5E 205F"            /* /.Bg?.��L�.�N^ _ */
	$"4FEF 0014 4ED0 874E 5442 4452 4157 0000"            /* O�..NЇNTBDRAW.. */
	$"4E56 FFE6 48E7 1F38 262E 0020 282E 001C"            /* NV��H�.8&.. (... */
	$"3E2E 0016 266E 0008 206E 0018 2D50 FFEE"            /* >...&n.. n..-P�� */
	$"2D68 0004 FFF2 594F A8D8 205F 2D48 FFEA"            /* -h..��YO�� _-H�� */
	$"2F2E FFEA A87A 486E FFEE A87B 3C2E FFF4"            /* /.��zHn��{<.�� */
	$"9C6E FFF0 594F 3046 2F08 A83F 201F 2840"            /* �n��YO0F/.�? .(@ */
	$"4A47 660A 554F 3EB8 0BAC 301F 3E00 554F"            /* JGf.UO>�.�0.>.UO */
	$"2F03 2F04 486E FFEE 3F2E 0014 486E FFFA"            /* /./.Hn��?...Hn�� */
	$"4EBA FCDE 301F 3A00 4253 2443 594F 2F03"            /* N���0.:.BS$CYO/. */
	$"2F04 201F D09F 2E80 205F 2D48 FFE6 2604"            /* /. .П.� _-H��&. */
	$"6068 7001 2D40 FFFC 2D4C FFF6 554F 2F0A"            /* `hp.-@��-L��UO/. */
	$"2F03 42A7 2F03 42A7 486E FFF6 486E FFFC"            /* /.B�/.B�Hn��Hn�� */
	$"2F3C 821C FFFE A8B5 101F 1800 1F04 2F0A"            /* /<�.����....../. */
	$"2F2E FFFC 486E FFEE 3F07 3F2E FFFA 3F06"            /* /.��Hn��?.?.��?. */
	$"4EBA FE0E 302E FFFA D045 3D40 FFFA 594F"            /* N��.0.���E=@��YO */
	$"2F0A 2F2E FFFC 201F D09F 2E80 205F 2448"            /* /./.�� .П.� _$H */
	$"96AE FFFC 7001 D053 3680 4A83 6E94 302E"            /* ����p.�S6�J�n�0. */
	$"FFFA 9045 206E 0010 3080 206E 000C 3085"            /* ���E n..0� n..0� */
	$"2F2E FFEA A879 2F2E FFEA A8D9 4CDF 1CF8"            /* /.��y/.���L�.� */
	$"4E5E 205F 4FEF 001C 4ED0 8A4E 454F 5445"            /* N^ _O�..NЊNEOTE */
	$"5854 424F 5800 0000 4E56 0000 4A2D F819"            /* XTBOX...NV..J-�. */
	$"6716 0C2D 0002 F619 6608 486D F508 A851"            /* g..-..�.f.Hm�.�Q */
	$"6006 486D F4C4 A851 4E5E 4E75 8C55 5044"            /* `.Hm�ĨQN^Nu�UPD */
	$"4154 4543 5552 534F 5200 0000 4E56 0000"            /* ATECURSOR...NV.. */
	$"0C2D 0001 F619 6618 594F 2EB8 016A 201F"            /* .-..�.f.YO.�.j . */
	$"B0AD F4A2 6F0A 1B7C 0002 F619 4EBA FFAA"            /* ����o..|..�.N��� */
	$"2F2E 0008 2F2D F4A6 4878 00C8 4EB9 0000"            /* /.../-��Hx.�N�.. */
	$"9BDE 4E5E 2E9F 4E75 8A43 5552 534F 5254"            /* ��N^.�Nu�CURSORT */
	$"4153 4B00 0000 4E56 FFBC 206E 0008 43EE"            /* ASK...NV�� n..C� */
	$"FFBC 7010 22D8 51C8 FFFC 41EE FFBC 43ED"            /* ��p."�Q���A���C� */
	$"F4C4 7010 22D8 51C8 FFFC 4EBA FF5C 4E5E"            /* ��p."�Q���N��\N^ */
	$"2E9F 4E75 8943 5552 534F 5253 4554 0000"            /* .�Nu�CURSORSET.. */
	$"4E56 0000 594F 2015 0480 0000 00CA 2E80"            /* NV..YO ..�...�.� */
	$"205F 4868 005E 4EBA FFAE 4E5E 4E75 8E43"            /*  _Hh.^N���N^Nu�C */
	$"5552 534F 5253 4554 4152 524F 5700 0000"            /* URSORSETARROW... */
	$"4E56 0000 486D F5D4 4EBA FF8C 4E5E 4E75"            /* NV..Hm��N���N^Nu */
	$"8E43 5552 534F 5253 4554 4942 4541 4D00"            /* �CURSORSETIBEAM. */
	$"0000 4E56 0000 486D F508 4EBA FF6A 4E5E"            /* ..NV..Hm�.N��jN^ */
	$"4E75 8E43 5552 534F 5253 4554 5741 5443"            /* Nu�CURSORSETWATC */
	$"4800 0000 4E56 0000 2F03 162E 0008 B62D"            /* H...NV../.....�- */
	$"F4A1 6724 4A03 6718 594F A975 201F 0680"            /* ��g$J.g.YO�u ..� */
	$"0000 0708 2B40 F4A2 1B7C 0001 F619 6004"            /* ....+@��.|..�.`. */
	$"422D F619 1B43 F4A1 4EBA FE9E 261F 4E5E"            /* B-�..C��N���&.N^ */
	$"205F 544F 4ED0 9343 5552 534F 5253 4554"            /*  _TONГCURSORSET */
	$"5052 4F43 4553 5349 4E47 0000 4E56 0000"            /* PROCESSING..NV.. */
	$"594F 487A FEA8 2E9F 205F 2B48 F4A6 422D"            /* YOHz��.� _+H��B- */
	$"F619 594F 3F3C 0001 A9B9 205F 2050 43ED"            /* �.YO?<..�� _ PC� */
	$"F5D4 7010 22D8 51C8 FFFC 594F 3F3C 0002"            /* ��p."�Q���YO?<.. */
	$"A9B9 205F 2050 43ED F590 7010 22D8 51C8"            /* �� _ PC���p."�Q� */
	$"FFFC 594F 3F3C 0003 A9B9 205F 2050 43ED"            /* ��YO?<..�� _ PC� */
	$"F54C 7010 22D8 51C8 FFFC 594F 3F3C 0004"            /* �Lp."�Q���YO?<.. */
	$"A9B9 205F 2050 43ED F508 7010 22D8 51C8"            /* �� _ PC��.p."�Q� */
	$"FFFC 594F 2015 0480 0000 00CA 2E80 205F"            /* ��YO ..�...�.� _ */
	$"41E8 005E 43ED F4C4 7010 22D8 51C8 FFFC"            /* A�.^C���p."�Q��� */
	$"422D F4A1 486D F4AA 4EB9 0000 9B82 486D"            /* B-��Hm��N�..��Hm */
	$"F4AA 2F2D F4A6 4878 00C8 4EB9 0000 9BDE"            /* ��/-��Hx.�N�..�� */
	$"42AE 000C 4E5E 2E9F 4E75 8B49 4E49 5443"            /* B�..N^.�Nu�INITC */
	$"5552 534F 5253 0000 4E56 0000 486D F4AA"            /* URSORS..NV..Hm�� */
	$"4EB9 0000 9BBE 4E5E 4E75 8D46 494E 4953"            /* N�..��N^Nu�FINIS */
	$"4843 5552 534F 5253 0000 4E56 0000 4EB9"            /* HCURSORS..NV..N� */
	$"0000 9C68 487A FF06 4878 0000 42A7 487A"            /* ..�hHz�.Hx..B�Hz */
	$"FFC8 4EB9 0000 BE5E 4E5E 4E75 8E53 5441"            /* ��N�..�^N^Nu�STA */
	$"5254 5550 4355 5253 4F52 5300 0000 4E56"            /* RTUPCURSORS...NV */
	$"0000 4E5E 2E9F 4E75 8E50 4F62 6A65 6374"            /* ..N^.�Nu�PObject */
	$"5F43 7265 6174 6500 0000 4E56 0000 2F2E"            /* _Create...NV../. */
	$"0008 4EB9 0000 E3FA 4E5E 2E9F 4E75 8F50"            /* ..N�..��N^.�Nu�P */
	$"4F62 6A65 6374 5F44 6573 7472 6F79 0000"            /* Object_Destroy.. */
	$"4E56 FFF8 206E 000C 2D50 FFF8 2D68 0004"            /* NV�� n..-P��-h.. */
	$"FFFC 3D7C 0001 0010 4E5E 205F 504F 4ED0"            /* ��=|....N^ _PON� */
	$"9250 4F62 6A65 6374 5F43 6F75 6E74 5061"            /* �PObject_CountPa */
	$"6765 7300 0000 4E56 0000 4E5E 2E9F 4E75"            /* ges...NV..N^.�Nu */
	$"8E50 4F62 6A65 6374 5F44 6F49 646C 6500"            /* �PObject_DoIdle. */
	$"0000 4E56 FFF8 2F0A 246E 0012 206E 0016"            /* ..NV��/.$n.. n.. */
	$"2D50 FFF8 2D68 0004 FFFC 2F0A A873 45EE"            /* -P��-h..��/.�sE� */
	$"FFF8 302A 0002 D06A 0006 48C0 2200 E089"            /* ��0*..�j..H�".�� */
	$"E089 E089 EE89 D280 E281 7014 9280 3F01"            /* �����Ҁ�p.��?. */
	$"3012 D06A 0004 48C0 2200 E089 E089 E089"            /* 0.�j..H�".������ */
	$"EE89 D280 E281 3F01 A893 486D FE06 A884"            /* �Ҁ�?.��Hm�.�� */
	$"426E 001A 245F 4E5E 205F 4FEF 0012 4ED0"            /* Bn..$_N^ _O�..N� */
	$"9050 4F62 6A65 6374 5F44 7261 7750 6167"            /* �PObject_DrawPag */
	$"6500 0000 4E56 0000 4EB9 0000 A192 4E5E"            /* e...NV..N�..��N^ */
	$"2E9F 4E75 8020 504F 626A 6563 745F 4F70"            /* .�Nu� PObject_Op */
	$"656E 5072 696E 7469 6E67 5374 6174 7573"            /* enPrintingStatus */
	$"4469 616C 6F67 0000 4E56 0000 4EB9 0000"            /* Dialog..NV..N�.. */
	$"A140 4E5E 2E9F 4E75 8021 504F 626A 6563"            /* �@N^.�Nu�!PObjec */
	$"745F 436C 6F73 6550 7269 6E74 696E 6753"            /* t_ClosePrintingS */
	$"7461 7475 7344 6961 6C6F 6700 0000 4E56"            /* tatusDialog...NV */
	$"0000 2F2D F61A 4878 0005 2F2D F61A 4EB9"            /* ../-�.Hx../-�.N� */
	$"0000 E35A 504F 2050 4E90 4E5E 4E75 8644"            /* ..�ZPO PN�N^Nu�D */
	$"4F49 444C 4500 0000 4E56 FFFE 2F3C C800"            /* OIDLE...NV��/<�. */
	$"0000 A8FD 554F 2F3C BA00 0000 A8FD 301F"            /* ..��UO/<�...��0. */
	$"661A 554F 2F2E 0008 2F3C 2A04 0484 A8FD"            /* f.UO/.../<*..��� */
	$"101F 1D40 FFFF 426E 0010 6010 554F 2F3C"            /* ...@��Bn..`.UO/< */
	$"BA00 0000 A8FD 301F 3D40 0010 2F3C D000"            /* �...��0.=@../<�. */
	$"0000 A8FD 4E5E 205F 504F 4ED0 8B44 4F50"            /* ..��N^ _PONЋDOP */
	$"4147 4553 4554 5550 0000 4E56 FFDE 48E7"            /* AGESETUP..NV��H� */
	$"1F38 266E 000C 286E 0008 486E FFF8 A874"            /* .8&n..(n..Hn���t */
	$"2B4B F61A 2F3C C800 0000 A8FD 554F 2F3C"            /* +K�./<�...��UO/< */
	$"BA00 0000 A8FD 301F 6600 0188 554F A994"            /* �...��0.f..�UO�� */
	$"301F 3D40 FFFC 554F 2054 4868 0008 2F0B"            /* 0.=@��UO THh../. */
	$"4878 0002 2F0B 4EB9 0000 E35A 504F 2050"            /* Hx../.N�..�ZPO P */
	$"4E90 301F 3600 554F 2F0C 2F3C 3204 0488"            /* N�0.6.UO/./<2..� */
	$"A8FD 101F 6700 0140 2054 3828 0042 2054"            /* ��..g..@ T8(.B T */
	$"3C28 003E 2054 3A28 0040 2054 317C 0001"            /* <(.> T:(.@ T1|.. */
	$"003E 2054 317C 270F 0040 BA43 6F02 3A03"            /* .> T1|'..@�Co.:. */
	$"2F0B 4878 0004 2F0B 4EB9 0000 E35A 504F"            /* /.Hx../.N�..�ZPO */
	$"2050 4E90 3D44 FFFE 7E01 6000 00DC 41FA"            /*  PN�=D��~.`..�A� */
	$"FEBE 2254 2348 0046 3F2E FFFC A998 594F"            /* ��"T#H.F?.����YO */
	$"2F0C 4878 0000 4878 0000 2F3C 0400 0C00"            /* /.Hx..Hx../<.... */
	$"A8FD 205F 2448 554F 2F3C BA00 0000 A8FD"            /* �� _$HUO/<�...�� */
	$"301F 6600 0092 3606 606E 2F0A 4878 0000"            /* 0.f..�6.`n/.Hx.. */
	$"2F3C 1000 0808 A8FD 554F 2F3C BA00 0000"            /* /<....��UO/<�... */
	$"A8FD 301F 6642 554F 2054 4868 0008 2F0A"            /* ��0.fBUO THh../. */
	$"3F03 BC43 57C0 4400 1F00 BA43 57C0 4400"            /* ?.�CW�D...�CW�D. */
	$"1F00 2F0B 4878 0003 2F0B 4EB9 0000 E35A"            /* ../.Hx../.N�..�Z */
	$"504F 2050 4E90 301F 3800 4A44 670A 3F04"            /* PO PN�0.8.JDg.?. */
	$"2F3C C000 0200 A8FD 2F0A 2F3C 1800 040C"            /* /<�...��/./<.... */
	$"A8FD 7001 D043 3600 554F 2F3C BA00 0000"            /* ��p.�C6.UO/<�... */
	$"A8FD 301F 4A40 57C0 4400 B645 5FC1 4401"            /* ��0.J@W�D.�E_�D. */
	$"C200 6600 FF76 2F0A 2F3C 0800 0484 A8FD"            /* �.f.�v/./<...��� */
	$"0C47 7FFF 670A 5247 BE6E FFFE 6F00 FF20"            /* .G.�g.RG�n��o.�  */
	$"2F0B 4878 0006 2F0B 4EB9 0000 E35A 504F"            /* /.Hx../.N�..�ZPO */
	$"2050 4E90 600C 3F3C 0080 2F3C C000 0200"            /*  PN�`.?<.�/<�... */
	$"A8FD 554F 2F3C BA00 0000 A8FD 301F 4A40"            /* ��UO/<�...��0.J@ */
	$"57C0 4400 2054 0C28 0001 0044 57C1 4401"            /* W�D. T.(...DW�D. */
	$"C200 671A 2F0C 4878 0000 4878 0000 4878"            /* �.g./.Hx..Hx..Hx */
	$"0000 486E FFDE 2F3C 6005 1480 A8FD 554F"            /* ..Hn��/<`..���UO */
	$"2F3C BA00 0000 A8FD 301F 0C40 0080 6608"            /* /<�...��0..@.�f. */
	$"3D7C FF80 0010 6010 554F 2F3C BA00 0000"            /* =|��..`.UO/<�... */
	$"A8FD 301F 3D40 0010 2F3C D000 0000 A8FD"            /* ��0.=@../<�...�� */
	$"2F2E FFF8 A873 4CDF 1CF8 4E5E 205F 504F"            /* /.���sL�.�N^ _PO */
	$"4ED0 8A50 5249 4E54 5354 5546 4600 0000"            /* NЊPRINTSTUFF... */
	$"4E56 0000 594F 4878 0078 201F A122 2E88"            /* NV..YOHx.x .�".� */
	$"205F 2B48 F61E 2F3C C800 0000 A8FD 554F"            /*  _+H�./<�...��UO */
	$"2F3C BA00 0000 A8FD 301F 6614 2F2D F61E"            /* /<�...��0.f./-�. */
	$"2F3C 2004 0480 A8FD 2F3C D000 0000 A8FD"            /* /< ..���/<�...�� */
	$"42AE 000C 4E5E 2E9F 4E75 8C49 4E49 5450"            /* B�..N^.�Nu�INITP */
	$"5249 4E54 494E 4700 0000 4E56 0000 2F2D"            /* RINTING...NV../- */
	$"F61E 205F A023 4E5E 4E75 8E46 494E 4953"            /* �. _�#N^Nu�FINIS */
	$"4850 5249 4E54 494E 4700 0000 4E56 0000"            /* HPRINTING...NV.. */
	$"4EB9 0000 A2FA 487A FF78 4878 0000 42A7"            /* N�..��Hz�xHx..B� */
	$"487A FFC8 4EB9 0000 BE5E 4E5E 4E75 8F53"            /* Hz��N�..�^N^Nu�S */
	$"5441 5254 5550 5052 494E 5449 4E47 0000"            /* TARTUPPRINTING.. */
	$"4E56 FFF8 2F03 554F 2F2E 0008 2F2D FE4E"            /* NV��/.UO/.../-�N */
	$"2F2D FE52 486E FFF8 4878 0000 42A7 486E"            /* /-�RHn��Hx..B�Hn */
	$"FFFC 303C 0E15 A816 301F 3600 0C43 F95B"            /* ��0<..�.0.6..C�[ */
	$"6604 7600 6008 4A43 6604 363C F954 3D43"            /* f.v.`.JCf.6<�T=C */
	$"000C 261F 4E5E 2E9F 4E75 9147 4F54 5245"            /* ..&.N^.�Nu�GOTRE */
	$"5155 4952 4544 5041 5241 4D53 0000 4E56"            /* QUIREDPARAMS..NV */
	$"FFF6 2F03 554F 2F2E 0010 2F2E 000C 2F2D"            /* ��/.UO/.../.../- */
	$"FE56 486E FFF6 486E FFFF 4878 0001 486E"            /* �VHn��Hn��Hx..Hn */
	$"FFFA 303C 0E11 A816 301F 3600 4A43 6608"            /* ��0<..�.0.6.JCf. */
	$"206E 0008 10AE FFFF 3D43 0014 261F 4E5E"            /*  n...���=C..&.N^ */
	$"205F 4FEF 000C 4ED0 9647 4554 424F 4F4C"            /*  _O�..NЖGETBOOL */
	$"4541 4E46 524F 4D41 4552 4543 4F52 4400"            /* EANFROMAERECORD. */
	$"0000 4E56 FFA4 48E7 1020 246E 0008 422D"            /* ..NV��H�. $n..B- */
	$"F633 422D F634 554F 2F0A 2F2D FE5A 2F2D"            /* �3B-�4UO/./-�Z/- */
	$"FE5E 486E FFA4 486E FFAC 4878 0008 486E"            /* �^Hn��Hn��Hx..Hn */
	$"FFA8 303C 0E15 A816 301F 3600 4A43 6622"            /* ��0<..�.0.6.JCf" */
	$"703C 2D40 FFC4 42AE FFC8 42AE FFFC 554F"            /* p<-@��B���B���UO */
	$"486E FFAC 486E FFC4 3F3C 003A A88F 301F"            /* Hn��Hn��?<.:��0. */
	$"3600 4A43 664A 0CAE 4D41 4353 FFD8 6640"            /* 6.JCfJ.�MACS��f@ */
	$"554F 3F3C FFFF 486E FFB4 205F 301F A030"            /* UO?<��Hn�� _0.�0 */
	$"5240 1E80 101F 1600 302E FFC2 0280 0000"            /* R@.�....0.��.�.. */
	$"0800 4A80 56C0 4400 1B40 F634 302E FFC2"            /* ..J�V�D..@�40.�� */
	$"0280 0000 1000 4A80 56C0 4400 1B40 F633"            /* .�....J�V�D..@�3 */
	$"554F 2F0A 2F2D FE62 486D F634 4EB9 0000"            /* UO/./-�bHm�4N�.. */
	$"A88E 301F 3600 554F 2F0A 2F2D FE66 486D"            /* ��0.6.UO/./-�fHm */
	$"F633 4EB9 0000 A88E 301F 3600 4CDF 0408"            /* �3N�..��0.6.L�.. */
	$"4E5E 2E9F 4E75 8C47 4554 4D4F 4449 4649"            /* N^.�Nu�GETMODIFI */
	$"4552 5300 0000 4E56 0000 2F03 2F2E 0010"            /* ERS...NV.././... */
	$"4EBA FF00 554F 2F2E 0010 4EB9 0000 A830"            /* N��.UO/...N�..�0 */
	$"301F 3600 4A43 660C 554F 206E 0008 4E90"            /* 0.6.JCf.UO n..N� */
	$"301F 3600 3D43 0014 261F 4E5E 205F 4FEF"            /* 0.6.=C..&.N^ _O� */
	$"000C 4ED0 8C48 414E 444C 454E 4F44 4F43"            /* ..NЌHANDLENODOC */
	$"5300 0000 4E56 FFA2 48E7 1E20 246E 0010"            /* S...NV��H�. $n.. */
	$"2F0A 4EBA FEAE 554F 2F0A 2F2D FE6A 2F2D"            /* /.N���UO/./-�j/- */
	$"FE6E 486E FFB2 303C 0812 A816 301F 3C00"            /* �nHn��0<..�.0.<. */
	$"4A46 6600 008C 554F 2F0A 4EB9 0000 A830"            /* JFf..�UO/.N�..�0 */
	$"301F 3600 554F 486E FFB2 486E FFA2 303C"            /* 0.6.UOHn��Hn��0< */
	$"0407 A816 301F 3C00 4A46 6654 2A2E FFA2"            /* ..�.0.<.JFfT*.�� */
	$"7601 6048 554F 486E FFB2 2F03 2F2D FE72"            /* v.`HUOHn��/./-�r */
	$"486E FFAA 486E FFA6 486E FFBA 4878 0046"            /* Hn��Hn��Hn��Hx.F */
	$"486E FFAE 303C 100A A816 301F 3800 4A44"            /* Hn��0<..�.0.8.JD */
	$"6610 554F 486E FFBA 206E 0008 4E90 301F"            /* f.UOHn�� n..N�0. */
	$"3800 0C83 7FFF FFFF 6706 5283 B685 6FB4"            /* 8..�.���g.R���o� */
	$"554F 486E FFB2 303C 0204 A816 301F 3600"            /* UOHn��0<..�.0.6. */
	$"3D46 0014 4CDF 0478 4E5E 205F 4FEF 000C"            /* =F..L�.xN^ _O�.. */
	$"4ED0 8A48 414E 444C 4544 4F43 5300 0000"            /* NЊHANDLEDOCS... */
	$"4E56 0000 554F 2F2E 0010 2F2E 000C 2F2D"            /* NV..UO/.../.../- */
	$"F62E 4EBA FEC2 301F 3D40 0014 4E5E 205F"            /* �.N���0.=@..N^ _ */
	$"4FEF 000C 4ED0 9548 414E 444C 454F 5045"            /* O�..NЕHANDLEOPE */
	$"4E41 5050 4C49 4341 5449 4F4E 0000 4E56"            /* NAPPLICATION..NV */
	$"0000 554F 2F2E 0010 2F2E 000C 2F2D F62A"            /* ..UO/.../.../-�* */
	$"4EBA FED2 301F 3D40 0014 4E5E 205F 4FEF"            /* N���0.=@..N^ _O� */
	$"000C 4ED0 9348 414E 444C 454F 5045 4E44"            /* ..NГHANDLEOPEND */
	$"4F43 554D 454E 5453 0000 4E56 0000 554F"            /* OCUMENTS..NV..UO */
	$"2F2E 0010 2F2E 000C 2F2D F626 4EBA FE96"            /* /.../.../-�&N��� */
	$"301F 3D40 0014 4E5E 205F 4FEF 000C 4ED0"            /* 0.=@..N^ _O�..N� */
	$"9448 414E 444C 4550 5249 4E54 444F 4355"            /* �HANDLEPRINTDOCU */
	$"4D45 4E54 5300 0000 4E56 0000 554F 2F2E"            /* MENTS...NV..UO/. */
	$"0010 2F2E 000C 2F2D F622 4EBA FE0A 301F"            /* ../.../-�"N��.0. */
	$"3D40 0014 4E5E 205F 4FEF 000C 4ED0 9548"            /* =@..N^ _O�..NЕH */
	$"414E 444C 4551 5549 5441 5050 4C49 4341"            /* ANDLEQUITAPPLICA */
	$"5449 4F4E 0000 4E56 0000 2F03 2B6E 0014"            /* TION..NV../.+n.. */
	$"F62E 2B6E 0010 F62A 2B6E 000C F626 2B6E"            /* �.+n..�*+n..�&+n */
	$"0008 F622 4AAD F62E 6724 554F 2F2D FE76"            /* ..�"J��.g$UO/-�v */
	$"2F2D FE7A 594F 487A FED8 2E9F 205F 2F08"            /* /-�zYOHz��.� _/. */
	$"42A7 4227 303C 091F A816 301F 3600 4AAD"            /* B�B'0<..�.0.6.J� */
	$"F62A 6724 554F 2F2D FE76 2F2D FE7E 594F"            /* �*g$UO/-�v/-�~YO */
	$"487A FEEC 2E9F 205F 2F08 42A7 4227 303C"            /* Hz��.� _/.B�B'0< */
	$"091F A816 301F 3600 4AAD F626 6724 554F"            /* ..�.0.6.J��&g$UO */
	$"2F2D FE76 2F2D FE82 594F 487A FEFE 2E9F"            /* /-�v/-��YOHz��.� */
	$"205F 2F08 42A7 4227 303C 091F A816 301F"            /*  _/.B�B'0<..�.0. */
	$"3600 4AAD F622 6724 554F 2F2D FE76 2F2D"            /* 6.J��"g$UO/-�v/- */
	$"FE86 594F 487A FF12 2E9F 205F 2F08 42A7"            /* ��YOHz�..� _/.B� */
	$"4227 303C 091F A816 301F 3600 261F 4E5E"            /* B'0<..�.0.6.&.N^ */
	$"205F 4FEF 0010 4ED0 8F49 4E49 5441 5050"            /*  _O�..NЏINITAPP */
	$"4C45 4556 454E 5453 0000 4E56 0000 4A2E"            /* LEEVENTS..NV..J. */
	$"0008 6606 486D FE8A ABFF 4E5E 205F 544F"            /* ..f.Hm����N^ _TO */
	$"4ED0 8641 5353 4552 5400 0000 4E56 0000"            /* NІASSERT...NV.. */
	$"4AAD F652 6616 594F 2015 0480 0000 00CA"            /* J��Rf.YO ..�...� */
	$"2E80 205F 4868 00B2 A89D 6006 2F2D F652"            /* .� _Hh.���`./-�R */
	$"AA0A 4E5E 4E75 8A50 454E 5041 5447 5241"            /* �.N^Nu�PENPATGRA */
	$"5900 0000 4E56 FDF2 206E 0008 43EE FEFC"            /* Y...NV�� n..C��� */
	$"703F 22D8 51C8 FFFC 2F2E 000E 3F2E 000C"            /* p?"�Q���/...?... */
	$"486E FDF2 486E FFFC 486E FDF4 A98D 2F2E"            /* Hn��Hn��Hn����/. */
	$"FFFC 486E FDFC A990 554F 486E FDFC 486E"            /* ��Hn����UOHn��Hn */
	$"FEFC 3F3C 0001 4EB9 0000 DD64 101F 670A"            /* ��?<..N�..�d..g. */
	$"2F2E FFFC 486E FEFC A98F 4E5E 205F 4FEF"            /* /.��Hn����N^ _O� */
	$"000A 4ED0 8B53 4554 4954 454D 5445 5854"            /* ..NЋSETITEMTEXT */
	$"0000 4E56 FFF2 2F2E 000E 3F2E 000C 486E"            /* ..NV��/...?...Hn */
	$"FFF2 486E FFFC 486E FFF4 A98D 2F2E FFFC"            /* ��Hn��Hn����/.�� */
	$"2F2E 0008 A990 4E5E 205F 4FEF 000A 4ED0"            /* /...��N^ _O�..N� */
	$"8B47 4554 4954 454D 5445 5854 0000 4E56"            /* �GETITEMTEXT..NV */
	$"FFF2 4A2D F635 665E 0C6E 0001 0012 6616"            /* ��J-�5f^.n....f. */
	$"594F 2015 0480 0000 00CA 2E80 205F 4868"            /* YO ..�...�.� _Hh */
	$"00B2 A89D 6040 42A7 4267 486E FFF4 4EB9"            /* .���`@B�BgHn��N� */
	$"0000 D55E 4878 FFFF 3F3C FFFF 486E FFFA"            /* ..�^Hx��?<��Hn�� */
	$"4EB9 0000 D55E 554F 2F2E 000C 486E FFF4"            /* N�..�^UO/...Hn�� */
	$"486E FFFA 303C 0C19 AAA2 101F 1D40 FFF3"            /* Hn��0<..��...@�� */
	$"486E FFFA AA14 486D F636 2F3C 0010 0010"            /* Hn���.Hm�6/<.... */
	$"A8B0 594F 2015 0480 0000 00CA 2E80 205F"            /* ��YO ..�...�.� _ */
	$"4868 00BA A89D 4878 0021 A862 4E5E 205F"            /* Hh.���Hx.!�bN^ _ */
	$"4FEF 000C 4ED0 914F 5554 4C49 4E45 4445"            /* O�..NБOUTLINEDE */
	$"5649 4345 4C4F 4F50 0000 4E56 0000 2F0A"            /* VICELOOP..NV../. */
	$"246E 000C 2F0A A873 2F0A 3F2E 000A 486D"            /* $n../.�s/.?...Hm */
	$"F636 4EBA 01AE 486D F636 2F3C 0002 0002"            /* �6N�.�Hm�6/<.... */
	$"A8A9 554F 2F0A 3F3C 0001 4EBA 033C 101F"            /* ��UO/.?<..N�.<.. */
	$"4A00 6710 594F A924 205F B1CA 6606 4A2E"            /* J.g.YO�$ _��f.J. */
	$"0008 6604 7000 6002 7001 1B40 F635 2F3C"            /* ..f.p.`.p..@�5/< */
	$"0003 0003 A89B 486D F636 2F2D F63E 42A7"            /* ....��Hm�6/-�>B� */
	$"42A7 4EB9 0000 D5E4 A89E 245F 4E5E 205F"            /* B�N�..�䨞$_N^ _ */
	$"504F 4ED0 9D4F 5554 4C49 4E45 4445 4641"            /* PONНOUTLINEDEFA */
	$"554C 5431 464F 5245 4241 434B 4752 4F55"            /* ULT1FOREBACKGROU */
	$"4E44 0000 4E56 0000 2F2E 000A 3F2E 0008"            /* ND..NV../...?... */
	$"554F 4EB9 0000 CF18 101F 1F00 4EBA FF4C"            /* UON�..�.....N��L */
	$"4E5E 205F 5C4F 4ED0 8F4F 5554 4C49 4E45"            /* N^ _\ONЏOUTLINE */
	$"4445 4641 554C 5431 0000 4E56 FFF2 2F2E"            /* DEFAULT1..NV��/. */
	$"000C 3F2E 000A 486E FFF2 486E FFF4 486E"            /* ..?...Hn��Hn��Hn */
	$"FFF8 A98D 486E FFF8 2F3C FFFA FFFA A8A9"            /* ����Hn��/<������ */
	$"2F2E 000C 3F2E 0008 4267 2F2D F642 486E"            /* /...?...Bg/-�BHn */
	$"FFF8 A98E 4E5E 205F 504F 4ED0 9353 4554"            /* ����N^ _PONГSET */
	$"5550 4445 4641 554C 544F 5554 4C49 4E45"            /* UPDEFAULTOUTLINE */
	$"0000 4E56 FFFC 2F2E 000A 3F2E 0008 3F3C"            /* ..NV��/...?...?< */
	$"000A 4EBA 01EA 4878 0002 486E FFFC 225F"            /* ..N�.�Hx..Hn��"_ */
	$"205F A03B 2280 2F2E 000A 3F2E 0008 4267"            /*  _�;"�/...?...Bg */
	$"4EBA 01CC 4E5E 205F 5C4F 4ED0 8A46 4C41"            /* N�.�N^ _\ONЊFLA */
	$"5348 4449 5445 4D00 0000 4E56 FFEA 206E"            /* SHDITEM...NV�� n */
	$"0008 2D50 FFF2 2D68 0004 FFF6 2F2E 000E"            /* ..-P��-h..��/... */
	$"3F2E 000C 486E FFFA 486E FFFC 486E FFEA"            /* ?...Hn��Hn��Hn�� */
	$"A98D 2F2E 000E 3F2E 000C 3F2E FFFA 2F2E"            /* ��/...?...?.��/. */
	$"FFFC 486E FFF2 A98E 4E5E 205F 4FEF 000A"            /* ��Hn��N^ _O�.. */
	$"4ED0 8C53 4554 4449 5445 4D52 4543 5400"            /* NЌSETDITEMRECT. */
	$"0000 4E56 FFFA 2F2E 000E 3F2E 000C 486E"            /* ..NV��/...?...Hn */
	$"FFFA 486E FFFC 2F2E 0008 A98D 4E5E 205F"            /* ��Hn��/...��N^ _ */
	$"4FEF 000A 4ED0 8C47 4554 4449 5445 4D52"            /* O�..NЌGETDITEMR */
	$"4543 5400 0000 4E56 FFF4 2F2E 000E 3F2E"            /* ECT...NV��/...?. */
	$"000C 2F2E 0008 486E FFFC 486E FFF4 A98D"            /* ../...Hn��Hn���� */
	$"4E5E 205F 4FEF 000A 4ED0 8C47 4554 4449"            /* N^ _O�..NЌGETDI */
	$"5445 4D4B 494E 4400 0000 4E56 0000 594F"            /* TEMKIND...NV..YO */
	$"2F2E 000A 3F2E 0008 4EBA 0024 205F 2D48"            /* /...?...N�.$ _-H */
	$"000E 4E5E 205F 5C4F 4ED0 9147 4554 4443"            /* ..N^ _\ONБGETDC */
	$"4F4E 5452 4F4C 4841 4E44 4C45 0000 4E56"            /* ONTROLHANDLE..NV */
	$"FFF2 2F2E 000A 3F2E 0008 486E FFF2 486E"            /* ��/...?...Hn��Hn */
	$"FFFC 486E FFF4 A98D 2D6E FFFC 000E 4E5E"            /* ��Hn����-n��..N^ */
	$"205F 5C4F 4ED0 8E47 4554 4449 5445 4D48"            /*  _\ONЎGETDITEMH */
	$"414E 444C 4500 0000 4E56 FFF2 2F2E 000E"            /* ANDLE...NV��/... */
	$"3F2E 000C 486E FFF6 486E FFF2 486E FFF8"            /* ?...Hn��Hn��Hn�� */
	$"A98D 2F2E 000E 3F2E 000C 3F2E FFF6 2F2E"            /* ��/...?...?.��/. */
	$"0008 486E FFF8 A98E 4E5E 205F 4FEF 000A"            /* ..Hn����N^ _O�.. */
	$"4ED0 8E53 4554 4449 5445 4D48 414E 444C"            /* NЎSETDITEMHANDL */
	$"4500 0000 4E56 0000 594F 2F2E 000A 3F2E"            /* E...NV..YO/...?. */
	$"0008 4EBA FF6A 205F 2050 1028 0011 7200"            /* ..N��j _ P.(..r. */
	$"1200 3D41 000E 4E5E 205F 5C4F 4ED0 8D47"            /* ..=A..N^ _\ONЍG */
	$"4554 4443 544C 4849 4C49 5445 0000 4E56"            /* ETDCTLHILITE..NV */
	$"0000 2F0A 594F 2F2E 000C 3F2E 000A 4EBA"            /* ../.YO/...?...N� */
	$"FF2E 205F 2448 2052 1028 0011 7200 1200"            /* �. _$H R.(..r... */
	$"B26E 0008 6708 2F0A 3F2E 0008 A95D 245F"            /* �n..g./.?...�]$_ */
	$"4E5E 205F 504F 4ED0 8D53 4554 4443 544C"            /* N^ _PONЍSETDCTL */
	$"4849 4C49 5445 0000 4E56 0000 554F 2F2E"            /* HILITE..NV..UO/. */
	$"000A 3F2E 0008 4EBA FF6C 301F 0C40 00FF"            /* ..?...N��l0..@.� */
	$"56C0 4400 1D40 000E 4E5E 205F 5C4F 4ED0"            /* V�D..@..N^ _\ON� */
	$"8D47 4554 4443 544C 454E 4142 4C45 0000"            /* �GETDCTLENABLE.. */
	$"4E56 0000 554F 594F 2F2E 000A 3F2E 0008"            /* NV..UOYO/...?... */
	$"4EBA FE78 205F 2F08 A960 301F 4A40 56C0"            /* N��x _/.�`0.J@V� */
	$"4400 1D40 000E 4E5E 205F 5C4F 4ED0 8E47"            /* D..@..N^ _\ONЎG */
	$"4554 4443 544C 424F 4F4C 4541 4E00 0000"            /* ETDCTLBOOLEAN... */
	$"4E56 0000 594F 2F2E 000C 3F2E 000A 4EBA"            /* NV..YO/...?...N� */
	$"FE3A 205F 2F08 7000 102E 0008 3F00 A963"            /* �: _/.p.....?.�c */
	$"4E5E 205F 504F 4ED0 8E53 4554 4443 544C"            /* N^ _PONЎSETDCTL */
	$"424F 4F4C 4541 4E00 0000 4E56 0000 2F2E"            /* BOOLEAN...NV../. */
	$"000A 3F2E 0008 554F 2F2E 000A 3F2E 0008"            /* ..?...UO/...?... */
	$"4EBA FF6E 101F 57C0 4400 1F00 4EBA FFA2"            /* N��n..W�D...N��� */
	$"4E5E 205F 5C4F 4ED0 9154 4F47 474C 4544"            /* N^ _\ONБTOGGLED */
	$"4354 4C42 4F4F 4C45 414E 0000 4E56 0000"            /* CTLBOOLEAN..NV.. */
	$"206E 0008 7001 D068 00A4 3D40 000C 4E5E"            /*  n..p.�h.�=@..N^ */
	$"2E9F 4E75 9053 454C 4543 5445 4454 4558"            /* .�Nu�SELECTEDTEX */
	$"5449 5445 4D00 0000 4E56 0000 2F2E 000A"            /* TITEM...NV../... */
	$"3F2E 0008 2F3C 7FFF 0000 A97E 4E5E 205F"            /* ?.../<.�..�~N^ _ */
	$"5C4F 4ED0 9053 454C 4543 5444 4941 4C4F"            /* \ONАSELECTDIALO */
	$"4749 5445 4D00 0000 4E56 0000 48E7 1038"            /* GITEM...NV..H�.8 */
	$"246E 0014 262E 0010 286E 000C 266E 0008"            /* $n..&...(n..&n.. */
	$"554F 2F0A 4EBA FF86 301F 2043 3080 2043"            /* UO/.N���0. C0� C */
	$"4A50 6F16 206A 00A0 2050 38A8 0020 206A"            /* JPo. j.� P8�.  j */
	$"00A0 2050 36A8 0022 6008 38BC FFFF 36BC"            /* .� P6�."`.8���6� */
	$"FFFF 4CDF 1C08 4E5E 205F 4FEF 0010 4ED0"            /* ��L�..N^ _O�..N� */
	$"9647 4554 4449 414C 4F47 5445 5854 5345"            /* �GETDIALOGTEXTSE */
	$"4C45 4354 494F 4E00 0000 4E56 0000 206E"            /* LECTION...NV.. n */
	$"0008 2068 009C 2050 7001 D050 3D40 000C"            /* .. h.� Pp.�P=@.. */
	$"4E5E 2E9F 4E75 8B43 4F55 4E54 4449 5445"            /* N^.�Nu�COUNTDITE */
	$"4D53 0000 4E56 0000 2F03 362E 0010 554F"            /* MS..NV../.6...UO */
	$"2F2E 0012 3F03 4EBA FE00 101F 6718 2F2E"            /* /...?.N��...g./. */
	$"0012 3F03 4EBA FBAC 206E 0008 3083 1D7C"            /* ..?.N��� n..0�.| */
	$"0001 0016 6010 3F3C 000A A9C8 206E 000C"            /* ....`.?<..�� n.. */
	$"4250 422E 0016 261F 4E5E 205F 4FEF 000E"            /* BPB...&.N^ _O�.. */
	$"4ED0 8B44 4F42 5554 544F 4E4B 4559 0000"            /* NЋDOBUTTONKEY.. */
	$"4E56 0000 48E7 1020 246E 000C 422E 0014"            /* NV..H�. $n..B... */
	$"0C52 0005 57C0 4400 0C52 0003 57C1 4401"            /* .R..W�D..R..W�D. */
	$"8200 6738 262A 0002 0283 0000 00FF 0C43"            /* �.g8&*...�...�.C */
	$"0003 57C0 4400 0C43 000D 57C1 4401 8200"            /* ..W�D..C..W�D.�. */
	$"671A 554F 2F2E 0010 3F3C 0001 2F0A 2F2E"            /* g.UO/...?<.././. */
	$"0008 4EBA FF50 101F 1D40 0014 4CDF 0408"            /* ..N��P...@..L�.. */
	$"4E5E 205F 4FEF 000C 4ED0 9353 5441 4E44"            /* N^ _O�..NГSTAND */
	$"4152 444D 4F44 414C 4649 4C54 4552 0000"            /* ARDMODALFILTER.. */
	$"4E56 FFFE 48E7 1038 286E 0010 246E 000C"            /* NV��H�.8(n..$n.. */
	$"266E 0008 422E 0014 554F 2F0C 2F0A 2F0B"            /* &n..B...UO/././. */
	$"4EBA FF5E 101F 6708 1D7C 0001 0014 6060"            /* N��^..g..|....`` */
	$"0C52 0005 57C0 4400 0C52 0003 57C1 4401"            /* .R..W�D..R..W�D. */
	$"8200 674C 262A 0002 0283 0000 00FF 0C43"            /* �.gL&*...�...�.C */
	$"001B 57C0 4400 1D40 FFFF 302A 000E 0280"            /* ..W�D..@��0*...� */
	$"0000 0100 4A80 56C0 4400 0C43 002E 57C1"            /* ....J�V�D..C..W� */
	$"4401 C200 822E FFFF 6716 554F 2F0C 3F3C"            /* D.�.�.��g.UO/.?< */
	$"0002 2F0A 2F0B 4EBA FE9C 101F 1D40 0014"            /* .././.N���...@.. */
	$"4CDF 1C08 4E5E 205F 4FEF 000C 4ED0 9143"            /* L�..N^ _O�..NБC */
	$"414E 4345 4C4D 4F44 414C 4649 4C54 4552"            /* ANCELMODALFILTER */
	$"0000 4E56 0000 48E7 1038 286E 0010 246E"            /* ..NV..H�.8(n..$n */
	$"000C 266E 0008 422E 0014 554F 2F0C 2F0A"            /* ..&n..B...UO/./. */
	$"2F0B 4EBA FF2C 101F 6708 1D7C 0001 0014"            /* /.N��,..g..|.... */
	$"6050 0C52 0005 57C0 4400 0C52 0003 57C1"            /* `P.R..W�D..R..W� */
	$"4401 8200 673C 262A 0002 0283 0000 00FF"            /* D.�.g<&*...�...� */
	$"302A 000E 0280 0000 0100 4A80 56C0 4400"            /* 0*...�....J�V�D. */
	$"0C43 0064 57C1 4401 C200 6716 554F 2F0C"            /* .C.dW�D.�.g.UO/. */
	$"3F3C 0003 2F0A 2F0B 4EBA FDFA 101F 1D40"            /* ?<.././.N���...@ */
	$"0014 4CDF 1C08 4E5E 205F 4FEF 000C 4ED0"            /* ..L�..N^ _O�..N� */
	$"9244 4953 4341 5244 4D4F 4441 4C46 494C"            /* �DISCARDMODALFIL */
	$"5445 5200 0000 4E56 0000 48E7 0030 266E"            /* TER...NV..H�.0&n */
	$"0010 246E 0008 2F0A A874 2F0B A873 254B"            /* ..$n../.�t/.�s%K */
	$"0004 356B 0044 0008 356B 004A 000A 156B"            /* ..5k.D..5k.J...k */
	$"0046 000C 1F2E 000E 4EB9 0000 D52A 7000"            /* .F......N�..�*p. */
	$"102E 000D 3F00 A888 4CDF 0C00 4E5E 205F"            /* ....?.��L�..N^ _ */
	$"4FEF 000C 4ED0 8B45 4E54 4552 5749 4E44"            /* O�..NЋENTERWIND */
	$"4F57 0000 4E56 FFF2 206E 0008 43EE FFF2"            /* OW..NV�� n..C��� */
	$"22D8 22D8 22D8 32D8 2F2E FFF6 A873 3F2E"            /* "�"�"�2�/.���s?. */
	$"FFFA A887 3F2E FFFC A88A 7000 102E FFFE"            /* ����?.����p...�� */
	$"3F00 A888 2F2E FFF2 A873 4E5E 2E9F 4E75"            /* ?.��/.��sN^.�Nu */
	$"8A45 5849 5457 494E 444F 5700 0000 4E56"            /* �EXITWINDOW...NV */
	$"FFE6 48E7 1830 266E 000C 182E 000A 162E"            /* ��H�.0&n........ */
	$"0009 2F0B 1F04 7000 1003 3F00 486E FFE6"            /* ../...p...?.Hn�� */
	$"4EBA FF34 486E FFF8 A88B 1F04 486E FFF4"            /* N��4Hn����..Hn�� */
	$"486E FFF6 4EB9 0000 D4BA 246B 00A0 2052"            /* Hn��N�..Ժ$k.� R */
	$"316E FFF4 004A 2052 316E FFF6 0050 2052"            /* 1n��.J R1n��.P R */
	$"1143 004C 302E FFF8 D06E FFFA D06E FFFE"            /* .C.L0.���n���n�� */
	$"2052 3140 0018 2052 316E FFF8 001A 2F0A"            /*  R1@.. R1n��../. */
	$"A9D0 486E FFE6 4EBA FF3C 4CDF 0C18 4E5E"            /* ��Hn��N��<L�..N^ */
	$"205F 504F 4ED0 9153 4554 4449 414C 4F47"            /*  _PONБSETDIALOG */
	$"5445 5854 464F 4E54 0000 4E56 FED8 206E"            /* TEXTFONT..NV�� n */
	$"0008 43EE FEE8 703F 22D8 51C8 FFFC 2F2E"            /* ..C���p?"�Q���/. */
	$"000E 1F3C 0001 4267 486E FEDA 4EBA FE98"            /* ...<..BgHn��N��� */
	$"2F2E 000E 3F2E 000C 486E FFF8 4EBA F8C4"            /* /...?...Hn��N��� */
	$"486E FFE8 A88B 7014 D06E FFFA 3F00 302E"            /* Hn�訋p.�n��?.0. */
	$"FFF8 D06E FFE8 3F00 A893 554F 486E FEE8"            /* ���n��?.��UOHn�� */
	$"A88C 301F 3D40 FED8 3D6E FFF8 FFF0 302E"            /* ��0.=@��=n����0. */
	$"FFF0 D06E FFE8 D06E FFEA 3D40 FFF4 7014"            /* ���n���n��=@��p. */
	$"D06E FFFA 3D40 FFF2 302E FFF2 D06E FED8"            /* �n��=@��0.���n�� */
	$"3D40 FFF6 486E FFF0 A8A3 486E FEE8 A884"            /* =@��Hn��Hn�訄 */
	$"4EBA F50A 306E FFE8 2008 E088 E088 E088"            /* N��.0n�� .������ */
	$"EE88 D088 E280 306E FFF8 D088 3D40 FFF8"            /* �Ј�0n��Ј=@�� */
	$"302E FFF2 5540 3F00 3F2E FFF8 A893 3F2E"            /* 0.��U@?.?.����?. */
	$"FFFA 3F2E FFF8 A891 3F2E FFFA 3F2E FFFC"            /* ��?.����?.��?.�� */
	$"A891 3F2E FFFE 3F2E FFFC A891 3F2E FFFE"            /* ��?.��?.����?.�� */
	$"3F2E FFF8 A891 7002 D06E FFF6 3F00 3F2E"            /* ?.����p.�n��?.?. */
	$"FFF8 A891 A89E 486E FEDA 4EBA FE18 4E5E"            /* ������Hn��N��.N^ */
	$"205F 4FEF 000A 4ED0 8C44 5241 5747 5241"            /*  _O�..NЌDRAWGRA */
	$"5952 4543 5400 0000 4E56 FFF8 2F0A 4A6E"            /* YRECT...NV��/.Jn */
	$"000C 673C 206E 0008 2F28 000E 3F2E 000C"            /* ..g< n../(..?... */
	$"486E FFF8 4EBA F7BC 594F A8D8 205F 2448"            /* Hn��N���YO�� _$H */
	$"2F0A 486E FFF8 A8DF 206E 0008 2F28 FFFC"            /* /.Hn���� n../(�� */
	$"2F0A 206E 0008 2F28 FFFC A8E5 2F0A A8D9"            /* /. n../(����/.�� */
	$"245F 4E5E 205F 5C4F 4ED0 8841 6464 4974"            /* $_N^ _\ONЈAddIt */
	$"656D 3000 0000 4E56 FFF8 48E7 1800 594F"            /* em0...NV��H�..YO */
	$"A8D8 205F 2D48 FFFC 3F2E 000C 2F0E 4EBA"            /* �� _-H��?.../.N� */
	$"FF88 3F2E 000A 2F0E 4EBA FF7E 3F2E 0008"            /* ��?.../.N��~?... */
	$"2F0E 4EBA FF74 2F2E FFFC A8D5 7801 6022"            /* /.N��t/.����x.`" */
	$"486E FFF8 A972 554F 2F2E FFF8 2F2E FFFC"            /* Hn���rUO/.��/.�� */
	$"A8E8 101F 1600 B604 6708 2F2E FFFC A8D5"            /* ��....�.g./.���� */
	$"1803 554F A973 101F 66D6 4A04 6706 2F2E"            /* ..UO�s..f�J.g./. */
	$"FFFC A8D5 1D44 0012 4CDF 0018 4E5E 205F"            /* ����.D..L�..N^ _ */
	$"4FEF 000A 4ED0 8A54 5241 434B 4954 454D"            /* O�..NЊTRACKITEM */
	$"5300 0000 4E56 FDD2 48E7 1F20 246E 000E"            /* S...NV��H�. $n.. */
	$"206E 0008 43EE FF00 703F 22D8 51C8 FFFC"            /*  n..C��.p?"�Q��� */
	$"2F0A A873 3D6A 0044 FDD4 3D6A 004A FDD6"            /* /.�s=j.D��=j.J�� */
	$"1D6A 0046 FDD9 1F3C 0001 486E FDDA 486E"            /* .j.F��.<..Hn��Hn */
	$"FDD2 4EB9 0000 D4BA 2F0A 3F2E 000C 486E"            /* ��N�..Ժ/.?...Hn */
	$"FDE0 4EBA F69E 554F 486D FEA0 486E FF00"            /* ��N���UOHm��Hn�. */
	$"486E FDF4 486E FF00 4EB9 0000 CE0C 101F"            /* Hn��Hn�.N�..�... */
	$"6700 02EC 7A00 7E00 554F 486E FDF4 486D"            /* g..�z.~.UOHn��Hm */
	$"FE9E 4267 4EB9 0000 DD64 101F 6708 3D6E"            /* ��BgN�..�d..g.=n */
	$"FDDA FDDC 6018 486E FDF4 486E FDDC A900"            /* ����`.Hn��Hn�ܩ. */
	$"4A6E FDDC 6608 7E01 3D6E FDDA FDDC 554F"            /* Jn��f.~.=n����UO */
	$"486D FEA0 486E FF00 486E FDF4 486E FF00"            /* Hm��Hn�.Hn��Hn�. */
	$"4EB9 0000 CE0C 101F 6700 0294 554F 486E"            /* N�..�...g..�UOHn */
	$"FDF4 486D FE9E 4267 4EB9 0000 DD64 101F"            /* ��Hm��BgN�..�d.. */
	$"6706 362E FDD2 6010 594F 486E FDF4 4EB9"            /* g.6.��`.YOHn��N� */
	$"0000 D72E 201F 3600 554F 486D FEA0 486E"            /* ..�. .6.UOHm��Hn */
	$"FF00 486E FDF4 486E FF00 4EB9 0000 CE0C"            /* �.Hn��Hn�.N�..�. */
	$"101F 6700 024A 422E FDF3 7C00 1C2E FDF4"            /* ..g..JB.��|...�� */
	$"7801 607C 41EE FDF4 7000 1030 4000 0440"            /* x.`|A���p..0@..@ */
	$"0030 0C40 0038 6260 5140 6D10 0440 0010"            /* .0.@.8b`Q@m..@.. */
	$"6D56 6752 0440 0020 6D4E 604A 594F 486E"            /* mVgR.@. mN`JYOHn */
	$"FDF3 4878 0001 486E FDE9 41EE FDF4 7000"            /* ��Hx..Hn��A���p. */
	$"1030 4000 0440 0030 7200 1200 2F01 4878"            /* .0@..@.0r.../.Hx */
	$"0001 4EB9 0000 DD24 486E FDE9 4878 0001"            /* ..N�..�$Hn��Hx.. */
	$"486E FDDF 4878 0001 4EB9 0000 DB4C 205F"            /* Hn��Hx..N�..�L _ */
	$"1D50 FDF3 6002 7A01 0C44 7FFF 6706 5244"            /* .P��`.z..D.�g.RD */
	$"B846 6F80 554F 486D FEA0 486E FF00 486E"            /* �Fo�UOHm��Hn�.Hn */
	$"FDF4 486E FF00 4EB9 0000 CE0C 101F 6700"            /* ��Hn�.N�..�...g. */
	$"019E 554F 486E FDF4 486D FE9E 4267 4EB9"            /* .�UOHn��Hm��BgN� */
	$"0000 DD64 101F 6704 7800 6010 594F 486E"            /* ..�d..g.x.`.YOHn */
	$"FDF4 4EB9 0000 D72E 201F 3800 3F2E FDDC"            /* ��N�..�. .8.?.�� */
	$"A887 3F03 A88A 7000 102E FDF3 3F00 A888"            /* ��?.��p...��?.�� */
	$"4A07 6774 486E FDEA A88B 6058 0C43 0030"            /* J.gtHn�ꨋ`X.C.0 */
	$"6F04 7630 6044 0C43 0024 6F04 7624 603A"            /* o.v0`D.C.$o.v$`: */
	$"0C43 001B 6F04 761B 6030 0C43 0018 6F04"            /* .C..o.v.`0.C..o. */
	$"7618 6026 0C43 0012 6F04 7612 601C 0C43"            /* v.`&.C..o.v.`..C */
	$"000E 6F04 760E 6012 0C43 000C 6F04 760C"            /* ..o.v.`..C..o.v. */
	$"6008 7609 3F03 A88A 601E 3F03 A88A 486E"            /* `.v.?.��`.?.��Hn */
	$"FDEA A88B 302E FDE4 906E FDE0 322E FDEA"            /* �ꨋ0.��n��2.�� */
	$"D26E FDEC B240 6E94 594F 486E FDE0 486E"            /* �n��@n�YOHn��Hn */
	$"FDE0 A83E 205F 2448 200A 6700 00D2 486E"            /* ��> _$H .g..�Hn */
	$"FF01 7000 102E FF00 48C0 2F00 2F0A A9CF"            /* �.p...�.H�/./.�� */
	$"3F04 2F0A A9DF 4A05 6700 00A8 7A00 1A2E"            /* ?./.��J.g..�z... */
	$"FF00 7801 6000 0096 41EE FF00 7000 1030"            /* �.x.`..�A��.p..0 */
	$"4000 0C40 003C 667C 7601 D644 6006 7001"            /* @..@.<f|v.�D`.p. */
	$"D043 3600 7000 102E FF00 B640 6E10 41EE"            /* �C6.p...�.�@n.A� */
	$"FF00 7000 1030 3000 0C40 003E 66E0 3044"            /* �.p..00..@.>f�0D */
	$"2F08 3003 5340 48C0 2F00 2F0A A9D1 594F"            /* /.0.S@H�/./.��YO */
	$"486E FDF3 4878 0001 486D FEA3 4878 0001"            /* Hn��Hx..Hm��Hx.. */
	$"486E FDE9 4878 0001 4EB9 0000 DB4C 205F"            /* Hn��Hx..N�..�L _ */
	$"1D50 FEF6 426E FEFA 426E FEFC 3D7C FFFF"            /* .P��Bn��Bn��=|�� */
	$"FEFE 3F3C 000A 486E FEF4 4227 2F0A 3F3C"            /* ��?<..Hn��B'/.?< */
	$"0001 A83D 0C44 7FFF 6708 5244 B845 6F00"            /* ..�=.D.�g.RD�Eo. */
	$"FF68 486E FDE0 2F0A A9D3 2F0A A9CD 3F2E"            /* �hHn��/.��/.��?. */
	$"FDD4 A887 3F2E FDD6 A88A 7000 102E FDD9"            /* �Ԩ�?.�֨�p...�� */
	$"3F00 A888 4CDF 04F8 4E5E 205F 4FEF 000A"            /* ?.��L�.�N^ _O�.. */
	$"4ED0 9344 4953 504C 4159 5354 594C 4544"            /* NГDISPLAYSTYLED */
	$"5354 5249 4E47 0000 4E56 FFFA 48E7 1820"            /* STRING..NV��H�.  */
	$"594F A924 205F 2448 7800 200A 673C 0C6A"            /* YO�$ _$Hx. .g<.j */
	$"0002 006C 6634 2F0A A873 486E FFFA A972"            /* ...lf4/.�sHn���r */
	$"554F 2F0A 2F2E FFFA A984 301F 5240 3600"            /* UO/./.����0.R@6. */
	$"4A43 6F16 2F0A 3F03 486E FFFE 4EBA F348"            /* JCo./.?.Hn��N��H */
	$"0C6E 0010 FFFE 6602 7801 1D44 0008 4CDF"            /* .n..��f.x..D..L� */
	$"0418 4E5E 205F 4ED0 904F 5645 5245 4449"            /* ..N^ _NАOVEREDI */
	$"5454 4558 5449 5445 4D00 0000 4E56 FFEA"            /* TTEXTITEM...NV�� */
	$"594F 487A F6CC 2E9F 205F 2B48 F64E 594F"            /* YOHz��.� _+H�NYO */
	$"487A F73E 2E9F 205F 2B48 F64A 594F 487A"            /* Hz�>.� _+H�JYOHz */
	$"F7E2 2E9F 205F 2B48 F646 594F 487A F186"            /* ��.� _+H�FYOHz� */
	$"2E9F 205F 2B48 F642 594F 487A F032 2E9F"            /* .� _+H�BYOHz�2.� */
	$"205F 2B48 F63E 554F 3F3C 0001 486E FFF0"            /*  _+H�>UO?<..Hn�� */
	$"205F 301F A090 3E80 301F 6612 4A2E FFF9"            /*  _0.��>�0.f.J.�� */
	$"670C 594F AA07 205F 2B48 F652 6004 42AD"            /* g.YO�. _+H�R`.B� */
	$"F652 4AAD F652 671E 2F3C 8000 8000 3F3C"            /* �RJ��Rg./<�.�.?< */
	$"8000 486E FFEA 4EB9 0000 D55E 2F2D F652"            /* �.Hn��N�..�^/-�R */
	$"486E FFEA AA0D 42AE 000C 4E5E 2E9F 4E75"            /* Hn��.B�..N^.�Nu */
	$"8D49 4E49 544D 5944 4941 4C4F 4753 0000"            /* �INITMYDIALOGS.. */
	$"4E56 0000 487A FF46 4878 0000 42A7 4878"            /* NV..Hz�FHx..B�Hx */
	$"0000 4EB9 0000 BE5E 4E5E 4E75 8E53 5441"            /* ..N�..�^N^Nu�STA */
	$"5254 5550 4449 414C 4F47 5300 0000 4E56"            /* RTUPDIALOGS...NV */
	$"FFEC 48E7 1E00 2C2E 000C 4AAD F65E 661C"            /* ��H�..,...J��^f. */
	$"4AAD F65A 6616 554F 486D F65A 42A7 4EB9"            /* J��Zf.UOHm�ZB�N� */
	$"0000 D212 301F 48C0 2B40 F65E 4AAD F65E"            /* ..�.0.H�+@�^J��^ */
	$"6600 00D8 7800 2A2D F656 7601 607A 206D"            /* f..�x.*-�Vv.`z m */
	$"F65A 2003 5380 7214 4EB9 0000 04DA 2250"            /* �Z .S�r.N�...�"P */
	$"2271 0800 B3EE 0014 6654 206D F65A 2003"            /* "q..��..fT m�Z . */
	$"5380 7214 4EB9 0000 04DA 2250 2271 0804"            /* S�r.N�...�"P"q.. */
	$"B3EE 0010 6638 206D F65A 2003 5380 7214"            /* ��..f8 m�Z .S�r. */
	$"4EB9 0000 04DA 2250 BCB1 0808 6620 206D"            /* N�...�"P��..f  m */
	$"F65A 2003 5380 7214 4EB9 0000 04DA 2250"            /* �Z .S�r.N�...�"P */
	$"2271 0810 B3EE 0008 6604 7801 600E 0C83"            /* "q..��..f.x.`..� */
	$"7FFF FFFF 6706 5283 B685 6F82 4A04 664A"            /* .���g.R���o�J.fJ */
	$"2D6E 0014 FFEC 2D6E 0010 FFF0 2D46 FFF4"            /* -n..��-n..��-F�� */
	$"594F A975 201F 2D40 FFF8 2D6E 0008 FFFC"            /* YO�u .-@��-n..�� */
	$"554F 486E FFEC 2F2D F65A 4878 0014 201F"            /* UOHn��/-�ZHx.. . */
	$"225F 205F A9EF 3E80 301F 48C0 2B40 F65E"            /* "_ _��>�0.H�+@�^ */
	$"4AAD F65E 6604 52AD F656 4CDF 0078 4E5E"            /* J��^f.R��VL�.xN^ */
	$"205F 4FEF 0010 4ED0 8A53 4554 5354 4152"            /*  _O�..NЊSETSTAR */
	$"5455 5000 0000 4E56 FFF8 48E7 1800 594F"            /* TUP...NV��H�..YO */
	$"A975 201F 2B40 F7F6 282D F656 7601 6000"            /* �u .+@��(-�Vv.`. */
	$"0082 206D F65A 2003 5380 7214 4EB9 0000"            /* .� m�Z .S�r.N�.. */
	$"04DA 2250 2D71 0804 FFFC 4AAE FFFC 6758"            /* .�"P-q..��J���gX */
	$"206D F65A 2003 5380 7214 4EB9 0000 04DA"            /*  m�Z .S�r.N�...� */
	$"2250 222D F7F6 B2B1 080C 6D3C 206D F65A"            /* "P"-����..m< m�Z */
	$"2003 5380 7214 4EB9 0000 04DA 2250 222D"            /*  .S�r.N�...�"P"- */
	$"F7F6 D2B1 0808 206D F65A 2003 5380 2D41"            /* ��ұ.. m�Z .S�-A */
	$"FFF8 7214 4EB9 0000 04DA 2250 23AE FFF8"            /* ��r.N�...�"P#��� */
	$"080C 206E FFFC 4E90 0C83 7FFF FFFF 6708"            /* .. n��N�.�.���g. */
	$"5283 B684 6F00 FF7C 282D F662 7601 6034"            /* R���o.�|(-�bv.`4 */
	$"2003 5380 E588 41ED F666 2D70 0800 FFFC"            /*  .S��A��f-p..�� */
	$"4AAE FFFC 6714 206E FFFC 4E90 2003 5380"            /* J���g. n��N� .S� */
	$"E588 41ED F666 42B0 0800 0C83 7FFF FFFF"            /* �A��fB�...�.��� */
	$"6706 5283 B684 6FC8 4CDF 0018 4E5E 4E75"            /* g.R���o�L�..N^Nu */
	$"8B49 444C 4553 5441 5254 5550 0000 4E56"            /* �IDLESTARTUP..NV */
	$"0000 42AD F65A 42AD F656 42AD F65E 42AD"            /* ..B��ZB��VB��^B� */
	$"F662 7201 6010 2001 5380 E588 41ED F666"            /* �br.`. .S��A��f */
	$"42B0 0800 5281 7064 B280 6FEA 4E5E 4E75"            /* B�..R�pd��o�N^Nu */
	$"8B49 4E49 5453 5441 5254 5550 0000 4E56"            /* �INITSTARTUP..NV */
	$"FFF8 48E7 1020 246E 0008 34BC 0001 7600"            /* ��H�. $n..4�..v. */
	$"6038 7001 D083 2600 206D F65A 2003 5380"            /* `8p.Ѓ&. m�Z .S� */
	$"7214 4EB9 0000 04DA 2250 2D71 0800 FFFC"            /* r.N�...�"P-q..�� */
	$"4AAE FFFC 6714 34BC 0002 594F 2F0A 206E"            /* J���g.4�..YO/. n */
	$"FFFC 4E90 201F 2B40 F65E 4AAD F65E 6606"            /* ��N� .+@�^J��^f. */
	$"B6AD F656 6DBC 4AAD F65E 673C 5383 6026"            /* ���Vm�J��^g<S�`& */
	$"206D F65A 2003 5380 7214 4EB9 0000 04DA"            /*  m�Z .S�r.N�...� */
	$"2250 2D71 0810 FFF8 4AAE FFF8 6706 206E"            /* "P-q..��J���g. n */
	$"FFF8 4E90 5383 4A83 6ED6 486D F65A 4EB9"            /* ��N�S�J�n�Hm�ZN� */
	$"0000 D254 42AD F656 4AAD F65E 6602 4252"            /* ..�TB��VJ��^f.BR */
	$"2D6D F65E 000C 4CDF 0408 4E5E 2E9F 4E75"            /* -m�^..L�..N^.�Nu */
	$"8753 5441 5254 5550 0000 4E56 FFFC 2F03"            /* �STARTUP..NV��/. */
	$"4AAD F65A 673E 262D F656 6026 206D F65A"            /* J��Zg>&-�V`& m�Z */
	$"2003 5380 7214 4EB9 0000 04DA 2250 2D71"            /*  .S�r.N�...�"P-q */
	$"0810 FFFC 4AAE FFFC 6706 206E FFFC 4E90"            /* ..��J���g. n��N� */
	$"5383 4A83 6ED6 486D F65A 4EB9 0000 D254"            /* S�J�n�Hm�ZN�..�T */
	$"42AD F656 261F 4E5E 4E75 8D46 494E 4953"            /* B��V&.N^Nu�FINIS */
	$"4853 5441 5254 5550 0000 4E56 0000 2F03"            /* HSTARTUP..NV../. */
	$"262E 0008 0C83 0000 7FFF 5EC0 4400 0C83"            /* &....�...�^�D..� */
	$"FFFF 8000 5DC1 4401 8200 6706 263C FFFF"            /* ���.]�D.�.g.&<�� */
	$"FD63 3D43 000C 261F 4E5E 2E9F 4E75 8849"            /* �c=C..&.N^.�Nu�I */
	$"434D 4150 4552 5200 0000 4E56 FDF8 206E"            /* CMAPERR...NV�� n */
	$"000C 43EE FDF8 703F 22D8 51C8 FFFC 206E"            /* ..C���p?"�Q��� n */
	$"0008 43EE FF00 703F 22D8 51C8 FFFC 3D7C"            /* ..C��.p?"�Q���=| */
	$"FFFF 0010 4A2D F818 6746 42AE FEF8 7000"            /* ��..J-�.gFB���p. */
	$"102E FF00 48C0 2D40 FEFC 554F 594F 2F2D"            /* ..�.H�-@��UOYO/- */
	$"F814 486E FDF8 486E FF01 7000 102E FF00"            /* �.Hn��Hn�.p...�. */
	$"48C0 2F00 486E FEF8 486E FEFC 4EB9 0001"            /* H�/.Hn��Hn��N�.. */
	$"0CAE 201F 2F00 4EBA FF52 301F 3D40 0010"            /* .� ./.N��R0.=@.. */
	$"4E5E 205F 504F 4ED0 8B4D 594C 4155 4E43"            /* N^ _PONЋMYLAUNC */
	$"4855 524C 0000 4E56 FEF8 48E7 1820 246E"            /* HURL..NV��H�. $n */
	$"0008 206E 000C 43EE FEFC 703F 22D8 51C8"            /* .. n..C���p?"�Q� */
	$"FFFC 4A2D F818 6732 2D7C 0000 0100 FFFC"            /* ��J-�.g2-|....�� */
	$"554F 594F 2F2D F814 486E FEFC 486E FEF8"            /* UOYO/-�.Hn��Hn�� */
	$"2F0A 486E FFFC 4EB9 0001 0B7E 201F 2F00"            /* /.Hn��N�...~ ./. */
	$"4EBA FEE8 301F 3600 6002 76FF 4A43 6716"            /* N���0.6.`.v�JCg. */
	$"41ED FEA4 2808 2044 7000 1010 5240 48C0"            /* A���(. Dp...R@H� */
	$"2044 224A A22E 3D43 0010 4CDF 0418 4E5E"            /*  D"J�.=C..L�..N^ */
	$"205F 504F 4ED0 8B47 4554 4943 5354 5249"            /*  _PONЋGETICSTRI */
	$"4E47 0000 4E56 FE00 2F03 206E 0008 43EE"            /* NG..NV�./. n..C� */
	$"FE00 703F 22D8 51C8 FFFC 554F 486E FE00"            /* �.p?"�Q���UOHn�. */
	$"486E FF00 4EBA FF50 301F 3600 41EE FF00"            /* Hn�.N��P0.6.A��. */
	$"2608 2043 7000 1010 5240 48C0 2043 226E"            /* &. Cp...R@H� C"n */
	$"000C A22E 261F 4E5E 2E9F 4E75 8847 4554"            /* ..�.&.N^.�Nu�GET */
	$"4943 5354 5200 0000 4E56 FE00 206E 000C"            /* ICSTR...NV�. n.. */
	$"43EE FE00 703F 22D8 51C8 FFFC 206E 0008"            /* C��.p?"�Q��� n.. */
	$"43EE FF00 703F 22D8 51C8 FFFC 554F 594F"            /* C��.p?"�Q���UOYO */
	$"2F2D F814 486E FE00 4878 FFFF 486E FF00"            /* /-�.Hn�.Hx��Hn�. */
	$"7000 102E FF00 5240 48C0 2F00 4EB9 0001"            /* p...�.R@H�/.N�.. */
	$"0BF6 201F 2F00 4EBA FE02 301F 3D40 0010"            /* .� ./.N��.0.=@.. */
	$"4E5E 205F 504F 4ED0 8B53 4554 4943 5354"            /* N^ _PONЋSETICST */
	$"5249 4E47 0000 4E56 0000 554F 594F 2F2D"            /* RING..NV..UOYO/- */
	$"F814 1F2E 0008 4EB9 0001 0B32 201F 2F00"            /* �.....N�...2 ./. */
	$"4EBA FDC8 301F 3D40 000A 4E5E 205F 544F"            /* N���0.=@..N^ _TO */
	$"4ED0 894D 5949 4342 4547 494E 0000 4E56"            /* NЉMYICBEGIN..NV */
	$"0000 594F 2F2D F814 4EB9 0001 0C6E 201F"            /* ..YO/-�.N�...n . */
	$"3D40 0008 4E5E 4E75 874D 5949 4345 4E44"            /* =@..N^Nu�MYICEND */
	$"0000 4E56 FFF6 2F03 594F A975 201F 2B40"            /* ..NV��/.YO�u .+@ */
	$"F800 42AD F810 42AD F80C 2B6D FEA6 F808"            /* �.B��.B��.+m���. */
	$"2B6D FEA6 F804 594F 486D F814 2F2D F7FC"            /* +m���.YOHm�./-�� */
	$"4EB9 0001 0A1E 201F 2600 4A83 57C0 4400"            /* N�.... .&.J�W�D. */
	$"1B40 F818 4A2D F818 6726 3D6D F81A FFFA"            /* .@�.J-�.g&=m�.�� */
	$"2D6D F81C FFFC 594F 2F2D F814 3F3C 0001"            /* -m�.��YO/-�.?<.. */
	$"486E FFFA 4EB9 0001 0AD2 201F 2D40 FFF6"            /* Hn��N�...� .-@�� */
	$"4A2D F7FB 6602 7600 2D43 000C 261F 4E5E"            /* J-��f.v.-C..&.N^ */
	$"2E9F 4E75 9449 4E49 544D 5949 4E54 4552"            /* .�Nu�INITMYINTER */
	$"4E45 5443 4F4E 4649 4700 0000 4E56 FFFC"            /* NETCONFIG...NV�� */
	$"486D F810 4EB9 0000 D254 4A2D F818 6712"            /* Hm�.N�..�TJ-�.g. */
	$"594F 2F2D F814 4EB9 0001 0A8E 201F 2D40"            /* YO/-�.N�...� .-@ */
	$"FFFC 4E5E 4E75 9646 494E 4953 484D 5949"            /* ��N^Nu�FINISHMYI */
	$"4E54 4552 4E45 5443 4F4E 4649 4700 0000"            /* NTERNETCONFIG... */
	$"4E56 0000 4EBA 0030 2B6E 000A F7FC 1B6E"            /* NV..N�.0+n..��.n */
	$"0008 F7FB 4E5E 205F 5C4F 4ED0 9743 4F4E"            /* ..��N^ _\ONЗCON */
	$"4649 4755 5245 494E 5445 524E 4554 434F"            /* FIGUREINTERNETCO */
	$"4E46 4947 0000 4E56 0000 487A FEE6 4878"            /* NFIG..NV..Hz��Hx */
	$"0000 42A7 487A FF76 4EB9 0000 BE5E 4E5E"            /* ..B�Hz�vN�..�^N^ */
	$"4E75 9553 5441 5254 5550 494E 5445 524E"            /* Nu�STARTUPINTERN */
	$"4554 434F 4E46 4947 0000 4E56 0000 48E7"            /* ETCONFIG..NV..H� */
	$"0030 266E 000E 246E 0008 3553 0016 256B"            /* .0&n..$n..5S..%k */
	$"0002 0030 204B 5C88 2548 0012 356E 000C"            /* ...0 K\�%H..5n.. */
	$"001C 554F 2F0A 205F 7009 A260 3E80 301F"            /* ..UO/. _p.�`>�0. */
	$"3D40 0012 4CDF 0C00 4E5E 205F 4FEF 000A"            /* =@..L�..N^ _O�.. */
	$"4ED0 8D46 5350 4745 5443 4154 494E 464F"            /* NЍFSPGETCATINFO */
	$"0000 4E56 FFFC 48E7 1830 382E 0010 266E"            /* ..NV��H�.08...&n */
	$"000C 246E 0008 554F 3F04 2F0B 2F0A 486E"            /* ..$n..UO?././.Hn */
	$"FFFC 4EB9 0000 EB9A 301F 3600 4A43 6704"            /* ��N�..�0.6.JCg. */
	$"3684 4292 3D43 0012 4CDF 0C18 4E5E 205F"            /* 6�B�=C..L�..N^ _ */
	$"4FEF 000A 4ED0 8847 4554 4449 5249 4400"            /* O�..NЈGETDIRID. */
	$"0000 4E56 FF00 2F0A 246E 000C 206E 0008"            /* ..NV�./.$n.. n.. */
	$"43EE FF00 703F 22D8 51C8 FFFC 2F0A 486D"            /* C��.p?"�Q���/.Hm */
	$"FEAA A933 2F0A 554F 2F0A A950 301F 3F00"            /* ���3/.UO/.�P0.?. */
	$"486E FF00 A947 245F 4E5E 205F 504F 4ED0"            /* Hn�.�G$_N^ _PON� */
	$"8E53 4146 4541 5050 454E 444D 454E 5500"            /* �SAFEAPPENDMENU. */
	$"0000 4E56 0000 4A2E 0008 670C 2F2E 000C"            /* ..NV..J...g./... */
	$"3F2E 000A A939 600A 2F2E 000C 3F2E 000A"            /* ?...�9`./...?... */
	$"A93A 4E5E 205F 504F 4ED0 8D53 4554 4954"            /* �:N^ _PONЍSETIT */
	$"454D 454E 4142 4C45 0000 4E56 0000 594F"            /* EMENABLE..NV..YO */
	$"3F2E 000C A949 205F 2F08 3F2E 000A 1F2E"            /* ?...�I _/.?..... */
	$"0008 4EBA FFAE 4E5E 205F 5C4F 4ED0 8F53"            /* ..N���N^ _\ONЏS */
	$"4554 4944 4954 454D 454E 4142 4C45 0000"            /* ETIDITEMENABLE.. */
	$"4E56 0000 594F 4878 0002 201F A322 2E88"            /* NV..YOHx.. .�".� */
	$"205F 2D48 0008 4E5E 4E75 874E 4557 5354"            /*  _-H..N^Nu�NEWST */
	$"5248 0000 4E56 0000 486E 0008 4EB9 0000"            /* RH..NV..Hn..N�.. */
	$"D254 4E5E 2E9F 4E75 8B44 4953 504F 5345"            /* �TN^.�Nu�DISPOSE */
	$"5354 5248 0000 4E56 FF00 2F03 362E 0008"            /* STRH..NV�./.6... */
	$"486E FF00 3F2E 000A 3F03 4EB9 0000 E980"            /* Hn�.?...?.N�..� */
	$"41EE FF00 2608 2043 7000 1010 5240 48C0"            /* A��.&. Cp...R@H� */
	$"2043 226E 000C A22E 261F 4E5E 2E9F 4E75"            /*  C"n..�.&.N^.�Nu */
	$"8947 4554 494E 4453 5452 0000 4E56 0000"            /* �GETINDSTR..NV.. */
	$"48E7 1C20 246E 000A 382E 0008 2052 3610"            /* H�. $n..8... R6. */
	$"B843 5FC0 4400 0C44 0001 5CC1 4401 C200"            /* �C_�D..D..\�D.�. */
	$"672E 7602 3A04 5345 7801 601E 2012 D083"            /* g.v.:.SEx.`. .Ѓ */
	$"2040 1010 4880 0280 0000 00FF D083 5280"            /*  @..H�.�...�ЃR� */
	$"2600 0C44 7FFF 6716 5244 B845 6FDE 600E"            /* &..D.�g.RD�Eo�`. */
	$"594F 2F0A 4EB9 0000 E790 201F 2600 2D43"            /* YO/.N�..� .&.-C */
	$"000E 4CDF 0438 4E5E 205F 5C4F 4ED0 9153"            /* ..L�.8N^ _\ONБS */
	$"5452 4849 4E44 4558 544F 4F46 4653 4554"            /* TRHINDEXTOOFFSET */
	$"0000 4E56 FF00 48E7 1020 246E 000A 594F"            /* ..NV�.H�. $n..YO */
	$"2F0A 3F2E 0008 4EBA FF64 201F 2600 594F"            /* /.?...N��d .&.YO */
	$"2F0A 4EB9 0000 E790 201F B680 6C2A 2012"            /* /.N�..� .��l* . */
	$"D083 2040 4850 486E FF00 2012 D083 2040"            /* Ѓ @HPHn�. .Ѓ @ */
	$"1010 4880 0280 0000 00FF 5280 2F00 201F"            /* ..H�.�...�R�/. . */
	$"225F 205F A22E 6018 41ED FEB0 2608 2043"            /* "_ _�.`.A���&. C */
	$"7000 1010 5240 48C0 2043 43EE FF00 A22E"            /* p...R@H� CC��.�. */
	$"41EE FF00 2608 2043 7000 1010 5240 48C0"            /* A��.&. Cp...R@H� */
	$"2043 226E 000E A22E 4CDF 0408 4E5E 205F"            /*  C"n..�.L�..N^ _ */
	$"5C4F 4ED0 8A47 4554 494E 4453 5452 4800"            /* \ONЊGETINDSTRH. */
	$"0000 4E56 FF00 48E7 1F20 246E 000E 3A2E"            /* ..NV�.H�. $n..:. */
	$"000C 206E 0008 43EE FF00 703F 22D8 51C8"            /* .. n..C��.p?"�Q� */
	$"FFFC 2052 3610 594F 2F0A 4EB9 0000 E790"            /* �� R6.YO/.N�..� */
	$"201F 2C00 B645 6C4C 2F0A 3045 2006 D088"            /*  .,.�ElL/.0E .Ј */
	$"3043 9088 2F00 201F 205F A024 554F 3EB8"            /* 0C��/. . _�$UO>� */
	$"0220 301F 6670 2E12 DE86 3043 3245 2812"            /* . 0.fp..ކ0C2E(. */
	$"D886 D889 9888 5384 2607 600E 2043 4210"            /* ؆؉��S�&.`. CB. */
	$"0C83 7FFF FFFF 6706 5283 B684 6FEE 2052"            /* .�.���g.R���o� R */
	$"3085 3605 594F 2F0A 3F05 4EBA FE50 201F"            /* 0�6.YO/.?.N��P . */
	$"2600 594F 2F0A 2F03 4878 0000 2012 D083"            /* &.YO/./.Hx.. .Ѓ */
	$"2040 1010 4880 0280 0000 00FF 5280 2F00"            /*  @..H�.�...�R�/. */
	$"486E FF00 7000 102E FF00 5240 48C0 2F00"            /* Hn�.p...�.R@H�/. */
	$"A9E0 201F 2800 4CDF 04F8 4E5E 205F 4FEF"            /* �� .(.L�.�N^ _O� */
	$"000A 4ED0 8A53 4554 494E 4453 5452 4800"            /* ..NЊSETINDSTRH. */
	$"0000 4E56 FF00 48E7 1800 382E 000A 362E"            /* ..NV�.H�..8...6. */
	$"0008 206E 000C 43EE FF00 703F 22D8 51C8"            /* .. n..C��.p?"�Q� */
	$"FFFC 0C44 0001 6C0C 7001 9044 3203 9240"            /* ��.D..l.p.�D2.�@ */
	$"3601 7801 7000 102E FF00 3204 D243 B240"            /* 6.x.p...�.2.�C�@ */
	$"6F0A 7600 162E FF00 9644 5243 4A43 6C02"            /* o.v...�.�DRCJCl. */
	$"7600 7000 3003 1D40 FF00 41EE FF00 4870"            /* v.p.0..@�.A��.Hp */
	$"4000 486E FF01 3043 2F08 201F 225F 205F"            /* @.Hn�.0C/. ."_ _ */
	$"A22E 41EE FF00 2608 2043 7000 1010 5240"            /* �.A��.&. Cp...R@ */
	$"48C0 2043 226E 0010 A22E 4CDF 0018 4E5E"            /* H� C"n..�.L�..N^ */
	$"205F 504F 4ED0 8654 5043 4F50 5900 0000"            /*  _PONІTPCOPY... */
	$"4E56 FE00 48E7 1C00 206E 000C 43EE FF00"            /* NV�.H�.. n..C��. */
	$"703F 22D8 51C8 FFFC 206E 0008 43EE FE00"            /* p?"�Q��� n..C��. */
	$"703F 22D8 51C8 FFFC 7801 7A01 7000 102E"            /* p?"�Q���x.z.p... */
	$"FF00 4A40 6F66 7A00 604E 41EE FE00 1030"            /* �.J@ofz.`NA��..0 */
	$"4000 B02E FF01 663A 7602 601E 41EE FF00"            /* @.�.�.f:v.`.A��. */
	$"3004 D043 5340 43EE FE00 1031 0000 B030"            /* 0.�CS@C��..1..�0 */
	$"3000 6610 7001 D043 3600 7000 102E FF00"            /* 0.f.p.�C6.p...�. */
	$"B640 6FD8 7000 102E FF00 B640 6F04 3A04"            /* �@o�p...�.�@o.:. */
	$"601A 7001 D044 3800 7000 102E FF00 7200"            /* `.p.�D8.p...�.r. */
	$"122E FE00 9240 5241 B841 6F9E 3D45 0010"            /* ..�.�@RA�Ao�=E.. */
	$"4CDF 0038 4E5E 205F 504F 4ED0 8554 5050"            /* L�.8N^ _PONЅTPP */
	$"4F53 0000 4E56 FEFE 48E7 1020 246E 000E"            /* OS..NV��H�. $n.. */
	$"554F 7030 D06E 000C 48C0 7200 1200 0041"            /* UOp0�n..H�r....A */
	$"0100 3D41 FEFE 486E FEFE 486D FEB2 486E"            /* ..=A��Hn��Hm��Hn */
	$"FF00 3F3C 0002 4EB9 0000 DE7E 4FEF 000E"            /* �.?<..N�..�~O�.. */
	$"486E FF00 2F0A 4EBA FF08 301F 3600 4A43"            /* Hn�./.N��.0.6.JC */
	$"6F1C 2F0A 3F03 3F3C 0002 4EB9 0000 DEF4"            /* o./.?.?<..N�..�� */
	$"2F2E 0008 2F0A 3F03 4EB9 0000 DFAC 4CDF"            /* /.../.?.N�..߬L� */
	$"0408 4E5E 205F 4FEF 000A 4ED0 8544 4F53"            /* ..N^ _O�..NЅDOS */
	$"5542 0000 4E56 0000 48E7 1020 246E 0020"            /* UB..NV..H�. $n.  */
	$"262E 001C 2043 7000 1010 5240 48C0 2043"            /* &... Cp...R@H� C */
	$"224A A22E 2F0A 3F3C 0005 2F2E 0008 4EBA"            /* "J�./.?<../...N� */
	$"FF54 2F0A 3F3C 0004 2F2E 000C 4EBA FF46"            /* �T/.?<../...N��F */
	$"2F0A 3F3C 0003 2F2E 0010 4EBA FF38 2F0A"            /* /.?<../...N��8/. */
	$"3F3C 0002 2F2E 0014 4EBA FF2A 2F0A 3F3C"            /* ?<../...N��*..?< */
	$"0001 2F2E 0018 4EBA FF1C 4CDF 0408 4E5E"            /* ../...N��.L�..N^ */
	$"205F 4FEF 001C 4ED0 8953 5052 494E 5453"            /*  _O�..NЉSPRINTS */
	$"3556 0000 4E56 FA00 206E 001C 43EE FA00"            /* 5V..NV�. n..C��. */
	$"703F 22D8 51C8 FFFC 206E 0018 43EE FB00"            /* p?"�Q��� n..C��. */
	$"703F 22D8 51C8 FFFC 206E 0014 43EE FC00"            /* p?"�Q��� n..C��. */
	$"703F 22D8 51C8 FFFC 206E 0010 43EE FD00"            /* p?"�Q��� n..C��. */
	$"703F 22D8 51C8 FFFC 206E 000C 43EE FE00"            /* p?"�Q��� n..C��. */
	$"703F 22D8 51C8 FFFC 206E 0008 43EE FF00"            /* p?"�Q��� n..C��. */
	$"703F 22D8 51C8 FFFC 2F2E 0020 486E FA00"            /* p?"�Q���/.. Hn�. */
	$"486E FB00 486E FC00 486E FD00 486E FE00"            /* Hn�.Hn�.Hn�.Hn�. */
	$"486E FF00 4EBA FEFE 4E5E 205F 4FEF 001C"            /* Hn�.N���N^ _O�.. */
	$"4ED0 8853 5052 494E 5453 3500 0000 4E56"            /* NЈSPRINTS5...NV */
	$"FC00 48E7 1020 246E 0018 206E 0014 43EE"            /* �.H�. $n.. n..C� */
	$"FC00 703F 22D8 51C8 FFFC 206E 0010 43EE"            /* �.p?"�Q��� n..C� */
	$"FD00 703F 22D8 51C8 FFFC 206E 000C 43EE"            /* �.p?"�Q��� n..C� */
	$"FE00 703F 22D8 51C8 FFFC 206E 0008 43EE"            /* �.p?"�Q��� n..C� */
	$"FF00 703F 22D8 51C8 FFFC 41EE FC00 2608"            /* �.p?"�Q���A��.&. */
	$"2043 7000 1010 5240 48C0 2043 224A A22E"            /*  Cp...R@H� C"J�. */
	$"2F0A 3F3C 0003 486E FF00 4EBA FDF8 2F0A"            /* /.?<..Hn�.N���/. */
	$"3F3C 0002 486E FE00 4EBA FDEA 2F0A 3F3C"            /* ?<..Hn�.N���/.?< */
	$"0001 486E FD00 4EBA FDDC 4CDF 0408 4E5E"            /* ..Hn�.N���L�..N^ */
	$"205F 4FEF 0014 4ED0 8853 5052 494E 5453"            /*  _O�..NЈSPRINTS */
	$"3300 0000 4E56 FDFE 48E7 1830 266E 000C"            /* 3...NV��H�.0&n.. */
	$"246E 0008 206E 0012 43EE FF00 703F 22D8"            /* $n.. n..C��.p?"� */
	$"51C8 FFFC 554F 7000 302E 0010 7200 1200"            /* Q���UOp.0...r... */
	$"0041 0100 3D41 FDFE 486E FDFE 486E FF00"            /* .A..=A��Hn��Hn�. */
	$"4EBA FCCE 301F 3800 4A44 6E2E 41EE FF00"            /* N���0.8.JDn.A��. */
	$"2608 2043 7000 1010 5240 48C0 2043 224B"            /* &. Cp...R@H� C"K */
	$"A22E 41ED FEB4 2608 2043 7000 1010 5240"            /* �.A���&. Cp...R@ */
	$"48C0 2043 224A A22E 605A 486E FE00 486E"            /* H� C"J�.`ZHn�.Hn */
	$"FF00 3F3C 0001 3004 5340 3F00 4EBA FBE4"            /* �.?<..0.S@?.N��� */
	$"41EE FE00 2608 2043 7000 1010 5240 48C0"            /* A��.&. Cp...R@H� */
	$"2043 224B A22E 486E FE00 486E FF00 7001"            /*  C"K�.Hn�.Hn�.p. */
	$"D044 3F00 3F3C 00FF 4EBA FBB8 41EE FE00"            /* �D?.?<.�N���A��. */
	$"2608 2043 7000 1010 5240 48C0 2043 224A"            /* &. Cp...R@H� C"J */
	$"A22E 504F 4CDF 0C18 4E5E 205F 4FEF 000E"            /* �.POL�..N^ _O�.. */
	$"4ED0 8753 504C 4954 4259 0000 4E56 FD00"            /* NЇSPLITBY..NV�. */
	$"48E7 1800 206E 0014 43EE FE00 703F 22D8"            /* H�.. n..C��.p?"� */
	$"51C8 FFFC 206E 0010 43EE FF00 703F 22D8"            /* Q��� n..C��.p?"� */
	$"51C8 FFFC 554F 486E FE00 486E FF00 4EBA"            /* Q���UOHn�.Hn�.N� */
	$"FBF0 301F 3800 4A44 6F62 486E FD00 486E"            /* ��0.8.JDobHn�.Hn */
	$"FF00 3F3C 0001 3004 5340 3F00 4EBA FB34"            /* �.?<..0.S@?.N��4 */
	$"41EE FD00 2608 2043 7000 1010 5240 48C0"            /* A��.&. Cp...R@H� */
	$"2043 226E 000C A22E 486E FD00 486E FF00"            /*  C"n..�.Hn�.Hn�. */
	$"7000 102E FE00 D044 3F00 3F3C 00FF 4EBA"            /* p...�.�D?.?<.�N� */
	$"FB02 41EE FD00 2608 2043 7000 1010 5240"            /* �.A��.&. Cp...R@ */
	$"48C0 2043 226E 0008 A22E 504F 4A44 5EC0"            /* H� C"n..�.POJD^� */
	$"4400 1D40 0018 4CDF 0018 4E5E 205F 4FEF"            /* D..@..L�..N^ _O� */
	$"0010 4ED0 8553 504C 4954 0000 4E56 0000"            /* ..NЅSPLIT..NV.. */
	$"202E 000A 322E 0008 0300 56C0 4400 1D40"            /*  ...2.....V�D..@ */
	$"000E 4E5E 205F 5C4F 4ED0 8654 5042 5453"            /* ..N^ _\ONІTPBTS */
	$"5400 0000 4E56 0000 1B6E 0008 F819 4E5E"            /* T...NV...n..�.N^ */
	$"205F 544F 4ED0 8F53 4554 494E 464F 5245"            /*  _TONЏSETINFORE */
	$"4752 4F55 4E44 0000 4E56 FFEA 554F 2F2D"            /* GROUND..NV��UO/- */
	$"FEB6 486E FFEA 225F 201F A1AD 2288 3E80"            /* ��Hn��"_ .��"�>� */
	$"301F 6654 554F 2F2E FFEA 3F3C 0003 4EBA"            /* 0.fTUO/.��?<..N� */
	$"FF8C 101F 6742 554F 486E FFEE 3F3C 0037"            /* ��..gBUOHn��?<.7 */
	$"A88F 301F 6632 554F 486E FFF6 70FF 2F00"            /* ��0.f2UOHn��p�/. */
	$"3F3C 0039 A88F 301F 661E 554F 486E FFEE"            /* ?<.9��0.f.UOHn�� */
	$"486E FFF6 486E FFFF 3F3C 003D A88F 301F"            /* Hn��Hn��?<.=��0. */
	$"6606 1B6E FFFF F819 1D6D F819 0008 4E5E"            /* f..n���..m�...N^ */
	$"205F 4ED0 8C49 4E46 4F52 4547 524F 554E"            /*  _NЌINFOREGROUN */
	$"4400 0000 4E56 FFC2 2F0A 246E 0008 204A"            /* D...NV��/.$n.. J */
	$"5C88 2D48 FFD4 426E FFD8 3D6E 000C FFDA"            /* \�-H��Bn��=n..�� */
	$"426E FFDE 554F 486E FFC2 205F 7008 A260"            /* Bn��UOHn�� _p.�` */
	$"3E80 301F 3D40 000E 34AE FFF6 256E FFFC"            /* >�0.=@..4���%n�� */
	$"0002 245F 4E5E 205F 5C4F 4ED0 8E52 4546"            /* ..$_N^ _\ONЎREF */
	$"4E55 4D54 4F46 5353 5045 4300 0000 4E56"            /* NUMTOFSSPEC...NV */
	$"FFEA 554F 3F3C 0001 486E FFEC 205F 301F"            /* ��UO?<..Hn�� _0. */
	$"A090 3E80 301F 4A40 6606 4A2E FFF5 6604"            /* ��>�0.J@f.J.��f. */
	$"7000 6002 7001 1B40 F864 554F 2F2D FEBA"            /* p.`.p..@�dUO/-�� */
	$"486D F86A 225F 201F A1AD 2288 3E80 301F"            /* Hm�j"_ .��"�>�0. */
	$"6708 2B7C 0000 0600 F86A 0CAD 0000 0700"            /* g.+|....�j.�.... */
	$"F86A 5CC0 4400 1B40 F86F 554F A994 301F"            /* �j\�D..@�oUO��0. */
	$"3B40 F860 554F 3F2D F860 486D F81A 4EBA"            /* ;@�`UO?-�`Hm�.N� */
	$"FF34 301F 3D40 FFEA 554F 2F2D FEBE 486E"            /* �40.=@��UO/-��Hn */
	$"FFFC 225F 201F A1AD 2288 3E80 301F 4A40"            /* ��"_ .��"�>�0.J@ */
	$"6612 554F 2F2E FFFC 4267 4EBA FE30 101F"            /* f.UO/.��BgN��0.. */
	$"4A00 6604 7000 6002 7001 1B40 F869 554F"            /* J.f.p.`.p..@�iUO */
	$"2F2D FEC2 486E FFFC 225F 201F A1AD 2288"            /* /-��Hn��"_ .��"� */
	$"3E80 301F 4A40 6612 554F 2F2E FFFC 4267"            /* >�0.J@f.UO/.��Bg */
	$"4EBA FDFA 101F 4A00 6604 7000 6002 7001"            /* N���..J.f.p.`.p. */
	$"1B40 F868 554F 2F2D FEC6 486E FFFC 225F"            /* .@�hUO/-��Hn��"_ */
	$"201F A1AD 2288 3E80 301F 4A40 6612 554F"            /*  .��"�>�0.J@f.UO */
	$"2F2E FFFC 4267 4EBA FDC4 101F 4A00 6604"            /* /.��BgN���..J.f. */
	$"7000 6002 7001 1B40 F866 554F 2F2D FECA"            /* p.`.p..@�fUO/-�� */
	$"486E FFFC 225F 201F A1AD 2288 3E80 301F"            /* Hn��"_ .��"�>�0. */
	$"4A40 6612 554F 2F2E FFFC 4267 4EBA FD8E"            /* J@f.UO/.��BgN��� */
	$"101F 4A00 6604 7000 6002 7001 1B40 F865"            /* ..J.f.p.`.p..@�e */
	$"554F 2F2D FECE 486E FFFC 225F 201F A1AD"            /* UO/-��Hn��"_ .�� */
	$"2288 3E80 301F 4A40 6612 554F 2F2E FFFC"            /* "�>�0.J@f.UO/.�� */
	$"4267 4EBA FD58 101F 4A00 6604 7000 6002"            /* BgN��X..J.f.p.`. */
	$"7001 1B40 F867 554F 2F2D FEB6 486E FFFC"            /* p..@�gUO/-��Hn�� */
	$"225F 201F A1AD 2288 3E80 301F 4A40 6614"            /* "_ .��"�>�0.J@f. */
	$"554F 2F2E FFFC 3F3C 0003 4EBA FD20 101F"            /* UO/.��?<..N�� .. */
	$"4A00 6604 7000 6002 7001 1B40 F863 554F"            /* J.f.p.`.p..@�cUO */
	$"2F2D FED2 486E FFFC 225F 201F A1AD 2288"            /* /-��Hn��"_ .��"� */
	$"3E80 301F 4A40 6612 554F 2F2E FFFC 4267"            /* >�0.J@f.UO/.��Bg */
	$"4EBA FCEA 101F 4A00 6604 7000 6002 7001"            /* N���..J.f.p.`.p. */
	$"1B40 F862 1B7C 0001 F819 4E5E 4E75 9149"            /* .@�b.|..�.N^Nu�I */
	$"4E49 5453 5953 5445 4D47 4C4F 4241 4C53"            /* NITSYSTEMGLOBALS */
	$"0000 4E56 0000 2F03 262E 0008 594F 2F03"            /* ..NV../.&...YO/. */
	$"201F A122 2E88 205F 226E 000C 2288 554F"            /*  .�".� _"n.."�UO */
	$"3EB8 0220 301F 3600 3D43 0010 261F 4E5E"            /* >�. 0.6.=C..&.N^ */
	$"205F 504F 4ED0 8A4D 4E45 5748 414E 444C"            /*  _PONЊMNEWHANDL */
	$"4500 0000 4E56 0000 2F0A 246E 0008 4A92"            /* E...NV../.$n..J� */
	$"6708 2F12 205F A023 4292 245F 4E5E 2E9F"            /* g./. _�#B�$_N^.� */
	$"4E75 8E4D 4449 5350 4F53 4548 414E 444C"            /* Nu�MDISPOSEHANDL */
	$"4500 0000 4E56 FFFC 594F 2F2E 0010 2F2E"            /* E...NV��YO/.../. */
	$"000C 4878 0000 2F2E 0008 486E FFFC 42A7"            /* ..Hx../...Hn��B� */
	$"A9E0 201F 2D40 FFFC 4E5E 205F 4FEF 000C"            /* �� .-@��N^ _O�.. */
	$"4ED0 8D4D 4D55 4E47 4552 4445 4C45 5445"            /* NЍMMUNGERDELETE */
	$"0000 4E56 0000 594F 4EB9 0000 C700 205F"            /* ..NV..YON�..�. _ */
	$"226E 0008 2288 206E 0008 2F10 2F2E 000C"            /* "n.."� n.././... */
	$"4EBA 00A0 4E5E 205F 504F 4ED0 9454 5241"            /* N�.�N^ _PONДTRA */
	$"434B 5445 5854 4954 454D 5343 5245 4154"            /* CKTEXTITEMSCREAT */
	$"4500 0000 4E56 FFFE 48E7 1830 266E 000E"            /* E...NV��H�.0&n.. */
	$"382E 000C 246E 0008 41ED FED6 2608 2043"            /* 8...$n..A���&. C */
	$"7000 1010 5240 48C0 2043 224A A22E 2F0B"            /* p...R@H� C"J�./. */
	$"3F04 486E FFFE 4EB9 0000 B096 554F 306E"            /* ?.Hn��N�..��UO0n */
	$"FFFE 2F08 486D FED8 4878 0100 4EB9 0000"            /* ��/.Hm��Hx..N�.. */
	$"DCD0 101F 670C 2F0B 3F04 2F0A 4EB9 0000"            /* ��..g./.?./.N�.. */
	$"ADB2 4CDF 0C18 4E5E 205F 4FEF 000A 4ED0"            /* ��L�..N^ _O�..N� */
	$"8F53 4146 4547 4554 4954 454D 5445 5854"            /* �SAFEGETITEMTEXT */
	$"0000 4E56 FF00 48E7 1830 266E 000C 246E"            /* ..NV�.H�.0&n..$n */
	$"0008 554F 2F0A 4EB9 0000 B3CA 301F 3800"            /* ..UO/.N�..��0.8. */
	$"7601 6022 2F0A 3F03 486E FF00 4EBA FF56"            /* v.`"/.?.Hn�.N��V */
	$"2F0B 3F03 486E FF00 4EB9 0000 C8B2 0C43"            /* /.?.Hn�.N�..Ȳ.C */
	$"7FFF 6706 5243 B644 6FDA 4CDF 0C18 4E5E"            /* .�g.RC�Do�L�..N^ */
	$"205F 504F 4ED0 8E54 5241 434B 5445 5854"            /*  _PONЎTRACKTEXT */
	$"4954 454D 5300 0000 4E56 FF00 2F03 486E"            /* ITEMS...NV�./.Hn */
	$"FF00 2F2E 000A 3F2E 0008 4EB9 0000 C812"            /* �./...?...N�..�. */
	$"41EE FF00 2608 2043 7000 1010 5240 48C0"            /* A��.&. Cp...R@H� */
	$"2043 226E 000E A22E 584F 261F 4E5E 205F"            /*  C"n..�.XO&.N^ _ */
	$"5C4F 4ED0 8B54 4558 5449 5445 4D57 4153"            /* \ONЋTEXTITEMWAS */
	$"0000 4E56 FE00 2F2E 000A 3F2E 0008 486E"            /* ..NV�./...?...Hn */
	$"FF00 4EBA FEC0 554F 486E FF00 486E FE00"            /* �.N���UOHn�.Hn�. */
	$"2F2E 000E 3F2E 0008 4EBA FF8E 584F 486E"            /* /...?...N���XOHn */
	$"FE00 3F3C 0001 4EB9 0000 DD64 101F 1D40"            /* �.?<..N�..�d...@ */
	$"0012 4E5E 205F 4FEF 000A 4ED0 9254 4558"            /* ..N^ _O�..NВTEX */
	$"5449 5445 4D48 4153 4348 414E 4745 4400"            /* TITEMHASCHANGED. */
	$"0000 4E56 0000 202E 000A 322E 0008 0300"            /* ..NV.. ...2..... */
	$"56C0 4400 1D40 000E 4E5E 205F 5C4F 4ED0"            /* V�D..@..N^ _\ON� */
	$"8654 5042 5453 5400 0000 4E56 FEFC 486E"            /* �TPBTST...NV��Hn */
	$"FF00 3F3C 076C 7000 102E 0010 D040 5240"            /* �.?<.lp.....�@R@ */
	$"3F00 4EB9 0000 E980 486E FF00 2F2E 000C"            /* ?.N�..�Hn�./... */
	$"A900 486E FF00 3F3C 076C 7000 102E 0010"            /* �.Hn�.?<.lp..... */
	$"D040 5440 3F00 4EB9 0000 E980 486E FF00"            /* �@T@?.N�..�Hn�. */
	$"486E FEFC 4EB9 0000 E89A 206E 0008 30AE"            /* Hn��N�..� n..0� */
	$"FEFE 4E5E 205F 4FEF 000A 4ED0 8A47 4554"            /* ��N^ _O�..NЊGET */
	$"4D59 464F 4E54 5300 0000 4E56 FFFC 1F2E"            /* MYFONTS...NV��.. */
	$"0008 486E FFFC 486E FFFE 4EBA FF7E 3F2E"            /* ..Hn��Hn��N��~?. */
	$"FFFC A887 3F2E FFFE A88A 4E5E 205F 544F"            /* ����?.����N^ _TO */
	$"4ED0 8953 4554 4D59 464F 4E54 0000 4E56"            /* NЉSETMYFONT..NV */
	$"0000 206E 0008 30AE 0010 316E 000E 0002"            /* .. n..0�..1n.... */
	$"316E 000C 0004 4E5E 205F 4FEF 000A 4ED0"            /* 1n....N^ _O�..N� */
	$"8C4D 414B 4552 4742 434F 4C4F 5200 0000"            /* �MAKERGBCOLOR... */
	$"4E56 0000 554F 3F3C ABCA 4EBA 00A4 101F"            /* NV..UO?<��N�.�.. */
	$"6714 2F2E 0014 2F2E 0010 2F2E 000C 2F2E"            /* g./.../.../.../. */
	$"0008 ABCA 6012 4878 0001 42A7 2F2E 000C"            /* ..��`.Hx..B�/... */
	$"2F2E 0010 205F 4E90 4E5E 205F 4FEF 0010"            /* /... _N�N^ _O�.. */
	$"4ED0 8E53 4146 4544 4556 4943 454C 4F4F"            /* NЎSAFEDEVICELOO */
	$"5000 0000 4E56 FFF8 2F0A 206E 0014 2D50"            /* P...NV��/. n..-P */
	$"FFF8 2D68 0004 FFFC 594F A8D8 205F 2448"            /* ��-h..��YO�� _$H */
	$"2F0A 486E FFF8 A8DF 2F0A 2F2E 0010 2F2E"            /* /.Hn����/./.../. */
	$"000C 2F2E 0008 4EBA FF78 2F0A A8D9 245F"            /* ../...N��x/.��$_ */
	$"4E5E 205F 4FEF 0010 4ED0 9253 4146 4544"            /* N^ _O�..NВSAFED */
	$"4556 4943 454C 4F4F 5052 4543 5400 0000"            /* EVICELOOPRECT... */
	$"4E56 FFFC 48E7 1800 362E 0008 554F 3043"            /* NV��H�..6...UO0C */
	$"2F08 3F3C 000B 4EBA FE3A 101F 1800 0C04"            /* /.?<..N��:...... */
	$"0001 664A 594F 3F3C AA6E 1F3C 0001 4EB9"            /* ..fJYO?<�n.<..N� */
	$"0000 E7B6 205F 2D48 FFFC 594F 3F3C A86E"            /* ..� _-H��YO?<�n */
	$"1F3C 0001 4EB9 0000 E7B6 205F B1EE FFFC"            /* .<..N�..� _���� */
	$"6606 383C 0200 6004 383C 0400 3044 3003"            /* f.8<..`.8<..0D0. */
	$"0280 0000 07FF B088 6D04 363C A89F 594F"            /* .�...���m.6<��YO */
	$"3F3C A89F 4EBA 00B2 205F 2D48 FFFC 594F"            /* ?<��N�.� _-H��YO */
	$"3F03 4EBA 00A4 205F B1EE FFFC 56C0 4400"            /* ?.N�.� _����V�D. */
	$"1D40 000A 4CDF 0018 4E5E 205F 544F 4ED0"            /* .@..L�..N^ _TON� */
	$"8F4D 5954 5241 5041 5641 494C 4142 4C45"            /* �MYTRAPAVAILABLE */
	$"0000 4E56 FF00 2F03 262E 0008 2F03 486E"            /* ..NV�./.&.../.Hn */
	$"FF00 4EB9 0000 E8AE 41EE FF00 2608 2043"            /* �.N�..�A��.&. C */
	$"226E 000C 7010 4EBA 0946 261F 4E5E 2E9F"            /* "n..p.N�.F&.N^.� */
	$"4E75 884E 554D 544F 5354 5200 0000 4E56"            /* Nu�NUMTOSTR...NV */
	$"FEFC 206E 0008 43EE FEFC 703F 22D8 51C8"            /* �� n..C���p?"�Q� */
	$"FFFC 486E FEFC 486E FFFC 4EB9 0000 E89A"            /* ��Hn��Hn��N�..� */
	$"2D6E FFFC 000C 4E5E 2E9F 4E75 8853 5452"            /* -n��..N^.�Nu�STR */
	$"544F 4E55 4D00 0000 4E56 0000 594F 3F2E"            /* TONUM...NV..YO?. */
	$"0008 554F 306E 0008 2F08 3F3C 000B 4EBA"            /* ..UO0n../.?<..N� */
	$"FD12 101F 1F00 4EB9 0000 E7B6 205F 2D48"            /* �.....N�..� _-H */
	$"000A 4E5E 205F 544F 4ED0 904D 5947 4554"            /* ..N^ _TONАMYGET */
	$"5452 4150 4144 4452 4553 5300 0000 4E56"            /* TRAPADDRESS...NV */
	$"0000 594F 2F2D FFD8 3F3C 0080 A81F 205F"            /* ..YO/-��?<.��. _ */
	$"2008 6608 3F3C 0001 A9C8 A9F4 4E5E 4E75"            /*  .f.?<..�ȩ�N^Nu */
	$"8D48 4156 4552 4553 4F55 5243 4553 0000"            /* �HAVERESOURCES.. */
	$"4E56 FF00 48E7 1838 266E 0008 244B 594F"            /* NV�.H�.8&n..$KYO */
	$"2F2D FFDC 3F3C 0001 A9A0 205F 2848 200C"            /* /-��?<..�� _(H . */
	$"6654 24BC 0000 2000 426A 0004 41ED FFE0"            /* fT$�.. .Bj..A��� */
	$"2808 2044 7000 1010 5240 48C0 2044 43EA"            /* (. Dp...R@H� DC� */
	$"0006 A22E 41ED FFE6 2808 2044 7000 1010"            /* ..�.A���(. Dp... */
	$"5240 48C0 2044 43EA 0016 A22E 41ED FFF6"            /* R@H� DC�..�.A��� */
	$"2808 2044 7000 1010 5240 48C0 2044 43EA"            /* (. Dp...R@H� DC� */
	$"0116 A22E 6052 2F14 2F0B 4878 0156 201F"            /* ..�.`R/./.Hx.V . */
	$"225F 205F A22E 7000 102A 0006 48C0 204A"            /* "_ _�.p..*..H� J */
	$"5C88 2208 928B D294 D280 5281 2041 4850"            /* \�".��ҔҀR� AHP */
	$"486A 0016 4878 0100 201F 225F 205F A22E"            /* Hj..Hx.. ."_ _�. */
	$"7000 102A 0006 48C0 7210 B081 6D06 157C"            /* p..*..H�r.��m..| */
	$"000F 0006 2F0C A9A3 554F 486A 0006 486A"            /* ..../.��UOHj..Hj */
	$"0016 4EB9 0000 CA30 301F 3600 6002 5343"            /* ..N�..�00.6.`.SC */
	$"4A43 6F12 204B 41E8 0016 7000 1030 3000"            /* JCo. KA�..p..00. */
	$"0C40 0020 66E8 5343 0C43 0001 6C04 363C"            /* .@. f�SC.C..l.6< */
	$"00FF 486E FF00 486B 0016 3F3C 0001 3F03"            /* .�Hn�.Hk..?<..?. */
	$"4EB9 0000 C992 41EE FF00 2808 2044 43EA"            /* N�..ɒA��.(. DC� */
	$"0116 7040 4EBA 0758 584F 4CDF 1C18 4E5E"            /* ..p@N�.XXOL�..N^ */
	$"2E9F 4E75 8A47 4554 5645 5253 494F 4E00"            /* .�Nu�GETVERSION. */
	$"0000 23FC 0000 C350 0000 0048 42B9 0000"            /* ..#�..�P...HB�.. */
	$"004C 4239 0000 0050 13FC 0001 0000 0051"            /* .LB9...P.�.....Q */
	$"4279 0000 0052 42B9 0000 0054 42B9 0000"            /* By...RB�...TB�.. */
	$"0058 13FC 0001 0000 005C 42B9 0000 005E"            /* .X.�.....\B�...^ */
	$"42B9 0000 0062 4E75 4FEF FFF6 2EAF 000E"            /* B�...bNuO���.�.. */
	$"2F6F 0012 0004 3F6F 0016 0008 4857 3F3C"            /* /o....?o....HW?< */
	$"0016 A9EB 4857 486F 0004 3F3C 2810 A9EB"            /* ..��HWHo..?<(.�� */
	$"2017 4FEF 000A 4E75 2F03 262F 0008 4A83"            /*  .O�..Nu/.&/..J� */
	$"6D04 2003 6004 2003 4480 2F40 000C 261F"            /* m. .`. .D�/@..&. */
	$"2E9F 4E75 48E7 071A 266F 001C 226F 0024"            /* .�NuH�..&o.."o.$ */
	$"2A2F 002C 2C6F 0030 286F 0034 2C13 2E11"            /* *..,,o.0(o.4,... */
	$"206F 0020 2210 206F 0028 2410 7002 B280"            /*  o. ". o.($.p.�� */
	$"6706 7004 B280 6658 7002 B480 6706 7004"            /* g.p.��fXp.��g.p. */
	$"B480 664C 7002 BA80 661A 7002 B280 660A"            /* ��fLp.��f.p.��f. */
	$"2047 38A8 0002 228C 6026 2046 38A8 0002"            /*  G8�.."�`& F8�.. */
	$"268C 601C 7004 B280 660C 2047 7000 3010"            /* &�`.p.��f. Gp.0. */
	$"2C80 228E 600A 2046 7000 3010 2C80 268E"            /* ,�"�`. Fp.0.,�&� */
	$"206F 0028 2085 206F 0020 2085 6000 0108"            /*  o.( � o.  �`... */
	$"7002 B280 6706 7004 B280 660C 7002 B480"            /* p.��g.p.��f.p.�� */
	$"6706 7004 B480 661E 7002 B480 6708 7004"            /* g.p.��f.p.��g.p. */
	$"B480 6600 00E2 7002 B280 6700 00DA 7004"            /* ��f..�p.��g..�p. */
	$"B280 6700 00D2 7002 BA80 6648 7002 B280"            /* ��g..�p.��fHp.�� */
	$"661A 7001 B480 660C 2047 1010 4880 3880"            /* f.p.��f. G..H�8� */
	$"228C 6020 2002 5580 D191 6018 7001 B280"            /* "�`  .U�ё`.p.�� */
	$"660C 2046 1010 4880 3880 268C 6006 2001"            /* f. F..H�8�&�`. . */
	$"5580 D193 206F 0028 2085 206F 0020 2085"            /* U�ѓ o.( � o.  � */
	$"6000 0084 7004 BA80 664A 7004 B280 661C"            /* `..�p.��fJp.��f. */
	$"7001 B480 660E 2047 1010 4880 48C0 2C80"            /* p.��f. G..H�H�,� */
	$"228E 6022 2002 5980 D191 601A 7001 B280"            /* "�`" .Y�ё`.p.�� */
	$"660E 2046 1010 4880 48C0 2C80 268E 6006"            /* f. F..H�H�,�&�`. */
	$"2001 5980 D193 206F 0028 2085 206F 0020"            /*  .Y�ѓ o.( � o.  */
	$"2085 6032 7001 BA80 662C 7002 B280 6604"            /*  �`2p.��f,p.��f. */
	$"5293 6016 7004 B280 6604 5693 600C 7002"            /* R�`.p.��f.V�`.p. */
	$"B480 6604 5291 6002 5691 206F 0028 2085"            /* ��f.R�`.V� o.( � */
	$"206F 0020 2085 4CDF 58E0 4E75 48E7 1C20"            /*  o.  �L�X�NuH�.  */
	$"4FEF FFF6 246F 0022 262F 001E 202F 002E"            /* O���$o."&/.. /.. */
	$"B0AF 0026 6724 486F 0008 486F 0008 2F03"            /* ��.&g$Ho..Ho../. */
	$"486F 0032 486F 003A 486F 0042 486F 004A"            /* Ho.2Ho.:Ho.BHo.J */
	$"4EB9 0000 D9B4 4FEF 001C 2803 5384 262F"            /* N�..ٴO�..(.S�&/ */
	$"002E 5383 2A2F 0026 5385 6020 206F 002A"            /* ..S�*..&S�`  o.* */
	$"1030 5800 4880 206F 0032 1230 3800 4881"            /* .0X.H� o.2.08.H� */
	$"8240 1581 4800 5383 5385 5384 4A83 6D36"            /* �@.�H.S�S�S�J�m6 */
	$"4A85 6D32 4A83 6CD4 602C 4A83 6D10 2003"            /* J�m2J�l�`,J�m. . */
	$"5383 206F 0032 1EB0 0800 1017 6012 2005"            /* S� o.2.�....`. . */
	$"5385 206F 002A 1F70 0800 0002 102F 0002"            /* S� o.*.p...../.. */
	$"1580 4800 5384 4A84 6CD0 2F4A 0036 4FEF"            /* .�H.S�J�l�/J.6O� */
	$"000A 4CDF 0438 205F 4FEF 0018 4ED0 48E7"            /* ..L�.8 _O�..N�H� */
	$"1E20 5D4F 246F 0022 2C2F 001E 202F 002E"            /* . ]O$o.",/.. /.. */
	$"B0AF 0026 6724 486F 0004 486F 0004 2F06"            /* ��.&g$Ho..Ho../. */
	$"486F 0032 486F 003A 486F 0042 486F 004A"            /* Ho.2Ho.:Ho.BHo.J */
	$"4EB9 0000 D9B4 4FEF 001C 2806 5384 262F"            /* N�..ٴO�..(.S�&/ */
	$"002E 5383 2A2F 0026 5385 6028 206F 002A"            /* ..S�*..&S�`( o.* */
	$"1030 5800 4880 206F 0032 1230 3800 4881"            /* .0X.H� o.2.08.H� */
	$"C240 1030 3800 4880 B340 1580 4800 5383"            /* �@.08.H��@.�H.S� */
	$"5385 5384 4A83 6D08 4A85 6D04 4A83 6CCC"            /* S�S�J�m.J�m.J�l� */
	$"BCAF 0026 5EC0 4400 4880 1A00 601C 4A05"            /* ��.&^�D.H�..`.J. */
	$"6604 7000 600E 2003 5383 206F 0032 1030"            /* f.p.`. .S� o.2.0 */
	$"0800 4880 1580 4800 5384 4A84 6CE0 2F4A"            /* ..H�.�H.S�J�l�/J */
	$"0036 5C4F 4CDF 0478 205F 4FEF 0018 4ED0"            /* .6\OL�.x _O�..N� */
	$"48E7 1C00 262F 0018 2A2F 0010 2803 E684"            /* H�..&/..*...(.� */
	$"4A83 6D08 2005 E788 B680 6F06 422F 001C"            /* J�m. .父�o.B/.. */
	$"6026 2005 5380 9084 206F 0014 1030 0800"            /* `& .S��� o...0.. */
	$"4880 7207 C283 7401 E36A C440 4A42 56C2"            /* H�r.t.�j�@JBV� */
	$"4402 4882 1F42 001C 4CDF 0038 205F 4FEF"            /* D.H�.B..L�.8 _O� */
	$"000C 4ED0 48E7 1C00 206F 0018 2A2F 0014"            /* ..N�H�.. o..*... */
	$"282F 0010 7600 6006 4230 3800 5283 B684"            /* (/..v.`.B08.R��� */
	$"6DF6 7007 C085 7201 E169 2005 E680 2404"            /* m�p.��r.�i .�$. */
	$"5382 9480 1181 2800 4CDF 0038 205F 4FEF"            /* S���.�(.L�.8 _O� */
	$"000C 4ED0 48E7 1E30 266F 0022 246F 001E"            /* ..N�H�.0&o."$o.. */
	$"3C2F 001C 7800 181B 7A00 1A1A 4A46 660C"            /* </..x...z...JFf. */
	$"B845 6708 422F 0026 6000 00E8 0C46 0001"            /* �Eg.B/.&`..�.F.. */
	$"660E B845 670A 1F7C 0001 0026 6000 00D4"            /* f.�Eg..|...&`..� */
	$"B845 6E04 3004 6002 3005 3600 6006 528B"            /* �En.0.`.0.6.`.R� */
	$"528A 5343 4A43 6F06 1013 B012 67F0 3006"            /* R�SCJCo...�.g�0. */
	$"0C40 0005 6200 009C D040 303B 0006 4EFB"            /* .@..b..��@0;..N� */
	$"0002 000C 001C 0028 0042 005C 0076 4A43"            /* .......(.B.\.vJC */
	$"6600 008C 1F7C 0001 0026 6000 0086 4A43"            /* f..�.|...&`..�JC */
	$"677C 1F7C 0001 0026 6078 4A43 6604 B845"            /* g|.|...&`xJCf.�E */
	$"6D0A 4A43 6768 1013 B012 6462 1F7C 0001"            /* m.JCgh..�.db.|.. */
	$"0026 605E 4A43 6604 B845 6F0A 4A43 674E"            /* .&`^JCf.�Eo.JCgN */
	$"1013 B012 6448 1F7C 0001 0026 6044 4A43"            /* ..�.dH.|...&`DJC */
	$"6604 B845 6E0A 4A43 6734 1013 B012 632E"            /* f.�En.JCg4..�.c. */
	$"1F7C 0001 0026 602A 4A43 6604 B845 6C0A"            /* .|...&`*JCf.�El. */
	$"4A43 671A 1013 B012 6314 1F7C 0001 0026"            /* JCg...�.c..|...& */
	$"6010 3F3C 0004 4EB9 0000 E074 544F 422F"            /* `.?<..N�..�tTOB/ */
	$"0026 4CDF 0C78 205F 4FEF 000A 4ED0 48E7"            /* .&L�.x _O�..N�H� */
	$"183A 7600 49EF 001C 548C 588C 266C FFFC"            /* .:v.I�..T�X�&l�� */
	$"0C6F 0001 001C 6C04 4213 6052 6048 588C"            /* .o....l.B.`R`HX� */
	$"246C FFFC 2C4A 528E 3003 5240 204B D0C0"            /* $l��,JR�0.R@ K�� */
	$"2808 7000 1012 D043 0C40 00FF 6F14 204E"            /* (.p...�C.@.�o. N */
	$"2244 303C 00FF 9043 48C0 A22E 363C 00FF"            /* "D0<.��CH��.6<.� */
	$"601A 204E 2244 7000 1012 A22E 7000 1012"            /* `. N"Dp...�.p... */
	$"D640 536F 001C 4A6F 001C 66B2 1683 4CDF"            /* �@So..Jo..f�.�L� */
	$"5C18 4E75 48E7 1E38 246F 0024 362F 0022"            /* \.NuH�.8$o.$6/." */
	$"382F 0020 4A44 6F0C 4A43 6F08 7000 1012"            /* 8/. JDo.JCo.p... */
	$"B640 6F04 6000 008C 7A00 1A12 B645 6E10"            /* �@o.`..�z...�En. */
	$"0C43 0001 6C0C 3003 D044 0C40 0001 6E02"            /* .C..l.0.�D.@..n. */
	$"6070 0C43 0001 6C34 3005 9043 5240 B840"            /* `p.C..l40.�CR@�@ */
	$"6D04 4212 605C 3005 9043 9044 5240 1480"            /* m.B.`\0.�C�DR@.� */
	$"3003 D044 264A D6C0 284A 528C 7C00 1C12"            /* 0.�D&J��(JR�|... */
	$"3046 2008 204B 224C A22E 6036 3005 9043"            /* 0F . K"L�.`60.�C */
	$"5240 B840 6D08 3003 5340 1480 6024 3005"            /* R@�@m.0.S@.�`$0. */
	$"9044 1480 3003 D044 264A D6C0 284A D8C3"            /* �D.�0.�D&J��(J�� */
	$"3C05 9C44 9C43 5246 3046 2008 204B 224C"            /* <.�D�CRF0F . K"L */
	$"A22E 4CDF 1C78 205F 504F 4ED0 48E7 1E3A"            /* �.L�.x _PON�H�.: */
	$"2C6F 002A 246F 0026 362F 0024 7C00 1C12"            /* ,o.*$o.&6/.$|... */
	$"7800 1816 4A44 6700 008A 0C43 0001 6D04"            /* x...JDg..�.C..m. */
	$"4A46 6602 7601 3006 5240 B640 6F04 3606"            /* JFf.v.0.R@�@o.6. */
	$"5243 264A D6C3 3003 D044 284A D8C0 3004"            /* RC&J��0.�D(J��0. */
	$"D046 0C40 00FF 6E10 3003 5340 3A06 9A40"            /* �F.@.�n.0.S@:.�@ */
	$"3006 D044 1480 6010 3003 D044 5340 3A3C"            /* 0.�D.�`.0.�DS@:< */
	$"00FF 9A40 14BC 00FF 4A45 6F0A 3045 2008"            /* .��@.�.�JEo.0E . */
	$"204B 224C A22E 264E 528B 284A D8C3 3003"            /*  K"L�.&NR�(J��0. */
	$"D044 5340 0C40 00FF 6E04 3A04 6006 3A3C"            /* �DS@.@.�n.:.`.:< */
	$"0100 9A43 4A45 6F0A 3045 2008 204B 224C"            /* ..�CJEo.0E . K"L */
	$"A22E 4CDF 5C78 205F 4FEF 000A 4ED0 5380"            /* �.L�\x _O�..N�S� */
	$"B010 6406 12C0 5288 6004 1010 12D8 51C8"            /* �.d..�R�`....�Q� */
	$"FFFC 4E75 4FEF FF60 302F 00A4 0C40 0004"            /* ��NuO��`0/.�.@.. */
	$"6200 02CA D040 303B 0006 4EFB 0002 000A"            /* b..��@0;..N�.... */
	$"0070 00D6 013C 01FA 2EBC 2048 6561 2F7C"            /* .p.�.<.�.� Hea/| */
	$"7020 4368 0004 2F7C 6563 6B20 0008 2F7C"            /* p Ch../|eck ../| */
	$"6661 696C 000C 2F7C 6564 2E20 0010 2F7C"            /* fail../|ed. ../| */
	$"5468 6520 0014 2F7C 5061 7363 0018 2F7C"            /* The ../|Pasc../| */
	$"616C 2068 001C 2F7C 6561 7020 0020 2F7C"            /* al h../|eap . /| */
	$"6973 2063 0024 2F7C 6F72 7275 0028 2F7C"            /* is c.$/|orru.(/| */
	$"7074 2E20 002C 1EBC 002F 6000 0254 2EBC"            /* pt. .,.�./`..T.� */
	$"2044 6572 2F7C 6566 6572 0004 2F7C 656E"            /*  Der/|efer../|en */
	$"6365 0008 2F7C 6420 6120 000C 2F7C 4E49"            /* ce../|d a ../|NI */
	$"4C20 0010 2F7C 506F 696E 0014 2F7C 7465"            /* L ../|Poin../|te */
	$"722E 0018 2F7C 2056 616C 001C 2F7C 6964"            /* r.../| Val../|id */
	$"6174 0020 2F7C 6520 6661 0024 2F7C 696C"            /* at. /|e fa.$/|il */
	$"6564 0028 2F7C 2E20 2020 002C 1EBC 002D"            /* ed.(/|.   .,.�.- */
	$"6000 01EE 2EBC 2044 6572 2F7C 6566 6572"            /* `..�.� Der/|efer */
	$"0004 2F7C 656E 6365 0008 2F7C 6420 6120"            /* ../|ence../|d a  */
	$"000C 2F7C 6261 6420 0010 2F7C 506F 696E"            /* ../|bad ../|Poin */
	$"0014 2F7C 7465 722E 0018 2F7C 2056 616C"            /* ../|ter.../| Val */
	$"001C 2F7C 6964 6174 0020 2F7C 6520 6661"            /* ../|idat. /|e fa */
	$"0024 2F7C 696C 6564 0028 2F7C 2E20 2020"            /* .$/|iled.(/|.    */
	$"002C 1EBC 002D 6000 0188 2EBC 2053 6574"            /* .,.�.-`..�.� Set */
	$"2F7C 204F 7065 0004 2F7C 7261 7469 0008"            /* /| Ope../|rati.. */
	$"2F7C 6F6E 2066 000C 2F7C 6169 6C65 0010"            /* /|on f../|aile.. */
	$"2F7C 642E 2049 0014 2F7C 6E74 6572 0018"            /* /|d. I../|nter.. */
	$"2F7C 6E61 6C20 001C 2F7C 636F 6D70 0020"            /* /|nal ../|comp.  */
	$"2F7C 696C 6572 0024 2F7C 2065 7272 0028"            /* /|iler.$/| err.( */
	$"2F7C 6F72 2E20 002C 2F7C 506C 6561 0030"            /* /|or. .,/|Plea.0 */
	$"2F7C 7365 2072 0034 2F7C 6570 6F72 0038"            /* /|se r.4/|epor.8 */
	$"2F7C 7420 7468 003C 2F7C 6973 2070 0040"            /* /|t th.</|is p.@ */
	$"2F7C 726F 626C 0044 2F7C 656D 2074 0048"            /* /|robl.D/|em t.H */
	$"2F7C 6F20 4D65 004C 2F7C 7472 6F77 0050"            /* /|o Me.L/|trow.P */
	$"2F7C 6572 6B73 0054 2F7C 2E20 2020 0058"            /* /|erks.T/|.   .X */
	$"1EBC 0059 6000 00CA 2EBC 2053 7472 2F7C"            /* .�.Y`..�.� Str/| */
	$"696E 6720 0004 2F7C 436F 6D70 0008 2F7C"            /* ing ../|Comp../| */
	$"6172 6973 000C 2F7C 6F6E 2066 0010 2F7C"            /* aris../|on f../| */
	$"6169 6C65 0014 2F7C 642E 2049 0018 2F7C"            /* aile../|d. I../| */
	$"6E74 6572 001C 2F7C 6E61 6C20 0020 2F7C"            /* nter../|nal . /| */
	$"636F 6D70 0024 2F7C 696C 6572 0028 2F7C"            /* comp.$/|iler.(/| */
	$"2065 7272 002C 2F7C 6F72 2E20 0030 2F7C"            /*  err.,/|or. .0/| */
	$"506C 6561 0034 2F7C 7365 2072 0038 2F7C"            /* Plea.4/|se r.8/| */
	$"6570 6F72 003C 2F7C 7420 7468 0040 2F7C"            /* epor.</|t th.@/| */
	$"6973 2070 0044 2F7C 726F 626C 0048 2F7C"            /* is p.D/|robl.H/| */
	$"656D 2074 004C 2F7C 6F20 4D65 0050 2F7C"            /* em t.L/|o Me.P/| */
	$"7472 6F77 0054 2F7C 6572 6B73 0058 2F7C"            /* trow.T/|erks.X/| */
	$"2E20 2020 005C 1EBC 005D 6004 A9FF 6004"            /* .   .\.�.]`.��`. */
	$"4857 ABFF 4FEF 00A0 4E75 48E7 0610 266F"            /* HW��O�.�NuH�..&o */
	$"0010 242F 0014 200B 676A 2053 2250 6060"            /* ..$/.. .gj S"P`` */
	$"7000 3029 000C 2200 B480 6D14 7000 3029"            /* p.0)..".��m.p.0) */
	$"000A 9082 E588 2049 D1C0 5088 5088 6046"            /* ..��� I��P�P�`F */
	$"7A00 3A29 000E 6736 3669 000A 200B 9081"            /* z.:)..g66i.. .�� */
	$"5280 E588 2649 D7C0 508B 508B 7C00 3C29"            /* R��&I��P�P�|.<) */
	$"000E 7A00 6014 2213 B481 6606 204B 5888"            /* ..z.`.".��f. KX� */
	$"6014 B282 6D08 5285 508B BA86 6DE8 2251"            /* `.��m.R�P���m�"Q */
	$"2009 669C 91C8 4CDF 0860 4E75 202F 0008"            /*  .f���L�.`Nu /.. */
	$"A322 226F 000C 2288 2049 2050 2050 20AF"            /* �""o.."� I P P � */
	$"0004 205F 4FEF 000C 4ED0 206F 0004 A023"            /* .. _O�..N� o..�# */
	$"2E9F 4E75 4A78 028E 6B22 303C 0090 A346"            /* .�NuJx.�k"0<.��F */
	$"2248 303C 009F A746 B3C8 6710 225F 205F"            /* "H0<.��F��g."_ _ */
	$"301F 2F09 A090 3F40 0004 4E75 206F 0004"            /* 0./.��?@..Nu o.. */
	$"303C 0001 2248 6006 0313 0B02 0100 303C"            /* 0<.."H`.......0< */
	$"0010 E240 5340 4258 51C8 FFFC 32BC 0002"            /* ..�@S@BXQ���2�.. */
	$"2078 02AE 337C FFFE 0002 0C28 00FF 0009"            /*  x.�3|��...(.�.. */
	$"6742 4A28 0008 6E20 337C FFFF 0002 4A78"            /* gBJ(..n 3|��..Jx */
	$"028E 6B30 337C 0001 0002 4A78 0B22 6A24"            /* .�k03|....Jx."j$ */
	$"337C 0002 0002 601C 4269 0002 0C28 0002"            /* 3|....`.Bi...(.. */
	$"0008 6E10 6708 337C 0004 0002 6006 337C"            /* ..n.g.3|....`.3| */
	$"0003 0002 4269 0004 0C38 0002 012F 6E0A"            /* ....Bi...8.../n. */
	$"1038 012F 5240 1340 0007 4A78 028E 6B0E"            /* .8./R@.@..Jx.�k. */
	$"0838 0004 0B22 6706 137C 0001 0008 0C78"            /* .8..."g..|.....x */
	$"3FFF 028E 6206 137C 0001 0009 1038 021E"            /* ?�.�b..|.....8.. */
	$"41FA FF5B 323C 0004 B020 57C9 FFFC 5241"            /* A��[2<..� W���RA */
	$"3341 000A 4A38 0291 6B18 1238 01FB 0201"            /* 3A..J8.�k..8.�.. */
	$"000F 0C01 0001 660A 2078 02DC 1368 0007"            /* ......f. x.�.h.. */
	$"000D 3378 0210 000E 4A78 03F6 6D44 4269"            /* ..3x....Jx.�mDBi */
	$"000E 323C 003C 4267 51C9 FFFC 204F 3178"            /* ..2<.<BgQ��� O1x */
	$"0A58 0018 7008 A260 6624 3168 0034 0016"            /* .X..p.�`f$1h.4.. */
	$"A207 661A 2168 005A 0030 217C 4552 494B"            /* �.f.!h.Z.0!|ERIK */
	$"001C 7001 A260 6606 3368 0016 000E 4FEF"            /* ..p.�`f.3h....O� */
	$"007A 2049 225F 5C4F 3EBC EA84 4ED1 4E56"            /* .z I"_\O>��N�NV */
	$"0000 203C 0000 A89F A746 2F08 203C 0000"            /* .. <..���F/. <.. */
	$"A0AD A346 B1DF 670E 202E 000C A1AD 226E"            /* ���F��g. ...��"n */
	$"0008 2288 6026 41FA 0036 303C EA51 222E"            /* .."�`&A�.60<�Q". */
	$"000C B298 6706 4A98 6712 60F6 43FA 0020"            /* ..��g.J�g.`�C�.  */
	$"D3D0 4ED1 226E 0008 2280 4240 3D40 0010"            /* ��N�"n.."�B@=@.. */
	$"4E5E 205F 508F 4ED0 303C EA52 60EE 7665"            /* N^ _P�N�0<�R`�ve */
	$"7273 0000 0060 6D61 6368 0000 0064 7379"            /* rs...`mach...dsy */
	$"7376 0000 0088 7072 6F63 0000 0092 6670"            /* sv...�proc...�fp */
	$"7520 0000 009E 7164 2020 0000 00E8 6B62"            /* u ...�qd  ...�kb */
	$"6420 0000 011A 6174 6C6B 0000 0142 6D6D"            /* d ....atlk...Bmm */
	$"7520 0000 0164 7261 6D20 0000 0188 6C72"            /* u ...dram ...�lr */
	$"616D 0000 0188 0000 0000 0000 0000 7001"            /* am...�........p. */
	$"6082 2278 02AE 7004 0C69 0075 0008 6712"            /* `�"x.�p..i.u..g. */
	$"0C69 0276 0008 6604 5240 6006 1038 0CB3"            /* .i.v..f.R@`..8.� */
	$"5C80 6000 FF60 7000 3038 015A 6000 FF56"            /* \�`.�`p.08.Z`.�V */
	$"7000 1038 012F 5240 6000 FF4A 0C38 0004"            /* p..8./R@`.�J.8.. */
	$"012F 6738 0838 0004 0B22 6734 204F F280"            /* ./g8.8..."g4 O� */
	$"0000 F327 3017 2E48 0C40 1F18 6716 0C40"            /* ..�'0..H.@..g..@ */
	$"3F18 6710 0C40 3F38 670E 0C40 1F38 6708"            /* ?.g..@?8g..@.8g. */
	$"7000 600E 7001 600A 7002 6006 7003 6002"            /* p.`.p.`.p.`.p.`. */
	$"7000 6000 FF00 0C78 3FFF 028E 6E1C 303C"            /* p.`.�..x?�.�n.0< */
	$"A89F A746 2408 203C 0000 AB03 A746 203C"            /* ���F$. <..�.�F < */
	$"0000 0100 B488 6606 600A 7000 6006 203C"            /* ....��f.`.p.`. < */
	$"0000 0200 6000 FECE 1038 021E 41FA 0016"            /* ....`.��.8..A�.. */
	$"2248 1218 6700 FED2 B200 66F6 91C9 2008"            /* "H..g.�Ҳ.f��� . */
	$"6000 FEB2 0313 0B02 0106 0704 0508 0900"            /* `.��............ */
	$"7000 4A38 0291 6B16 1238 01FB 0201 000F"            /* p.J8.�k..8.�.... */
	$"0C01 0001 6608 2078 02DC 1028 0007 6000"            /* ....f. x.�.(..`. */
	$"FE84 0C38 0002 012F 6D16 7000 1038 0CB1"            /* ��.8.../m.p..8.� */
	$"0C00 0001 670C 0C00 0003 6D04 5340 6002"            /* ....g.....m.S@`. */
	$"7000 6000 FE60 303C A89F A746 2408 203C"            /* p.`.�`0<���F$. < */
	$"0000 A88F A746 2038 0108 B488 670A 598F"            /* ..���F 8..��g.Y� */
	$"3F3C 0016 A88F 201F 6000 FE3A 225F 201F"            /* ?<..�� .`.�:"_ . */
	$"A11E 2E88 4ED1 225F 201F A122 2E88 4ED1"            /* �..�N�"_ .�".�N� */
	$"225F 205F A025 2E80 6A02 4297 4ED1 225F"            /* "_ _�%.�j.B�N�"_ */
	$"201F 205F A024 4ED1 221F 201F 225F 205F"            /*  . _�$N�". ."_ _ */
	$"A02E 2241 4ED1 225F 121F 301F 4A01 6704"            /* �."AN�"_..0.J.g. */
	$"A746 6002 A346 2E88 4ED1 225F 101F 205F"            /* �F`.�F.�N�"_.. _ */
	$"6604 A007 6002 A407 3E80 4ED1 4E56 FFCE"            /* f.�.`.�.>�N�NV�� */
	$"204F 316E 0008 0018 A001 3D40 000A 4E5E"            /*  O1n....�.=@..N^ */
	$"205F 548F 4ED0 51C1 6002 50C1 4E56 FFCE"            /*  _T�N�Q�`.P�NV�� */
	$"204F 216E 0008 0020 316E 0010 0018 226E"            /*  O!n... 1n...."n */
	$"000C 2151 0024 4268 002C 42A8 002E 4A01"            /* ..!Q.$Bh.,B�..J. */
	$"6604 A002 6002 A003 3D40 0012 226E 000C"            /* f.�.`.�.=@.."n.. */
	$"22A8 0028 4E5E 225F 4FEF 000A 4ED1 4E56"            /* "�.(N^"_O�..N�NV */
	$"FFC0 204F 216E 000A 0012 316E 0008 0016"            /* �� O!n....1n.... */
	$"A015 3D40 000E 4E5E 225F 5C8F 4ED1 225F"            /* �.=@..N^"_\�N�"_ */
	$"205F A069 1E80 4ED1 225F 101F 205F A06A"            /*  _�i.�N�"_.. _�j */
	$"4ED1 343C 000C 226F 0004 206F 0008 4240"            /* N�4<.."o.. o..B@ */
	$"4241 1018 1219 2F48 0008 2F49 0004 205F"            /* BA..../H../I.. _ */
	$"3F00 3F01 3F02 2F08 ADED 206F 0008 3F3C"            /* ?.?.?./.�� o..?< */
	$"0001 A9EE 206F 0004 2080 4EFA 000E 206F"            /* ..�� o.. �N�.. o */
	$"0004 202F 0008 4267 A9EE 205F 504F 4ED0"            /* .. /..Bg�� _PON� */
	$"221F 201F 225F 205F 2F01 A9E2 3F40 0004"            /* ". ."_ _/.��?@.. */
	$"4E75 6118 A9DB 2E9F 4E75 6110 A9D6 60F6"            /* Nua.��.�Nua.��`� */
	$"610A A9D5 60F0 6104 A9D7 60EA 206F 0008"            /* a.��`�a.��`� o.. */
	$"4A68 00A4 6B08 225F 2F28 00A0 4ED1 4CDF"            /* Jh.�k."_/(.�N�L� */
	$"0301 4ED0 42A7 594F 42A7 2F3C 5445 5854"            /* ..N�B�YOB�/<TEXT */
	$"486F 000C A9FD 201F 584F 6B28 0C80 0000"            /* Ho..�� .XOk(.�.. */
	$"7D01 6506 303C FE0B 601A 42A7 594F 2F38"            /* }.e.0<�.`.B�YO/8 */
	$"0AB4 2F3C 5445 5854 486F 000C A9FD 201F"            /* .�/<TEXTHo..�� . */
	$"584F 6A06 4278 0AB0 600A 426F 0004 31C0"            /* XOj.Bx.�`.Bo..1� */
	$"0AB0 7000 3F40 0004 4E75 2078 0AB4 A029"            /* .�p.?@..Nu x.��) */
	$"594F 3F38 0AB0 4267 2F3C 5445 5854 2F10"            /* YO?8.�Bg/<TEXT/. */
	$"A9FE 544F 3F5F 0004 2078 0AB4 A02A 4E75"            /* ��TO?_.. x.��*Nu */
	$"4E56 0000 594F 2F3C 5354 5223 3F2E 000A"            /* NV..YO/<STR#?... */
	$"A9A0 226E 000C 4211 201F 6722 2040 2050"            /* ��"n..B. .g" @ P */
	$"3018 322E 0008 6716 B240 6212 7000 5341"            /* 0.2...g.�@b.p.SA */
	$"6706 1018 D1C0 60F6 1010 5240 A02E 4E5E"            /* g...��`�..R@�.N^ */
	$"205F 508F 4ED0 4E56 FFCC 2F03 2D6E 0010"            /*  _P�N�NV��/.-n.. */
	$"FFDE 41EE FFCC A214 3600 206E 000C 30AE"            /* ��A��̢.6. n..0� */
	$"FFE2 206E 0008 20AE FFFC 3003 3D40 0014"            /* �� n.. ���0.=@.. */
	$"261F 4E5E 205F 4FEF 000C 4ED0 4E56 FFCC"            /* &.N^ _O�..N�NV�� */
	$"2D6E 000E FFDE 3D6E 000C FFE2 2D6E 0008"            /* -n..��=n..��-n.. */
	$"FFFC 41EE FFCC A215 3D40 0012 4E5E 205F"            /* ��A��̢.=@..N^ _ */
	$"4FEF 000A 4ED0 4E56 FF84 2F03 3D6E 0016"            /* O�..N�NV��/.=n.. */
	$"FF9A 2D6E 0012 FFB4 2D6E 000E FF96 422E"            /* ��-n..��-n..��B. */
	$"FF9E 1D6E 000C FF9F 7000 2D40 FFA0 41EE"            /* ��.n..��p.-@��A� */
	$"FF84 A200 3600 206E 0008 30AE FF9C 3003"            /* ���.6. n..0���0. */
	$"3D40 0018 261F 4E5E 205F 4FEF 0010 4ED0"            /* =@..&.N^ _O�..N� */
	$"4E56 FF84 2F03 3D6E 0016 FF9A 2D6E 0012"            /* NV��/.=n..��-n.. */
	$"FFB4 2D6E 000E FF96 422E FF9E 1D6E 000C"            /* ��-n..��B.��.n.. */
	$"FF9F 7000 2D40 FFA0 41EE FF84 A20A 3600"            /* ��p.-@��A����.6. */
	$"206E 0008 30AE FF9C 3003 3D40 0018 261F"            /*  n..0���0.=@..&. */
	$"4E5E 205F 4FEF 0010 4ED0 4E56 FF84 48E7"            /* N^ _O�..N�NV��H� */
	$"1800 3D6E 0018 FF9A 262E 0014 2D43 FFB4"            /* ..=n..��&...-C�� */
	$"2D6E 0010 FF96 422E FF9E 41EE FF84 A208"            /* -n..��B.��A����. */
	$"3800 6628 4240 3D40 FFA0 41EE FF84 A20C"            /* 8.f(B@=@��A����. */
	$"3800 6618 2D6E 000C FFA8 2D6E 0008 FFA4"            /* 8.f.-n..��-n..�� */
	$"2D43 FFB4 41EE FF84 A20D 3800 3004 3D40"            /* -C��A����.8.0.=@ */
	$"001A 4CDF 0018 4E5E 205F 4FEF 0012 4ED0"            /* ..L�..N^ _O�..N� */
	$"4E56 FF84 3D6E 0010 FF9A 2D6E 000C FFB4"            /* NV��=n..��-n..�� */
	$"2D6E 0008 FF96 422E FF9E 41EE FF84 A209"            /* -n..��B.��A����. */
	$"3D40 0012 4E5E 205F 4FEF 000A 4ED0 4E56"            /* =@..N^ _O�..N�NV */
	$"FF84 2F03 3D6E 0014 FF9A 2D6E 0010 FFB4"            /* ��/.=n..��-n..�� */
	$"2D6E 000C FF96 422E FF9E 4240 3D40 FFA0"            /* -n..��B.��B@=@�� */
	$"41EE FF84 A20C 3600 41EE FFA4 226E 0008"            /* A����.6.A���"n.. */
	$"22D8 22D8 22D8 22D8 3003 3D40 0016 261F"            /* "�"�"�"�0.=@..&. */
	$"4E5E 205F 4FEF 000E 4ED0 4E56 FFCC 2F03"            /* N^ _O�..N�NV��/. */
	$"3D6E 0014 FFE2 4240 3D40 FFE6 7000 2D40"            /* =n..��B@=@��p.-@ */
	$"FFDE 41EE FFCC 7007 A260 3600 206E 0010"            /* ��A���p.�`6. n.. */
	$"30AE FFEC 206E 000C 20AE FFFC 206E 0008"            /* 0��� n.. ��� n.. */
	$"20AE FFE8 3003 3D40 0016 261F 4E5E 205F"            /*  ���0.=@..&.N^ _ */
	$"4FEF 000E 4ED0 4E56 FFEC 48E7 1E30 266E"            /* O�..N�NV��H�.0&n */
	$"000A 282E 000E 3A2E 0012 207C 0000 015A"            /* ..(...:... |...Z */
	$"3010 0C40 0600 6D36 303C A89F A146 2448"            /* 0..@..m60<���F$H */
	$"594F 3F3C A81A 7001 1F00 4EBA FB9A 225F"            /* YO?<�.p...N���"_ */
	$"204A B1C9 6718 554F 3F05 2F04 2F0B 1F2E"            /*  J��g.UO?././... */
	$"0008 A81A 301F 3D40 0014 4EFA 00C8 7CFF"            /* ..�.0.=@..N�.�|� */
	$"554F 3F05 2F04 2F0B 1F2E 0008 486E FFEC"            /* UO?././.....Hn�� */
	$"4EBA FE1E 361F 660C 554F 3F2E FFEC 4EBA"            /* N��.6.f.UO?.��N� */
	$"FB7C 361F 4A43 6708 0C43 FFCF 6600 008A"            /* �|6.JCg..C��f..� */
	$"554F 42A7 486E FFEE 486E FFF0 4EBA FD48"            /* UOB�Hn��Hn��N��H */
	$"361F 6674 554F 3F2E FFEE 486E FFF4 486E"            /* 6.ftUO?.��Hn��Hn */
	$"FFF8 486E FFFC 4EBA FF02 361F 665A 554F"            /* ��Hn��N��.6.fZUO */
	$"42A7 3F05 2F04 4EBA FD54 361F 6618 554F"            /* B�?./.N��T6.f.UO */
	$"200B A055 2F00 4267 1F2E 0008 A9C4 3C1F"            /*  .�U/.Bg....��<. */
	$"554F A9AF 361F 0CAE 0000 0002 FFF8 6614"            /* UO��6..�....��f. */
	$"554F 42A7 3F2E FFEE 2F2E FFF0 4EBA FD1E"            /* UOB�?.��/.��N��. */
	$"381F 600E 554F 42A7 3F2E FFEE 4EBA FB50"            /* 8.`.UOB�?.��N��P */
	$"381F 4A43 6602 3604 3F03 31DF 0A60 3006"            /* 8.JCf.6.?.1�.`0. */
	$"3D40 0014 4CDF 0C78 4E5E 205F 4FEF 000C"            /* =@..L�.xN^ _O�.. */
	$"4ED0 4E56 FFEC 48E7 1C30 266E 0008 282E"            /* N�NV��H�.0&n..(. */
	$"000C 3A2E 0010 207C 0000 015A 3010 0C40"            /* ..:... |...Z0..@ */
	$"0600 6D2A 303C A89F A146 2448 594F 3F3C"            /* ..m*0<���F$HYO?< */
	$"A81B 7001 1F00 4EBA FA6E 225F 204A B1C9"            /* �.p...N��n"_ J�� */
	$"670C 3F05 2F04 2F0B A81B 6000 00C0 554F"            /* g.?././.�.`..�UO */
	$"3F05 2F04 2F0B 4227 486E FFEC 4EBA FD02"            /* ?././.B'Hn��N��. */
	$"361F 660C 554F 3F2E FFEC 4EBA FA60 361F"            /* 6.f.UO?.��N��`6. */
	$"0C43 FFD5 6612 554F 3F05 2F04 2F0B 42A7"            /* .C��f.UO?././.B� */
	$"42A7 4EBA FD26 361F 4A43 667A 554F 42A7"            /* B�N��&6.JCfzUOB� */
	$"486E FFEE 486E FFF0 4EBA FC1C 361F 6666"            /* Hn��Hn��N��.6.ff */
	$"554F 3F2E FFEE 486E FFF4 486E FFF8 486E"            /* UO?.��Hn��Hn��Hn */
	$"FFFC 4EBA FDD6 361F 664C 554F 42A7 3F05"            /* ��N���6.fLUOB�?. */
	$"2F04 4EBA FC28 361F 660A 2F0B A9B1 554F"            /* /.N��(6.f./.��UO */
	$"A9AF 361F 0CAE 0000 0002 FFF8 6614 554F"            /* ��6..�....��f.UO */
	$"42A7 3F2E FFEE 2F2E FFF0 4EBA FC00 381F"            /* B�?.��/.��N��.8. */
	$"600E 554F 42A7 3F2E FFEE 4EBA FA32 381F"            /* `.UOB�?.��N��28. */
	$"4A43 6602 3604 3F03 31DF 0A60 4CDF 0C38"            /* JCf.6.?.1�.`L�.8 */
	$"4E5E 205F 4FEF 000A 4ED0 48E7 F8E0 41EF"            /* N^ _O�..N�H���A� */
	$"0024 3010 4250 3200 E849 3401 5242 3602"            /* .$0.BP2.�I4.RB6. */
	$"E34B 224F 9EC3 244F 383C 0012 34D9 5344"            /* �K"O��$O8<..4�SD */
	$"66FA 204A 425A 5342 66FA 30C3 4242 0240"            /* f� JBZSBf�0�BB.@ */
	$"000F 01C2 3082 4CDF 071F 4E75 42A7 48E7"            /* ...�0�L�..NuB�H� */
	$"F0C0 41EF 0020 3018 D0C0 2248 3219 D2C1"            /* ��A�. 0.��"H2.�� */
	$"3600 B240 6C02 3601 E24B 6004 3420 8561"            /* 6.�@l.6.�K`.4 �a */
	$"5343 6AF8 9041 6710 6D0C D240 E248 3320"            /* SCj��Ag.m.�@�H3  */
	$"5340 6EFA 6002 D2C0 3301 206F 001C 2308"            /* S@n�`.��3. o..#. */
	$"2F49 0018 4CDF 030F 2E5F 4E75 48E7 E0E0"            /* /I..L�..._NuH��� */
	$"43EF 001C 3019 2059 3400 D442 D442 D2C2"            /* C�..0. Y4.�B�B�� */
	$"4241 5248 6020 2461 4242 141A D242 0C41"            /* BARH` $aBB..�B.A */
	$"00FF 6F0E 0441 00FF 9441 323C 00FF 6002"            /* .�o..A.��A2<.�`. */
	$"10DA 51CA FFFC 51C8 FFDE 2061 1081 3021"            /* .�Q���Q��� a.�0! */
	$"2049 D040 D040 D0C0 5448 20A1 2288 4CDF"            /*  I�@�@��TH �"�L� */
	$"0707 2E5F 4E75 4E56 FFFC 4267 2F3C 6F73"            /* ..._NuNV��Bg/<os */
	$"2020 486E FFFC 4EBA F646 4A5F 57C0 4A00"            /*   Hn��N��FJ_W�J. */
	$"6714 082E 0003 FFFF 56C1 C001 6708 7000"            /* g.....��V��.g.p. */
	$"2D40 0008 6006 70FC 2D40 0008 4E5E 4E75"            /* -@..`.p�-@..N^Nu */
	$"9549 4355 4841 5645 5052 4F43 4553 534D"            /* �ICUHAVEPROCESSM */
	$"414E 4147 4552 0000 4E56 FFBE 422E 0018"            /* ANAGER..NV��B... */
	$"42A7 4EBA FFA2 4A9F 666E 206E 000C 7000"            /* B�N���J�fn n..p. */
	$"2080 206E 000C 7000 2140 0004 703C 2D40"            /*  � n..p.!@..p<-@ */
	$"FFC4 7000 2D40 FFC8 2D6E 0008 FFFC 4267"            /* ��p.-@��-n..��Bg */
	$"2F2E 000C 3F3C 0038 A88F 4A5F 663A 4267"            /* /...?<.8��J_f:Bg */
	$"2F2E 000C 486E FFC4 3F3C 003A A88F 4A5F"            /* /...Hn��?<.:��J_ */
	$"57C0 4A00 67D8 222E FFD4 B2AE 0010 57C1"            /* W�J.g�".�Բ�..W� */
	$"C001 67CA 222E 0014 B2AE FFD8 57C1 C001"            /* �.g�"...����W��. */
	$"67BC 1D7C 0001 0018 4E5E 205F DEFC 0010"            /* g�.|....N^ _��.. */
	$"4ED0 8E49 4355 4649 4E44 5052 4F43 4553"            /* NЎICUFINDPROCES */
	$"5300 0000 4E56 FF6C 2F07 206E 000E 4A10"            /* S...NV�l/. n..J. */
	$"56C0 4A00 673E 2248 4241 1211 4242 1430"            /* V�J.g>"HBA..BB.0 */
	$"1000 723A B242 56C1 C001 6728 206E 000E"            /* ..r:�BV��.g( n.. */
	$"2F08 2F2E 000E 487A 0066 486E FF6C 3F3C"            /* /./...Hz.fHn�l?< */
	$"0002 4EBA FE78 205F 43EE FF6C 700F 20D9"            /* ..N��x _C��lp. � */
	$"51C8 FFFC 2D6E 000E FFC2 206E 000A 3D50"            /* Q���-n..�� n..=P */
	$"FFC6 3D6E 0008 FFCC 4267 486E FFB0 4267"            /* ��=n..��BgHn��Bg */
	$"4EBA F758 3E1F 6608 206E 000A 30AE FFC6"            /* N��X>.f. n..0��� */
	$"3D47 0012 2E1F 4E5E 205F DEFC 000A 4ED0"            /* =G....N^ _��..N� */
	$"8A47 4554 564F 4C49 4E46 4F00 0002 013A"            /* �GETVOLINFO....: */
	$"4E56 FFEE 48E7 0108 286E 0008 4267 3F14"            /* NV��H�..(n..Bg?. */
	$"2F2C 0002 486C 0006 486E FFEE 4EBA FA90"            /* /,..Hl..Hn��N��� */
	$"3E1F 661E 203C 4150 504C B0AE FFEE 56C0"            /* >.f. <APPL����V� */
	$"222E 000C B2AE FFF2 56C1 8001 6704 3E3C"            /* "...����V��.g.>< */
	$"EC6C 3D47 0010 4CDF 1080 4E5E 205F 504F"            /* �l=G..L�.�N^ _PO */
	$"4ED0 8B43 4F4E 4649 524D 4150 504C 0000"            /* NЋCONFIRMAPPL.. */
	$"4E56 FF92 48E7 0700 206E 0008 4228 0006"            /* NV��H�.. n..B(.. */
	$"206E 0008 5C88 2D48 FFA6 3D6E 000C FFAA"            /*  n..\�-H��=n..�� */
	$"4267 486E FF94 205F 7020 A260 3E80 3E1F"            /* BgHn�� _p �`>�>. */
	$"6656 7C01 4205 3D46 FFAE 2D6E 000E FFC8"            /* fV|.B.=F��-n..�� */
	$"4267 486E FF94 205F 7027 A260 3E80 3E1F"            /* BgHn�� _p'�`>�>. */
	$"6626 206E 0008 30AE 000C 206E 0008 216E"            /* f& n..0�.. n..!n */
	$"FFF8 0002 4267 2F2E 000E 2F2E 0008 4EBA"            /* ��..Bg/.../...N� */
	$"FF30 4A5F 57C5 4405 5246 4A47 56C0 2205"            /* �0J_W�D.RFJGV�". */
	$"8200 0241 0001 67AE 3D47 0012 4CDF 00E0"            /* �..A..g�=G..L�.� */
	$"4E5E 205F DEFC 000A 4ED0 8A53 4341 4E56"            /* N^ _��..NЊSCANV */
	$"4F4C 554D 4500 0000 4E56 FFF8 48E7 0700"            /* OLUME...NV��H�.. */
	$"4206 7A01 426E FFFA 4267 206E 0008 4868"            /* B.z.Bn��Bg n..Hh */
	$"0006 486E FFFA 3F05 4EBA FE3A 3E1F 661C"            /* ..Hn��?.N��:>.f. */
	$"4267 2F2E 000C 3F2E FFFA 2F2E 0008 4EBA"            /* Bg/...?.��/...N� */
	$"FF20 3E1F 6604 7C01 6002 4247 5245 4A47"            /* � >.f.|.`.BGREJG */
	$"56C0 2206 8200 0241 0001 67B8 1006 661C"            /* V�".�..A..g�..f. */
	$"3E3C EC6C 206E 0008 4250 206E 0008 7002"            /* ><�l n..BP n..p. */
	$"2140 0002 206E 0008 4228 0006 3D47 0010"            /* !@.. n..B(..=G.. */
	$"4CDF 00E0 4E5E 205F 504F 4ED0 9249 4355"            /* L�.�N^ _PONВICU */
	$"4649 4E44 4150 504C 4943 4154 494F 4E00"            /* FINDAPPLICATION. */
	$"0000 4E56 FFF8 2F0C 286E 0008 4267 2F2E"            /* ..NV��/.(n..Bg/. */
	$"000E 2F3C 6170 7061 486E FFF8 303C 0603"            /* ../<appaHn��0<.. */
	$"A816 301F 48C0 2D40 0012 2F2E FFFC 205F"            /* �.0.H�-@../.�� _ */
	$"A029 206E FFFC 2950 0028 397C 4C43 0006"            /* �) n��)P.(9|LC.. */
	$"7020 2940 0008 297C 0000 4800 000C 102E"            /* p )@..)|..H..... */
	$"000C 6606 066C 0200 000E 285F 4E5E 205F"            /* ..f..l....(_N^ _ */
	$"DEFC 000A 4ED0 8F50 5245 5041 5245 544F"            /* ��..NЏPREPARETO */
	$"4C41 554E 4348 0000 4E56 FFEA 48E7 0F08"            /* LAUNCH..NV��H�.. */
	$"286E 000C 4267 2F3C 7369 676E 486E 0010"            /* (n..Bg/<signHn.. */
	$"7004 2F00 486E FFF8 303C 0825 A816 301F"            /* p./.Hn��0<.%�.0. */
	$"48C0 2E00 4267 2F3C 4755 524C 2F3C 4755"            /* H�..Bg/<GURL/<GU */
	$"524C 486E FFF8 3F3C FFFF 42A7 2F2E 0008"            /* RLHn��?<��B�/... */
	$"303C 0B14 A816 301F 48C0 2C00 4A87 6602"            /* 0<..�.0.H�,.J�f. */
	$"2E06 4267 2F0C 4EBA F546 1A1F 2F0C 205F"            /* ..Bg/.N��F../. _ */
	$"A029 4267 2F2E 0008 2F3C 2D2D 2D2D 2F3C"            /* �)Bg/.../<----/< */
	$"5445 5854 2F14 42A7 2F0C 4EBA F454 303C"            /* TEXT/.B�/.N��T0< */
	$"0A0F A816 301F 48C0 2C00 2F0C 1F05 4EBA"            /* ..�.0.H�,./...N� */
	$"F518 4A87 6602 2E06 4A87 6712 4267 2F2E"            /* �.J�f...J�g.Bg/. */
	$"0008 303C 0204 A816 301F 48C0 2800 4267"            /* ..0<..�.0.H�(.Bg */
	$"486E FFF8 303C 0204 A816 301F 48C0 2800"            /* Hn��0<..�.0.H�(. */
	$"2D47 0014 4CDF 10F0 4E5E 205F DEFC 000C"            /* -G..L�.�N^ _��.. */
	$"4ED0 8F43 5245 4154 4547 5552 4C45 5645"            /* NЏCREATEGURLEVE */
	$"4E54 0000 4E56 FFC0 2F07 206E 0008 43EE"            /* NT..NV��/. n..C� */
	$"FFF8 22D8 22D8 2D6E 000C FFDC 42A7 486E"            /* ��"�"�-n..��B�Hn */
	$"FFF8 1F3C 0001 486E FFCC 4EBA FE76 2E1F"            /* ��.<..Hn��N��v.. */
	$"6612 4267 486E FFCC 205F A9F2 3E80 301F"            /* f.BgHn�� _��>�0. */
	$"48C0 2E00 7094 B087 6622 7000 302E FFDA"            /* H�..p���f"p.0.�� */
	$"80BC 0000 0400 3D40 FFDA 4267 486E FFCC"            /* ��....=@��BgHn�� */
	$"205F A9F2 3E80 301F 48C0 2E00 2D47 0010"            /*  _��>�0.H�..-G.. */
	$"2E1F 4E5E 205F 504F 4ED0 8C4C 4155 4E43"            /* ..N^ _PONЌLAUNC */
	$"4846 5353 5045 4300 0000 4E56 FF9A 48E7"            /* HFSSPEC...NV��H� */
	$"0300 206E 000C 43EE FFF8 22D8 22D8 4267"            /* .. n..C���"�"�Bg */
	$"2F2E 0008 2F3C 4150 504C 486E FFEC 486E"            /* /.../<APPLHn��Hn */
	$"FFA6 4EBA FB14 101F 673A 4267 486E FFEC"            /* ��N��...g:BgHn�� */
	$"3F3C 003B A88F 301F 48C0 2C00 4267 486E"            /* ?<.;��0.H�,.BgHn */
	$"FFF8 486E FF9A 7001 2F00 3F3C 0001 70FE"            /* ��Hn��p./.?<..p� */
	$"2F00 42A7 42A7 303C 0D17 A816 301F 48C0"            /* /.B�B�0<..�.0.H� */
	$"2E00 6026 4267 2F2E 0008 486E FFA6 4EBA"            /* ..`&Bg/...Hn��N� */
	$"FD08 301F 48C0 2E00 6610 42A7 486E FFA6"            /* �.0.H�..f.B�Hn�� */
	$"486E FFF8 4EBA FEEE 2E1F 2D47 0010 4CDF"            /* Hn��N���..-G..L� */
	$"00C0 4E5E 205F 504F 4ED0 8953 454E 4445"            /* .�N^ _PONЉSENDE */
	$"5645 4E54 0000 4E56 FFE8 48E7 0300 7C00"            /* VENT..NV��H�..|. */
	$"3D7C 013A FFEC 42A7 2F2E 000C 42A7 486E"            /* =|.:��B�/...B�Hn */
	$"FFED 4240 102E FFEC 48C0 2F00 42A7 42A7"            /* ��B@..��H�/.B�B� */
	$"A9E0 2E1F 5DC0 0C87 0000 00FF 5EC1 8001"            /* ��..]�.�...�^��. */
	$"6706 2C3C FFFF FD5F 4A86 661A 206E 0008"            /* g.,<���_J�f. n.. */
	$"1087 206E 000C 2F10 206E 0008 4868 0001"            /* .� n../. n..Hh.. */
	$"2F07 4EBA F274 2D46 0010 4CDF 00C0 4E5E"            /* /.N��t-F..L�.�N^ */
	$"205F 504F 4ED0 8D49 4355 4649 4E44 5343"            /*  _PONЍICUFINDSC */
	$"4845 4D45 0000 4E56 FFF0 48E7 0300 42A7"            /* HEME..NV��H�..B� */
	$"4EBA F9B4 2E1F 6638 42A7 2F2E 000C 2F2E"            /* N���..f8B�/.../. */
	$"0008 486E FFF0 4EBA FD40 2E1F 6610 42A7"            /* ..Hn��N��@..f.B� */
	$"486E FFF0 2F2E 000C 4EBA FEA0 2E1F 4267"            /* Hn��/...N���..Bg */
	$"486E FFF0 303C 0204 A816 301F 48C0 2C00"            /* Hn��0<..�.0.H�,. */
	$"2D47 0010 4CDF 00C0 4E5E 205F 504F 4ED0"            /* -G..L�.�N^ _PON� */
	$"8C49 4355 4C41 554E 4348 5552 4C00 0000"            /* �ICULAUNCHURL... */
	$"4E56 FFFC 206E 000C 4228 0004 206E 000C"            /* NV�� n..B(.. n.. */
	$"4268 0006 206E 000C 7000 2140 0008 206E"            /* Bh.. n..p.!@.. n */
	$"000C 4228 000C 206E 000C 4268 004C 206E"            /* ..B(.. n..Bh.L n */
	$"000C 4228 004E 206E 000C 41E8 0090 43FA"            /* ..B(.N n..A�.�C� */
	$"003C 7005 20D9 51C8 FFFC 3091 42A7 2F2E"            /* .<p. �Q���0�B�/. */
	$"000C 206E 000C 4868 0050 4EBA 0AEC 2D5F"            /* .. n..Hh.PN�.�-_ */
	$"FFFC 7000 2D40 0010 4E5E 205F 504F 4ED0"            /* ��p.-@..N^ _PON� */
	$"8849 4352 5354 4152 5400 001A 1843 7265"            /* �ICRSTART....Cre */
	$"6174 6520 636F 6E66 6967 7572 6174 696F"            /* ate configuratio */
	$"6E20 6173 3A00 4E56 0000 2F0C 286E 0008"            /* n as:.NV../.(n.. */
	$"4A2C 004E 56C0 4400 1D40 000C 4A6C 004C"            /* J,.NV�D..@..Jl.L */
	$"670A 3F2C 004C A99A 426C 004C 422C 004E"            /* g.?,.L��Bl.LB,.N */
	$"285F 4E5E 2E9F 4E75 8E49 4352 434C 4F53"            /* (_N^.�Nu�ICRCLOS */
	$"4549 464F 5045 4E00 0000 4E56 FFFE 2F07"            /* EIFOPEN...NV��/. */
	$"4267 2F2E 0008 4EBA FFAE 101F 6704 7ECE"            /* Bg/...N���..g.~� */
	$"6002 4247 3007 48C0 2D40 000C 2E1F 4E5E"            /* `.BG0.H�-@....N^ */
	$"2E9F 4E75 8749 4352 5354 4F50 0000 4E56"            /* .�Nu�ICRSTOP..NV */
	$"FF8E 206E 0008 43EE FFFA 22D8 3290 3D6E"            /* �� n..C���"�2�=n */
	$"FFFA FFA4 2D6E FFFC FFBE 7000 2D40 FFA0"            /* ����-n����p.-@�� */
	$"3D7C FFFF FFAA 4267 486E FF8E 205F 7009"            /* =|����BgHn�� _p. */
	$"A260 3E80 301F 48C0 2D40 000C 4E5E 2E9F"            /* �`>�0.H�-@..N^.� */
	$"4E75 8C56 414C 4944 4449 5253 5045 4300"            /* Nu�VALIDDIRSPEC. */
	$"0000 4E56 FF86 2F07 206E 000E 43EE FFFA"            /* ..NV��/. n..C��� */
	$"22D8 3290 3D6E FFFA FFA2 2D6E FFFC FFBC"            /* "�2�=n����-n���� */
	$"206E 0008 5C88 2D48 FF9E 3D6E 000C FFA8"            /*  n..\�-H��=n..�� */
	$"4267 486E FF8C 205F 7009 A260 3E80 3E1F"            /* BgHn�� _p.�`>�>. */
	$"666E 206E 0008 30AE FFA2 206E 0008 216E"            /* fn n..0��� n..!n */
	$"FFF0 0002 082E 0004 FFAA 56C0 223C 4943"            /* ��......��V�"<IC */
	$"4170 B2AE FFAC 56C1 8001 6704 7E01 6040"            /* Ap����V��.g.~.`@ */
	$"4267 2F3C 616C 6973 486E FF86 4EBA EDD0"            /* Bg/<alisHn��N��� */
	$"4A5F 57C0 4A00 6728 082E 0000 FF89 56C1"            /* J_W�J.g(....��V� */
	$"C001 671C 4267 2F2E 0008 1F3C 0001 486E"            /* �.g.Bg/....<..Hn */
	$"FF8B 486E FF8A 700C A823 3E1F 6702 7E01"            /* ��Hn��p.�#>.g.~. */
	$"3D47 0012 2E1F 4E5E 205F DEFC 000A 4ED0"            /* =G....N^ _��..N� */
	$"8946 4F55 4E44 4649 4C45 0000 4E56 FFF2"            /* �FOUNDFILE..NV�� */
	$"48E7 0700 206E 000C 43EE FFFA 22D8 3290"            /* H�.. n..C���"�2� */
	$"206E 0008 226E 0010 5C88 43E9 0050 700F"            /*  n.."n..\�C�.Pp. */
	$"20D9 51C8 FFFC 4267 486E FFFA 4267 2F2E"            /*  �Q���BgHn��Bg/. */
	$"0008 4EBA FEFE 4A5F 57C7 4407 1007 662E"            /* ..N���J_W�D...f. */
	$"7C01 206E 0008 4228 0006 4267 486E FFFA"            /* |. n..B(..BgHn�� */
	$"3F06 2F2E 0008 4EBA FEDA 301F 48C0 2A00"            /* ?./...N���0.H�*. */
	$"5246 7001 B085 67DA 4A85 57C7 4407 1D47"            /* RFp.��g�J�W�D..G */
	$"0014 4CDF 00E0 4E5E 205F DEFC 000C 4ED0"            /* ..L�.�N^ _��..N� */
	$"8A53 4341 4E46 4F4C 4445 5200 0000 4E56"            /* �SCANFOLDER...NV */
	$"0000 42A7 2F2E 000E 1F3C 0001 1F3C 0001"            /* ..B�/....<...<.. */
	$"3F2E 000C 2F2E 0008 4EBA 00BC 2D5F 0012"            /* ?.../...N�.�-_.. */
	$"4E5E 205F DEFC 000A 4ED0 9149 4352 4649"            /* N^ _��..NБICRFI */
	$"4E44 434F 4E46 4947 4649 4C45 0000 4E56"            /* NDCONFIGFILE..NV */
	$"FFE6 48E7 0108 286E 0008 4267 2F3C 666F"            /* ��H�..(n..Bg/<fo */
	$"6C64 486E FFE6 4EBA EC96 4A5F 57C0 4A00"            /* ldHn��N��J_W�J. */
	$"672A 082E 0000 FFE9 56C1 C001 671E 2F3C"            /* g*....��V��.g./< */
	$"8000 0000 2F3C 7072 6566 1F3C 0001 2F0C"            /* �.../<pref.<../. */
	$"486C 0002 7000 A823 3E1F 6028 2F3C 0002"            /* Hl..p.�#>.`(/<.. */
	$"0000 486E FFEE 4EBA EAEC 3E1F 6616 4267"            /* ..Hn��N���>.f.Bg */
	$"3F2E FFFC 2F0C 486C 0002 486E FFEA 4EBA"            /* ?.��/.Hl..Hn��N� */
	$"F26A 3E1F 3D47 000C 4CDF 1080 4E5E 205F"            /* �j>.=G..L�.�N^ _ */
	$"584F 4ED0 8E46 494E 4450 5245 4646 4F4C"            /* XONЎFINDPREFFOL */
	$"4445 5200 0000 4E56 FFA6 48E7 0F08 286E"            /* DER...NV��H�..(n */
	$"0008 382E 000C 7E00 57C0 4A00 6710 206E"            /* ..8...~.W�J.g. n */
	$"0012 4A28 004E 56C1 C001 6702 7ECE 4A87"            /* ..J(.NV��.g.~�J� */
	$"57C0 4A00 6708 4A44 5DC1 C001 6612 4A44"            /* W�J.g.JD]��.f.JD */
	$"56C1 4A01 670C 240C 57C2 C202 8001 6702"            /* V�J.g.$.W��.�.g. */
	$"7ECE 4A87 57C0 4A00 671E 4A44 57C1 C001"            /* ~�J�W�J.g.JDW��. */
	$"6716 122E 0010 0A01 0001 C001 4A00 6708"            /* g.........�.J.g. */
	$"C02E 000E 6702 7ECE 4246 4A87 57C0 4A00"            /* �...g.~�BFJ�W�J. */
	$"671E B846 5EC1 C001 6716 42A7 3006 C1FC"            /* g.�F^��.g.B�0.�� */
	$"0006 4874 0000 4EBA FCE6 2E1F 5246 60DA"            /* ..Ht..N���..RF`� */
	$"4A87 6600 00BE 4246 4205 B846 5EC0 1205"            /* J�f..�BFB.�F^�.. */
	$"0A01 0001 C001 6730 4267 2F2E 0012 3006"            /* ....�.g0Bg/...0. */
	$"C1FC 0006 4874 0000 486E FFA6 4EBA FDCE"            /* ��..Ht..Hn��N��� */
	$"1A1F 3006 C1FC 0006 41EE FFEC 43F4 0000"            /* ..0.��..A���C�.. */
	$"20D9 3091 5246 60C2 1005 0A00 0001 4A00"            /*  �0�RF`�......J. */
	$"6738 C02E 0010 6732 4267 486E FFF2 4EBA"            /* g8�...g2BgHn��N� */
	$"FE6E 301F 48C0 2E00 6620 4267 2F2E 0012"            /* �n0.H�..f Bg/... */
	$"486E FFF2 486E FFA6 4EBA FD82 1A1F 41EE"            /* Hn��Hn��N���..A� */
	$"FFEC 43EE FFF2 20D9 3091 1005 0A00 0001"            /* ��C��� �0�...... */
	$"C02E 000E 6722 3D6E FFEC FFA6 2D6E FFEE"            /* �...g"=n����-n�� */
	$"FFA8 206E 0012 43EE FFAC 41E8 0050 700F"            /* �� n..C���A�.Pp. */
	$"22D8 51C8 FFFC 7A01 1005 6606 2E3C FFFF"            /* "�Q���z...f..<�� */
	$"FD5E 4A87 6614 206E 0012 5C88 43EE FFA6"            /* �^J�f. n..\�C��� */
	$"7010 20D9 51C8 FFFC 3091 206E 0012 4A87"            /* p. �Q���0� n..J� */
	$"57C0 4400 1140 0004 2D47 0016 4CDF 10F0"            /* W�D..@..-G..L�.� */
	$"4E5E 205F DEFC 000E 4ED0 9849 4352 4745"            /* N^ _��..NИICRGE */
	$"4E45 5241 4C46 494E 4443 4F4E 4649 4746"            /* NERALFINDCONFIGF */
	$"494C 4500 0000 4E56 0000 102E 0008 4880"            /* ILE...NV......H� */
	$"5340 6706 5340 670A 6010 3D7C 0001 000A"            /* S@g.S@g.`.=|.... */
	$"600C 3D7C 0003 000A 6004 426E 000A 4E5E"            /* `.=|....`.Bn..N^ */
	$"205F 544F 4ED0 8F49 4352 5045 524D 544F"            /*  _TONЏICRPERMTO */
	$"4653 5045 524D 0000 4E56 FFF8 48E7 0F08"            /* FSPERM..NV��H�.. */
	$"286E 000A 1A2E 0008 7E00 4A2C 004E 56C0"            /* (n......~.J,.NV� */
	$"4A05 57C1 8001 6702 7ECE 4A87 6608 102C"            /* J.W��.g.~�J�f.., */
	$"0004 6602 7EDB 4A87 6600 00AA 4267 3F2C"            /* ..f.~�J�f..�Bg?, */
	$"0006 2F2C 0008 486C 000C 4267 1F05 4EBA"            /* ../,..Hl..Bg..N� */
	$"FF76 301F 1F00 4EBA F04E 3C1F 4267 A9AF"            /* �v0...N��N<.Bg�� */
	$"301F 48C0 2E00 70D5 B087 57C0 72D9 B287"            /* 0.H�..pհ�W�rٲ� */
	$"57C1 8001 676E 1005 4880 5340 6706 5340"            /* W��.gn..H�S@g.S@ */
	$"6708 6060 4246 7E00 605A 4267 3F2C 0006"            /* g.``BF~.`ZBg?,.. */
	$"2F2C 0008 486C 000C 2F3C 4943 4170 2F3C"            /* /,..Hl../<ICAp/< */
	$"4943 4170 4EBA EED4 381F 3F2C 0006 2F2C"            /* ICApN���8.?,../, */
	$"0008 486C 000C 4EBA F11A 4267 3F2C 0006"            /* ..Hl..N��.Bg?,.. */
	$"2F2C 0008 486C 000C 4267 1F05 4EBA FEF8"            /* /,..Hl..Bg..N��� */
	$"301F 1F00 4EBA EFD0 3C1F 4267 A9AF 301F"            /* 0...N���<.Bg��0. */
	$"48C0 2E00 4A87 6608 3946 004C 1945 004E"            /* H�..J�f.9F.L.E.N */
	$"3007 0440 FFCA 6706 5B40 6702 6006 2E3C"            /* 0..@��g.[@g.`..< */
	$"FFFF FD61 2D47 000E 4CDF 10F0 4E5E 205F"            /* ���a-G..L�.�N^ _ */
	$"5C4F 4ED0 8849 4352 4245 4749 4E00 0000"            /* \ONЈICRBEGIN... */
	$"4E56 0000 206E 0008 4A28 004E 6608 70CE"            /* NV.. n..J(.Nf.p� */
	$"2D40 000C 6006 7000 2D40 000C 4E5E 2E9F"            /* -@..`.p.-@..N^.� */
	$"4E75 8E49 4352 4348 4543 4B49 4E53 4944"            /* Nu�ICRCHECKINSID */
	$"4500 0000 4E56 FFFC 48E7 0300 1C2E 000C"            /* E...NV��H�...... */
	$"206E 0008 4210 206E 000E BC28 004E 57C0"            /*  n..B. n..�(.NW� */
	$"7202 B228 004E 57C1 7401 B406 57C2 C202"            /* r.�(.NW�t.�.W��. */
	$"8001 6704 7E00 602C 206E 000E 4A28 004E"            /* �.g.~.`, n..J(.N */
	$"661C 42A7 2F2E 000E 1F06 4EBA FE6C 2E1F"            /* f.B�/.....N��l.. */
	$"206E 0008 4A87 57C0 4400 1080 6006 2E3C"            /*  n..J�W�D..�`..< */
	$"FFFF FD65 2D47 0012 4CDF 00C0 4E5E 205F"            /* ���e-G..L�.�N^ _ */
	$"DEFC 000A 4ED0 8E49 4352 464F 5243 4549"            /* ��..NЎICRFORCEI */
	$"4E53 4944 4500 0000 4E56 0000 102E 0008"            /* NSIDE...NV...... */
	$"6710 42A7 2F2E 000A 4EBA 03A8 2D5F 000E"            /* g.B�/...N�.�-_.. */
	$"6006 7000 2D40 000E 4E5E 205F 5C4F 4ED0"            /* `.p.-@..N^ _\ON� */
	$"9049 4352 5245 4C45 4153 4549 4E53 4944"            /* �ICRRELEASEINSID */
	$"4500 0000 4E56 FEE8 48E7 1F18 206E 0014"            /* E...NV��H�.. n.. */
	$"43EE FF00 703F 22D8 51C8 FFFC 266E 0008"            /* C��.p?"�Q���&n.. */
	$"2C13 7000 2680 206E 0010 70FF 2080 7000"            /* ,.p.&� n..p� �p. */
	$"2840 42A7 2F2E 0018 1F3C 0001 486E FEE9"            /* (@B�/....<..Hn�� */
	$"4EBA FF02 2E1F 57C0 206E 0018 4A68 004C"            /* N��...W� n..Jh.L */
	$"57C1 C001 6706 2E3C FFFF FD66 4A87 57C0"            /* W��.g..<���fJ�W� */
	$"4A2E FF00 57C1 4A86 5DC2 4AAE 000C 56C3"            /* J.�.W�J�]�J�..V� */
	$"C403 8202 C001 6702 7ECE 4A87 6600 00A0"            /* �.�.�.g.~�J�f..� */
	$"4267 A994 381F 206E 0018 3F28 004C A998"            /* Bg��8. n..?(.L�� */
	$"4267 A9AF 301F 48C0 2E00 6600 0082 42A7"            /* Bg��0.H�..f..�B� */
	$"2F3C 4943 5250 486E FF00 A820 285F 4267"            /* /<ICRPHn�.� (_Bg */
	$"A9AF 301F 48C0 2E00 200C 6606 2E3C FFFF"            /* ��0.H�.. .f..<�� */
	$"FD66 4A87 6616 42A7 2F0C 4EBA E974 2A1F"            /* �fJ�f.B�/.N��t*. */
	$"7004 B085 6F06 2E3C FFFF FD64 4A87 663A"            /* p.��o..<���dJ�f: */
	$"2005 5980 2680 2054 226E 0010 2290 4AAE"            /*  .Y�&� T"n.."�J� */
	$"000C 56C0 4A93 56C1 C001 671E BC93 6C08"            /* ..V�J�V��.g.��l. */
	$"2E3C FFFF FD62 6002 2C13 2014 5880 2F00"            /* .<���b`.,. .X�/. */
	$"2F2E 000C 2F06 4EBA E940 3F04 A998 200C"            /* /.../.N��@?.�� . */
	$"6704 2F0C A9A3 42A7 2F2E 0018 1F2E FEE9"            /* g./.��B�/.....�� */
	$"4EBA FE96 2D5F FEF8 4A87 6604 2E2E FEF8"            /* N���-_��J�f...�� */
	$"2D47 001C 4CDF 18F8 4E5E 205F DEFC 0014"            /* -G..L�.�N^ _��.. */
	$"4ED0 8A49 4352 4745 5450 5245 4600 0000"            /* NЊICRGETPREF... */
	$"4E56 FEEA 48E7 0F18 206E 0014 43EE FF00"            /* NV��H�.. n..C��. */
	$"703F 22D8 51C8 FFFC 266E 000C 2C2E 0008"            /* p?"�Q���&n..,... */
	$"7000 2840 200B 6602 7C00 42A7 2F2E 0018"            /* p.(@ .f.|.B�/... */
	$"1F3C 0002 486E FEEB 4EBA FDAA 2E1F 57C0"            /* .<..Hn��N���..W� */
	$"206E 0018 7202 B228 004E 56C1 C001 6706"            /*  n..r.�(.NV��.g. */
	$"2E3C FFFF FD65 4A87 57C0 206E 0018 4A68"            /* .<���eJ�W� n..Jh */
	$"004C 57C1 C001 6706 2E3C FFFF FD63 4A87"            /* .LW��.g..<���cJ� */
	$"57C0 4A2E FF00 57C1 4A86 5DC2 8202 C001"            /* W�J.�.W�J�].�. */
	$"6702 7ECE 4A87 6600 0158 4267 A994 3D5F"            /* g.~�J�f..XBg��=_ */
	$"FEF2 206E 0018 3F28 004C A998 4267 A9AF"            /* �� n..?(.L��Bg�� */
	$"301F 48C0 2E00 6600 0138 42A7 2F3C 4943"            /* 0.H�..f..8B�/<IC */
	$"5250 486E FF00 A820 285F 200C 56C0 4A00"            /* RPHn�.� (_ .V�J. */
	$"6726 2F00 42A7 2F0C 4EBA E816 221F 201F"            /* g&/.B�/.N��.". . */
	$"7404 B481 5EC1 C001 670E 2F0C A9AD 2F0C"            /* t.��^��.g./.��/. */
	$"205F A023 7000 2840 200C 6604 7A00 6004"            /*  _�#p.(@ .f.z.`. */
	$"2054 2A10 70FF B0AE 0010 6604 2D45 0010"            /*  T*.p���..f.-E.. */
	$"2005 0800 0000 56C0 082E 0000 0013 56C1"            /*  .....V�......V� */
	$"C001 220B 56C1 C001 6706 2E3C FFFF FD65"            /* �.".V��.g..<���e */
	$"200C 6654 42A7 2006 5880 2F00 4EBA E7A8"            /*  .fTB� .X�/.N�� */
	$"285F 4267 3EB8 0220 301F 48C0 2E00 6638"            /* (_Bg>�. 0.H�..f8 */
	$"4267 2F3C 4943 5250 A810 381F 707F B044"            /* Bg/<ICRP�.8.p.�D */
	$"6CEE 2F0C 2F3C 4943 5250 3F04 486E FF00"            /* l�/./<ICRP?.Hn�. */
	$"A9AB 4267 A9AF 301F 48C0 2E00 670A 2F0C"            /* ��Bg��0.H�..g./. */
	$"205F A023 7000 2840 4A87 57C0 4A00 6720"            /*  _�#p.(@J�W�J.g  */
	$"220B 56C1 C001 6718 2F0C 2006 5880 2F00"            /* ".V��.g./. .X�/. */
	$"4EBA E75C 4267 3EB8 0220 301F 48C0 2E00"            /* N��\Bg>�. 0.H�.. */
	$"4A87 57C0 4A00 6716 4A86 5EC1 C001 670E"            /* J�W�J.g.J�^��.g. */
	$"2F0B 2014 5880 2F00 2F06 4EBA E73C 4A87"            /* /. .X�/./.N��<J� */
	$"6618 2054 20AE 0010 2F0C A9AA 2F0C A9B0"            /* f. T �../.��/.�� */
	$"4267 A9AF 301F 48C0 2E00 3F2E FEF2 A998"            /* Bg��0.H�..?.�� */
	$"200C 6704 2F0C A9A3 42A7 2F2E 0018 1F2E"            /*  .g./.��B�/..... */
	$"FEEB 4EBA FC74 2D5F FEF8 4A87 6604 2E2E"            /* ��N��t-_��J�f... */
	$"FEF8 2D47 001C 4CDF 18F0 4E5E 205F DEFC"            /* ��-G..L�.�N^ _�� */
	$"0014 4ED0 8A49 4352 5345 5450 5245 4600"            /* ..NЊICRSETPREF. */
	$"0000 4E56 FFFA 42A7 2F2E 0008 4EBA FB82"            /* ..NV��B�/...N��� */
	$"2D5F FFFC 4267 2F2E 0008 4EBA F56A 1D5F"            /* -_��Bg/...N��j._ */
	$"FFFB 2D6E FFFC 000C 4E5E 2E9F 4E75 8649"            /* ��-n��..N^.�Nu�I */
	$"4352 454E 4400 0000 4E56 0000 206E 0008"            /* CREND...NV.. n.. */
	$"43FA 0030 7004 20D9 51C8 FFFC 3091 7000"            /* C�.0p. �Q���0�p. */
	$"2D40 0010 4E5E 205F 504F 4ED0 9249 4352"            /* -@..N^ _PONВICR */
	$"4445 4641 554C 5446 494C 454E 414D 4500"            /* DEFAULTFILENAME. */
	$"0016 1449 6E74 6572 6E65 7420 5072 6566"            /* ...Internet Pref */
	$"6572 656E 6365 7300 4E56 FFFA 48E7 0F18"            /* erences.NV��H�.. */
	$"266E 0008 286E 000C 282E 0010 2C2E 0014"            /* &n..(n..(...,... */
	$"7A00 4A94 5EC0 4A00 675A 2046 2214 5381"            /* z.J�^�J.gZ F".S� */
	$"4242 1430 1800 4A42 6B40 3F3C 0009 4EBA"            /* BB.0..JBk@?<..N� */
	$"EC9A 3F3C 000D 4EBA EC92 4EBA ECD0 41FA"            /* �?<..N��N���A� */
	$"01BA 2F20 2F20 3F3C 0008 4EBA ECC0 3217"            /* .�/ / ?<..N���2. */
	$"E749 5341 B441 6E10 3202 E649 4441 D257"            /* �ISA�An.2.�IDA�W */
	$"0537 1001 0A3C 0004 DEDF 56C1 C001 6704"            /* .7...<..��V��.g. */
	$"5394 609E 4A94 5EC0 4A00 6718 2046 2214"            /* S�`�J�^�J.g. F". */
	$"5381 4242 1430 1800 723C B242 57C1 C001"            /* S�BB.0..r<�BW��. */
	$"6702 5394 B893 5EC0 4A00 6758 2046 2213"            /* g.S���^�J.gX F". */
	$"4242 1430 1800 4A42 6B40 3F3C 0009 4EBA"            /* BB.0..JBk@?<..N� */
	$"EC1A 3F3C 000D 4EBA EC12 4EBA EC50 41FA"            /* �.?<..N��.N��PA� */
	$"0132 2F20 2F20 3F3C 0008 4EBA EC40 3217"            /* .2/ / ?<..N��@2. */
	$"E749 5341 B441 6E10 3202 E649 4441 D257"            /* �ISA�An.2.�IDA�W */
	$"0537 1001 0A3C 0004 DEDF 56C1 C001 6704"            /* .7...<..��V��.g. */
	$"5293 60A0 B893 5EC0 4A00 6716 2046 2213"            /* R�`���^�J.g. F". */
	$"4242 1430 1800 723E B242 57C1 C001 6702"            /* BB.0..r>�BW��.g. */
	$"5293 2046 2014 4241 1230 0800 703C B041"            /* R� F .BA.0..p<�A */
	$"663A 4207 1007 0A00 0001 2213 5381 B881"            /* f:B.......".S��� */
	$"5EC1 C001 671C 2046 2013 5380 4241 1230"            /* ^��.g. F .S�BA.0 */
	$"0800 703E B041 57C7 4407 1007 66D6 5293"            /* ..p>�AW�D...f�R� */
	$"60D2 1007 6606 2A3C FFFF FD5F 4A85 57C0"            /* `�..f.*<���_J�W� */
	$"4A00 6762 4A93 5EC1 C001 675A 2046 2213"            /* J.gbJ�^��.gZ F". */
	$"5381 4242 1430 1800 723E B242 57C1 C001"            /* S�BB.0..r>�BW��. */
	$"6744 2046 2014 4241 1230 0800 703C B041"            /* gD F .BA.0..p<�A */
	$"57C7 4407 1007 0A00 0001 4A94 5CC1 C001"            /* W�D.......J�\��. */
	$"671A 2046 2014 4241 1230 0800 703C B041"            /* g. F .BA.0..p<�A */
	$"57C7 4407 1007 66DC 5394 60D8 1007 6606"            /* W�D...f�S�`�..f. */
	$"2A3C FFFF FD5F 2D45 0018 4CDF 18F0 4E5E"            /* *<���_-E..L�.�N^ */
	$"205F DEFC 0010 4ED0 8F45 5850 414E 4453"            /*  _��..NЏEXPANDS */
	$"454C 4543 5449 4F4E 0010 4000 0001 0000"            /* ELECTION..@..... */
	$"0000 1000 0001 0000 0000 4E56 0000 206E"            /* ..........NV.. n */
	$"000C 2010 B0AE 0010 5DC0 4A00 6756 206E"            /* .. .��..]�J.gV n */
	$"0014 226E 000C 2211 4242 1430 1800 4A42"            /* .."n..".BB.0..JB */
	$"6B34 3F3C 0009 4EBA EAA2 41FA 00C4 2F20"            /* k4?<..N��A�.�/  */
	$"3F20 3F3C 0006 4EBA EAD4 3217 E749 5341"            /* ? ?<..N���2.�ISA */
	$"B441 6E10 3202 E649 4441 D257 0537 1001"            /* �An.2.�IDA�W.7.. */
	$"0A3C 0004 DEDF 57C1 C001 6708 206E 000C"            /* .<..��W��.g. n.. */
	$"5290 609A 206E 0008 4A90 5EC0 4A00 6758"            /* R�`� n..J�^�J.gX */
	$"206E 0014 226E 0008 2211 5381 4242 1430"            /*  n.."n..".S�BB.0 */
	$"1800 4A42 6B34 3F3C 0009 4EBA EA3E 41FA"            /* ..JBk4?<..N��>A� */
	$"0060 2F20 3F20 3F3C 0006 4EBA EA70 3217"            /* .`/ ? ?<..N��p2. */
	$"E749 5341 B441 6E10 3202 E649 4441 D257"            /* �ISA�An.2.�IDA�W */
	$"0537 1001 0A3C 0004 DEDF 57C1 C001 6708"            /* .7...<..��W��.g. */
	$"206E 0008 5390 609C 7000 2D40 0018 4E5E"            /*  n..S�`�p.-@..N^ */
	$"205F DEFC 0010 4ED0 8F53 4852 494E 4B53"            /*  _��..NЏSHRINKS */
	$"454C 4543 5449 4F4E 0006 0001 0000 0000"            /* ELECTION........ */
	$"4E56 FFF0 48E7 0F08 286E 0008 42A7 2F0C"            /* NV��H�..(n..B�/. */
	$"4EBA E32E 2A1F 7E00 7C00 BA87 6F00 00E2"            /* N��.*.~.|.��o..� */
	$"2054 4240 1030 7800 720D B240 6600 00B6"            /*  TB@.0x.r.�@f..� */
	$"4A86 5EC0 4A00 674E 2054 2206 5381 4242"            /* J�^�J.gN T".S�BB */
	$"1430 1800 4A42 6B34 3F3C 0009 4EBA E98C"            /* .0..JBk4?<..N�� */
	$"41FA 0108 2F20 3F20 3F3C 0006 4EBA E9BE"            /* A�../ ? ?<..N�� */
	$"3217 E749 5341 B441 6E10 3202 E649 4441"            /* 2.�ISA�An.2.�IDA */
	$"D257 0537 1001 0A3C 0004 DEDF 57C1 C001"            /* �W.7...<..��W��. */
	$"6704 5386 60AA BA87 5EC0 4A00 6756 2054"            /* g.S�`���^�J.gV T */
	$"4241 1230 7800 4A41 6B40 3F3C 0009 4EBA"            /* BA.0x.JAk@?<..N� */
	$"E93A 3F3C 000D 4EBA E932 4EBA E970 41FA"            /* �:?<..N��2N��pA� */
	$"00AA 2F20 3F20 3F3C 0006 4EBA E960 3417"            /* .�/ ? ?<..N��`4. */
	$"E74A 5342 B242 6E10 3401 E64A 4442 D457"            /* �JSB�Bn.4.�JDB�W */
	$"0337 2001 0A3C 0004 DEDF 57C1 C001 6704"            /* .7 ..<..��W��.g. */
	$"5287 60A2 BA87 6F00 FF32 2054 2248 4240"            /* R�`���o.�2 T"HB@ */
	$"1031 7800 1180 6800 5287 5286 6000 FF1C"            /* .1x..�h.R�R�`.�. */
	$"2F0C 2F06 4EBA E248 4267 3EB8 0220 301F"            /* /./.N��HBg>�. 0. */
	$"48C0 2800 57C0 4A00 671C 2F00 42A7 2F0C"            /* H�(.W�J.g./.B�/. */
	$"4EBA E21E 221F 201F 4A81 57C1 C001 6706"            /* N��.". .J�W��.g. */
	$"283C FFFF FD5F 2D44 000C 4CDF 10F0 4E5E"            /* (<���_-D..L�.�N^ */
	$"2E9F 4E75 8C53 5452 4950 5245 5455 524E"            /* .�Nu�STRIPRETURN */
	$"5300 0006 0001 0000 0000 4E56 FDDC 48E7"            /* S.........NV��H� */
	$"0F18 206E 001C 43EE FF00 703F 22D8 51C8"            /* .. n..C��.p?"�Q� */
	$"FFFC 2C2E 0014 266E 0018 286E 0008 7E00"            /* ��,...&n..(n..~. */
	$"4AAE 0018 57C0 4A00 6660 4AAE 0008 57C1"            /* J�..W�J.f`J�..W� */
	$"8001 6656 206E 0008 4A90 57C1 8001 664A"            /* �.fV n..J�W��.fJ */
	$"4A86 5FC1 8001 6642 206E 0010 4A90 5DC1"            /* J�_��.fB n..J�]� */
	$"8001 6636 206E 000C 4A90 5DC1 8001 662A"            /* �.f6 n..J�]��.f* */
	$"206E 0010 BC90 5DC1 8001 661E 206E 000C"            /*  n..��]��.f. n.. */
	$"BC90 5DC1 8001 6612 206E 0010 226E 000C"            /* ��]��.f. n.."n.. */
	$"2210 B291 5EC1 8001 6702 7ECE 4A87 57C0"            /* ".��^��.g.~�J�W� */
	$"206E 0010 226E 000C 2210 B291 57C1 C001"            /*  n.."n..".��W��. */
	$"6714 42A7 2F0B 2F06 2F2E 0010 2F2E 000C"            /* g.B�/././.../... */
	$"4EBA FAF6 2E1F 4A87 6614 42A7 2F0B 2F06"            /* N���..J�f.B�/./. */
	$"2F2E 0010 2F2E 000C 4EBA FCE0 2E1F 4A87"            /* /.../...N���..J� */
	$"57C0 206E 0010 226E 000C 2210 B291 5CC1"            /* W� n.."n..".��\� */
	$"C001 6706 2E3C FFFF FD5F 4A87 6628 4267"            /* �.g..<���_J�f(Bg */
	$"206E 0010 2010 4873 0800 2F2E 0008 206E"            /*  n.. .Hs../... n */
	$"000C 226E 0010 2010 9091 2F00 4EBA E202"            /* .."n.. .��/.N��. */
	$"301F 48C0 2E00 4A87 660A 42A7 2F0C 4EBA"            /* 0.H�..J�f.B�/.N� */
	$"FD80 2E1F 4A87 6600 016A 2054 7000 4241"            /* ��..J�f..j Tp.BA */
	$"1230 0800 703C B041 57C0 2054 48E7 8080"            /* .0..p<�AW� TH瀀 */
	$"42A7 2F0C 4EBA E09A 221F 4CDF 0101 5381"            /* B�/.N���".L�..S� */
	$"4242 1430 1800 723E B242 57C1 C001 672A"            /* BB.0..r>�BW��.g* */
	$"2F0C 42A7 2F0C 4EBA E078 201F 5380 2F00"            /* /.B�/.N��x .S�/. */
	$"4EBA E07C 42A7 2F0C 42A7 42A7 7001 2F00"            /* N��|B�/.B�B�p./. */
	$"70FF 2F00 42A7 A9E0 2A1F 41EE FEE8 43FA"            /* p�/.B���*.A���C� */
	$"0124 20D9 3091 2F0C 205F A029 42A7 2F0C"            /* .$ �0�/. _�)B�/. */
	$"4EBA E03E 4240 102E FEE8 48C0 B09F 5FC0"            /* N��>B@..��H���_� */
	$"4A00 674E 2F00 4267 2F14 486E FEE9 4241"            /* J.gN/.Bg/.Hn��BA */
	$"122E FEE8 3F01 4241 122E FEE8 3F01 3F3C"            /* ..��?.BA..��?.?< */
	$"000C A9ED 321F 201F 4A41 57C1 C001 6722"            /* ..��2. .JAW��.g" */
	$"2F0C 205F A02A 42A7 2F0C 42A7 42A7 4240"            /* /. _�*B�/.B�B�B@ */
	$"102E FEE8 48C0 2F00 70FF 2F00 42A7 A9E0"            /* ..��H�/.p�/.B��� */
	$"2A1F 2F0C 205F A02A 3D7C 013A FEE8 42A7"            /* *... _�*=|.:��B� */
	$"2F0C 42A7 486E FEE9 4240 102E FEE8 48C0"            /* /.B�Hn��B@..��H� */
	$"2F00 42A7 42A7 A9E0 281F 5DC0 0C84 0000"            /* /.B�B���(.]�.�.. */
	$"00FF 5EC1 8001 675A 4A2E FF00 6608 2E3C"            /* .�^��.gZJ.�.f..< */
	$"FFFF FD5F 604C 486E FF00 487A 0066 486E"            /* ���_`LHn�.Hz.fHn */
	$"FDDC 3F3C 0002 4EBA E6B4 41EE FF00 43EE"            /* ��?<..N��A��.C� */
	$"FDDC 703F 20D9 51C8 FFFC 42A7 2F0C 42A7"            /* ��p? �Q���B�/.B� */
	$"42A7 42A7 486E FF01 4240 102E FF00 48C0"            /* B�B�Hn�.B@..�.H� */
	$"2F00 A9E0 2A1F 4267 3EB8 0220 301F 48C0"            /* /.��*.Bg>�. 0.H� */
	$"2E00 2D47 0024 4CDF 18F0 4E5E 205F DEFC"            /* ..-G.$L�.�N^ _�� */
	$"001C 4ED0 8B49 4352 5041 5253 4555 524C"            /* ..NЋICRPARSEURL */
	$"0008 013A 0455 524C 3A00 4E56 FCAC 48E7"            /* ...:.URL:.NV��H� */
	$"0108 206E 0018 43EE FF00 703F 22D8 51C8"            /* .. n..C��.p?"�Q� */
	$"FFFC 42A7 42A7 4EBA DEFE 285F 4267 3EB8"            /* ��B�B�N���(_Bg>� */
	$"0220 301F 48C0 2E00 6622 42A7 2F2E 001C"            /* . 0.H�..f"B�/... */
	$"486E FF00 2F2E 0014 2F2E 0010 2F2E 000C"            /* Hn�./.../.../... */
	$"2F2E 0008 2F0C 4EBA FCF2 2E1F 4A87 660E"            /* /.../.N���..J�f. */
	$"42A7 2F0C 486E FDB4 4EBA EC0C 2E1F 4A87"            /* B�/.Hn��N��...J� */
	$"6636 7044 2D40 FDAC 42A7 2F2E 001C 487A"            /* f6pD-@��B�/...Hz */
	$"0066 486E FDB4 486E FCAC 3F3C 0002 4EBA"            /* .fHn��Hn��?<..N� */
	$"E5CC 486E FCAC 486E FDB0 486E FEB4 486E"            /* ��Hn��Hn��Hn��Hn */
	$"FDAC 4EBA F450 2E1F 4A87 660E 42A7 2F2E"            /* ��N��P..J�f.B�/. */
	$"FEB4 2F0C 4EBA EC40 2E1F 200C 6706 2F0C"            /* ��/.N��@.. .g./. */
	$"205F A023 2D47 0020 4CDF 1080 4E5E 205F"            /*  _�#-G. L�.�N^ _ */
	$"DEFC 0018 4ED0 8C49 4352 4C41 554E 4348"            /* ��..NЌICRLAUNCH */
	$"5552 4C00 0008 0748 656C 7065 72A5 4E56"            /* URL....Helper�NV */
	$"FFF4 48E7 0308 286E 000C 7000 2880 4267"            /* ��H�..(n..p.(�Bg */
	$"2F3C 6370 6E74 486E FFF4 4EBA DC02 4A5F"            /* /<cpntHn��N��.J_ */
	$"6614 42A7 2F3C 5052 4546 2F3C 4943 4170"            /* f.B�/<PREF/<ICAp */
	$"7021 A82A 289F 4A94 6608 2E3C 8000 8001"            /* p!�*(�J�f..<�.�. */
	$"6028 42A7 2F14 2F2E 0008 2F3C 0004 0000"            /* `(B�/./.../<.... */
	$"7000 A82A 2E1F 6712 4267 2F14 7008 A82A"            /* p.�*..g.Bg/.p.�* */
	$"301F 48C0 2C00 7000 2880 2D47 0010 4CDF"            /* 0.H�,.p.(�-G..L� */
	$"10C0 4E5E 205F 504F 4ED0 8849 4343 5354"            /* .�N^ _PONЈICCST */
	$"4152 5400 0000 4E56 FFF8 48E7 0300 42A7"            /* ART...NV��H�..B� */
	$"2F2E 0008 2F3C 0000 0001 7000 A82A 2E1F"            /* /.../<....p.�*.. */
	$"4267 2F2E 0008 7008 A82A 301F 48C0 2C00"            /* Bg/...p.�*0.H�,. */
	$"4A87 6602 2E06 2D47 000C 4CDF 00C0 4E5E"            /* J�f...-G..L�.�N^ */
	$"2E9F 4E75 8749 4343 5354 4F50 0000 4E56"            /* .�Nu�ICCSTOP..NV */
	$"FFFC 48E7 0108 286E 000C 42A7 2F3C 0000"            /* ��H�..(n..B�/<.. */
	$"0190 4EBA DD48 289F 4267 3EB8 0220 301F"            /* .�N��H(�Bg>�. 0. */
	$"48C0 2E00 662E 42A7 2054 2F08 2F2E 0008"            /* H�..f.B� T/./... */
	$"4EBA FEFC 2E1F 670E 42A7 2F14 2F2E 0008"            /* N���..g.B�/./... */
	$"4EBA EB5E 2E1F 4A87 670A 2F14 205F A01F"            /* N��^..J�g./. _�. */
	$"7000 2880 2D47 0010 4CDF 1080 4E5E 205F"            /* p.(�-G..L�.�N^ _ */
	$"504F 4ED0 8749 4353 5441 5254 0000 4E56"            /* PONЇICSTART..NV */
	$"FFF8 48E7 0108 286E 0008 4A94 670C 42A7"            /* ��H�..(n..J�g.B� */
	$"2F14 4EBA FF32 2E1F 600A 42A7 2F0C 4EBA"            /* /.N��2..`.B�/.N� */
	$"EBEA 2E1F 2F0C 205F A01F 2D47 000C 4CDF"            /* ��../. _�.-G..L� */
	$"1080 4E5E 2E9F 4E75 8649 4353 544F 5000"            /* .�N^.�Nu�ICSTOP. */
	$"0000 4E56 0000 206E 000E 4A90 6720 42A7"            /* ..NV.. n..J�g B� */
	$"206E 000E 2F10 3F2E 000C 2F2E 0008 2F3C"            /*  n../.?.../.../< */
	$"0006 0002 7000 A82A 2D5F 0012 6016 42A7"            /* ....p.�*-_..`.B� */
	$"2F2E 000E 3F2E 000C 2F2E 0008 4EBA ED70"            /* /...?.../...N��p */
	$"2D5F 0012 4E5E 205F DEFC 000A 4ED0 9049"            /* -_..N^ _��..NАI */
	$"4346 494E 4443 4F4E 4649 4746 494C 4500"            /* CFINDCONFIGFILE. */
	$"0000 4E56 0000 206E 000A 4A90 671C 42A7"            /* ..NV.. n..J�g.B� */
	$"206E 000A 2F10 1F2E 0008 2F3C 0002 0005"            /*  n../...../<.... */
	$"7000 A82A 2D5F 000E 6012 42A7 2F2E 000A"            /* p.�*-_..`.B�/... */
	$"1F2E 0008 4EBA EFE2 2D5F 000E 4E5E 205F"            /* ....N���-_..N^ _ */
	$"5C4F 4ED0 8749 4342 4547 494E 0000 4E56"            /* \ONЇICBEGIN..NV */
	$"FF00 206E 0014 43EE FF00 703F 22D8 51C8"            /* �. n..C��.p?"�Q� */
	$"FFFC 206E 0018 4A90 6728 42A7 206E 0018"            /* �� n..J�g(B� n.. */
	$"2F10 486E FF00 2F2E 0010 2F2E 000C 2F2E"            /* /.Hn�./.../.../. */
	$"0008 2F3C 0010 0006 7000 A82A 2D5F 001C"            /* ../<....p.�*-_.. */
	$"601E 42A7 2F2E 0018 486E FF00 2F2E 0010"            /* `.B�/...Hn�./... */
	$"2F2E 000C 2F2E 0008 4EBA F17A 2D5F 001C"            /* /.../...N��z-_.. */
	$"4E5E 205F DEFC 0014 4ED0 8949 4347 4554"            /* N^ _��..NЉICGET */
	$"5052 4546 0000 4E56 FF00 206E 0014 43EE"            /* PREF..NV�. n..C� */
	$"FF00 703F 22D8 51C8 FFFC 206E 0018 4A90"            /* �.p?"�Q��� n..J� */
	$"6728 42A7 206E 0018 2F10 486E FF00 2F2E"            /* g(B� n../.Hn�./. */
	$"0010 2F2E 000C 2F2E 0008 2F3C 0010 0007"            /* ../.../.../<.... */
	$"7000 A82A 2D5F 001C 601E 42A7 2F2E 0018"            /* p.�*-_..`.B�/... */
	$"486E FF00 2F2E 0010 2F2E 000C 2F2E 0008"            /* Hn�./.../.../... */
	$"4EBA F25E 2D5F 001C 4E5E 205F DEFC 0014"            /* N��^-_..N^ _��.. */
	$"4ED0 8949 4353 4554 5052 4546 0000 4E56"            /* NЉICSETPREF..NV */
	$"0000 206E 0008 4A90 6718 42A7 206E 0008"            /* .. n..J�g.B� n.. */
	$"2F10 2F3C 0000 000A 7000 A82A 2D5F 000C"            /* /./<....p.�*-_.. */
	$"600E 42A7 2F2E 0008 4EBA F438 2D5F 000C"            /* `.B�/...N��8-_.. */
	$"4E5E 2E9F 4E75 8549 4345 4E44 0000 4E56"            /* N^.�Nu�ICEND..NV */
	$"FF00 206E 0018 43EE FF00 703F 22D8 51C8"            /* �. n..C��.p?"�Q� */
	$"FFFC 206E 001C 4A90 672C 42A7 206E 001C"            /* �� n..J�g,B� n.. */
	$"2F10 486E FF00 2F2E 0014 2F2E 0010 2F2E"            /* /.Hn�./.../.../. */
	$"000C 2F2E 0008 2F3C 0014 0011 7000 A82A"            /* ../.../<....p.�* */
	$"2D5F 0020 6022 42A7 2F2E 001C 486E FF00"            /* -_. `"B�/...Hn�. */
	$"2F2E 0014 2F2E 0010 2F2E 000C 2F2E 0008"            /* /.../.../.../... */
	$"4EBA FB58 2D5F 0020 4E5E 205F DEFC 0018"            /* N��X-_. N^ _��.. */
	$"4ED0 8B49 434C 4155 4E43 4855 524C 0000"            /* NЋICLAUNCHURL.. */
};

data 'CODE' (0, purgeable, protected) {
	$"0000 0068 0000 10A8 0000 0008 0000 0020"            /* ...h...�.......  */
	$"0000 3F3C 0001 A9F0"                                /* ..?<..�� */
};

data 'DATA' (0, purgeable, protected) {
	$"0000 02A4 FFFF F870 8003 2120 7F7F 7F7E"            /* ...����p�.! ...~ */
	$"8270 032E 2030 8D0B 5374 7261 6E67 6520"            /* �p.. 0�.Strange  */
	$"526F 7701 2041 8501 4001 210C 0A57 8103"            /* Row. A�.@.!..W�. */
	$"FF45 8010 2E30 4095 012F 0130 5445 5854"            /* �E�..0@�./.0TEXT */
	$"010D 0255 5300 072B 5E31 2C5E 322A 4F80"            /* ...US..+^1,^2*O� */
	$"0711 80FE 4B8B 0E57 6861 7420 4D65 7468"            /* ..��K�.What Meth */
	$"6F64 213F 409A 0852 6561 6C4E 616D 6563"            /* od!?@�.RealNamec */
	$"0545 6D61 696C 1035 3236 3536 3736 39A5"            /* .Email.52656769� */
	$"4120 6481 7265 2073 4083 013A 000E 2074"            /* A d�re s@�.:.. t */
	$"8078 2174 8772 6F01 CA50 4943 5441 870F"            /* �x!t�ro.�PICTA�. */
	$"FFFC 0003 5553 441F 1781 FC00 1557 01DF"            /* ��..USD..��..W.� */
	$"FF1F 8080 4980 011F 1B83 FC00 DFFE 1F1B"            /* �.��I�...��.��.. */
	$"82FC 007F 1457 01FF FF5B 99F0 0003 0043"            /* ��...W.��[��...C */
	$"5452 5903 5553 4102 2028 0001 2953 4352"            /* TRY.USA. (..)SCR */
	$"4C50 524F 477F 7F7F 7E94 1852 6567 6944"            /* LPROG...~�.RegiD */
	$"5256 5213 3532 3635 3637 3639 A542 6920"            /* RVR.52656769�Bi  */
	$"6C82 5374 7220 658C 7410 3532 3635 3637"            /* l�Str e�t.526567 */
	$"3639 A542 6920 6C82 5A69 7041 8016 7F7F"            /* 69�Bi l�ZipA�... */
	$"7F7F 4480 0651 8007 1180 FE4B 8101 2A11"            /* ..D�.Q�..��K�.*. */
	$"81FE 1A42 880E 0024 0007 0007 0002 4181"            /* ��.B�..$......A� */
	$"7076 4280 0341 8172 AE42 8002 4186 71AE"            /* pvB�.A�r�B�.A�q� */
	$"0F50 5249 4E20 5488 4558 544F 424A 4543"            /* .PRIN T�EXTOBJEC */
	$"5458 800F 4789 0120 5445 5854 7374 796C"            /* TX�.G�. TEXTstyl */
	$"41A3 7379 7376 5349 434E 6865 6C70 4241"            /* A�sysvSICNhelpBA */
	$"5243 134E 6F74 2059 6574 2049 6D70 6C65"            /* RC.Not Yet Imple */
	$"6D65 6E74 6564 4684 0400 2C00 0645 81A4"            /* mentedF�..,..E�� */
	$"7841 81A3 A641 81A4 4441 81A3 C241 81A3"            /* xA���A��DA���A�� */
	$"7041 81A3 4A41 8BA3 2E07 504F 424A 4543"            /* pA��JA��..POBJEC */
	$"546D 6920 7322 2A80 6220 6F81 6C61 2064"            /* Tmi s"*�b o�la d */
	$"8C72 7073 6E20 6175 746F 6175 7443 222D"            /* �rpsn autoautC"- */
	$"846C 6973 7466 2073 8620 6165 7674 6F61"            /* �listf s� aevtoa */
	$"2070 8D6F 646F 6370 646F 6371 7569 7413"            /*  p�odocpdocquit. */
	$"4120 738F 6572 7420 4661 696C 6564 3B73"            /* A s�ert Failed;s */
	$"633B 6863 4183 013A 0004 4584 0466 7265"            /* c;hcA�.:..E�.fre */
	$"6442 8101 5E41 816F 7320 2099 7379 7376"            /* dB�.^A�os  �sysv */
	$"6576 6E74 666F 6C64 7374 6466 6865 6C70"            /* evntfoldstdfhelp */
	$"616C 6973 766D 2020 7F7F 7F7E 2001 40A5"            /* alisvm  ...~ .@� */
	$"424E 444C 7665 7273 0530 2E30 2E30 0E55"            /* BNDLvers.0.0.0.U */
	$"6E6B 6E6F 776E 2076 302E 302E 3000 0755"            /* nknown v0.0.0..U */
	$"6E6B 6E6F 776E 4100 0000 0028 0000 0000"            /* nknownA....(.... */
	$"2844 8201 0D30 5700 0000 0001 7ECA 0000"            /* (D�..0W.....~�.. */
	$"000B 7F15 8282 8282 8282 7FB1 8484 413A"            /* ....������.���A: */
	$"0000 0000 0000 000B 418E 0000 6C94 8383"            /* ........A�..l��� */
	$"8483 8383 8483 8300 0002 5B40 6E83 8A85"            /* �������...[@n��� */
	$"428E 4054 BC9B 4051 AD40 97A1 4054 9D87"            /* B�@T��@Q�@��@T�� */
	$"8D94 F640 A4B3 8AB5 8D40 43A7 404E F4F4"            /* ���@�����@C�@N�� */
	$"F240 51AD 4080 B5F2 4088 D3F2 ED40 53EF"            /* �@Q�@���@����@S� */
	$"E3F2 EE40 AF9D 8EA2 A9AF 8C8B 86AD 8C8B"            /* ���@������������ */
	$"86A4 F541 157F 9140 AF7F A87F B740 A77F"            /* ���A..�@�.�.�@�. */
	$"A87F B78F A540 7C40 47AA 98A9 8E86 9BAA"            /* �.���@|@G������� */
	$"409E 7FB9 DCB9 9D40 61AE BE40 BDD5 93AB"            /* @�.�ܹ�@a��@�Փ� */
	$"40DE C1D7 C140 9B7F 9840 7E7F 9741 29A3"            /* @����@�.�@~.�A)� */
	$"B399 A290 989C 9198 9CB7 A3B9 DC93 A4A3"            /* ������������ܓ�� */
	$"A3A3 A3A7 8A97 9C91 4047 EDED F040 5040"            /* ��������@G���@P@ */
	$"DFDB DBD8 CDE0 4100 898C 889B A0A7 8A8B"            /* ������A.�������� */
	$"85BD 8E40 E58A 97AA 4120 7EEE B8DB B691"            /* ���@劗�A ~�۶� */
	$"4075 7F99 99AA AD40 9BDE 404C BC40 BEE8"            /* @u.����@��@L�@�� */
	$"88AB 4168 7EAD 89AF 8E40 6092 BEED 41E3"            /* ��Ah~����@`���A� */
	$"7F80 7FBF C741 04CB 7FB5 7FBF C740 A540"            /* .�.��A.�.�.��@�@ */
	$"7940 5090 4056 95F7 9F40 927F BC40 BCD2"            /* y@P�@V���@�.�@�� */
	$"4051 EFE3 EF40 598D 404D 4094 BAF4 F4F4"            /* @Q���@Y�@M@����� */
	$"4098 EF41 158D 406C A540 9AF2 9640 5F41"            /* @��A.�@l�@��@_A */
	$"7F7F 9DD3 D340 C4E2 7FBB D3D3 4066 D6D3"            /* ..���@��.���@f�� */
	$"4084 94A5 B740 57B8 90AD 8BA8 9140 41EE"            /* @����@W������@A� */
	$"4043 4046 405F 422A 7F45 409B E0F4 F2F2"            /* @C@F@_B*.E@����� */
	$"F2CB 4079 9D87 404C 9D8B AD94 8C98 40A7"            /* ��@y��@L������@� */
	$"9BF7 F79B 4052 86A2 8A90 A741 B17E ED40"            /* ����@R�����A�~�@ */
	$"5640 C440 42F9 F9F9 F940 53B4 A285 B740"            /* V@�@B����@S����@ */
	$"B840 ACBB 9490 9991 8383 8583 9E8F 8683"            /* �@�������������� */
	$"8383 8686 8386 B7F0 8785 8792 9C8A 8585"            /* ���������������� */
	$"A09A F096 F096 8987 8DA5 EE9A EEAB 4041"            /* ���𖉇����@A */
	$"EE40 558D 89A2 8E86 8D8A 8592 9A8A 8A8C"            /* �@U������������� */
	$"8A87 B6B7 888F 878B 8E85 406B 8B9D 40B0"            /* ����������@k��@� */
	$"E3B0 E340 6E40 4540 6740 B07F 8B40 7A9B"            /* ��@n@E@g@�.�@z� */
	$"8540 4DA7 9597 404C EF9F 4043 B48D 404D"            /* �@M���@L�@C��@M */
	$"EF95 EF40 5240 40F0 8440 77D7 40AA 405C"            /* ��@R@@��@w�@�@\ */
	$"A892 838A B140 4DAA F7F7 F740 51A5 4069"            /* �����@M����@Q�@i */
	$"4105 A640 40AD EDA3 B940 9640 4942 1C7F"            /* A.�@@��@�@IB.. */
	$"7F7F 0497 4051 A9F4 4054 9BAB 898B 8F86"            /* ...�@Q��@T������ */
	$"97AC 8489 8895 AD96 9791 968C 878F 869B"            /* ���������������� */
	$"B192 8383 8B40 6FF6 4081 AB40 7F40 749F"            /* �����@o�@��@.@t� */
	$"A1A4 B2F3 F8F3 4043 93B6 A183 A79E 404A"            /* ������@C������@J */
	$"899A 97F1 878F 8685 40C1 438B A885 879D"            /* ���񇏆�@�C����� */
	$"B88B B788 8741 A640 7590 404F F8BB 8ABB"            /* �����A�@u�@O���� */
	$"F542 0640 DE89 938F 8AA0 407B 9AA1 410D"            /* �B.@މ����@{��A. */
	$"C97F B7D7 413D 8A40 D7F5 A7B8 418E 4055"            /* �.��A=�@����A�@U */
	$"F740 72A0 438B 4056 4157 40BA 7FAA DBD4"            /* �@r�C�@VAW@�.��� */
	$"8EAA 4085 7F86 4042 40D3 7F38 A341 649E"            /* ��@�.�@B@�.8�Ad� */
	$"9EBD F4F2 F240 AEF1 F2F1 40BF DCB6 A492"            /* �����@����@�ܶ�� */
	$"4061 B540 739D 99A4 9AA0 89B9 404D 408D"            /* @a�@s�������@M@� */
	$"9740 45A7 4054 411E 9287 43C0 B78B 889D"            /* �@E�@TA.��C����� */
	$"91A1 B640 48EE 9940 C0F5 404A A49E 4096"            /* ���@H�@��@J��@� */
	$"9F41 4840 6041 1300 0000 00"                        /* �AH@`A..... */
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
	204800,
	204800
};

resource 'vers' (1, purgeable) {
	0x1,
	0x25,
	release,
	0x0,
	6,
	"F1.2.5",
	"Register vF1.2.5 � 1994-96 Peter N Lewis"
	" (jpk - 3.11.96)"
};

data 'SCRL' (128) {
	$"0451 454A 46"                                       /* .QEJF */
};

data 'PROG' (128) {
	$"0002 1749 636F 6E6F 6772 6170 6865 7220"            /* ...Iconographer  */
	$"2846 7261 6E8D 6169 7329 0004 5145 4A46"            /* (Fran�ais)..QEJF */
	$"1B4D 6973 6520 8820 6A6F 7572 2064 6570"            /* .Mise � jour dep */
	$"7569 7320 636C 6970 3269 636E 0000 0001"            /* uis clip2icn.... */
	$"0001 000F 0000 0096 0258 0001 0005 0000"            /* .......�.X...... */
	$"0032 00C8 0963 6C69 7032 6963 6E73 0004"            /* .2.�.clip2icns.. */
	$"5145 4A49 0000 0000 0100 0100 0A00 0000"            /* QEJI............ */
	$"6401 F400 0000 FA03 E8"                             /* d.�...�.� */
};

data 'DLGX' (200) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0032 0002 0000 0000 0000 0000 0000 0002"            /* .2.............. */
	$"0000 0000 0000 0000 0000 0002 0000 0000"            /* ................ */
	$"0000 0000 0000 0002 0000 0000 0000 0000"            /* ................ */
	$"0000 0007 0000 0000 0000 0000 0000 0007"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0007"            /* ................ */
	$"0000 0000 0000 0000 0000 0007 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0008 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0007 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0008 0000 0000 0000 0000 0000 0007"            /* ................ */
	$"0000 0000 0000 0000 0000 0007 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0008 0000 0000"            /* ................ */
	$"0000 0000 0000 000A 0000 0000 0000 0000"            /* ................ */
	$"0000 000A 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0007 0000 0000 0000 0000 0000 0007"            /* ................ */
	$"0000 0000 0000 0000 0000 0008 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0007 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 000A 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 000A"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0284"            /* ...............� */
	$"0002 5049 4354 0062 6D61"                           /* ..PICT.bma */
};

data 'ictb' (200) {
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
	$"0000 0000 0000 0000"                                /* ........ */
};

resource 'icns' (-16455) {
	{	/* array elementArray: 11 elements */
		/* [1] */
		'icm8',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000",
		/* [2] */
		'ics#',
		$"0100 0280 05C0 0AE0 15F0 2DF8 5CFC BFFE"
		$"7FFE 3D7C 1FF8 0FF0 07E0 03C0 0180 0000"
		$"0180 03C0 07E0 0FF0 1FF8 3FFC 7FFE FFFF"
		$"FFFF 7FFE 3FFC 1FF8 0FF0 07E0 03C0 0180",
		/* [3] */
		'ics4',
		$"0000 000F 0000 0000 0000 00F7 F000 0000"
		$"0000 0F77 7F00 0000 0000 F77F 77F0 0000"
		$"000F 77FF F77F 0000 00F7 7F7F 7F77 F000"
		$"0F77 7F7F 7777 7F00 F777 7F7F 7777 77F0"
		$"F777 77FF F777 77F0 0F77 777F 7F77 7F00"
		$"00F7 7F7F 7F77 F000 000F 77FF F77F 0000"
		$"0000 F77F 77F0 0000 0000 0F77 7F00 0000"
		$"0000 00F7 F000 0000 0000 000F 0000 0000",
		/* [4] */
		'ics8',
		$"0000 0000 0000 00FF 2B00 0000 0000 0000"
		$"0000 0000 0000 FF4E FF2B 0000 0000 0000"
		$"0000 0000 00FF 4E9E CEFF 2B00 0000 0000"
		$"0000 0000 FF78 9E0A 7AC8 FF2B 0000 0000"
		$"0000 00FF 4EA4 2D2E 04A4 C8FF 2B00 0000"
		$"0000 FF4E CD74 2ECF ABA5 C7CE FF2B 0000"
		$"00FF 4EC7 C7A4 042D 7BCE C7C7 C8FF 2B00"
		$"FF55 C7C7 C7C7 A558 047A C7C7 CECF FF2B"
		$"2BFF CEC7 C79D A4CE 2E51 CDC8 CFFF 812B"
		$"002B EACE C77A 0457 0382 C8CF FF81 2B00"
		$"0000 2BFF CEC7 5704 82CF CFFF 812B 0000"
		$"0000 002B FFC8 CE2E A5CF FF81 2B00 0000"
		$"0000 0000 2BFF C8CE CFFF 812B 0000 0000"
		$"0000 0000 002B FFCF FF81 2B00 0000 0000"
		$"0000 0000 0000 2BFF 812B 0000 0000 0000"
		$"0000 0000 0000 002B 2B00 0000 0000 0000",
		/* [5] */
		'is32',
		$"84FF 0100 008A FF03 0080 0000 88FF 0200"
		$"805A 8000 86FF 0400 803F F85C 8000 84FF"
		$"0600 8027 DABD F346 8000 82FF 0700 8000"
		$"6DD9 0041 2F81 0080 FF07 0080 0300 37F3"
		$"C95D 8300 03FF 0080 0480 0003 38B0 FD69"
		$"8800 043C 3600 B9AD 8300 00FF 8100 0471"
		$"F38C E969 8200 80FF 8000 0407 85FF 8505"
		$"8100 82FF 8000 020D B924 8100 84FF 8000"
		$"000D 8100 86FF 8300 88FF 8100 8AFF 0100"
		$"0084 FF84 FF01 0000 8AFF 0300 B300 0088"
		$"FF05 00B3 994D 0000 86FF 0700 B389 EF91"
		$"4D00 0084 FF09 00B3 7DDC BEE8 8A4D 0000"
		$"82FF 0B00 B360 A3D3 2A5F 595F 4D00 0080"
		$"FF1C 00B3 6661 7FE9 D188 4962 674D 0000"
		$"FF00 B368 6567 5B66 B0F2 9D60 664D 3381"
		$"000A 4D67 6388 762D BFB7 534D 3380 000B"
		$"FF00 004D 5FA2 EDAF E879 4C33 8000 80FF"
		$"0800 004D 5E97 F48F 2E33 8000 82FF 0600"
		$"004D 5BBC 4733 8000 84FF 0400 004D 5033"
		$"8000 86FF 0200 0033 8000 88FF 8100 8AFF"
		$"0100 0084 FF84 FF01 0000 8AFF 0300 E600"
		$"0088 FF05 00E6 9E99 0000 86FF 0700 E6AB"
		$"4389 9900 0084 FF09 00E6 B94F 443F A199"
		$"0000 82FF 0B00 E6D6 9140 5956 65C6 9900"
		$"0080 FF1C 00E6 CED1 A441 567A 9DC6 CF99"
		$"0000 FF00 E6D0 CCCE CA71 3B3F 8BCF CC99"
		$"6681 000A 99CE CFAD 9689 4D51 B799 6680"
		$"000B FF00 0099 D689 477C 5045 AA66 8000"
		$"80FF 0800 0099 BB53 3E42 5E66 8000 82FF"
		$"0600 0099 A046 5366 8000 84FF 0400 0099"
		$"8966 8000 86FF 0200 0066 8000 88FF 8100"
		$"8AFF 0100 0084 FF",
		/* [6] */
		's8mk',
		$"0000 0000 0000 00FF 3300 0000 0000 0000"
		$"0000 0000 0000 FFFF FF33 0000 0000 0000"
		$"0000 0000 00FF FFFF FFFF 3300 0000 0000"
		$"0000 0000 FFFF FFFF FFFF FF33 0000 0000"
		$"0000 00FF FFFF FFFF FFFF FFFF 3300 0000"
		$"0000 FFFF FFFF FFFF FFFF FFFF FF33 0000"
		$"00FF FFFF FFFF FFFF FFFF FFFF FFFF 3300"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FF33"
		$"33FF FFFF FFFF FFFF FFFF FFFF FFFF 9933"
		$"0033 FFFF FFFF FFFF FFFF FFFF FF99 3300"
		$"0000 33FF FFFF FFFF FFFF FFFF 9933 0000"
		$"0000 0033 FFFF FFFF FFFF FF99 3300 0000"
		$"0000 0000 33FF FFFF FFFF 9933 0000 0000"
		$"0000 0000 0033 FFFF FF99 3300 0000 0000"
		$"0000 0000 0000 33FF 9933 0000 0000 0000"
		$"0000 0000 0000 0033 3300 0000 0000 0000",
		/* [7] */
		'ICN#',
		$"0000 8000 0001 C000 0003 6000 0006 F000"
		$"000D F800 001B FC00 0037 7E00 006E 3F00"
		$"00DC 1F80 01B8 8FC0 0379 CFE0 06F9 FFF0"
		$"0DF9 FFF8 1BF8 3FFC 37FC 1FFE 6FFF 8FFF"
		$"3FFF CFFF 1FFF CFFE 0FF1 CFFC 07F8 8FF8"
		$"03F8 1FF0 01FE 3FE0 00FF 7FC0 007F 7F80"
		$"003F FF00 001F FE00 000F FC00 0007 F800"
		$"0003 F000 0001 E000 0000 C000 0000 0000"
		$"0000 C000 0001 E000 0003 F000 0007 F800"
		$"000F FC00 001F FE00 003F FF00 007F FF80"
		$"00FF FFC0 01FF FFE0 03FF FFF0 07FF FFF8"
		$"0FFF FFFC 1FFF FFFE 3FFF FFFF 7FFF FFFF"
		$"7FFF FFFF 3FFF FFFF 1FFF FFFE 0FFF FFFC"
		$"07FF FFF8 03FF FFF0 01FF FFE0 00FF FFC0"
		$"007F FF80 003F FF00 001F FE00 000F FC00"
		$"0007 F800 0003 F000 0001 E000 0000 C000",
		/* [8] */
		'icl4',
		$"0000 0000 0000 000F F000 0000 0000 0000"
		$"0000 0000 0000 00F7 7F00 0000 0000 0000"
		$"0000 0000 0000 0F77 77F0 0000 0000 0000"
		$"0000 0000 0000 F777 777F 0000 0000 0000"
		$"0000 0000 000F 7777 7777 F000 0000 0000"
		$"0000 0000 00F7 7777 7777 7F00 0000 0000"
		$"0000 0000 0F77 7771 1777 77F0 0000 0000"
		$"0000 0000 F777 7771 1777 777F 0000 0000"
		$"0000 000F 7777 7111 1117 7777 F000 0000"
		$"0000 00F7 7777 1111 1111 7777 7F00 0000"
		$"0000 0F77 7771 1771 1771 1777 77F0 0000"
		$"0000 F777 7771 1771 1771 1777 777F 0000"
		$"000F 7777 7771 1771 1777 7777 7777 F000"
		$"00F7 7777 7771 1771 1777 7777 7777 7F00"
		$"0F77 7777 7771 1171 1777 7777 7777 77F0"
		$"F777 7777 7777 1111 1117 7777 7777 777F"
		$"F777 7777 7777 7111 1111 7777 7777 777F"
		$"0F77 7777 7777 7771 1711 1777 7777 77F0"
		$"00F7 7777 7777 7771 1771 1777 7777 7F00"
		$"000F 7777 7777 7771 1771 1777 7777 F000"
		$"0000 F777 7771 1771 1771 1777 777F 0000"
		$"0000 0F77 7771 1771 1771 1777 77F0 0000"
		$"0000 00F7 7777 1111 1111 7777 7F00 0000"
		$"0000 000F 7777 7111 1117 7777 F000 0000"
		$"0000 0000 F777 7771 1777 777F 0000 0000"
		$"0000 0000 0F77 7771 1777 77F0 0000 0000"
		$"0000 0000 00F7 7777 7777 7F00 0000 0000"
		$"0000 0000 000F 7777 7777 F000 0000 0000"
		$"0000 0000 0000 F777 777F 0000 0000 0000"
		$"0000 0000 0000 0F77 77F0 0000 0000 0000"
		$"0000 0000 0000 00F7 7F00 0000 0000 0000"
		$"0000 0000 0000 000F F000 0000 0000 0000",
		/* [9] */
		'icl8',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"FF2B 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 00FF"
		$"C7FF 2B00 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 FFC7"
		$"4ECE FF2B 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 00FF C754"
		$"C7C7 C8FF 2B00 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 FFC7 4FC7"
		$"C7C7 C7CE FF2B 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 00FF C74F C67B"
		$"2D7A C7C7 C8FF 2B00 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 FFC7 54C7 C72D"
		$"2857 C7C7 C7C8 FF2B 0000 0000 0000 0000"
		$"0000 0000 0000 0000 00FF C74E C7C7 9E2E"
		$"032D A5C7 C7C7 C8FF 2B00 0000 0000 0000"
		$"0000 0000 0000 0000 FFC7 55C7 C77A 0409"
		$"2E04 037B C7C7 C7CE FF2B 0000 0000 0000"
		$"0000 0000 0000 00FF C74E C7C7 A304 042D"
		$"5803 2E0A C7C7 C7C7 C8FF 2B00 0000 0000"
		$"0000 0000 0000 FFC7 54C7 C7C7 7B03 2ECF"
		$"D0AC 0304 A5C7 C7C7 C7CE FF2B 0000 0000"
		$"0000 0000 00FF C74F C7C7 C7C7 502E 09D0"
		$"CFCF D0F1 CFCE C7C7 C7C7 C8FF 2B00 0000"
		$"0000 0000 FFC7 54C7 C7C7 C7C7 7B03 0457"
		$"A5C7 CECF CFC8 C7C7 C7C7 C7C8 FF2B 0000"
		$"0000 00FF C74F C7C7 C7C7 C7C7 A404 2D04"
		$"0A27 57C8 C7C7 C7C7 C7C7 C7C7 C8FF 2B00"
		$"0000 FFC7 54C7 C7C7 C7C7 C7C7 C7A5 0409"
		$"280A 032D C7C7 C7C7 C7C7 C7C7 C7CE FF2B"
		$"00FF C74E C7C7 C7C7 C7C7 C7C7 C7C8 CFA6"
		$"3403 280A 7BC7 C7C7 C7C7 C7C7 C7C7 C8FF"
		$"002B FFCE C7C7 C7C7 C7C7 C7C7 C7CD C8CF"
		$"CF82 0928 57C8 C7C7 C7C7 C7C7 CECF FF81"
		$"0000 2BFF C8C7 C7C7 C7C7 C7C7 7A7A A4C8"
		$"CECF 2809 2ECE C7C7 C7C7 C7CE CFFF 812B"
		$"0000 002B FFC8 C7C7 C7C7 C7C7 2E03 2DC7"
		$"C8A4 0404 7BCF CEC7 C7C7 C8CF FF81 2B00"
		$"0000 0000 2BFF C8C7 C7C7 C7C7 502E 042E"
		$"502E 030A FCCF C7C7 C7CE CFFF 812B 0000"
		$"0000 0000 002B FFC8 C7C7 C7C7 A42D 0409"
		$"0403 2E7B D0CE C8C7 C7CF FF81 2B00 0000"
		$"0000 0000 0000 2BFF CEC7 C7C7 C7AB 7B04"
		$"2E2E 81D6 CFCE C7C8 CFFF 812B 0000 0000"
		$"0000 0000 0000 002B FFC8 C7C7 C7C8 CF57"
		$"0457 D0D0 CEC8 CECF FF81 2B00 0000 0000"
		$"0000 0000 0000 0000 2BFF CEC7 C7C7 CE52"
		$"0358 CFCE C8C8 CFFF 812B 0000 0000 0000"
		$"0000 0000 0000 0000 002B FFC8 C7C7 C7A4"
		$"82A5 CFC8 CDCF FF81 2B00 0000 0000 0000"
		$"0000 0000 0000 0000 0000 2BFF CEC7 C7C8"
		$"CECF CFCE CFFF 812B 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 002B FFC8 C7C7"
		$"C8CE C8CF FF81 2B00 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 2BFF CEC7"
		$"C7CE CFFF 812B 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 002B FFC8"
		$"CECF FF81 2B00 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 2BFF"
		$"CFFF 812B 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 002B"
		$"FF81 2B00 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"2B2B 0000 0000 0000 0000 0000 0000 0000",
		/* [10] */
		'il32',
		$"8DFF 0100 009A FF81 0098 FF02 0000 8080"
		$"0096 FF02 0000 8082 0094 FF02 0000 8084"
		$"0092 FF06 0000 8000 82AE 6E82 0090 FF07"
		$"0000 8000 00AE EE97 8300 8EFF 0900 0080"
		$"0000 48D3 EEC7 3C83 008C FF05 0000 8000"
		$"0077 82EE 0067 8300 8AFF 0D00 0080 0000"
		$"2BEE EED3 9BDE EEE7 1483 0088 FF02 0000"
		$"8080 0008 7AEE E717 003C EEEE 4C84 0086"
		$"FF02 0000 8081 0003 97EE DA04 8A00 84FF"
		$"0200 0080 8200 0577 EEEE AF38 0489 0082"
		$"FF02 0000 8083 0001 1FE7 80EE 02DA 800B"
		$"8800 80FF 0200 0080 8500 014B DE81 EE01"
		$"B607 8800 03FF 0000 8087 0002 105B B680"
		$"EE00 6388 0000 FF8D 0003 6EEE EEA6 8800"
		$"01FF FF87 0008 5757 3700 0004 EEEE AE88"
		$"0080 FF86 0008 DEEE C604 0037 EEEE 9387"
		$"0082 FF85 0008 9AEE EEC2 9BDE EEEE 3C86"
		$"0084 FF84 0001 1BD7 82EE 0083 8600 86FF"
		$"8400 051B 93E7 EECE 5786 0088 FF85 0002"
		$"AEEE 9786 008A FF84 0002 AEEE 9785 008C"
		$"FF83 0002 4357 3784 008E FF8B 0090 FF89"
		$"0092 FF87 0094 FF85 0096 FF83 0098 FF81"
		$"009A FF01 0000 8BFF 8DFF 0100 009A FF03"
		$"0066 0000 98FF 0500 66B3 5200 0096 FF07"
		$"0066 B366 6652 0000 94FF 0200 66B3 8166"
		$"0252 0000 92FF 0B00 66B3 66AD C5A2 6666"
		$"5200 0090 FF0D 0066 B366 66C4 E8B4 5E64"
		$"6652 0000 8EFF 0F00 66B3 6666 8DD8 E8CC"
		$"725E 6666 5200 008C FF05 0066 B366 66A7"
		$"82E8 0696 6566 6652 0000 8AFF 1300 66B3"
		$"6666 7DE8 E8D5 A6DB E8E3 6764 6666 5200"
		$"0088 FF02 0066 B380 6609 A8E8 E33E 2151"
		$"E8E8 785C 8066 0252 0000 86FF 0200 66B3"
		$"8166 0AB7 E8D9 252D 332A 2130 5164 8066"
		$"0252 0000 84FF 0200 66B3 8266 0AA2 E8E8"
		$"B56C 5647 3438 5163 8166 0252 0000 82FF"
		$"0200 66B3 8366 016D E380 E805 DDA8 5D56"
		$"5E64 8266 0252 0000 80FF 0200 66B3 8466"
		$"025E 76DB 81E8 01C7 6785 6606 5200 00FF"
		$"0066 B385 6604 624F 3D6C B980 E801 9262"
		$"8466 0652 5200 FF00 0052 8666 095D 4832"
		$"267C E8E8 B355 6482 6608 5233 0000 FFFF"
		$"0000 5284 660A 9594 7E52 4438 E8E8 B445"
		$"5E81 6601 5233 8000 80FF 0200 0052 8366"
		$"0ADF E8D1 625D 76E8 E89B 3A5A 8066 0152"
		$"3380 0082 FF02 0000 5282 660E B7E8 E8CC"
		$"B9DF E8E8 5238 5966 6652 3380 0084 FF02"
		$"0000 5281 6601 68D7 82E8 0691 223E 5C66"
		$"5233 8000 86FF 0200 0052 8066 0C5B 509C"
		$"E2E8 D06F 202C 4A61 5233 8000 88FF 1000"
		$"0052 6666 6250 34B3 E89F 202A 405A 5133"
		$"8000 8AFF 0E00 0052 6666 6050 B9E8 9E2A"
		$"4358 5033 8000 8CFF 0C00 0052 6666 627B"
		$"7451 3755 5133 8000 8EFF 0A00 0052 6666"
		$"5A3E 3042 4A33 8000 90FF 0800 0052 6660"
		$"514A 4330 8000 92FF 0600 0052 6462 4D31"
		$"8000 94FF 0400 0052 5233 8000 96FF 0200"
		$"0033 8000 98FF 8100 9AFF 0100 008B FF8D"
		$"FF01 0000 9AFF 0300 CC00 0098 FF05 00CC"
		$"E6A3 0000 96FF 0700 CCE6 CCCC A300 0094"
		$"FF02 00CC E681 CC02 A300 0092 FF0B 00CC"
		$"E6CC 846B 8ECC CCA3 0000 90FF 0D00 CCE6"
		$"CCCC 6947 6FBD C8CC A300 008E FF0F 00CC"
		$"E6CC CCA4 5447 5082 BDCC CCA3 0000 8CFF"
		$"0500 CCE6 CCCC 8A82 4706 82CA CCCC A300"
		$"008A FF13 00CC E6CC CCB4 4747 4E4B 4647"
		$"49AD C8CC CCA3 0000 88FF 0200 CCE6 80CC"
		$"0F87 4749 5542 4047 4774 B9CB CCCC A300"
		$"0086 FF02 00CC E681 CC0A 7547 4943 5A66"
		$"5442 61A2 C780 CC02 A300 0084 FF02 00CC"
		$"E682 CC0A 8147 474A 7CA5 8E69 70A2 C681"
		$"CC02 A300 0082 FF02 00CC E683 CC01 A849"
		$"8047 0551 7DA8 ACBD C982 CC02 A300 0080"
		$"FF02 00CC E684 CC01 BB72 8247 0262 C2CB"
		$"84CC 06A3 0000 FF00 CCE6 85CC 04C5 9E60"
		$"4145 8047 027F C3CB 83CC 06A3 A300 FF00"
		$"00A3 85CC 0ACB BA90 644B 4247 4755 AAC7"
		$"82CC 08A3 6600 00FF FF00 00A3 84CC 0A9B"
		$"9AA1 A488 6947 4749 8ABD 81CC 01A3 6680"
		$"0080 FF02 0000 A383 CC0A 5047 5BBD BA91"
		$"4747 4575 B380 CC01 A366 8000 82FF 0200"
		$"00A3 82CC 0E70 4747 5871 4F47 4741 71B2"
		$"CCCC A366 8000 84FF 0200 00A3 81CC 01A5"
		$"4C82 4706 4944 7CB7 CCA3 6680 0086 FF02"
		$"0000 A380 CC01 B674 8047 074C 5040 5795"
		$"C2A3 6680 0088 FF10 0000 A3CC CCC4 A069"
		$"4747 4440 5381 B3A1 6680 008A FF0E 0000"
		$"A3CC CBBF A053 4743 5586 B19F 6680 008C"
		$"FF0C 0000 A3CC CBC4 8859 476E AAA0 6680"
		$"008E FF0A 0000 A3CC CCB5 7D5F 8393 6680"
		$"0090 FF08 0000 A3CC BFA2 9485 6180 0092"
		$"FF06 0000 A3C9 C399 6280 0094 FF04 0000"
		$"A3A3 6680 0096 FF02 0000 6680 0098 FF81"
		$"009A FF01 0000 8BFF",
		/* [11] */
		'l8mk',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"FF33 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 00FF"
		$"FFFF 3300 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 FFFF"
		$"FFFF FF33 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 00FF FFFF"
		$"FFFF FFFF 3300 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 FFFF FFFF"
		$"FFFF FFFF FF33 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 00FF FFFF FFFF"
		$"FFFF FFFF FFFF 3300 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FF33 0000 0000 0000 0000"
		$"0000 0000 0000 0000 00FF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF 3300 0000 0000 0000"
		$"0000 0000 0000 0000 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FF33 0000 0000 0000"
		$"0000 0000 0000 00FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF 3300 0000 0000"
		$"0000 0000 0000 FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FF33 0000 0000"
		$"0000 0000 00FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF 3300 0000"
		$"0000 0000 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FF33 0000"
		$"0000 00FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF 3300"
		$"0000 FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FF33"
		$"00FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0033 FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FF99"
		$"0000 33FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF 9933"
		$"0000 0033 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FF99 3300"
		$"0000 0000 33FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF 9933 0000"
		$"0000 0000 0033 FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FF99 3300 0000"
		$"0000 0000 0000 33FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF 9933 0000 0000"
		$"0000 0000 0000 0033 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FF99 3300 0000 0000"
		$"0000 0000 0000 0000 33FF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF 9933 0000 0000 0000"
		$"0000 0000 0000 0000 0033 FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FF99 3300 0000 0000 0000"
		$"0000 0000 0000 0000 0000 33FF FFFF FFFF"
		$"FFFF FFFF FFFF 9933 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0033 FFFF FFFF"
		$"FFFF FFFF FF99 3300 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 33FF FFFF"
		$"FFFF FFFF 9933 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0033 FFFF"
		$"FFFF FF99 3300 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 33FF"
		$"FFFF 9933 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0033"
		$"FF99 3300 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"3333 0000 0000 0000 0000 0000 0000 0000"
	}
};

