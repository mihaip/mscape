/* Resource fork of software/extras/Iconographer Support/Testing/Programs/D' Studio 1.6 PPC ∆í/Register */
resource 'vers' (1, purgeable) {
	0x1,
	0x25,
	release,
	0x0,
	15,
	"1.2.5",
	"Register v1.2.5 © 1994-96 Peter N Lewis"
};

resource 'FREF' (128, purgeable) {
	'APPL',
	0,
	""
};

data 'DLOG' (128, "About", purgeable) {
	$"0030 002A 00EA 0143 0005 0000 0000 0000"            /* .0.*.Í.C........ */
	$"0000 0080 0541 626F 7574"                           /* ...Ä.About */
};

data 'DLOG' (225, "Comment", purgeable) {
	$"0033 000D 00EA 01F4 0005 0000 0000 0000"            /* .3...Í.Ù........ */
	$"0000 00E1 0743 6F6D 6D65 6E74"                      /* ...·.Comment */
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

data 'DLOG' (226, "Bill Address", purgeable) {
	$"0033 000D 00EA 01F4 0005 0000 0000 0000"            /* .3...Í.Ù........ */
	$"0000 00E2 1B43 7265 6469 7420 4361 7264"            /* ...‚.Credit Card */
	$"2042 696C 6C69 6E67 2041 6464 7265 7373"            /*  Billing Address */
};

resource 'DITL' (128, purgeable) {
	{	/* array DITLarray: 9 elements */
		/* [1] */
		{156, 112, 176, 170},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{150, 128, 182, 160},
		UserItem {
			disabled
		},
		/* [3] */
		{1, 2, 50, 277},
		UserItem {
			enabled
		},
		/* [4] */
		{39, 140, 52, 235},
		UserItem {
			enabled
		},
		/* [5] */
		{56, 2, 81, 278},
		UserItem {
			disabled
		},
		/* [6] */
		{85, 2, 98, 278},
		UserItem {
			enabled
		},
		/* [7] */
		{107, 46, 132, 274},
		UserItem {
			enabled
		},
		/* [8] */
		{132, 78, 145, 249},
		UserItem {
			enabled
		},
		/* [9] */
		{104, 8, 136, 40},
		Icon {
			enabled,
			928
		}
	}
};

resource 'DITL' (225, purgeable) {
	{	/* array DITLarray: 5 elements */
		/* [1] */
		{157, 416, 177, 474},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{157, 344, 177, 402},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{152, 432, 184, 464},
		UserItem {
			disabled
		},
		/* [4] */
		{63, 8, 145, 480},
		EditText {
			enabled,
			""
		},
		/* [5] */
		{5, 8, 56, 479},
		StaticText {
			disabled,
			"The recommended way to send comments to "
			"an author is to email them separately, b"
			"ut you can include a short comment about"
			" “^1” by typing it here:"
		}
	}
};

resource 'DITL' (200, purgeable) {
	{	/* array DITLarray: 50 elements */
		/* [1] */
		{273, 407, 293, 477},
		Button {
			enabled,
			"Save…"
		},
		/* [2] */
		{273, 327, 293, 397},
		Button {
			enabled,
			"Quit"
		},
		/* [3] */
		{244, 327, 264, 397},
		Button {
			enabled,
			"Print…"
		},
		/* [4] */
		{244, 407, 264, 477},
		Button {
			enabled,
			"Copy…"
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
			"Email Address:"
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
			"Postal Address (optional):"
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
		{89, 165, 107, 263},
		CheckBox {
			enabled,
			""
		},
		/* [13] */
		{89, 265, 107, 400},
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
		{128, 165, 146, 263},
		CheckBox {
			enabled,
			""
		},
		/* [19] */
		{128, 265, 146, 400},
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
		{167, 165, 185, 263},
		CheckBox {
			enabled,
			""
		},
		/* [25] */
		{167, 265, 185, 400},
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
		{231, 96, 243, 287},
		EditText {
			enabled,
			""
		},
		/* [33] */
		{252, 96, 264, 287},
		EditText {
			enabled,
			"0000-0000-0000-0000"
		},
		/* [34] */
		{273, 96, 285, 287},
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
		{231, 16, 243, 91},
		StaticText {
			disabled,
			"Name on Card:"
		},
		/* [37] */
		{252, 16, 264, 91},
		StaticText {
			disabled,
			"Card Number:"
		},
		/* [38] */
		{273, 16, 285, 91},
		StaticText {
			disabled,
			"Expiry (M/Y):"
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
			"For more information about First Virtual"
			", send email to <help@fv.com>"
		},
		/* [42] */
		{231, 16, 288, 290},
		StaticText {
			disabled,
			"cheque text"
		},
		/* [43] */
		{252, 16, 288, 290},
		StaticText {
			disabled,
			"cash text item"
		},
		/* [44] */
		{231, 96, 247, 196},
		UserItem {
			enabled
		},
		/* [45] */
		{231, 16, 247, 91},
		StaticText {
			disabled,
			"Currency:"
		},
		/* [46] */
		{205, 96, 221, 196},
		UserItem {
			enabled
		},
		/* [47] */
		{189, 8, 293, 294},
		UserItem {
			disabled
		},
		/* [48] */
		{205, 16, 217, 91},
		StaticText {
			disabled,
			"Method:"
		},
		/* [49] */
		{1, 8, 13, 208},
		StaticText {
			disabled,
			"Register To:"
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

resource 'DITL' (226, purgeable) {
	{	/* array DITLarray: 10 elements */
		/* [1] */
		{155, 416, 175, 474},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{155, 344, 175, 402},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{150, 432, 182, 464},
		UserItem {
			disabled
		},
		/* [4] */
		{155, 182, 175, 330},
		Button {
			enabled,
			"Not a USA address"
		},
		/* [5] */
		{105, 120, 121, 475},
		EditText {
			enabled,
			""
		},
		/* [6] */
		{130, 120, 146, 234},
		EditText {
			enabled,
			""
		},
		/* [7] */
		{5, 8, 38, 480},
		StaticText {
			disabled,
			"In order to help prevent fraud, the cred"
			"it card companies now request that you i"
			"nclude your credit card billing address."
		},
		/* [8] */
		{40, 8, 95, 480},
		StaticText {
			disabled,
			"Only the street address (eg “1442-A Waln"
			"ut Street #392”) or post office box addr"
			"ess (eg “PO Box 1256”) together with you"
			"r zip code (eg “94709-1405”) are require"
			"d."
		},
		/* [9] */
		{105, 8, 121, 115},
		StaticText {
			disabled,
			"Street Address:"
		},
		/* [10] */
		{130, 8, 146, 115},
		StaticText {
			disabled,
			"Zip code:"
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
	$"5365 6E64 2074 6869 7320 666F 726D 2074"            /* Send this form t */
	$"6F67 6574 6865 7220 7769 7468 2079 6F75"            /* ogether with you */
	$"7220 6368 6563 6B20 6D61 6465 206F 7574"            /* r check made out */
	$"2074 6F20 D24B 6167 6920 5368 6172 6577"            /*  to “Kagi Sharew */
	$"6172 65D3 2074 6F20 7468 6520 6164 6472"            /* are” to the addr */
	$"6573 7320 6265 6C6F 772E 2054 6865 2055"            /* ess below. The U */
	$"2E53 2E20 4665 6465 7261 6C20 456D 706C"            /* .S. Federal Empl */
	$"6F79 6572 2049 6465 6E74 6966 6963 6174"            /* oyer Identificat */
	$"696F 6E20 4E75 6D62 6572 2022 4645 494E"            /* ion Number "FEIN */
	$"2220 666F 7220 4B61 6769 2053 6861 7265"            /* " for Kagi Share */
	$"7761 7265 2069 7320 3934 2D33 3231 3339"            /* ware is 94-32139 */
	$"3337 2E20 5468 6520 5553 2067 6F76 6572"            /* 37. The US gover */
	$"6E6D 656E 7420 646F 6573 206E 6F74 2063"            /* nment does not c */
	$"6C61 7373 6966 7920 4B61 6769 2053 6861"            /* lassify Kagi Sha */
	$"7265 7761 7265 2061 7320 6120 776F 6D65"            /* reware as a wome */
	$"6E20 6F77 6E65 6420 6275 7369 6E65 7373"            /* n owned business */
	$"206F 7220 6173 2061 206D 696E 6F72 6974"            /*  or as a minorit */
	$"7920 6F77 6E65 6420 6275 7369 6E65 7373"            /* y owned business */
	$"2E20 4974 2069 7320 636C 6173 7369 6669"            /* . It is classifi */
	$"6564 2061 7320 6120 736D 616C 6C20 7365"            /* ed as a small se */
	$"7276 6963 6520 6275 7369 6E65 7373 206F"            /* rvice business o */
	$"776E 6564 2062 7920 616E 2069 6E64 6976"            /* wned by an indiv */
	$"6964 7561 6C2E 0D0D 5365 6E64 2074 6869"            /* idual...Send thi */
	$"7320 666F 726D 2077 6974 6820 796F 7572"            /* s form with your */
	$"2070 6179 6D65 6E74 2074 6F3A 0D0D"                 /*  payment to:.. */
};

data 'TEXT' (201, "Cash") {
	$"5365 6E64 2074 6869 7320 666F 726D 2074"            /* Send this form t */
	$"6F67 6574 6865 7220 7769 7468 2079 6F75"            /* ogether with you */
	$"7220 6361 7368 2028 7772 6170 7065 6420"            /* r cash (wrapped  */
	$"696E 2074 6869 636B 2070 6170 6572 2074"            /* in thick paper t */
	$"6F20 6D61 6B65 2074 6865 2063 6173 6820"            /* o make the cash  */
	$"6C65 7373 206F 6276 696F 7573 2920 746F"            /* less obvious) to */
	$"3A0D 0D"                                            /* :.. */
};

data 'TEXT' (202, "Net") {
	$"5365 6E64 2074 6869 7320 666F 726D 2074"            /* Send this form t */
	$"6F3A 0D0D"                                          /* o:.. */
};

data 'TEXT' (310, "To Author") {
	$"506C 6561 7365 2073 656E 6420 7468 6973"            /* Please send this */
	$"2066 6F72 6D20 746F 204B 6167 6920 5368"            /*  form to Kagi Sh */
	$"6172 6577 6172 6520 616E 6420 7365 6E64"            /* areware and send */
	$"2061 6E79 2063 6F6D 6D65 6E74 7320 6162"            /*  any comments ab */
	$"6F75 7420 7468 6520 7072 6F67 7261 6D73"            /* out the programs */
	$"2064 6972 6563 746C 7920 746F 2041 6B61"            /*  directly to Aka */
	$"6D61 6920 4465 7369 676E 2061 7420 3C61"            /* mai Design at <a */
	$"6B61 6D61 6940 6B61 6769 2E63 6F6D 3E2E"            /* kamai@kagi.com>. */
	$"2020 0D0D"                                          /*   .. */
};

data 'TEXT' (300, "Address") {
	$"456D 6169 6C3A 2073 6861 7265 7761 7265"            /* Email: shareware */
	$"406B 6167 692E 636F 6D0D 4641 583A 202B"            /* @kagi.com.FAX: + */
	$"3120 3531 3020 3635 3220 3635 3839 0D53"            /* 1 510 652 6589.S */
	$"6E61 696C 2D6D 6169 6C3A 0D4B 6167 6920"            /* nail-mail:.Kagi  */
	$"5368 6172 6577 6172 650D 3134 3432 2D41"            /* Shareware.1442-A */
	$"2057 616C 6E75 7420 5374 7265 6574 2023"            /*  Walnut Street # */
	$"3339 322D 3352 390D 4265 726B 656C 6579"            /* 392-3R9.Berkeley */
	$"2C20 4361 6C69 666F 726E 6961 2C20 3934"            /* , California, 94 */
	$"3730 392D 3134 3035 0D55 5341 0D0D"                 /* 709-1405.USA.. */
};

data 'TEXT' (320, "No Print") {
	$"5468 6973 2066 6F72 6D20 6973 2066 6F72"            /* This form is for */
	$"2045 6D61 696C 696E 6720 6F6E 6C79 2C20"            /*  Emailing only,  */
	$"706C 6561 7365 2064 6F6E 2774 2046 4158"            /* please don't FAX */
	$"206F 7220 706F 7374 616C 206D 6169 6C20"            /*  or postal mail  */
	$"6974 2074 6F20 7573 2073 696E 6365 2069"            /* it to us since i */
	$"7420 646F 6573 206E 6F74 2069 6E63 6C75"            /* t does not inclu */
	$"6465 2074 6865 2062 6172 636F 6465 7320"            /* de the barcodes  */
	$"7765 2072 6571 7569 7265 2066 6F72 2065"            /* we require for e */
	$"6173 7920 7072 6F63 6573 7369 6E67 2E20"            /* asy processing.  */
	$"506C 6561 7365 2064 6F20 6E6F 7420 6564"            /* Please do not ed */
	$"6974 2074 6865 2066 6F6C 6C6F 7769 6E67"            /* it the following */
	$"2069 6E66 6F72 6D61 7469 6F6E 2C20 646F"            /*  information, do */
	$"696E 6720 736F 2070 7265 7665 6E74 7320"            /* ing so prevents  */
	$"6175 746F 6D61 7469 6320 7072 6F63 6573"            /* automatic proces */
	$"7369 6E67 2062 7920 6120 636F 6D70 7574"            /* sing by a comput */
	$"6572 2E20 4564 6974 6564 2066 6F72 6D73"            /* er. Edited forms */
	$"206D 7573 7420 6265 2070 726F 6365 7373"            /*  must be process */
	$"6564 206D 616E 7561 6C6C 7920 616E 6420"            /* ed manually and  */
	$"7468 6520 6164 6469 7469 6F6E 616C 2063"            /* the additional c */
	$"6F73 7420 6973 2063 6861 7267 6564 2074"            /* ost is charged t */
	$"6F20 7468 6520 7368 6172 6577 6172 6520"            /* o the shareware  */
	$"6175 7468 6F72 2E0D 0D"                             /* author... */
};

data 'TEXT' (321, "No Email") {
	$"5468 6973 2066 6F72 6D20 6973 2066 6F72"            /* This form is for */
	$"2046 4158 206F 7220 706F 7374 616C 206D"            /*  FAX or postal m */
	$"6169 6C20 6F6E 6C79 2C20 706C 6561 7365"            /* ail only, please */
	$"2064 6F6E 2774 2045 6D61 696C 2069 7420"            /*  don't Email it  */
	$"746F 2075 7320 7369 6E63 6520 6974 2069"            /* to us since it i */
	$"6E63 6C75 6465 7320 7468 6520 6261 7263"            /* ncludes the barc */
	$"6F64 6573 2077 6869 6368 2077 696C 6C20"            /* odes which will  */
	$"6E6F 7420 456D 6169 6C20 7765 6C6C 2E0D"            /* not Email well.. */
	$"0D"                                                 /* . */
};

data 'TEXT' (203, "Invoice") {
	$"496E 766F 6963 650D 0D54 6F3A 2041 6363"            /* Invoice..To: Acc */
	$"6F75 6E74 7320 5061 7961 626C 650D 0D50"            /* ounts Payable..P */
	$"6C65 6173 6520 7061 7920 7468 6520 666F"            /* lease pay the fo */
	$"6C6C 6F77 696E 6720 696E 766F 6963 652E"            /* llowing invoice. */
	$"204E 6F74 6520 7468 6174 2074 6869 7320"            /*  Note that this  */
	$"6973 2066 6F72 2061 206C 6963 656E 7365"            /* is for a license */
	$"206F 6E6C 792C 2074 6865 7265 2061 7265"            /*  only, there are */
	$"206E 6F20 6465 6C69 7665 7261 626C 6573"            /*  no deliverables */
	$"2E20 4D61 6B65 2074 6865 2063 6865 636B"            /* . Make the check */
	$"2070 6179 6162 6C65 2074 6F20 224B 6167"            /*  payable to "Kag */
	$"6920 5368 6172 6577 6172 6522 2061 6E64"            /* i Shareware" and */
	$"2073 656E 6420 746F 2074 6865 2061 6464"            /*  send to the add */
	$"7265 7373 206C 6973 7465 6420 6265 6C6F"            /* ress listed belo */
	$"772E 2054 6865 2055 2E53 2E20 4665 6465"            /* w. The U.S. Fede */
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
	$"596F 7520 6D75 7374 2069 6E63 6C75 6465"            /* You must include */
	$"2061 2063 6F70 7920 6F66 2074 6869 7320"            /*  a copy of this  */
	$"696E 766F 6963 6520 7769 7468 2079 6F75"            /* invoice with you */
	$"7220 7061 796D 656E 742E 200D 0D0D 496E"            /* r payment. ...In */
	$"766F 6963 6520 4170 7072 6F76 6564 3A20"            /* voice Approved:  */
	$"5F5F 5F5F 5F5F 5F5F 5F5F 5F5F 5F5F 5F5F"            /* ________________ */
	$"5F5F 5F5F 5F5F 5F5F 5F20 0D0D 0D"                   /* _________ ... */
};

data 'TEXT' (150, "Ensure Alert") {
	$"5342 533A 4F68 2057 656C 6C0D 5E31 0D"              /* SBS:Oh Well.^1. */
};

data 'TEXT' (160, "Validate Alert") {
	$"5342 573A 436F 6E74 696E 7565 3A43 616E"            /* SBW:Continue:Can */
	$"6365 6C0D 5E31 0D"                                  /* cel.^1. */
};

data 'TEXT' (161, "Validate Required Alert") {
	$"5342 573A 4361 6E63 656C 0D5E 310D"                 /* SBW:Cancel.^1. */
};

data 'TEXT' (170, "Print or Email Alert") {
	$"4E2D 573A 5669 6120 456D 6169 6C3A 4641"            /* N-W:Via Email:FA */
	$"5820 6F72 204D 6169 6C09 456D 6169 6C3F"            /* X or Mail.Email? */
	$"0D57 696C 6C20 796F 7520 6265 2073 656E"            /* .Will you be sen */
	$"6469 6E67 2074 6869 7320 7669 6120 456D"            /* ding this via Em */
	$"6169 6C3F 2020 4966 2073 6F2C 2049 D56C"            /* ail?  If so, I’l */
	$"6C20 7361 7665 2061 7320 706C 6169 6E20"            /* l save as plain  */
	$"7465 7874 2E20 2049 6620 6E6F 742C 2049"            /* text.  If not, I */
	$"D56C 6C20 7361 7665 2069 7420 6173 2061"            /* ’ll save it as a */
	$"2054 6561 6368 5465 7874 2064 6F63 756D"            /*  TeachText docum */
	$"656E 7420 7769 7468 2074 6865 2062 6172"            /* ent with the bar */
	$"636F 6465 7320 6469 7370 6C61 7965 6420"            /* codes displayed  */
	$"736F 2079 6F75 2063 616E 2070 7269 6E74"            /* so you can print */
	$"2069 7420 6F75 7420 6C61 7465 722E"                 /*  it out later. */
};

data 'TEXT' (180, "Did Nothing Alert") {
	$"4342 573A 5175 6974 3A43 616E 6365 6C09"            /* CBW:Quit:Cancel. */
	$"5175 6974 696E 6720 416C 7265 6164 793F"            /* Quiting Already? */
	$"0D59 6F75 2064 6964 206E 6F74 2070 7269"            /* .You did not pri */
	$"6E74 2C20 636F 7079 2C20 6F72 2073 6176"            /* nt, copy, or sav */
	$"6520 7468 6520 6461 7461 2E20 2059 6F75"            /* e the data.  You */
	$"206D 7573 7420 646F 206F 6E65 206F 6620"            /*  must do one of  */
	$"7468 6573 6520 746F 2073 656E 6420 7468"            /* these to send th */
	$"6520 696E 666F 726D 6174 696F 6E20 746F"            /* e information to */
	$"2075 7320 2D20 646F 206E 6F74 2073 656E"            /*  us - do not sen */
	$"6420 7468 6520 5265 6769 7374 6572 2061"            /* d the Register a */
	$"7070 6C69 6361 7469 6F6E 2069 7473 656C"            /* pplication itsel */
	$"6621"                                               /* f! */
};

data 'TEXT' (175, "Need Receipt?") {
	$"4342 573A 5965 732F 593A 4E6F 2F4E 0952"            /* CBW:Yes/Y:No/N.R */
	$"6563 6569 7074 3F0D 596F 7520 6F6E 6C79"            /* eceipt?.You only */
	$"206E 6565 6420 6120 706F 7374 6361 7264"            /*  need a postcard */
	$"2072 6563 6569 7074 2069 6620 796F 7520"            /*  receipt if you  */
	$"6163 7475 616C 6C79 2077 616E 7420 6120"            /* actually want a  */
	$"7068 7973 6963 616C 2070 6170 6572 2072"            /* physical paper r */
	$"6563 6569 7074 2073 656E 7420 746F 2079"            /* eceipt sent to y */
	$"6F75 2E20 2049 6620 796F 7520 7370 6563"            /* ou.  If you spec */
	$"6966 7920 616E 2065 6D61 696C 2061 6464"            /* ify an email add */
	$"7265 7373 2C20 616E 2065 6D61 696C 2072"            /* ress, an email r */
	$"6563 6569 7074 2077 696C 6C20 616C 7761"            /* eceipt will alwa */
	$"7973 2062 6520 7365 6E74 2074 6F20 796F"            /* ys be sent to yo */
	$"752E 2020 446F 2079 6F75 2072 6561 6C6C"            /* u.  Do you reall */
	$"7920 7761 6E74 2061 2070 6170 6572 2072"            /* y want a paper r */
	$"6563 6569 7074 2073 656E 7420 746F 2079"            /* eceipt sent to y */
	$"6F75 3F0D"                                          /* ou?. */
};

data 'TEXT' (185, "Cant launch") {
	$"5342 573A 4F4B 0946 6169 6C65 6420 746F"            /* SBW:OK.Failed to */
	$"204C 6175 6E63 6820 4865 6C70 6572 0D53"            /*  Launch Helper.S */
	$"6F72 7279 2C20 4920 6661 696C 6564 2074"            /* orry, I failed t */
	$"6F20 6C61 756E 6368 2074 6865 2068 656C"            /* o launch the hel */
	$"7065 7220 6170 706C 6963 6174 696F 6E20"            /* per application  */
	$"285E 3129 2E"                                       /* (^1). */
};

data 'TEXT' (322, "No Send") {
	$"5468 6973 2066 6F72 6D20 6973 2066 6F72"            /* This form is for */
	$"2069 6E66 6F72 6D61 7469 6F6E 616C 2070"            /*  informational p */
	$"7572 706F 7365 7320 6F6E 6C79 2073 696E"            /* urposes only sin */
	$"6365 2069 7420 646F 6573 206E 6F74 2069"            /* ce it does not i */
	$"6E63 6C75 6465 2074 6865 2062 6172 636F"            /* nclude the barco */
	$"6465 7320 616E 6420 796F 7520 6361 6E6E"            /* des and you cann */
	$"6F74 2065 6D61 696C 2074 6869 7320 6B69"            /* ot email this ki */
	$"6E64 206F 6620 7061 796D 656E 742E 2020"            /* nd of payment.   */
	$"506C 6561 7365 2075 7365 2074 6865 2052"            /* Please use the R */
	$"6567 6973 7465 7220 7072 6F67 7261 6D20"            /* egister program  */
	$"746F 2070 7269 6E74 206F 7574 2061 2066"            /* to print out a f */
	$"6F72 6D20 7468 6174 2079 6F75 2063 616E"            /* orm that you can */
	$"2073 656E 6420 7769 7468 2079 6F75 7220"            /*  send with your  */
	$"7061 796D 656E 742E 0D0D"                           /* payment... */
};

resource 'MENU' (200) {
	200,
	textMenuProc,
	allEnabled,
	enabled,
	"Method",
	{	/* array: 7 elements */
		/* [1] */
		"Check/Money Order", noIcon, noKey, noMark, plain,
		/* [2] */
		"Cash", noIcon, noKey, noMark, plain,
		/* [3] */
		"Invoice", noIcon, noKey, noMark, plain,
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
	"File",
	{	/* array: 7 elements */
		/* [1] */
		"Close", noIcon, "W", noMark, plain,
		/* [2] */
		"Save As…", noIcon, "S", noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Page Setup…", noIcon, noKey, noMark, plain,
		/* [5] */
		"Print…", noIcon, "P", noMark, plain,
		/* [6] */
		"-", noIcon, noKey, noMark, plain,
		/* [7] */
		"Quit", noIcon, "Q", noMark, plain
	}
};

resource 'MENU' (130) {
	130,
	textMenuProc,
	0x7FFFFFFD,
	enabled,
	"Edit",
	{	/* array: 7 elements */
		/* [1] */
		"Undo", noIcon, "Z", noMark, plain,
		/* [2] */
		"-", noIcon, noKey, noMark, plain,
		/* [3] */
		"Cut", noIcon, "X", noMark, plain,
		/* [4] */
		"Copy", noIcon, "C", noMark, plain,
		/* [5] */
		"Paste", noIcon, "V", noMark, plain,
		/* [6] */
		"Clear", noIcon, noKey, noMark, plain,
		/* [7] */
		"Select All", noIcon, "A", noMark, plain
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
		"About Register…", noIcon, noKey, noMark, plain,
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

resource 'STR#' (128, "General", purgeable) {
	{	/* array StringArray: 9 elements */
		/* [1] */
		"Payment Details:",
		/* [2] */
		"@$^1",
		/* [3] */
		"$^1.00",
		/* [4] */
		"US$^1.00",
		/* [5] */
		"Save registration to:",
		/* [6] */
		"Registration",
		/* [7] */
		"Failed to save registration file (error "
		"^1).",
		/* [8] */
		"Failed to print registration form (error"
		" ^1).",
		/* [9] */
		"Failed top copy registration form (error"
		" ^1)."
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
		"Your Email address “^1” does not contain"
		" either an @ or an !.  Your Email addres"
		"s is the only way we can contact you.  A"
		"re you sure it is valid?",
		/* [2] */
		"You are paying ^1.  Are you sure this is"
		" what you want?",
		/* [3] */
		"Your expiry “^1” doesn’t look right (it "
		"should be something like 01/98, and the "
		"date must be in the future).  Are you su"
		"re it is valid?",
		/* [4] */
		"You NetCash token/First Virtual ID is bl"
		"ank.",
		/* [5] */
		"Your Card Name is blank.  This field sho"
		"uld be the name that appears on the cred"
		"it card.",
		/* [6] */
		"Your credit card number “^1” is all zero"
		"s.",
		/* [7] */
		"Your credit card number “^1” doesn’t app"
		"ear to be a valid number or is not of th"
		"e chosen type.  Maybe you entered the nu"
		"mber incorrectly?",
		/* [8] */
		"Your name “^1” did not change or is blan"
		"k.",
		/* [9] */
		"If you intend to print this copy out and"
		" send it to us, please print or save it "
		"from within the program since that will "
		"include barcodes which makes it easier f"
		"or us to process your form. There is no "
		"problem if you are going to Email it to "
		"us. Thanks!",
		/* [10] */
		"Your address did not change or is blank."
		"  Your address is required to send you t"
		"he receipt or program.",
		/* [11] */
		"If you intend to print this copy out and"
		" send it to us, please print or save it "
		"from within the program since that will "
		"include barcodes which makes it easier f"
		"or us to process your form. Thanks!",
		/* [12] */
		"Your Email address “^1” did not change o"
		"r is blank.  Your Email address is the m"
		"ain way we can contact you.  It’s OK wit"
		"h us but you need to be aware of this.\n",
		/* [13] */
		"WARNING: This program scrambles your cre"
		"dit card number to protect it from casua"
		"l inspection but it is in no way secure."
		"  Email, FAX and Snail-mail can all be i"
		"ntercepted and you should be aware of th"
		"is before sending the form.",
		/* [14] */
		"One or more of the programs you are regi"
		"stering require an email address.  You m"
		"ust enter one before continuing.",
		/* [15] */
		"You must select one or more of the progr"
		"ams to pay for (enter the number of copi"
		"es you want, or click the site or world-"
		"wide license checkboxes)."
	}
};

resource 'STR#' (150, "Ensure", purgeable) {
	{	/* array StringArray: 4 elements */
		/* [1] */
		"Startup failed.",
		/* [2] */
		"Startup failed, generic error.",
		/* [3] */
		"Failed to read the resource of programs."
		"  This should never happen.",
		/* [4] */
		"Failed to startup the dialog box.  This "
		"should never happen."
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
		"^1 by ^2",
		/* [2] */
		"Bonus US$",
		/* [3] */
		"US$^1.00",
		/* [4] */
		"Single User @US$^1",
		/* [5] */
		"Site @US$^1",
		/* [6] */
		"World-Wide @US$^1",
		/* [7] */
		"Postcard Receipt:",
		/* [8] */
		"US$^1",
		/* [9] */
		"Subtotal:",
		/* [10] */
		"Total:",
		/* [11] */
		"Postal Address (optional):",
		/* [12] */
		"Postal Address (required):",
		/* [13] */
		"^1 @US$^2",
		/* [14] */
		"Bill To (required):",
		/* [15] */
		"Ship To (optional):",
		/* [16] */
		"Print the form, wrap the cash in paper t"
		"o make it less obvious and send both to "
		"the address on the form.  You will proba"
		"bly get a better exchange rate at a bank"
		".",
		/* [17] */
		"Please print this form out, make your ch"
		"eck payable to “Kagi Shareware” and send"
		" both to the address on the form.",
		/* [18] */
		"Shipping:",
		/* [19] */
		"US$^1",
		/* [20] */
		"Please print this invoice, then approve "
		"the invoice\nand submit it to your Purcha"
		"sing Department for payment.",
		/* [21] */
		"Email Address:",
		/* [22] */
		"Email Address (required):"
	}
};

resource 'STR#' (180, "Prefs", purgeable) {
	{	/* array StringArray: 4 elements */
		/* [1] */
		"Your Name",
		/* [2] */
		"email@domain.com",
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
		":::-1:Version ^1",
		/* [5] */
		":::1:This program may be freely distribu"
		"ted,\nbut may not be modified in any way.",
		/* [6] */
		"::H:1:Email <support@stairways.com.au>",
		/* [7] */
		"Helvetica:24::0:Stairways Shareware",
		/* [8] */
		":::-1:©1994-96 Peter N Lewis"
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
		"Click this to save the registration form"
		" as a text file.",
		/* [2] */
		"Click this to close the window and quit "
		"this program.  This does not save any in"
		"formation that you can send us.",
		/* [3] */
		"Click this to print the registration for"
		"m.",
		/* [4] */
		"Click this to copy the registration form"
		" to the clipboard.",
		/* [5] */
		"Type your name here.  This is the person"
		" or organisation to whom the program wil"
		"l be registered.",
		/* [6] */
		"Type your Email address here.  This is h"
		"ow we will contact you with information "
		"about your registration. Examples are: t"
		"erry@aol.com, 12345.6789@compuserve.com,"
		" jan@unix.university.edu",
		/* [7] */
		"Type your snail-mail address here.  This"
		" is the address to send the paper receip"
		"t or other materials (if any).",
		/* [8] */
		"Type the number of single-user licenses "
		"you require here.",
		/* [9] */
		"Type in the bonus you would like for thi"
		"s row’s application.  I don’t know why y"
		"ou would pay a bonus above the cost of t"
		"he program, but some people do, and who "
		"am I to say no?",
		/* [10] */
		"Click here to order a site license of th"
		"is row’s application.  Site licenses cov"
		"er a single organisation for an area of "
		"up to one hundred miles (160 km) in radi"
		"us.",
		/* [11] */
		"Click here to not order a site license o"
		"f this row’s application.  Site licenses"
		" cover a single organisation for an area"
		" of up to one hundred miles (160 km) in "
		"radius.",
		/* [12] */
		"Click here to order a world-wide license"
		" of this row’s application.  A world-wid"
		"e license covers everyone in a single or"
		"ganisation.",
		/* [13] */
		"Click here to not order a world-wide lic"
		"ense of this row’s application.  A world"
		"-wide license covers everyone in a singl"
		"e organisation.",
		/* [14] */
		"Click here to get a special option for t"
		"his program.  This may change the price "
		"of various other options.",
		/* [15] */
		"Click here to turn off the special optio"
		"n for this program.  This may change the"
		" price of various other options.",
		/* [16] */
		"Click here to include a comment to that "
		"author of the program.  It is usually be"
		"tter to email the author directly, but y"
		"ou can use this for short comments.",
		/* [17] */
		"Use the scroll bar to show other program"
		"s.",
		/* [18] */
		"Click here if you require a paper receip"
		"t.",
		/* [19] */
		"Click here if you do not require a paper"
		" receipt.",
		/* [20] */
		"Type the name on the credit card here.",
		/* [21] */
		"Type your credit card number here. You c"
		"an just enter the numbers, spaces and da"
		"shes are not required.",
		/* [22] */
		"Type the credit card expiry (MM/YY) here"
		". Month (MM) and year (YY) are all that "
		"are required.",
		/* [23] */
		"Type the First Virtual ID here.",
		/* [24] */
		"Use this popup menu to select the cash c"
		"urrency you wish to pay with.  Note that"
		" you will probably get a better exchange"
		" rate at your local bank.",
		/* [25] */
		"Use this popup menu to select a payment "
		"method."
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
	$"0000 0000 8010 0000 0000 0020 0020 0000"            /* ....Ä...... . .. */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0004 0001 0004 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0004 0000 0000 0020 0020"            /* ............. .  */
	$"0000 0000 0004 0000 0000 0020 0020 0000"            /* ........... . .. */
	$"0000 01FF FF80 03FF FFC0 07FF FFE0 0FFF"            /* ...ˇˇÄ.ˇˇ¿.ˇˇ‡.ˇ */
	$"FFF0 1FFF FFF8 3FFF FFFC 7FFF FFFE FFFF"            /* ˇ.ˇˇ¯?ˇˇ¸.ˇˇ˛ˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF 7FFF FFFE 3FFF"            /* ˇˇˇˇˇˇˇˇˇˇ.ˇˇ˛?ˇ */
	$"FFFC 1FFF FFF8 0FFF FFF0 07FF FFE0 03FF"            /* ˇ¸.ˇˇ¯.ˇˇ.ˇˇ‡.ˇ */
	$"FFC0 00FF FF00 01FF FF80 03FF FFC0 07FE"            /* ˇ¿.ˇˇ..ˇˇÄ.ˇˇ¿.˛ */
	$"FFE0 0FFC 7FF0 1FEC 67F8 3FC4 47FC 7FC4"            /* ˇ‡.¸..Ïg¯?ƒG¸.ƒ */
	$"47FE FF44 47FF FE44 47FF FE44 47FF FE44"            /* G˛ˇDGˇ˛DGˇ˛DGˇ˛D */
	$"47FF FE44 47FF FE44 47FF FE40 071F FE00"            /* Gˇ˛DGˇ˛DGˇ˛@..˛. */
	$"061F FE00 061F FE00 043F FE00 003F FE00"            /* ..˛...˛..?˛..?˛. */
	$"007F FE00 007F FE00 00FF FE00 00FF FE00"            /* ..˛...˛..ˇ˛..ˇ˛. */
	$"01FF FE00 01FF 7E04 03FE 3F02 07FC 1FFF"            /* .ˇ˛..ˇ~..˛?..¸.ˇ */
	$"FFF8 0FFF FFF0 07FF FFE0 03FF FFC0 01FF"            /* ˇ¯.ˇˇ.ˇˇ‡.ˇˇ¿.ˇ */
	$"FF80 0000 0000 0000 000A 0000 FFFF FFFF"            /* ˇÄ..........ˇˇˇˇ */
	$"FFFF 0001 FFFF CCCC 9999 0002 FFFF 0000"            /* ˇˇ..ˇˇÃÃôô..ˇˇ.. */
	$"0000 0003 CCCC 9999 6666 0004 9999 6666"            /* ....ÃÃôôff..ôôff */
	$"3333 0005 9999 0000 0000 0006 DDDD 0000"            /* 33..ôô......››.. */
	$"0000 0007 AAAA 0000 0000 0008 5555 0000"            /* ....™™......UU.. */
	$"0000 0009 AAAA AAAA AAAA 000F 0000 0000"            /* ....™™™™™™...... */
	$"0000 0000 0009 FFFF FFFF FFFF FFFF 9000"            /* ......ˇˇˇˇˇˇˇˇê. */
	$"0000 0000 009F 2222 2222 2222 2222 F900"            /* .....ü""""""""˘. */
	$"0000 0000 09F2 6666 666F 6666 6666 6F90"            /* .....Úfffoffffoê */
	$"0000 0000 9F26 6666 66F3 F666 6666 66F9"            /* ....ü&fffÛˆffff˘ */
	$"0000 0009 F266 666F 6F11 4F6F F666 666F"            /* ....Úffoo.Ooˆffo */
	$"9000 009F 2666 66F3 FF11 4FF3 4F66 6666"            /* ê..ü&ffÛˇ.OÛOfff */
	$"F900 09F2 6666 6F11 4F11 4F11 4F66 6666"            /* ˘..Úffo.O.O.Offf */
	$"6F90 9F26 6666 FF11 4F11 4F11 4F66 6666"            /* oêü&ffˇ.O.O.Offf */
	$"66F9 F266 666F 4F11 4F11 4F11 4F66 6666"            /* f˘ÚffoO.O.O.Offf */
	$"665F F266 66F1 4F11 4F11 4F11 4F66 6666"            /* f_ÚffÒO.O.O.Offf */
	$"665F F266 66F1 4F11 4F11 4F11 4F66 6666"            /* f_ÚffÒO.O.O.Offf */
	$"665F F266 66F1 4F11 4F11 4F11 4F66 6666"            /* f_ÚffÒO.O.O.Offf */
	$"665F F266 66F1 4F11 3F11 3F11 4F66 6666"            /* f_ÚffÒO.?.?.Offf */
	$"665F F266 66F1 3F11 1F11 1F11 4F66 8FF6"            /* f_ÚffÒ?.....Ofèˆ */
	$"665F F266 66F1 1F11 1111 1111 4F68 433F"            /* f_ÚffÒ......OhC? */
	$"665F F266 66F1 1111 1111 1111 4F74 114F"            /* f_ÚffÒ......Ot.O */
	$"665F F266 66F1 1111 1111 1111 3FF1 114F"            /* f_ÚffÒ......?Ò.O */
	$"665F F266 66F1 1111 1111 1111 1F11 14F6"            /* f_ÚffÒ.........ˆ */
	$"665F F266 66F1 1111 1111 1111 1111 14F6"            /* f_ÚffÒ.........ˆ */
	$"665F F266 66F1 1111 1111 1111 1111 4F66"            /* f_ÚffÒ........Of */
	$"665F F266 66F1 1111 1111 1111 1113 4F66"            /* f_ÚffÒ........Of */
	$"665F F266 66F1 1111 1111 1111 1114 F666"            /* f_ÚffÒ........ˆf */
	$"665F F266 66F1 1111 1111 1111 1134 F666"            /* f_ÚffÒ.......4ˆf */
	$"665F F266 66F1 1111 1111 1111 114F 6666"            /* f_ÚffÒ.......Off */
	$"665F F266 6674 1111 1111 1111 134F 6666"            /* f_Úfft.......Off */
	$"665F 9F66 666F 1111 1F31 1113 34F6 6666"            /* f_üffo...1..4ˆff */
	$"65F9 09F6 6666 F344 44F4 4444 4F66 6666"            /* e˘.ˆffÛDDÙDDOfff */
	$"5F90 009F 6666 6FFF FF6F FFFF F666 6665"            /* _ê.üffoˇˇoˇˇˆffe */
	$"F900 0009 F666 6666 6666 6666 6666 665F"            /* ˘...ˆffffffffff_ */
	$"9000 0000 9F66 6666 6666 6666 6666 65F9"            /* ê...üfffffffffe˘ */
	$"0000 0000 09F5 5555 5555 5555 5555 5F90"            /* .....ıUUUUUUUU_ê */
	$"0000 0000 009F FFFF FFFF FFFF FFFF F900"            /* .....üˇˇˇˇˇˇˇˇ˘. */
	$"0000"                                               /* .. */
};

data 'cicn' (1) {
	$"0000 0000 8010 0000 0000 0020 0020 0000"            /* ....Ä...... . .. */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0004 0001 0004 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0004 0000 0000 0020 0020"            /* ............. .  */
	$"0000 0000 0004 0000 0000 0020 0020 0000"            /* ........... . .. */
	$"0000 FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ..ˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF 807F FFFF 807F FFFF 807F"            /* ˇˇˇˇˇˇÄ.ˇˇÄ.ˇˇÄ. */
	$"FFFF 807F FFFF 807F C0FF 887F 003F 887E"            /* ˇˇÄ.ˇˇÄ.¿ˇà..?à~ */
	$"001F 887C 000F 8078 0007 8078 0007 8070"            /* ..à|..Äx..Äx..Äp */
	$"0003 8071 DDC3 8070 0003 8070 0003 8071"            /* ..Äq›√Äp..Äp..Äq */
	$"DD43 8070 0003 8070 0003 8071 D703 8070"            /* ›CÄp..Äp..Äq◊.Äp */
	$"0003 87F0 0003 81F1 EEC3 81F0 0007 81F0"            /* ..á..ÅÒÓ√Å..Å */
	$"0007 81F0 000F 81E0 001F 8F80 007F 81FF"            /* ..Å..Å‡..èÄ..Åˇ */
	$"FFFF 81FF FFFF 81FF FFFF 81FF FFFF FFFF"            /* ˇˇÅˇˇˇÅˇˇˇÅˇˇˇˇˇ */
	$"FFFF 0000 0000 0000 0007 0000 FFFF FFFF"            /* ˇˇ..........ˇˇˇˇ */
	$"FFFF 0001 FFFF CCCC 9999 0002 CCCC CCCC"            /* ˇˇ..ˇˇÃÃôô..ÃÃÃÃ */
	$"FFFF 0003 CCCC 9999 6666 0004 9999 6666"            /* ˇˇ..ÃÃôôff..ôôff */
	$"3333 0005 8888 8888 8888 0006 1111 1111"            /* 33..àààààà...... */
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
	$"0000 0000 8010 0000 0000 0020 0020 0000"            /* ....Ä...... . .. */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0004 0001 0004 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0004 0000 0000 0020 0020"            /* ............. .  */
	$"0000 0000 0004 0000 0000 0020 0020 0000"            /* ........... . .. */
	$"0000 0001 8000 0003 C000 0007 E000 0007"            /* ....Ä...¿...‡... */
	$"E000 000F F000 000F F000 001F F800 001F"            /* ‡.........¯... */
	$"F800 003F FC00 003F FC00 007F FE00 007F"            /* ¯..?¸..?¸...˛... */
	$"FE00 00FF FF00 00FF FF00 01FF FF80 01FF"            /* ˛..ˇˇ..ˇˇ..ˇˇÄ.ˇ */
	$"FF80 03FF FFC0 03FF FFC0 07FF FFE0 07FF"            /* ˇÄ.ˇˇ¿.ˇˇ¿.ˇˇ‡.ˇ */
	$"FFE0 0FFF FFF0 0FFF FFF0 1FFF FFF8 1FFF"            /* ˇ‡.ˇˇ.ˇˇ.ˇˇ¯.ˇ */
	$"FFF8 3FFF FFFC 3FFF FFFC 7FFF FFFE 7FFF"            /* ˇ¯?ˇˇ¸?ˇˇ¸.ˇˇ˛.ˇ */
	$"FFFE FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇ˛ˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF 0001 8000 0003 C000 0003 C000 0006"            /* ˇˇ..Ä...¿...¿... */
	$"6000 0006 6000 000C 3000 000C 3000 0018"            /* `...`...0...0... */
	$"1800 0019 9800 0033 CC00 0033 CC00 0063"            /* ....ò..3Ã..3Ã..c */
	$"C600 0063 C600 00C3 C300 00C3 C300 0183"            /* ∆..c∆..√√..√√..É */
	$"C180 0183 C180 0303 C0C0 0303 C0C0 0603"            /* ¡Ä.É¡Ä..¿¿..¿¿.. */
	$"C060 0601 8060 0C01 8030 0C00 0030 1800"            /* ¿`..Ä`..Ä0...0.. */
	$"0018 1801 8018 3003 C00C 3003 C00C 6001"            /* ....Ä.0.¿.0.¿.`. */
	$"8006 6000 0006 C000 0003 FFFF FFFF 7FFF"            /* Ä.`...¿...ˇˇˇˇ.ˇ */
	$"FFFE 0000 0000 0000 0006 0000 FFFF FFFF"            /* ˇ˛..........ˇˇˇˇ */
	$"FFFF 0001 FFFF CCCC 3333 0002 CCCC 9999"            /* ˇˇ..ˇˇÃÃ33..ÃÃôô */
	$"0000 0003 9999 6666 0000 0004 3333 3333"            /* ....ôôff....3333 */
	$"3333 0005 BBBB BBBB BBBB 000F 0000 0000"            /* 33..ªªªªªª...... */
	$"0000 0000 0000 0000 000F F000 0000 0000"            /* ............... */
	$"0000 0000 0000 0000 004F F400 0000 0000"            /* .........OÙ..... */
	$"0000 0000 0000 0000 05FF FF50 0000 0000"            /* .........ˇˇP.... */
	$"0000 0000 0000 0000 04F3 3F40 0000 0000"            /* .........Û?@.... */
	$"0000 0000 0000 0000 5FF1 1FF5 0000 0000"            /* ........_Ò.ı.... */
	$"0000 0000 0000 0000 4F31 13F4 0000 0000"            /* ........O1.Ù.... */
	$"0000 0000 0000 0005 FF11 11FF 5000 0000"            /* ........ˇ..ˇP... */
	$"0000 0000 0000 0004 F311 113F 4000 0000"            /* ........Û..?@... */
	$"0000 0000 0000 005F F12F F21F F500 0000"            /* ......._Ò/Ú.ı... */
	$"0000 0000 0000 004F 314F F413 F400 0000"            /* .......O1OÙ.Ù... */
	$"0000 0000 0000 05FF 11FF FF11 FF50 0000"            /* .......ˇ.ˇˇ.ˇP.. */
	$"0000 0000 0000 04F3 11FF FF11 3F40 0000"            /* .......Û.ˇˇ.?@.. */
	$"0000 0000 0000 5FF1 11FF FF11 1FF5 0000"            /* ......_Ò.ˇˇ..ı.. */
	$"0000 0000 0000 4F31 11FF FF11 13F4 0000"            /* ......O1.ˇˇ..Ù.. */
	$"0000 0000 0005 FF11 11FF FF11 11FF 5000"            /* ......ˇ..ˇˇ..ˇP. */
	$"0000 0000 0004 F311 11FF FF11 113F 4000"            /* ......Û..ˇˇ..?@. */
	$"0000 0000 005F F111 11FF FF11 111F F500"            /* ....._Ò..ˇˇ...ı. */
	$"0000 0000 004F 3111 11FF FF11 1113 F400"            /* .....O1..ˇˇ...Ù. */
	$"0000 0000 05FF 1111 11FF FF11 1111 FF50"            /* .....ˇ...ˇˇ...ˇP */
	$"0000 0000 04F3 1111 114F F411 1111 3F40"            /* .....Û...OÙ...?@ */
	$"0000 0000 5FF1 1111 112F F211 1111 1FF5"            /* ...._Ò.../Ú....ı */
	$"0000 0000 4F31 1111 111F F111 1111 13F4"            /* ....O1....Ò....Ù */
	$"0000 0005 FF11 1111 1112 2111 1111 11FF"            /* ....ˇ.....!....ˇ */
	$"5000 0004 F311 1111 1111 1111 1111 113F"            /* P...Û..........? */
	$"4000 005F F111 1111 112F F211 1111 111F"            /* @.._Ò..../Ú..... */
	$"F500 004F 3111 1111 11FF FF11 1111 1113"            /* ı..O1....ˇˇ..... */
	$"F400 05FF 1111 1111 11FF FF11 1111 1111"            /* Ù..ˇ.....ˇˇ..... */
	$"FF50 04F3 1111 1111 112F F211 1111 1111"            /* ˇP.Û...../Ú..... */
	$"3F40 5FF1 1111 1111 1111 1111 1111 1111"            /* ?@_Ò............ */
	$"1FF5 FF31 1111 1111 1111 1111 1111 1111"            /* .ıˇ1............ */
	$"13FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* .ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF 5FFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇ_ˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFF5"                                               /* ˇı */
};

resource 'dctb' (128) {
	{	/* array ColorSpec: 0 elements */
	}
};

resource 'dctb' (200) {
	{	/* array ColorSpec: 0 elements */
	}
};

data 'SCRL' (128) {
	$"0433 5239 41"                                       /* .3R9A */
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
	$"0021 0941 7573 7472 616C 6961 0003 4155"            /* .!.Australia..AU */
	$"4404 312E 3833 0000 0005 0000 0005 0F42"            /* D.1.83.........B */
	$"656C 6769 912F 4265 6C67 6971 7565 0742"            /* elgië/Belgique.B */
	$"656C 6769 756D 0342 4546 0434 302E 3400"            /* elgium.BEF.40.4. */
	$"0000 6400 0000 6406 4272 756E 6569 0003"            /* ..d...d.Brunei.. */
	$"424E 4404 312E 3834 0000 0001 0000 0001"            /* BND.1.84........ */
	$"0643 616E 6164 6100 0343 4144 0431 2E36"            /* .Canada..CAD.1.6 */
	$"3300 0000 0500 0000 0507 4461 6E6D 6172"            /* 3.........Danmar */
	$"6B07 4465 6E6D 6172 6B03 444B 4B04 372E"            /* k.Denmark.DKK.7. */
	$"3436 0000 0032 0000 0032 0B44 6575 7473"            /* 46...2...2.Deuts */
	$"6368 6C61 6E64 0747 6572 6D61 6E79 0344"            /* chland.Germany.D */
	$"454D 0431 2E39 3600 0000 0500 0000 0506"            /* EM.1.96......... */
	$"4573 7061 9661 0553 7061 696E 0345 5350"            /* España.Spain.ESP */
	$"0331 3637 0000 03E8 0000 03E8 0245 550E"            /* .167...Ë...Ë.EU. */
	$"4575 726F 7065 616E 2055 6E69 6F6E 0358"            /* European Union.X */
	$"4555 0530 2E39 3933 0000 0005 0000 0005"            /* EU.0.993........ */
	$"0746 696E 6C61 6E64 0003 4649 4D04 352E"            /* .Finland..FIM.5. */
	$"3937 0000 0014 0000 0032 0646 7261 6E63"            /* 97.......2.Franc */
	$"6500 0346 5246 0436 2E35 3800 0000 1400"            /* e..FRF.6.58..... */
	$"0000 3206 4865 6C6C 6173 0647 7265 6563"            /* ..2.Hellas.Greec */
	$"6503 4752 4403 3334 3200 0000 C800 0001"            /* e.GRD.342...»... */
	$"F409 486F 6E67 204B 6F6E 6700 0348 4B44"            /* Ù.Hong Kong..HKD */
	$"0438 2E35 3300 0000 1400 0000 3207 4963"            /* .8.53.......2.Ic */
	$"656C 616E 6400 0349 534B 0437 332E 3900"            /* eland..ISK.73.9. */
	$"0001 F400 0001 F405 496E 6469 6100 0349"            /* ..Ù...Ù.India..I */
	$"4E52 0434 342E 3900 0000 0500 0000 0507"            /* NR.44.9......... */
	$"4972 656C 616E 6400 0349 4550 0530 2E37"            /* Ireland..IEP.0.7 */
	$"3837 0000 0005 0000 0005 0649 7372 6165"            /* 87.........Israe */
	$"6C00 0349 4C53 0434 2E30 3200 0000 1400"            /* l..ILS.4.02..... */
	$"0000 3206 4974 616C 6961 0549 7461 6C79"            /* ..2.Italia.Italy */
	$"0349 544C 0431 3932 3000 0003 E800 0003"            /* .ITL.1920...Ë... */
	$"E805 4B6F 7265 610B 536F 7574 6820 4B6F"            /* Ë.Korea.South Ko */
	$"7265 6103 4B52 5704 3134 3930 0000 03E8"            /* rea.KRW.1490...Ë */
	$"0000 03E8 0A4C 7578 656D 626F 7572 6700"            /* ...Ë.Luxembourg. */
	$"034C 5546 0434 302E 3400 0000 6400 0000"            /* .LUF.40.4...d... */
	$"6409 4E65 6465 726C 616E 640B 4E65 7468"            /* d.Nederland.Neth */
	$"6572 6C61 6E64 7303 4E4C 4703 322E 3200"            /* erlands.NLG.2.2. */
	$"0000 0A00 0000 190B 4E65 7720 5A65 616C"            /* ........New Zeal */
	$"616E 6400 034E 5A44 0432 2E31 3600 0000"            /* and..NZD.2.16... */
	$"0500 0000 0506 4E69 7070 6F6E 054A 6170"            /* ......Nippon.Jap */
	$"616E 034A 5059 0331 3537 0000 03E8 0000"            /* an.JPY.157...Ë.. */
	$"03E8 054E 6F72 6765 064E 6F72 7761 7903"            /* .Ë.Norge.Norway. */
	$"4E4F 4B04 382E 3334 0000 0032 0000 0032"            /* NOK.8.34...2...2 */
	$"0A85 7374 6572 7265 6963 6807 4175 7374"            /* .Österreich.Aust */
	$"7269 6103 4154 5304 3133 2E36 0000 0014"            /* ria.ATS.13.6.... */
	$"0000 0032 0950 2E52 2E43 6869 6E61 0543"            /* ...2.P.R.China.C */
	$"6869 6E61 0343 4E59 0339 2E33 0000 0001"            /* hina.CNY.9.3.... */
	$"0000 0001 0850 6F72 7475 6761 6C00 0350"            /* .....Portugal..P */
	$"5445 0332 3031 0000 01F4 0000 01F4 0953"            /* TE.201...Ù...Ù.S */
	$"696E 6761 706F 7265 0003 5347 4404 312E"            /* ingapore..SGD.1. */
	$"3838 0000 0002 0000 0005 0C53 6F75 7468"            /* 88.........South */
	$"2041 6672 6963 6100 035A 4152 0435 2E38"            /*  Africa..ZAR.5.8 */
	$"3300 0000 0A00 0000 0A07 5376 6572 6967"            /* 3.........Sverig */
	$"6506 5377 6564 656E 0353 454B 0438 2E34"            /* e.Sweden.SEK.8.4 */
	$"3800 0000 1400 0000 320B 5377 6974 7A65"            /* 8.......2.Switze */
	$"726C 616E 6400 0343 4846 0431 2E36 3400"            /* rland..CHF.1.64. */
	$"0000 0A00 0000 0A0D 5461 6977 616E 2052"            /* ........Taiwan R */
	$"2E4F 2E43 2E06 5461 6977 616E 0354 5744"            /* .O.C..Taiwan.TWD */
	$"0433 382E 3600 0000 3200 0000 320E 556E"            /* .38.6...2...2.Un */
	$"6974 6564 204B 696E 6764 6F6D 0003 4742"            /* ited Kingdom..GB */
	$"5004 302E 3636 0000 0005 0000 0005 0355"            /* P.0.66.........U */
	$"5341 0003 5553 4404 312E 3030 0000 0001"            /* SA..USD.1.00.... */
	$"0000 0001"                                          /* .... */
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
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"0002 7232 FFFF FFFF FFFF FFFF FFFF FFFF"            /* ..r2ˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"0002 6662 0002 2666 FFFF FFFF FFFF FFFF"            /* ..fb..&fˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF 0002 6332 0002 6266"            /* ˇˇˇˇˇˇˇˇ..c2..bf */
	$"FFFF FFFF 0002 6233 0003 6232 0002 6626"            /* ˇˇˇˇ..b3..b2..f& */
	$"0002 2732 0003 2623 0002 3623 0003 3622"            /* ..'2..&#..6#..6" */
	$"0002 2723 0003 2722 0002 3722 0002 2633"            /* ..'#..'"..7"..&3 */
	$"0003 2632 0002 3632 FFFF FFFF FFFF FFFF"            /* ..&2..62ˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF 0003 2263 0002 3263 0003 3262"            /* ˇˇˇˇ.."c..2c..2b */
	$"0002 2363 0003 2362 0002 3362 0002 2273"            /* ..#c..#b..3b.."s */
	$"0003 2272 0002 3272 0002 2372 0003 2227"            /* .."r..2r..#r.."' */
	$"0002 3227 0003 3226 0002 2327 0003 2326"            /* ..2'..2&..#'..#& */
	$"0002 3326 0002 2237 0003 2236 0002 3236"            /* ..3&.."7.."6..26 */
	$"0002 2336 0003 6223 0002 7223 0003 7222"            /* ..#6..b#..r#..r" */
	$"0002 6323 0003 6322 0002 7322 FFFF FFFF"            /* ..c#..c"..s"ˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
};

data 'CODE' (1, "Main", locked, protected) {
	$"0000 0001 9DCE 598F 2F3C 434F 4445 4267"            /* ....ùŒYè/<CODEBg */
	$"A9A0 2017 6700 00F2 2040 2050 2E18 2C10"            /* ©† .g..Ú @ P..,. */
	$"A9A3 7000 204D 91C6 6002 10C0 B1CD 6DFA"            /* ©£p. Më∆`..¿±Õm˙ */
	$"41ED 0028 43F5 7800 6002 10C0 B1C9 6DFA"            /* AÌ.(Cıx.`..¿±…m˙ */
	$"598F 2F3C 4441 5441 4267 A9A0 2057 2008"            /* Yè/<DATABg©† W . */
	$"6700 00B6 2F0D 2050 4868 0004 4EBA 00B0"            /* g..∂/. PHh..N∫.∞ */
	$"508F 43FA FF9C 2B49 EF6C 224D 4EBA 0218"            /* PèC˙ˇú+IÔl"MN∫.. */
	$"226D EF6C 4EBA 0210 A9A3 4EBA 0296 422D"            /* "mÔlN∫..©£N∫.ñB- */
	$"EF71 303C A89F A746 2F08 303C A198 A346"            /* Ôq0<®üßF/.0<°ò£F */
	$"B1DF 670A 1B7C 0001 EF71 7001 A198 303C"            /* ±ﬂg..|..Ôqp.°ò0< */
	$"A9F0 A746 2B48 EF68 303C A9F1 A746 2B48"            /* ©ßF+HÔh0<©ÒßF+H */
	$"EF64 303C A9F4 A746 2B48 EF60 303C A9F0"            /* Ôd0<©ÙßF+HÔ`0<© */
	$"41FA 0268 A647 303C A9F1 41FA 0324 A647"            /* A˙.h¶G0<©ÒA˙.$¶G */
	$"303C A9F4 41FA 002E A647 4EB9 0000 0488"            /* 0<©ÙA˙..¶GNπ...à */
	$"4EB9 0000 0600 487A 0022 4A2D FFFF 6702"            /* Nπ....Hz."J-ˇˇg. */
	$"4267 4267 4EB9 0000 6092 5C8F 42A7 4EB9"            /* BgBgNπ..`í\èBßNπ */
	$"0000 048A 4EBA 038C A9F4 0000 0000 48E7"            /* ...äN∫.å©Ù....HÁ */
	$"1C30 594F 266F 001C 7800 6000 00E4 1E9B"            /* .0YO&o..x.`..‰.õ */
	$"1F5B 0001 1F5B 0002 1F5B 0003 246F 0020"            /* .[...[...[..$o.  */
	$"D5D7 161B 4883 3003 0240 0080 670E 0243"            /* ’◊..HÉ0..@.Äg..C */
	$"007F 14DB 5343 4A43 6CF8 60E6 3003 0240"            /* ...€SCJCl¯`Ê0..@ */
	$"0040 670E 3003 0240 003F 5240 48C0 D5C0"            /* .@g.0..@.?R@H¿’¿ */
	$"60D0 3003 0240 0020 670A 0243 001F 5243"            /* `–0..@. g..C..RC */
	$"1A1B 600E 3003 0240 0010 6710 0243 000F"            /* ..`.0..@..g..C.. */
	$"7AFF 14C5 5343 4A43 6CF8 60A6 3003 0C40"            /* zˇ.≈SCJCl¯`¶0..@ */
	$"0004 6264 D040 303B 0006 4EFB 0002 0060"            /* ..bd–@0;..N˚...` */
	$"000A 001C 002C 0042 588A 14FC FFFF 14FC"            /* .....,.BXä.¸ˇˇ.¸ */
	$"FFFF 14DB 14DB 6000 FF7A 588A 14FC FFFF"            /* ˇˇ.€.€`.ˇzXä.¸ˇˇ */
	$"14DB 14DB 14DB 6000 FF6A 14FC FFA9 14FC"            /* .€.€.€`.ˇj.¸ˇ©.¸ */
	$"FFF0 548A 14DB 14DB 528A 14DB 6000 FF54"            /* ˇTä.€.€Rä.€`.ˇT */
	$"14FC FFA9 14FC FFF0 528A 14DB 14DB 14DB"            /* .¸ˇ©.¸ˇRä.€.€.€ */
	$"528A 14DB 6000 FF3C 3F3C 000F A9C9 5244"            /* Rä.€`.ˇ<?<..©…RD */
	$"0C44 0003 6D00 FF18 204B 584F 4CDF 0C38"            /* .D..m.ˇ. KXOLﬂ.8 */
	$"4E75 2F05 594F 226F 000C 1E99 1F59 0001"            /* Nu/.YO"o...ô.Y.. */
	$"1F59 0002 1F59 0003 2A17 7400 604C 1219"            /* .Y...Y..*.t.`L.. */
	$"1001 0240 0080 670C D201 1001 4880 48C0"            /* ...@.Äg.“...HÄH¿ */
	$"D480 6028 1E81 1F59 0001 1001 0240 0040"            /* ‘Ä`(.Å.Y.....@.@ */
	$"670C 3017 E548 E240 48C0 D480 600E 1F59"            /* g.0.ÂH‚@H¿‘Ä`..Y */
	$"0002 1F59 0003 2417 E58A E282 206F 0010"            /* ...Y..$.Âä‚Ç o.. */
	$"202F 0014 D1B0 2800 5385 4A85 6EB0 2049"            /*  /..—∞(.SÖJÖn∞ I */
	$"584F 2A1F 4E75 2F0A 2449 2F0D 2F0A 2F08"            /* XO*.Nu/.$I/././. */
	$"4EBA FF80 2F2D EF6C 2F0A 2F08 4EBA FF74"            /* N∫ˇÄ/-Ôl/./.N∫ˇt */
	$"2F0A 2F0A 2F08 4EBA FF6A 4FEF 0024 245F"            /* /././.N∫ˇjOÔ.$$_ */
	$"4E75 2F0A 2449 2F0D 4497 2F0A 2F08 4EBA"            /* Nu/.$I/.Dó/./.N∫ */
	$"FF52 2F2D EF6C 4497 2F0A 2F08 4EBA FF44"            /* ˇR/-ÔlDó/./.N∫ˇD */
	$"2F0A 4497 2F0A 2F08 4EBA FF38 4FEF 0024"            /* /.Dó/./.N∫ˇ8OÔ.$ */
	$"245F 4E75 BBFA 0028 6602 4E75 48E7 0084"            /* $_Nuª˙.(f.NuHÁ.Ñ */
	$"2A7A 001C 206D EF68 4A6F 000C 6604 206D"            /* *z.. mÔhJo..f. m */
	$"EF64 2F48 000A 4CDF 2100 544F 4E75 0000"            /* Ôd/H..Lﬂ!.TONu.. */
	$"0000 41FA FFFA 208D 4E75 43F9 0000 0028"            /* ..A˙ˇ˙ çNuC˘...( */
	$"C0FC 0010 2388 08F0 4E75 3F3C 0001 4EBA"            /* ¿¸..#à.Nu?<..N∫ */
	$"FFB4 544F 48E7 E0E0 55AF 0018 246F 0018"            /* ˇ¥TOHÁ‡‡UØ..$o.. */
	$"202D EF72 670A 2040 3F2A 0006 4E90 548F"            /*  -Ôrg. @?*..NêTè */
	$"50F8 0A5E 598F 2F3C 434F 4445 3F2A 0006"            /* P¯.^Yè/<CODE?*.. */
	$"A9A0 2017 6616 202D EF7E 6604 700F A9C9"            /* ©† .f. -Ô~f.p.©… */
	$"2040 3F2A 0006 4E90 548F 60DA 4A38 0BB2"            /*  @?*..NêTè`⁄J8.≤ */
	$"6704 2040 A064 2057 A029 205F 2050 2008"            /* g. @†d W†) _ P . */
	$"A055 2040 2F08 302A 0006 4EBA FF7E 2248"            /* †U @/.0*..N∫ˇ~"H */
	$"D1E8 0008 4EBA FEE0 205F 224D D3E8 0004"            /* —Ë..N∫˛‡ _"M”Ë.. */
	$"3028 0002 2208 600C 337C 4EF9 0000 D3A9"            /* 0(..".`.3|N˘..”© */
	$"0002 5089 51C8 FFF2 4A2D EF71 6704 7001"            /* ..PâQ»ˇÚJ-Ôqg.p. */
	$"A198 202D EF76 670A 2040 3F2A 0006 4E90"            /* °ò -Ôvg. @?*..Nê */
	$"548F 4CDF 0707 4A38 012D 6702 A9FF 4E75"            /* TèLﬂ..J8.-g.©ˇNu */
	$"3F3C 0000 4EBA FEEE 544F 2F0A 246F 0008"            /* ?<..N∫˛ÓTO/.$o.. */
	$"0C6A 4EF9 0000 667A 0C6A 0002 0006 6D72"            /* .jN˘..fz.j....mr */
	$"91C8 302A 0006 4EBA FF02 598F 2F3C 434F"            /* ë»0*..N∫ˇ.Yè/<CO */
	$"4445 3F2A 0006 A9A0 2017 6604 588F 6052"            /* DE?*..©† .f.Xè`R */
	$"2040 2050 2248 D1E8 0008 4EBA FE76 2057"            /*  @ P"H—Ë..N∫˛v W */
	$"2050 224D D3E8 0004 3028 0002 2208 600C"            /*  P"M”Ë..0(..".`. */
	$"337C A9F0 0000 93A9 0002 5089 51C8 FFF2"            /* 3|©..ì©..PâQ»ˇÚ */
	$"2057 A02A 205F A049 4A2D EF71 6704 7001"            /*  W†* _†IJ-Ôqg.p. */
	$"A198 202D EF7A 670A 2040 3F2A 0006 4E90"            /* °ò -Ôzg. @?*..Nê */
	$"548F 245F 2E9F 4E75 4E75 4EBA 002A A9F4"            /* Tè$_.üNuNuN∫.*©Ù */
	$"4E75 2A78 0904 303C A9F4 206D EF60 A647"            /* Nu*x..0<©Ù mÔ`¶G */
	$"303C A9F0 206D EF68 A647 303C A9F1 206D"            /* 0<© mÔh¶G0<©Ò m */
	$"EF64 A647 4E75 2F0A 6014 2B52 EF82 3F3C"            /* Ôd¶GNu/.`.+RÔÇ?< */
	$"FFFF 2F2A 0008 206A 0004 4E90 5C4F 246D"            /* ˇˇ/*.. j..Nê\O$m */
	$"EF82 200A 66E4 245F 4E75 48E7 3000 7402"            /* ÔÇ .f‰$_NuHÁ0.t. */
	$"4EFB 2200 600A 4C01 0000 4CDF 000C 4E75"            /* N˚".`.L...Lﬂ..Nu */
	$"2400 4842 C4C1 2601 4843 C6C0 D443 4842"            /* $.HBƒ¡&.HC∆¿‘CHB */
	$"4242 C0C1 D082 4CDF 000C 4E75 48E7 3000"            /* BB¿¡–ÇLﬂ..NuHÁ0. */
	$"7402 4EFB 2200 600A 4C41 0000 4CDF 000C"            /* t.N˚".`.LA..Lﬂ.. */
	$"4E75 2401 4242 4842 661C 3600 4240 4840"            /* Nu$.BBHBf.6.B@H@ */
	$"6706 80C1 3400 4842 3003 80C1 3400 2002"            /* g.Ä¡4.HB0.Ä¡4. . */
	$"4CDF 000C 4E75 3400 4240 4840 4842 2601"            /* Lﬂ..Nu4.B@H@HB&. */
	$"720F D482 D180 B083 6504 9083 5202 51C9"            /* r.‘Ç—Ä∞Ée.êÉR.Q… */
	$"FFF2 2002 4CDF 000C 4E75 4A80 6C0C 4480"            /* ˇÚ .Lﬂ..NuJÄl.DÄ */
	$"4A81 6C10 4481 4EFA FF94 4A81 6D04 4EFA"            /* JÅl.DÅN˙ˇîJÅm.N˙ */
	$"FF8C 4481 4EBA FF86 4480 4E75 48E7 3000"            /* ˇåDÅN∫ˇÜDÄNuHÁ0. */
	$"7402 4EFB 2200 600C 4C41 0001 2001 4CDF"            /* t.N˚".`.LA.. .Lﬂ */
	$"000C 4E75 2401 4242 4842 661C 3600 4240"            /* ..Nu$.BBHBf.6.B@ */
	$"4840 6706 80C1 3400 4842 3003 80C1 4240"            /* H@g.Ä¡4.HB0.Ä¡B@ */
	$"4840 4CDF 000C 4E75 3400 4240 4840 4842"            /* H@Lﬂ..Nu4.B@H@HB */
	$"2601 720F D482 D180 B083 6502 9083 51C9"            /* &.r.‘Ç—Ä∞Ée.êÉQ… */
	$"FFF4 4CDF 000C 4E75 4A81 6C02 4481 4A80"            /* ˇÙLﬂ..NuJÅl.DÅJÄ */
	$"6D04 4EFA FF98 4480 4EBA FF92 4480 4E75"            /* m.N˙ˇòDÄN∫ˇíDÄNu */
	$"4E75 4E56 FF00 2F03 162E 0008 486E FF00"            /* NuNVˇ./.....Hnˇ. */
	$"3F3C 008C 7000 1003 3F00 4EB9 0000 E980"            /* ?<.åp...?.Nπ..ÈÄ */
	$"41EE FF00 2608 2043 7000 1010 5240 48C0"            /* AÓˇ.&. Cp...R@H¿ */
	$"2043 226E 000A A22E 261F 4E5E 205F 544F"            /*  C"n..¢.&.N^ _TO */
	$"4ED0 8D47 4554 4449 5350 4C41 5953 5452"            /* N–çGETDISPLAYSTR */
	$"0000 4E56 0000 7000 102E 0009 0440 002C"            /* ..NV..p......@., */
	$"670C 5540 6702 600C 422E 000A 6006 1D7C"            /* g.U@g.`.B...`..| */
	$"0001 000A 4E5E 205F 544F 4ED0 8E49 5445"            /* ....N^ _TON–éITE */
	$"4D54 4F4D 454E 5554 5950 4500 0000 4E56"            /* MTOMENUTYPE...NV */
	$"FE00 48E7 1C20 246E 0008 554F 2F0A A950"            /* ˛.HÁ. $n..UO/.©P */
	$"301F 3A00 7601 604E 2F0A 3F03 486E FF00"            /* 0.:.v.`N/.?.Hnˇ. */
	$"A946 486D F870 486E FF00 486E FE00 3F3C"            /* ©FHm¯pHnˇ.Hn˛.?< */
	$"0002 4EB9 0000 DE7E 41EE FE00 2808 2044"            /* ..Nπ..ﬁ~AÓ˛.(. D */
	$"7000 1010 5240 48C0 2044 43EE FF00 A22E"            /* p...R@H¿ DCÓˇ.¢. */
	$"2F0A 3F03 486E FF00 A947 0C43 7FFF 4FEF"            /* /.?.Hnˇ.©G.C.ˇOÔ */
	$"000E 6706 5243 B645 6FAE 4CDF 0438 4E5E"            /* ..g.RC∂EoÆLﬂ.8N^ */
	$"2E9F 4E75 8F46 414B 454D 454E 5553 5452"            /* .üNuèFAKEMENUSTR */
	$"494E 4753 0000 4E56 0000 2F0A 246E 0008"            /* INGS..NV../.$n.. */
	$"2F2E 000E 3F2E 000C 2F0A A946 2F0A 7000"            /* /...?.../.©F/.p. */
	$"1012 5540 3F00 3F3C 0003 4EB9 0000 DEF4"            /* ..U@?.?<..Nπ..ﬁÙ */
	$"245F 4E5E 205F 4FEF 000A 4ED0 8B46 414B"            /* $_N^ _OÔ..N–ãFAK */
	$"4547 4554 4954 454D 0000 4E56 0000 48E7"            /* EGETITEM..NV..HÁ */
	$"1020 306E 0008 2008 5380 223C 0000 02F6"            /* . 0n.. .SÄ"<...ˆ */
	$"4EB9 0000 04DA 206D F298 D1C0 2448 7601"            /* Nπ...⁄ mÚò—¿$Hv. */
	$"6006 7001 D043 3600 0C43 0010 6C24 7000"            /* `.p.–C6..C..l$p. */
	$"102A 01E4 C1FC 0088 204A 41E8 01E6 D1C0"            /* .*.‰¡¸.à JAË.Ê—¿ */
	$"3243 2009 5380 E788 222A 01D4 B2B0 0804"            /* 2C .SÄÁà"*.‘≤∞.. */
	$"6CD0 0C43 0001 6F02 5343 7000 102A 01E4"            /* l–.C..o.SCp..*.‰ */
	$"C1FC 0088 204A 41E8 01E6 D1C0 3243 2009"            /* ¡¸.à JAË.Ê—¿2C . */
	$"5380 E788 2D70 0800 000A 4CDF 0408 4E5E"            /* SÄÁà-p....Lﬂ..N^ */
	$"205F 544F 4ED0 9447 4554 5052 4F47 5241"            /*  _TON–îGETPROGRA */
	$"4D45 4143 4853 494E 474C 4500 0000 4E56"            /* MEACHSINGLE...NV */
	$"0000 2F0A 306E 0008 2008 5380 223C 0000"            /* ../.0n.. .SÄ"<.. */
	$"02F6 4EB9 0000 04DA 206D F298 D1C0 2448"            /* .ˆNπ...⁄ mÚò—¿$H */
	$"7000 102A 01E4 C1FC 0088 204A 41E8 01E6"            /* p..*.‰¡¸.à JAË.Ê */
	$"D1C0 2D68 0080 000A 245F 4E5E 205F 544F"            /* —¿-h.Ä..$_N^ _TO */
	$"4ED0 9247 4554 5052 4F47 5241 4D45 4143"            /* N–íGETPROGRAMEAC */
	$"4853 4954 4500 0000 4E56 0000 2F0A 306E"            /* HSITE...NV../.0n */
	$"0008 2008 5380 223C 0000 02F6 4EB9 0000"            /* .. .SÄ"<...ˆNπ.. */
	$"04DA 206D F298 D1C0 2448 7000 102A 01E4"            /* .⁄ mÚò—¿$Hp..*.‰ */
	$"C1FC 0088 204A 41E8 01E6 D1C0 2D68 0084"            /* ¡¸.à JAË.Ê—¿-h.Ñ */
	$"000A 245F 4E5E 205F 544F 4ED0 9347 4554"            /* ..$_N^ _TON–ìGET */
	$"5052 4F47 5241 4D45 4143 4857 4F52 4C44"            /* PROGRAMEACHWORLD */
	$"0000 4E56 0000 48E7 1020 162E 0010 246E"            /* ..NV..HÁ. ....$n */
	$"0008 0C03 0016 5CC0 4400 7200 1200 0C03"            /* ......\¿D.r..... */
	$"0010 5CC0 4400 7400 1400 D441 206E 000C"            /* ..\¿D.t...‘A n.. */
	$"3082 7000 1003 0440 000A 0C40 000F 623E"            /* 0Çp....@...@..b> */
	$"D040 303B 0006 4EFB 0002 0020 0030 0024"            /* –@0;..N˚... .0.$ */
	$"002A 0034 0034 0020 0030 0024 002A 0034"            /* .*.4.4. .0.$.*.4 */
	$"0034 0020 0030 0024 002A 4212 6010 14BC"            /* .4. .0.$.*B.`..º */
	$"0002 600A 14BC 0003 6004 14BC 0001 4CDF"            /* ..`..º..`..º..Lﬂ */
	$"0408 4E5E 205F 4FEF 000A 4ED0 9452 4547"            /* ..N^ _OÔ..N–îREG */
	$"4953 5445 5249 5445 4D54 4F4F 4646 434F"            /* ISTERITEMTOOFFCO */
	$"4C00 0000 4E56 FFF8 206E 0008 2D50 FFF8"            /* L...NVˇ¯ n..-Pˇ¯ */
	$"2D68 0004 FFFC 0C6E 1F40 FFF8 5EC0 4400"            /* -h..ˇ¸.n.@ˇ¯^¿D. */
	$"1D40 000C 4E5E 2E9F 4E75 8C52 4543 5449"            /* .@..N^.üNuåRECTI */
	$"5348 4944 4445 4E00 0000 4E56 FFF8 2F2E"            /* SHIDDEN...NVˇ¯/. */
	$"000A 3F2E 0008 486E FFF8 4EB9 0000 B062"            /* ..?...Hnˇ¯Nπ..∞b */
	$"554F 486E FFF8 4EBA FFAC 101F 1D40 000E"            /* UOHnˇ¯N∫ˇ¨...@.. */
	$"4E5E 205F 5C4F 4ED0 8D44 4954 454D 4953"            /* N^ _\ON–çDITEMIS */
	$"4849 4444 454E 0000 4E56 0000 2F0A 246E"            /* HIDDEN..NV../.$n */
	$"0008 2F2E 000E 3F2E 000C 2F0A 4EB9 0000"            /* ../...?.../.Nπ.. */
	$"B062 554F 2F0A 4EBA FF6C 101F 670A 2F0A"            /* ∞bUO/.N∫ˇl..g./. */
	$"2F3C D8F0 0000 A8A8 245F 4E5E 205F 4FEF"            /* /<ÿ..®®$_N^ _OÔ */
	$"000A 4ED0 9047 4554 5245 414C 4449 5445"            /* ..N–êGETREALDITE */
	$"4D52 4543 5400 0000 4E56 FFF8 206E 000C"            /* MRECT...NVˇ¯ n.. */
	$"2D50 FFF8 2D68 0004 FFFC 486E FFF8 2F3C"            /* -Pˇ¯-h..ˇ¸Hnˇ¯/< */
	$"FFFD FFFD A8A9 486E FFF8 A8A3 486E FFF8"            /* ˇ˝ˇ˝®©Hnˇ¯®£Hnˇ¯ */
	$"A928 4E5E 205F 504F 4ED0 885A 6170 5265"            /* ©(N^ _PON–àZapRe */
	$"6374 3000 0000 4E56 FFF6 48E7 1C20 246E"            /* ct0...NVˇˆHÁ. $n */
	$"000C 362E 000A 1A2E 0008 554F 2F0A 3F03"            /* ..6.......UO/.?. */
	$"4EBA FF18 101F B005 6700 00A0 2F0A 3F03"            /* N∫ˇ...∞.g..†/.?. */
	$"486E FFF8 4EB9 0000 B062 4A05 6706 383C"            /* Hnˇ¯Nπ..∞bJ.g.8< */
	$"2710 6004 383C D8F0 486E FFF8 2F0E 4EBA"            /* '.`.8<ÿHnˇ¯/.N∫ */
	$"FF78 486E FFF8 4267 3F04 A8A8 486E FFF8"            /* ˇxHnˇ¯Bg?.®®Hnˇ¯ */
	$"2F0E 4EBA FF64 2F0A 3F03 486E FFF8 4EB9"            /* /.N∫ˇd/.?.Hnˇ¯Nπ */
	$"0000 B00A 2F0A 3F03 486E FFF6 4EB9 0000"            /* ..∞./.?.HnˇˆNπ.. */
	$"B096 554F 302E FFF6 727F C081 2F00 486D"            /* ∞ñUO0.ˇˆr.¿Å/.Hm */
	$"F874 4878 0100 4EB9 0000 DCD0 101F 672A"            /* ¯tHx..Nπ..‹–..g* */
	$"4A05 6714 594F 2F0A 3F03 4EB9 0000 B0CA"            /* J.g.YO/.?.Nπ..∞  */
	$"205F 2F08 A958 6012 594F 2F0A 3F03 4EB9"            /*  _/.©X`.YO/.?.Nπ */
	$"0000 B0CA 205F 2F08 A957 4CDF 0438 4E5E"            /* ..∞  _/.©WLﬂ.8N^ */
	$"205F 504F 4ED0 934D 5953 4554 4849 4445"            /*  _PON–ìMYSETHIDE */
	$"4449 414C 4F47 4954 454D 0000 4E56 0000"            /* DIALOGITEM..NV.. */
	$"2F0A 246E 0008 302E 000E 5340 6706 5340"            /* /.$n..0...S@g.S@ */
	$"6708 600C 14BC 0010 600A 14BC 0016 6004"            /* g.`..º..`..º..`. */
	$"14BC 000A 7000 102E 000C 7200 1212 D240"            /* .º..p.....r...“@ */
	$"1481 245F 4E5E 205F 504F 4ED0 944F 4646"            /* .Å$_N^ _PON–îOFF */
	$"434F 4C54 4F52 4547 4953 5445 5249 5445"            /* COLTOREGISTERITE */
	$"4D00 0000 4E56 FFFE 48E7 1800 382E 000C"            /* M...NVˇ˛HÁ..8... */
	$"7600 6022 3F04 1F03 486E FFFF 4EBA FF8E"            /* v.`"?...HnˇˇN∫ˇé */
	$"2F2D F29C 7000 102E FFFF 3F00 1F3C 0001"            /* /-Úúp...ˇˇ?..<.. */
	$"4EBA FE94 5203 7000 1003 0C40 0005 6FD4"            /* N∫˛îR.p....@..o‘ */
	$"4CDF 0018 4E5E 205F 5C4F 4ED0 8848 6964"            /* Lﬂ..N^ _\ON–àHid */
	$"654F 6666 3100 0000 4E56 0000 0C6D 0002"            /* eOff1...NV...m.. */
	$"F296 6C0A 3F3C 0001 2F0E 4EBA FF98 0C6D"            /* Úñl.?<../.N∫ˇò.m */
	$"0003 F296 6C0A 3F3C 0002 2F0E 4EBA FF86"            /* ..Úñl.?<../.N∫ˇÜ */
	$"4E5E 4E75 9248 4944 4545 5854 5241 5052"            /* N^NuíHIDEEXTRAPR */
	$"4F47 4954 454D 5300 0000 4E56 FF00 2F03"            /* OGITEMS...NVˇ./. */
	$"162E 0008 486E FF00 3F3C 0080 7000 1003"            /* ....Hnˇ.?<.Äp... */
	$"3F00 4EB9 0000 E980 41EE FF00 2608 2043"            /* ?.Nπ..ÈÄAÓˇ.&. C */
	$"7000 1010 5240 48C0 2043 226E 000A A22E"            /* p...R@H¿ C"n..¢. */
	$"261F 4E5E 205F 544F 4ED0 8C47 4554 474C"            /* &.N^ _TON–åGETGL */
	$"4F42 414C 5354 5200 0000 4E56 0000 1B7C"            /* OBALSTR...NV...| */
	$"0001 F2A1 426E 0008 4E5E 4E75 8644 4F51"            /* ..Ú°Bn..N^NuÜDOQ */
	$"5549 5400 0000 4E56 FEF0 2F03 486D F974"            /* UIT...NV˛/.Hm˘t */
	$"486E FEF0 2F2E 0008 4EB9 0000 D6F2 584F"            /* Hn˛/...Nπ..÷ÚXO */
	$"486E FEF0 486E FF00 3F3C 0002 4EB9 0000"            /* Hn˛Hnˇ.?<..Nπ.. */
	$"DE7E 41EE FF00 2608 2043 7000 1010 5240"            /* ﬁ~AÓˇ.&. Cp...R@ */
	$"48C0 2043 226E 000C A22E 4FEF 000E 261F"            /* H¿ C"n..¢.OÔ..&. */
	$"4E5E 2E9F 4E75 8A4E 554D 544F 4345 4E54"            /* N^.üNuäNUMTOCENT */
	$"5300 0000 4E56 FFE0 48E7 1020 246E 000C"            /* S...NVˇ‡HÁ. $n.. */
	$"206E 0008 43EE FFE0 7007 22D8 51C8 FFFC"            /*  n..CÓˇ‡p."ÿQ»ˇ¸ */
	$"7601 6032 554F 7000 1032 3000 2F00 486E"            /* v.`2UOp..20./.Hn */
	$"FFE0 4878 0020 4EB9 0000 DCD0 101F 6708"            /* ˇ‡Hx. Nπ..‹–..g. */
	$"7001 D043 3600 600E 2F0A 3F03 3F3C 0001"            /* p.–C6.`./.?.?<.. */
	$"4EB9 0000 DEF4 7000 1012 B640 6FC6 4CDF"            /* Nπ..ﬁÙp...∂@o∆Lﬂ */
	$"0408 4E5E 205F 504F 4ED0 8B53 5452 4950"            /* ..N^ _PON–ãSTRIP */
	$"414C 4C42 5554 0000 4E56 0000 302E 0008"            /* ALLBUT..NV..0... */
	$"670A 5340 670E 5340 6712 6018 1D7C 000A"            /* g.S@g.S@g.`..|.. */
	$"000A 6016 1D7C 0010 000A 600E 1D7C 0016"            /* ..`..|....`..|.. */
	$"000A 6006 486D F978 ABFF 4E5E 205F 544F"            /* ..`.Hm˘x´ˇN^ _TO */
	$"4ED0 884F 4646 544F 524F 5700 0000 4E56"            /* N–àOFFTOROW...NV */
	$"FF00 2F03 162E 0008 486E FF00 3F3C 00C8"            /* ˇ./.....Hnˇ.?<.» */
	$"7000 1003 3F00 4EB9 0000 E980 41EE FF00"            /* p...?.Nπ..ÈÄAÓˇ. */
	$"2608 2043 7000 1010 5240 48C0 2043 226E"            /* &. Cp...R@H¿ C"n */
	$"000A A22E 261F 4E5E 205F 544F 4ED0 8A47"            /* ..¢.&.N^ _TON–äG */
	$"4554 464F 524D 5354 5200 0000 4E56 FF00"            /* ETFORMSTR...NVˇ. */
	$"2F03 162E 0008 486E FF00 3F3C 00C9 7000"            /* /.....Hnˇ.?<.…p. */
	$"1003 3F00 4EB9 0000 E980 41EE FF00 2608"            /* ..?.Nπ..ÈÄAÓˇ.&. */
	$"2043 7000 1010 5240 48C0 2043 226E 000A"            /*  Cp...R@H¿ C"n.. */
	$"A22E 261F 4E5E 205F 544F 4ED0 8D47 4554"            /* ¢.&.N^ _TON–çGET */
	$"4241 5246 4F52 4D53 5452 0000 4E56 FFF8"            /* BARFORMSTR..NVˇ¯ */
	$"48E7 1020 362E 0008 3043 2008 5380 223C"            /* HÁ. 6...0C .SÄ"< */
	$"0000 02F6 4EB9 0000 04DA 206D F298 D1C0"            /* ...ˆNπ...⁄ mÚò—¿ */
	$"2448 594F 3F03 4EBA F9E0 201F 222A 01DC"            /* $HYO?.N∫˘‡ ."*.‹ */
	$"4EB9 0000 04DA 2D40 FFF8 594F 3F03 4EBA"            /* Nπ...⁄-@ˇ¯YO?.N∫ */
	$"F96E 201F 222A 01D8 4EB9 0000 04DA 2D40"            /* ˘n ."*.ÿNπ...⁄-@ */
	$"FFFC 594F 3F03 4EBA F8B2 201F 222A 01D4"            /* ˇ¸YO?.N∫¯≤ ."*.‘ */
	$"4EB9 0000 04DA D0AE FFFC D0AE FFF8 D0AA"            /* Nπ...⁄–Æˇ¸–Æˇ¯–™ */
	$"01E0 2D40 000A 4CDF 0408 4E5E 205F 544F"            /* .‡-@..Lﬂ..N^ _TO */
	$"4ED0 8F47 4554 5052 4F47 5241 4D54 4F54"            /* N–èGETPROGRAMTOT */
	$"414C 0000 4E56 0000 48E7 1C00 182E 000A"            /* AL..NV..HÁ...... */
	$"162E 0008 B604 6C06 1A04 1803 1605 B803"            /* ....∂.l.......∏. */
	$"5FC0 4400 1F00 4EB9 0000 ACEA 1A03 B803"            /* _¿D...Nπ..¨Í..∏. */
	$"6706 4A04 6702 7A03 1D45 000C 4CDF 0038"            /* g.J.g.z..E..Lﬂ.8 */
	$"4E5E 2E9F 4E75 914F 5246 4C41 4752 4551"            /* N^.üNuëORFLAGREQ */
	$"5549 5245 5459 5045 0000 4E56 0000 48E7"            /* UIRETYPE..NV..HÁ */
	$"1E20 7800 4A6D F286 6702 7802 3C2D F296"            /* . x.JmÚÜg.x.<-Úñ */
	$"7601 6042 3043 2008 5380 223C 0000 02F6"            /* v.`B0C .SÄ"<...ˆ */
	$"4EB9 0000 04DA 206D F298 D1C0 2448 594F"            /* Nπ...⁄ mÚò—¿$HYO */
	$"3F03 4EBA FED8 201F 6714 7A03 CAAA 01D0"            /* ?.N∫˛ÿ .g.z. ™.– */
	$"554F 1F04 1F05 4EBA FF5C 101F 1800 0C43"            /* UO....N∫ˇ\.....C */
	$"7FFF 6706 5243 B646 6FBA 1D44 0008 4CDF"            /* .ˇg.RC∂Fo∫.D..Lﬂ */
	$"0478 4E5E 205F 4ED0 9247 4554 464C 4147"            /* .xN^ _N–íGETFLAG */
	$"5245 5155 4952 4554 5950 4500 0000 4E56"            /* REQUIRETYPE...NV */
	$"0000 48E7 1C00 306D F286 2808 3A2D F296"            /* ..HÁ..0mÚÜ(.:-Úñ */
	$"7601 6016 594F 3F03 4EBA FE72 201F D084"            /* v.`.YO?.N∫˛r .–Ñ */
	$"2800 0C43 7FFF 6706 5243 B645 6FE6 2D44"            /* (..C.ˇg.RC∂EoÊ-D */
	$"0008 4CDF 0038 4E5E 4E75 8C47 4554 4655"            /* ..Lﬂ.8N^NuåGETFU */
	$"4C4C 544F 5441 4C00 0000 4E56 0000 226E"            /* LLTOTAL...NV.."n */
	$"000C 206E 0008 2011 2290 2080 4E5E 205F"            /* .. n.. ."ê ÄN^ _ */
	$"504F 4ED0 8453 5741 5000 0000 4E56 0000"            /* PON–ÑSWAP...NV.. */
	$"42AE 0010 4AAE 000C 6F3C 4AAE 0008 6F36"            /* BÆ..JÆ..o<JÆ..o6 */
	$"6028 202E 000C B0AE 0008 6F0C 486E 000C"            /* `( ...∞Æ..o.Hn.. */
	$"486E 0008 4EBA FFB4 202E 0008 222E 000C"            /* Hn..N∫ˇ¥ ..."... */
	$"4EB9 0000 05E8 2D40 0008 4AAE 0008 66D2"            /* Nπ...Ë-@..JÆ..f“ */
	$"2D6E 000C 0010 4E5E 205F 504F 4ED0 8743"            /* -n....N^ _PON–áC */
	$"414C 4347 4344 0000 4E56 FFFC 2F03 262E"            /* ALCGCD..NVˇ¸/.&. */
	$"000C 4A83 674C 206E 0008 2D68 FFF8 FFFC"            /* ..JÉgL n..-hˇ¯ˇ¸ */
	$"594F 206E 0008 2028 0010 9083 2F00 4EB9"            /* YO n.. (..êÉ/.Nπ */
	$"0000 D998 201F B0AE FFFC 6C26 594F 206E"            /* ..Ÿò .∞Æˇ¸l&YO n */
	$"0008 2028 0010 9083 2F00 4EB9 0000 D998"            /* .. (..êÉ/.Nπ..Ÿò */
	$"201F 206E 0008 2140 FFF8 206E 0008 2143"            /*  . n..!@ˇ¯ n..!C */
	$"FFFC 261F 4E5E 205F 504F 4ED0 8454 7279"            /* ˇ¸&.N^ _PON–ÑTry */
	$"3200 0000 4E56 FFF8 48E7 1C00 4AAE 0010"            /* 2...NVˇ¯HÁ..JÆ.. */
	$"6608 42AE FFFC 6000 00EE 594F 2F2E 000C"            /* f.BÆˇ¸`..ÓYO/... */
	$"2F2E 0008 4EBA FF16 201F 2600 202E 000C"            /* /...N∫ˇ. .&. ... */
	$"2203 4EB9 0000 056A 222E 0008 4EB9 0000"            /* ".Nπ...j"...Nπ.. */
	$"04DA 2800 2D7C 7FFF FFFF FFF8 B8AE 0010"            /* .⁄(.-|.ˇˇˇˇ¯∏Æ.. */
	$"6E3C 202E 0010 2203 4EB9 0000 056A 2203"            /* n< ...".Nπ...j". */
	$"4EB9 0000 04DA 2F00 2F0E 4EBA FF2C 202E"            /* Nπ...⁄/./.N∫ˇ, . */
	$"0010 2203 4EB9 0000 056A 2203 4EB9 0000"            /* ..".Nπ...j".Nπ.. */
	$"04DA D083 2F00 2F0E 4EBA FF0E 6078 202E"            /* .⁄–É/./.N∫ˇ.`x . */
	$"000C B0AE 0008 6F0C 486E 000C 486E 0008"            /* ..∞Æ..o.Hn..Hn.. */
	$"4EBA FE78 2D44 FFFC 2A2E 000C 7800 6052"            /* N∫˛x-Dˇ¸*...x.`R */
	$"2004 222E 0008 4EB9 0000 04DA 2600 B6AE"            /*  ."...Nπ...⁄&.∂Æ */
	$"0010 6C1E 202E 0010 9083 222E 000C 4EB9"            /* ..l. ...êÉ"...Nπ */
	$"0000 056A 222E 000C 4EB9 0000 04DA D083"            /* ...j"...Nπ...⁄–É */
	$"2600 2F03 2F0E 4EBA FEB0 2003 D0AE 000C"            /* &././.N∫˛∞ .–Æ.. */
	$"2F00 2F0E 4EBA FEA2 0C84 7FFF FFFF 6706"            /* /./.N∫˛¢.Ñ.ˇˇˇg. */
	$"5284 B885 6FAA 2D6E FFFC 0014 4CDF 0038"            /* RÑ∏Öo™-nˇ¸..Lﬂ.8 */
	$"4E5E 205F 4FEF 000C 4ED0 9047 4554 4355"            /* N^ _OÔ..N–êGETCU */
	$"5252 454E 4359 5641 4C55 4500 0000 4E56"            /* RRENCYVALUE...NV */
	$"FDDC 48E7 1800 594F 4EBA FD94 201F 2800"            /* ˝‹HÁ..YON∫˝î .(. */
	$"0C2D 0002 F285 666E 594F 2D7C 3FFE FD70"            /* .-..ÚÖfnYO-|?˛˝p */
	$"FDDC 2D7C A3D7 0A3D FDE0 3D7C 70A4 FDE4"            /* ˝‹-|£◊.=˝‡=|p§˝‰ */
	$"2D44 FDE6 486E FDE6 486E FDE6 3F3C 280E"            /* -D˝ÊHn˝ÊHn˝Ê?<(. */
	$"A9EB 486D F280 486E FDE6 3F3C 1004 A9EB"            /* ©ÎHmÚÄHn˝Ê?<..©Î */
	$"486E FDDC 486E FDE6 3F3C 0000 A9EB 2F2E"            /* Hn˝‹Hn˝Ê?<..©Î/. */
	$"FDEC 2F2E FDE8 3F2E FDE6 4EB9 0000 D968"            /* ˝Ï/.˝Ë?.˝ÊNπ..Ÿh */
	$"4FEF 000A 2F00 2F2D F27C 2F2D F278 4EBA"            /* OÔ.././-Ú|/-ÚxN∫ */
	$"FE54 201F 2800 0C2D 0002 F285 6656 7063"            /* ˛T .(..-..ÚÖfVpc */
	$"B0AD F27C 6C4E 7063 B0AD F278 6C46 486E"            /* ∞≠Ú|lNpc∞≠ÚxlFHn */
	$"FDF0 2F04 4EB9 0000 D6F2 584F 486E FDF0"            /* ˝/.Nπ..÷ÚXOHn˝ */
	$"486D F984 486D F274 486E FF00 3F3C 0003"            /* Hm˘ÑHmÚtHnˇ.?<.. */
	$"4EB9 0000 DE7E 41EE FF00 2608 2043 7000"            /* Nπ..ﬁ~AÓˇ.&. Cp. */
	$"1010 5240 48C0 2043 226E 0008 A22E 4FEF"            /* ..R@H¿ C"n..¢.OÔ */
	$"0012 6042 486E FF00 2F04 4EBA F98A 584F"            /* ..`BHnˇ./.N∫˘äXO */
	$"486E FF00 486D F984 486D F274 486E FE00"            /* Hnˇ.Hm˘ÑHmÚtHn˛. */
	$"3F3C 0003 4EB9 0000 DE7E 41EE FE00 2608"            /* ?<..Nπ..ﬁ~AÓ˛.&. */
	$"2043 7000 1010 5240 48C0 2043 226E 0008"            /*  Cp...R@H¿ C"n.. */
	$"A22E 4FEF 0012 4CDF 0018 4E5E 4E75 8D47"            /* ¢.OÔ..Lﬂ..N^NuçG */
	$"4554 5241 5445 4454 4F54 414C 0000 4E56"            /* ETRATEDTOTAL..NV */
	$"FF00 2F03 162E 0008 2F2D F29C 7000 1003"            /* ˇ./...../-Úúp... */
	$"3F00 486E FF00 4EB9 0000 ADB2 41EE FF00"            /* ?.Hnˇ.Nπ..≠≤AÓˇ. */
	$"2608 2043 7000 1010 5240 48C0 2043 226E"            /* &. Cp...R@H¿ C"n */
	$"000A A22E 261F 4E5E 205F 544F 4ED0 8A47"            /* ..¢.&.N^ _TON–äG */
	$"4554 4954 454D 5354 5200 0000 4E56 FD00"            /* ETITEMSTR...NV˝. */
	$"206E 0008 43EE FE00 703F 22D8 51C8 FFFC"            /*  n..CÓ˛.p?"ÿQ»ˇ¸ */
	$"486E FF00 486E FD00 3F3C 00A0 7000 102E"            /* Hnˇ.Hn˝.?<.†p... */
	$"000C 3F00 4EB9 0000 C746 584F 486E FD00"            /* ..?.Nπ..«FXOHn˝. */
	$"486E FE00 486D F986 486D F986 4EB9 0000"            /* Hn˛.Hm˘ÜHm˘ÜNπ.. */
	$"CC7E 486D F986 486E FF00 486D F986 486D"            /* Ã~Hm˘ÜHnˇ.Hm˘ÜHm */
	$"F986 4EB9 0000 7640 554F 3F3C 00A0 4EB9"            /* ˘ÜNπ..v@UO?<.†Nπ */
	$"0000 82CA 301F 5340 6708 206E 000E 30BC"            /* ..Ç 0.S@g. n..0º */
	$"FF80 4E5E 205F 4FEF 000A 4ED0 8D56 414C"            /* ˇÄN^ _OÔ..N–çVAL */
	$"4944 4154 4541 4C45 5254 0000 4E56 FD00"            /* IDATEALERT..NV˝. */
	$"2F03 162E 000C 206E 0008 43EE FE00 703F"            /* /..... n..CÓ˛.p? */
	$"22D8 51C8 FFFC 486E FF00 486E FD00 3F3C"            /* "ÿQ»ˇ¸Hnˇ.Hn˝.?< */
	$"00A0 7000 1003 3F00 4EB9 0000 C746 584F"            /* .†p...?.Nπ..«FXO */
	$"486E FD00 486E FE00 486D F986 486D F986"            /* Hn˝.Hn˛.Hm˘ÜHm˘Ü */
	$"4EB9 0000 CC7E 486D F986 486E FF00 486D"            /* Nπ..Ã~Hm˘ÜHnˇ.Hm */
	$"F986 486D F986 4EB9 0000 7640 554F 3F3C"            /* ˘ÜHm˘ÜNπ..v@UO?< */
	$"00A1 4EB9 0000 82CA 301F 3600 261F 4E5E"            /* .°Nπ..Ç 0.6.&.N^ */
	$"205F 5C4F 4ED0 8C46 4149 4C55 5245 414C"            /*  _\ON–åFAILUREAL */
	$"4552 5400 0000 4E56 0000 554F 486D F988"            /* ERT...NV..UOHm˘à */
	$"2F2E 0008 4EB9 0000 CA30 301F 4A40 6E1A"            /* /...Nπ.. 00.J@n. */
	$"554F 486D F98A 2F2E 0008 4EB9 0000 CA30"            /* UOHm˘ä/...Nπ.. 0 */
	$"301F 4A40 6E04 7000 6002 7001 1D40 000C"            /* 0.J@n.p.`.p..@.. */
	$"4E5E 2E9F 4E75 8E4C 4F4F 4B53 4C49 4B45"            /* N^.üNuéLOOKSLIKE */
	$"454D 4149 4C00 0000 4E56 FF00 206E 000C"            /* EMAIL...NVˇ. n.. */
	$"43EE FF00 703F 22D8 51C8 FFFC 206E 0008"            /* CÓˇ.p?"ÿQ»ˇ¸ n.. */
	$"4A68 FDFE 661A 4A2E 0012 6714 206E 0008"            /* Jh˝˛f.J...g. n.. */
	$"4868 FDFE 1F2E 0010 486E FF00 4EBA FE5E"            /* Hh˝˛....Hnˇ.N∫˛^ */
	$"4E5E 205F 4FEF 000C 4ED0 8645 7272 6F72"            /* N^ _OÔ..N–ÜError */
	$"3400 0000 4E56 FF00 206E 000C 43EE FF00"            /* 4...NVˇ. n..CÓˇ. */
	$"703F 22D8 51C8 FFFC 206E 0008 4A68 FDFE"            /* p?"ÿQ»ˇ¸ n..Jh˝˛ */
	$"661C 4A2E 0012 6716 1F2E 0010 486E FF00"            /* f.J...g.....Hnˇ. */
	$"4EBA FEAA 206E 0008 317C FF80 FDFE 4E5E"            /* N∫˛™ n..1|ˇÄ˝˛N^ */
	$"205F 4FEF 000C 4ED0 8846 6169 6C75 7265"            /*  _OÔ..N–àFailure */
	$"3500 0000 4E56 FDFC 48E7 1C00 426E FDFE"            /* 5...NV˝¸HÁ..Bn˝˛ */
	$"554F 4EBA F976 101F 1800 594F 4EBA F9F0"            /* UON∫˘v....YON∫˘ */
	$"201F 2A00 306D F286 BA88 5FC0 4400 1F00"            /*  .*.0mÚÜ∫à_¿D... */
	$"1F3C 000F 486D F986 2F0E 4EBA FF78 486E"            /* .<..Hm˘Ü/.N∫ˇxHn */
	$"FE00 1F3C 0008 4EBA FD66 41EE FE00 2608"            /* ˛..<..N∫˝fAÓ˛.&. */
	$"2043 7000 1010 5240 48C0 2043 43EE FF00"            /*  Cp...R@H¿ CCÓˇ. */
	$"A22E 7000 1004 2F00 486D F98C 4878 0001"            /* ¢.p.../.Hm˘åHx.. */
	$"4EB9 0000 DCD0 101F 544F 6756 554F 486E"            /* Nπ..‹–..TOgVUOHn */
	$"FF00 486E FE00 2F3C 0003 00B4 4EB9 0000"            /* ˇ.Hn˛./<...¥Nπ.. */
	$"C746 584F 486E FE00 4EB9 0000 E872 301F"            /* «FXOHn˛.Nπ..Ër0. */
	$"4A40 57C0 4400 1D40 FDFD 554F 486E FF00"            /* J@W¿D..@˝˝UOHnˇ. */
	$"486D F986 4267 4EB9 0000 DD64 101F 802E"            /* Hm˘ÜBgNπ..›d..Ä. */
	$"FDFD 1F00 1F3C 000A 486D F986 2F0E 4EBA"            /* ˝˝...<..Hm˘Ü/.N∫ */
	$"FEE4 486E FE00 1F3C 0006 4EBA FCD2 41EE"            /* ˛‰Hn˛..<..N∫¸“AÓ */
	$"FE00 2608 2043 7000 1010 5240 48C0 2043"            /* ˛.&. Cp...R@H¿ C */
	$"43EE FF00 A22E 486E FF00 486D F986 4267"            /* CÓˇ.¢.Hnˇ.Hm˘ÜBg */
	$"4EB9 0000 DD64 101F 4A00 544F 662C 554F"            /* Nπ..›d..J.TOf,UO */
	$"486E FF00 486E FE00 2F3C 0002 00B4 4EB9"            /* Hnˇ.Hn˛./<...¥Nπ */
	$"0000 C746 584F 486E FE00 4EB9 0000 E872"            /* ..«FXOHn˛.Nπ..Ër */
	$"301F 4A40 6704 7000 6002 7001 1600 554F"            /* 0.J@g.p.`.p...UO */
	$"7000 1004 2F00 486D F98D 4878 0001 4EB9"            /* p.../.Hm˘çHx..Nπ */
	$"0000 DCD0 101F 6712 1F03 1F3C 000E 486E"            /* ..‹–..g....<..Hn */
	$"FF00 2F0E 4EBA FE4E 6010 1F03 1F3C 000C"            /* ˇ./.N∫˛N`....<.. */
	$"486E FF00 2F0E 4EBA FDF0 554F 486E FF00"            /* Hnˇ./.N∫˝UOHnˇ. */
	$"4EBA FD94 101F 57C0 4400 1F00 1F3C 0001"            /* N∫˝î..W¿D....<.. */
	$"486E FF00 2F0E 4EBA FDD0 486E FE00 1F3C"            /* Hnˇ./.N∫˝–Hn˛..< */
	$"0005 4EBA FC0A 41EE FE00 2608 2043 7000"            /* ..N∫¸.AÓ˛.&. Cp. */
	$"1010 5240 48C0 2043 43EE FF00 A22E 554F"            /* ..R@H¿ CCÓˇ.¢.UO */
	$"486E FF00 486E FE00 2F3C 0001 00B4 4EB9"            /* Hnˇ.Hn˛./<...¥Nπ */
	$"0000 C746 584F 486E FE00 4EB9 0000 E872"            /* ..«FXOHn˛.Nπ..Ër */
	$"301F 4A40 57C0 4400 1D40 FDFD 554F 486E"            /* 0.J@W¿D..@˝˝UOHn */
	$"FF00 486D F986 4267 4EB9 0000 DD64 101F"            /* ˇ.Hm˘ÜBgNπ..›d.. */
	$"802E FDFD 1F00 1F3C 0008 486E FF00 2F0E"            /* Ä.˝˝...<..Hnˇ./. */
	$"4EBA FD56 7064 BA80 5CC0 4400 1F00 1F3C"            /* N∫˝Vpd∫Ä\¿D....< */
	$"0002 486E FE00 4EBA FA46 584F 486E FE00"            /* ..Hn˛.N∫˙FXOHn˛. */
	$"2F0E 4EBA FD34 7000 102D F285 584F 5340"            /* /.N∫˝4p..-ÚÖXOS@ */
	$"0C40 0006 6200 01E2 5740 6D00 01DC 5740"            /* .@..b..‚W@m..‹W@ */
	$"6D04 6000 018A 486E FE00 1F3C 0020 4EBA"            /* m.`..äHn˛..<. N∫ */
	$"FB4E 41EE FE00 2608 2043 7000 1010 5240"            /* ˚NAÓ˛.&. Cp...R@ */
	$"48C0 2043 43EE FF00 A22E 554F 486E FF00"            /* H¿ CCÓˇ.¢.UOHnˇ. */
	$"486D F986 4267 4EB9 0000 DD64 101F 1F00"            /* Hm˘ÜBgNπ..›d.... */
	$"1F3C 0005 486D F986 2F0E 4EBA FD18 486E"            /* .<..Hm˘Ü/.N∫˝.Hn */
	$"FE00 1F3C 0021 4EBA FB06 41EE FE00 2608"            /* ˛..<.!N∫˚.AÓ˛.&. */
	$"2043 7000 1010 5240 48C0 2043 43EE FF00"            /*  Cp...R@H¿ CCÓˇ. */
	$"A22E 486E FF00 486D F98E 4EBA F478 554F"            /* ¢.Hnˇ.Hm˘éN∫ÙxUO */
	$"486E FF00 486D F9AE 4267 4EB9 0000 DD64"            /* Hnˇ.Hm˘ÆBgNπ..›d */
	$"101F 1F00 1F3C 0006 486E FE00 1F3C 0021"            /* .....<..Hn˛..<.! */
	$"4EBA FABC 584F 486E FE00 2F0E 4EBA FCB6"            /* N∫˙ºXOHn˛./.N∫¸∂ */
	$"554F 486E FF00 1F2D F285 4EB9 0000 67A6"            /* UOHnˇ..-ÚÖNπ..g¶ */
	$"101F 1F00 1F3C 0007 486E FE00 1F3C 0021"            /* .....<..Hn˛..<.! */
	$"4EBA FA8C 584F 486E FE00 2F0E 4EBA FC3A"            /* N∫˙åXOHn˛./.N∫¸: */
	$"486E FE00 1F3C 0022 4EBA FA74 41EE FE00"            /* Hn˛..<."N∫˙tAÓ˛. */
	$"2608 2043 7000 1010 5240 48C0 2043 43EE"            /* &. Cp...R@H¿ CCÓ */
	$"FF00 A22E 486D F9C0 486E FF00 4EB9 0000"            /* ˇ.¢.Hm˘¿Hnˇ.Nπ.. */
	$"CA30 301F 5740 4FEF 000A 6712 486D F9C2"            /*  00.W@OÔ..g.Hm˘¬ */
	$"486E FF00 3F3C 0001 4EB9 0000 DFAC 554F"            /* Hnˇ.?<..Nπ..ﬂ¨UO */
	$"486E FF00 4EB9 0000 68D0 101F 1F00 1F3C"            /* Hnˇ.Nπ..h–.....< */
	$"0003 486E FE00 1F3C 0022 4EBA FA12 584F"            /* ..Hn˛..<."N∫˙.XO */
	$"486E FE00 2F0E 4EBA FBC0 4A6E FDFE 661A"            /* Hn˛./.N∫˚¿Jn˝˛f. */
	$"554F 486D F160 486D F060 4EB9 0000 63CA"            /* UOHmÒ`Hm`Nπ..c  */
	$"101F 6606 3D7C FF80 FDFE 1F3C 0001 1F3C"            /* ..f.=|ˇÄ˝˛.<...< */
	$"000D 486D F986 2F0E 4EBA FB8E 604A 486E"            /* ..Hm˘Ü/.N∫˚é`JHn */
	$"FE00 1F3C 0027 4EBA F9C6 41EE FE00 2608"            /* ˛..<.'N∫˘∆AÓ˛.&. */
	$"2043 7000 1010 5240 48C0 2043 43EE FF00"            /*  Cp...R@H¿ CCÓˇ. */
	$"A22E 554F 486E FF00 486D F986 4267 4EB9"            /* ¢.UOHnˇ.Hm˘ÜBgNπ */
	$"0000 DD64 101F 1F00 1F3C 0004 486E FF00"            /* ..›d.....<..Hnˇ. */
	$"2F0E 4EBA FB90 584F 3D6E FDFE 0008 4CDF"            /* /.N∫˚êXO=n˝˛..Lﬂ */
	$"0038 4E5E 4E75 8856 414C 4944 4154 4500"            /* .8N^NuàVALIDATE. */
	$"0000 4E56 FDFE 48E7 1F20 246E 0008 41ED"            /* ..NV˝˛HÁ. $n..AÌ */
	$"F986 2808 2044 7000 1010 5240 48C0 2044"            /* ˘Ü(. Dp...R@H¿ D */
	$"43EE FF00 A22E 594F A975 201F 0280 0000"            /* CÓˇ.¢.YO©u ..Ä.. */
	$"7FFF 7211 4EB9 0000 05E8 3A00 7E00 1E12"            /* .ˇr.Nπ...Ë:.~... */
	$"7601 6000 00D6 7000 1032 3000 0C40 0039"            /* v.`..÷p..20..@.9 */
	$"5EC0 4400 7200 1232 3000 0C41 002A 5DC1"            /* ^¿D.r..20..A.*]¡ */
	$"4401 8200 6706 15BC 002D 3000 7000 1032"            /* D.Ç.g..º.-0.p..2 */
	$"3000 0440 002A D045 48C0 7211 4EB9 0000"            /* 0..@.*–EH¿r.Nπ.. */
	$"05E8 3C00 7061 D046 48C0 7200 1200 0041"            /* .Ë<.pa–FH¿r....A */
	$"0100 3D41 FDFE 486E FDFE 486E FF00 486E"            /* ..=A˝˛Hn˝˛Hnˇ.Hn */
	$"FE00 3F3C 0002 4EB9 0000 DE7E 41EE FE00"            /* ˛.?<..Nπ..ﬁ~AÓ˛. */
	$"2808 2044 7000 1010 5240 48C0 2044 43EE"            /* (. Dp...R@H¿ DCÓ */
	$"FF00 A22E 7000 1012 B640 4FEF 000E 6732"            /* ˇ.¢.p...∂@OÔ..g2 */
	$"486D F984 486E FF00 486E FE00 3F3C 0002"            /* Hm˘ÑHnˇ.Hn˛.?<.. */
	$"4EB9 0000 DE7E 41EE FE00 2808 2044 7000"            /* Nπ..ﬁ~AÓ˛.(. Dp. */
	$"1010 5240 48C0 2044 43EE FF00 A22E 4FEF"            /* ..R@H¿ DCÓˇ.¢.OÔ */
	$"000E 700B D045 48C0 7211 4EB9 0000 05E8"            /* ..p.–EH¿r.Nπ...Ë */
	$"3A00 0C43 7FFF 6708 5243 B647 6F00 FF28"            /* :..C.ˇg.RC∂Go.ˇ( */
	$"41EE FF00 2808 2044 7000 1010 5240 48C0"            /* AÓˇ.(. Dp...R@H¿ */
	$"2044 224A A22E 4CDF 04F8 4E5E 2E9F 4E75"            /*  D"J¢.Lﬂ.¯N^.üNu */
	$"8853 4352 414D 424C 4500 0000 4E56 0000"            /* àSCRAMBLE...NV.. */
	$"48E7 1030 266E 0008 4A53 6668 594F 2F2D"            /* HÁ.0&n..JSfhYO/- */
	$"F9C4 3F2E 000C A9A0 205F 2448 554F A9AF"            /* ˘ƒ?...©† _$HUO©Ø */
	$"301F 3680 4A53 6608 200A 6604 36BC FF40"            /* 0.6ÄJSf. .f.6ºˇ@ */
	$"4A53 6640 200A 673C 2F0A 205F A029 594F"            /* JSf@ .g</. _†)YO */
	$"2F2E 000E 42A7 4878 0000 42A7 2F12 594F"            /* /...BßHx..Bß/.YO */
	$"2F0A 4EB9 0000 E790 201F 2F00 A9E0 201F"            /* /.Nπ..Áê ./.©‡ . */
	$"2600 4A83 6C02 3683 2F0A 205F A049 2F0A"            /* &.JÉl.6É/. _†I/. */
	$"205F A02A 4CDF 0C08 4E5E 205F 4FEF 000A"            /*  _†*Lﬂ..N^ _OÔ.. */
	$"4ED0 9350 5245 5045 4E44 5445 5854 5245"            /* N–ìPREPENDTEXTRE */
	$"534F 5552 4345 0000 4E56 0000 2F0A 246E"            /* SOURCE..NV../.$n */
	$"0008 2F0A 205F A029 2F12 594F 2F0A 4EB9"            /* ../. _†)/.YO/.Nπ */
	$"0000 E790 201F 3F00 301F 205F A256 2F0A"            /* ..Áê .?.0. _¢V/. */
	$"205F A02A 245F 4E5E 2E9F 4E75 8B53 5452"            /*  _†*$_N^.üNuãSTR */
	$"4950 4841 4E44 4C45 0000 4E56 0000 206E"            /* IPHANDLE..NV.. n */
	$"0008 4A68 FAFE 660A 206E 0008 316E 000C"            /* ..Jh˙˛f. n..1n.. */
	$"FAFE 4E5E 205F 5C4F 4ED0 8753 6574 4572"            /* ˙˛N^ _\ON–áSetEr */
	$"7236 0000 4E56 FE00 2F03 206E 000C 43EE"            /* r6..NV˛./. n..CÓ */
	$"FF00 703F 22D8 51C8 FFFC 486D F9C8 486E"            /* ˇ.p?"ÿQ»ˇ¸Hm˘»Hn */
	$"FF00 486E FE00 3F3C 0002 4EB9 0000 DE7E"            /* ˇ.Hn˛.?<..Nπ..ﬁ~ */
	$"41EE FE00 2608 2043 7000 1010 5240 48C0"            /* AÓ˛.&. Cp...R@H¿ */
	$"2043 43EE FF00 A22E 554F 486E FF01 2F2E"            /*  CCÓˇ.¢.UOHnˇ./. */
	$"0010 7000 102E FF00 48C0 2F00 201F 225F"            /* ..p...ˇ.H¿/. ."_ */
	$"205F A9EF 3E80 301F 3F00 2F2E 0008 4EBA"            /*  _©Ô>Ä0.?./...N∫ */
	$"FF6A 4FEF 000E 261F 4E5E 205F 4FEF 000C"            /* ˇjOÔ..&.N^ _OÔ.. */
	$"4ED0 8B41 7070 656E 644C 696E 6537 0000"            /* N–ãAppendLine7.. */
	$"4E56 0000 2F0A 206E 0008 4A68 FAFE 6670"            /* NV../. n..Jh˙˛fp */
	$"594F 2F2D F9C4 3F2E 000C A9A0 205F 2448"            /* YO/-˘ƒ?...©† _$H */
	$"554F A9AF 301F 206E 0008 3140 FAFE 206E"            /* UO©Ø0. n..1@˙˛ n */
	$"0008 4A68 FAFE 660E 200A 660A 206E 0008"            /* ..Jh˙˛f. .f. n.. */
	$"317C FF40 FAFE 206E 0008 4A68 FAFE 6630"            /* 1|ˇ@˙˛ n..Jh˙˛f0 */
	$"200A 672C 2F0A 205F A04A 554F 2F0A 206E"            /*  .g,/. _†JUO/. n */
	$"0008 2068 000C 2F10 225F 205F A9E4 3E80"            /* .. h../."_ _©‰>Ä */
	$"301F 206E 0008 3140 FAFE 2F0A 205F A049"            /* 0. n..1@˙˛/. _†I */
	$"245F 4E5E 205F 5C4F 4ED0 9341 7070 656E"            /* $_N^ _\ON–ìAppen */
	$"6454 6578 7452 6573 6F75 7263 6538 0000"            /* dTextResource8.. */
	$"4E56 FD00 206E 0008 2068 000C 2F10 486E"            /* NV˝. n.. h../.Hn */
	$"FE00 3F3C 00AA 7000 102D F285 3F00 4EB9"            /* ˛.?<.™p..-ÚÖ?.Nπ */
	$"0000 C746 584F 486E FE00 486E FD00 1F3C"            /* ..«FXOHn˛.Hn˝..< */
	$"0001 4EBA F00A 584F 486E FD00 486E FF00"            /* ..N∫.XOHn˝.Hnˇ. */
	$"3F3C 0002 4EB9 0000 DE7E 4FEF 000E 486E"            /* ?<..Nπ..ﬁ~OÔ..Hn */
	$"FF00 2F2E 0008 4EBA FE7C 206E 0008 2068"            /* ˇ./...N∫˛| n.. h */
	$"0008 2F10 486E FE00 3F3C 00AB 7000 102D"            /* ../.Hn˛.?<.´p..- */
	$"F285 3F00 4EB9 0000 C746 584F 486E FE00"            /* ÚÖ?.Nπ..«FXOHn˛. */
	$"486E FD00 1F3C 0001 4EBA F002 584F 486E"            /* Hn˝..<..N∫.XOHn */
	$"FD00 486E FF00 3F3C 0002 4EB9 0000 DE7E"            /* ˝.Hnˇ.?<..Nπ..ﬁ~ */
	$"4FEF 000E 486E FF00 2F2E 0008 4EBA FE26"            /* OÔ..Hnˇ./...N∫˛& */
	$"4E5E 2E9F 4E75 8D41 7070 656E 644D 6574"            /* N^.üNuçAppendMet */
	$"686F 6439 0000 4E56 FBF0 48E7 1F00 1E2E"            /* hod9..NV˚HÁ.... */
	$"0016 2A2E 0012 2C2E 000E 382E 000C 4A85"            /* ..*...,...8...JÖ */
	$"6700 01A4 41ED F986 2608 2043 7000 1010"            /* g..§AÌ˘Ü&. Cp... */
	$"5240 48C0 2043 43EE FF00 A22E 3044 2008"            /* R@H¿ CCÓˇ.¢.0D . */
	$"5380 223C 0000 02F6 4EB9 0000 04DA 206D"            /* SÄ"<...ˆNπ...⁄ m */
	$"F298 D1C0 4A28 01E4 6726 486E FE00 1F3C"            /* Úò—¿J(.‰g&Hn˛..< */
	$"0010 4EBA EF1A 41EE FE00 2608 2043 7000"            /* ..N∫Ô.AÓ˛.&. Cp. */
	$"1010 5240 48C0 2043 43EE FF00 A22E 584F"            /* ..R@H¿ CCÓˇ.¢.XO */
	$"486E FD00 486E FE00 1F07 4EBA EEF2 584F"            /* Hn˝.Hn˛...N∫ÓÚXO */
	$"486E FE00 486D F9CA 486E FBF0 2F05 4EBA"            /* Hn˛.Hm˘ Hn˚/.N∫ */
	$"EDC6 584F 486E FBF0 486E FCF0 2F06 4EB9"            /* Ì∆XOHn˚Hn¸/.Nπ */
	$"0000 D6F2 584F 486E FCF0 3044 2008 5380"            /* ..÷ÚXOHn¸0D .SÄ */
	$"223C 0000 02F6 4EB9 0000 04DA 206D F298"            /* "<...ˆNπ...⁄ mÚò */
	$"D1C0 4850 486E FF00 4EB9 0000 CBE4 206E"            /* —¿HPHnˇ.Nπ..À‰ n */
	$"0008 2068 000C 2F10 486E FD00 2F2E 0008"            /* .. h../.Hn˝./... */
	$"4EBA FD22 41ED F986 2608 2043 7000 1010"            /* N∫˝"AÌ˘Ü&. Cp... */
	$"5240 48C0 2043 43EE FF00 A22E 3044 2008"            /* R@H¿ CCÓˇ.¢.0D . */
	$"5380 223C 0000 02F6 4EB9 0000 04DA 206D"            /* SÄ"<...ˆNπ...⁄ m */
	$"F298 D1C0 4A28 01E4 6726 486E FE00 1F3C"            /* Úò—¿J(.‰g&Hn˛..< */
	$"0010 4EBA EE98 41EE FE00 2608 2043 7000"            /* ..N∫ÓòAÓ˛.&. Cp. */
	$"1010 5240 48C0 2043 43EE FF00 A22E 584F"            /* ..R@H¿ CCÓˇ.¢.XO */
	$"486E FD00 486E FE00 1F07 4EBA EE70 584F"            /* Hn˝.Hn˛...N∫ÓpXO */
	$"486E FE00 486D F9CA 486E FBF0 2F05 4EBA"            /* Hn˛.Hm˘ Hn˚/.N∫ */
	$"ECF6 584F 486E FBF0 486E FCF0 2F06 4EB9"            /* ÏˆXOHn˚Hn¸/.Nπ */
	$"0000 D6F2 584F 486E FCF0 3044 2008 5380"            /* ..÷ÚXOHn¸0D .SÄ */
	$"223C 0000 02F6 4EB9 0000 04DA 206D F298"            /* "<...ˆNπ...⁄ mÚò */
	$"D1C0 4868 0080 486E FF00 4EB9 0000 CBE4"            /* —¿Hh.ÄHnˇ.Nπ..À‰ */
	$"206E 0008 2068 0008 2F10 486E FD00 2F2E"            /*  n.. h../.Hn˝./. */
	$"0008 4EBA FC50 4CDF 00F8 4E5E 205F 4FEF"            /* ..N∫¸PLﬂ.¯N^ _OÔ */
	$"0010 4ED0 9041 7070 656E 6450 7572 6368"            /* ..N–êAppendPurch */
	$"6173 6531 3000 0000 4E56 FAEE 48E7 1820"            /* ase10...NV˙ÓHÁ.  */
	$"206E 000C 4290 206E 0008 4290 554F 4EBA"            /*  n..Bê n..BêUON∫ */
	$"F584 301F 3D40 FAFE 4A6E FAFE 6600 0934"            /* ıÑ0.=@˙˛Jn˙˛f..4 */
	$"594F 42A7 201F A122 2E88 205F 226E 0008"            /* YOBß .°".à _"n.. */
	$"2288 594F 42A7 201F A122 2E88 205F 226E"            /* "àYOBß .°".à _"n */
	$"000C 2288 7000 102D F285 0C40 0007 6200"            /* .."àp..-ÚÖ.@..b. */
	$"03E8 D040 303B 0006 4EFB 0002 03DC 0010"            /* .Ë–@0;..N˚...‹.. */
	$"0038 0060 0088 0088 0088 032A 3F3C 00C8"            /* .8.`.à.à.à.*?<.» */
	$"2F0E 4EBA FC3C 3F3C 012C 2F0E 4EBA FC32"            /* /.N∫¸<?<.,/.N∫¸2 */
	$"3F3C 0136 2F0E 4EBA FC28 2F0E 4EBA FCC2"            /* ?<.6/.N∫¸(/.N∫¸¬ */
	$"6000 03AC 3F3C 00C9 2F0E 4EBA FC14 3F3C"            /* `..¨?<.…/.N∫¸.?< */
	$"012C 2F0E 4EBA FC0A 3F3C 0136 2F0E 4EBA"            /* .,/.N∫¸.?<.6/.N∫ */
	$"FC00 2F0E 4EBA FC9A 6000 0384 3F3C 00CB"            /* ¸./.N∫¸ö`..Ñ?<.À */
	$"2F0E 4EBA FBEC 3F3C 012C 2F0E 4EBA FBE2"            /* /.N∫˚Ï?<.,/.N∫˚‚ */
	$"3F3C 0136 2F0E 4EBA FBD8 2F0E 4EBA FC72"            /* ?<.6/.N∫˚ÿ/.N∫¸r */
	$"6000 035C 3F3C 00CA 2F0E 4EBA FBC4 3F3C"            /* `..\?<. /.N∫˚ƒ?< */
	$"012C 2F0E 4EBA FBBA 3F3C 0136 2F0E 4EBA"            /* .,/.N∫˚∫?<.6/.N∫ */
	$"FBB0 2F0E 4EBA FC4A 206E 000C 2F10 486E"            /* ˚∞/.N∫¸J n../.Hn */
	$"FE00 1F3C 0020 4EBA F226 584F 486E FE00"            /* ˛..<. N∫Ú&XOHn˛. */
	$"486E FD00 1F3C 0002 4EBA EC64 584F 486E"            /* Hn˝..<..N∫ÏdXOHn */
	$"FD00 486E FB00 3F3C 0002 4EB9 0000 DE7E"            /* ˝.Hn˚.?<..Nπ..ﬁ~ */
	$"4FEF 000E 486E FB00 2F0E 4EBA FAD8 206E"            /* OÔ..Hn˚./.N∫˙ÿ n */
	$"0008 2F10 486E FE00 1F3C 0020 4EBA F1E0"            /* ../.Hn˛..<. N∫Ò‡ */
	$"584F 486E FE00 486E FD00 1F3C 0002 4EBA"            /* XOHn˛.Hn˝..<..N∫ */
	$"EC6C 584F 486E FD00 486E FB00 3F3C 0002"            /* ÏlXOHn˝.Hn˚.?<.. */
	$"4EB9 0000 DE7E 4FEF 000E 486E FB00 2F0E"            /* Nπ..ﬁ~OÔ..Hn˚./. */
	$"4EBA FA92 486E FD00 1F3C 0021 4EBA F1A0"            /* N∫˙íHn˝..<.!N∫Ò† */
	$"41EE FD00 2608 2043 7000 1010 5240 48C0"            /* AÓ˝.&. Cp...R@H¿ */
	$"2043 43EE FF00 A22E 486E FF00 486D F98E"            /*  CCÓˇ.¢.Hnˇ.Hm˘é */
	$"4EBA EB12 486E FF00 486D F9CE 486E FF00"            /* N∫Î.Hnˇ.Hm˘ŒHnˇ. */
	$"486E FD00 1F3C 0022 4EBA F164 584F 486E"            /* Hn˝..<."N∫ÒdXOHn */
	$"FD00 486D F986 4EB9 0000 CC7E 486E FF00"            /* ˝.Hm˘ÜNπ..Ã~Hnˇ. */
	$"4EBA F7E0 206E 000C 2F10 486E FF00 486E"            /* N∫˜‡ n../.Hnˇ.Hn */
	$"FD00 1F3C 0003 4EBA EB86 584F 486E FD00"            /* ˝..<..N∫ÎÜXOHn˝. */
	$"486E FE00 3F3C 0002 4EB9 0000 DE7E 4FEF"            /* Hn˛.?<..Nπ..ﬁ~OÔ */
	$"000E 486E FE00 2F0E 4EBA F9FA 486E FF00"            /* ..Hn˛./.N∫˘˙Hnˇ. */
	$"486D F9D6 4EBA EA9E 206E 0008 2F10 486E"            /* Hm˘÷N∫Íû n../.Hn */
	$"FF00 486E FD00 1F3C 0003 4EBA EB90 584F"            /* ˇ.Hn˝..<..N∫ÎêXO */
	$"486E FD00 486E FE00 3F3C 0002 4EB9 0000"            /* Hn˝.Hn˛.?<..Nπ.. */
	$"DE7E 4FEF 000E 486E FE00 2F0E 4EBA F9B6"            /* ﬁ~OÔ..Hn˛./.N∫˘∂ */
	$"486D F160 486D F986 3F3C 0001 4EB9 0000"            /* HmÒ`Hm˘Ü?<..Nπ.. */
	$"DD64 101F 544F 6770 206E 000C 2F10 486D"            /* ›d..TOgp n../.Hm */
	$"F160 486E FD00 1F3C 0011 4EBA EAF2 584F"            /* Ò`Hn˝..<..N∫ÍÚXO */
	$"486E FD00 486E FE00 3F3C 0002 4EB9 0000"            /* Hn˝.Hn˛.?<..Nπ.. */
	$"DE7E 4FEF 000E 486E FE00 2F0E 4EBA F966"            /* ﬁ~OÔ..Hn˛./.N∫˘f */
	$"206E 0008 2F10 486D F160 486E FD00 1F3C"            /*  n../.HmÒ`Hn˝..< */
	$"0011 4EBA EB08 584F 486E FD00 486E FE00"            /* ..N∫Î.XOHn˝.Hn˛. */
	$"3F3C 0002 4EB9 0000 DE7E 4FEF 000E 486E"            /* ?<..Nπ..ﬁ~OÔ..Hn */
	$"FE00 2F0E 4EBA F92E 554F 486D F060 486D"            /* ˛./.N∫˘.UOHm`Hm */
	$"F986 3F3C 0001 4EB9 0000 DD64 101F 6700"            /* ˘Ü?<..Nπ..›d..g. */
	$"012E 206E 000C 2F10 486D F060 486E FD00"            /* .. n../.Hm`Hn˝. */
	$"1F3C 0012 4EBA EA68 584F 486E FD00 486E"            /* .<..N∫ÍhXOHn˝.Hn */
	$"FE00 3F3C 0002 4EB9 0000 DE7E 4FEF 000E"            /* ˛.?<..Nπ..ﬁ~OÔ.. */
	$"486E FE00 2F0E 4EBA F8DC 206E 0008 2F10"            /* Hn˛./.N∫¯‹ n../. */
	$"486D F060 486E FD00 1F3C 0012 4EBA EA7E"            /* Hm`Hn˝..<..N∫Í~ */
	$"584F 486E FD00 486E FE00 3F3C 0002 4EB9"            /* XOHn˝.Hn˛.?<..Nπ */
	$"0000 DE7E 4FEF 000E 486E FE00 2F0E 4EBA"            /* ..ﬁ~OÔ..Hn˛./.N∫ */
	$"F8A4 6000 00BA 3F3C 00CA 2F0E 4EBA F922"            /* ¯§`..∫?<. /.N∫˘" */
	$"3F3C 012C 2F0E 4EBA F918 3F3C 0136 2F0E"            /* ?<.,/.N∫˘.?<.6/. */
	$"4EBA F90E 2F0E 4EBA F9A8 206E 000C 2F10"            /* N∫˘./.N∫˘® n../. */
	$"486E FE00 1F3C 0027 4EBA EF84 584F 486E"            /* Hn˛..<.'N∫ÔÑXOHn */
	$"FE00 486E FD00 1F3C 0004 4EBA E9C2 584F"            /* ˛.Hn˝..<..N∫È¬XO */
	$"486E FD00 486E FB00 3F3C 0002 4EB9 0000"            /* Hn˝.Hn˚.?<..Nπ.. */
	$"DE7E 4FEF 000E 486E FB00 2F0E 4EBA F836"            /* ﬁ~OÔ..Hn˚./.N∫¯6 */
	$"206E 0008 2F10 486E FE00 1F3C 0027 4EBA"            /*  n../.Hn˛..<.'N∫ */
	$"EF3E 584F 486E FE00 486E FD00 1F3C 0004"            /* Ô>XOHn˛.Hn˝..<.. */
	$"4EBA E9CA 584F 486E FD00 486E FB00 3F3C"            /* N∫È XOHn˝.Hn˚.?< */
	$"0002 4EB9 0000 DE7E 4FEF 000E 486E FB00"            /* ..Nπ..ﬁ~OÔ..Hn˚. */
	$"2F0E 4EBA F7F0 6006 486D F9F6 ABFF 206E"            /* /.N∫˜`.Hm˘ˆ´ˇ n */
	$"000C 2F10 486E FAEE 2F2D F270 4EB9 0000"            /* ../.Hn˙Ó/-ÚpNπ.. */
	$"D6F2 584F 486E FAEE 486E FD00 1F3C 000F"            /* ÷ÚXOHn˙ÓHn˝..<.. */
	$"4EBA E92C 584F 486E FD00 486E FE00 3F3C"            /* N∫È,XOHn˝.Hn˛.?< */
	$"0002 4EB9 0000 DE7E 4FEF 000E 486E FE00"            /* ..Nπ..ﬁ~OÔ..Hn˛. */
	$"2F0E 4EBA F7A0 206E 0008 2F10 486E FAEE"            /* /.N∫˜† n../.Hn˙Ó */
	$"2F2D F270 4EB9 0000 D6F2 584F 486E FAEE"            /* /-ÚpNπ..÷ÚXOHn˙Ó */
	$"486E FD00 1F3C 000F 4EBA E932 584F 486E"            /* Hn˝..<..N∫È2XOHn */
	$"FD00 486E FE00 3F3C 0002 4EB9 0000 DE7E"            /* ˝.Hn˛.?<..Nπ..ﬁ~ */
	$"4FEF 000E 486E FE00 2F0E 4EBA F758 206E"            /* OÔ..Hn˛./.N∫˜X n */
	$"000C 2F10 486E FE00 1F3C 0005 4EBA EE60"            /* ../.Hn˛..<..N∫Ó` */
	$"584F 486E FE00 486E FD00 1F3C 0005 4EBA"            /* XOHn˛.Hn˝..<..N∫ */
	$"E89E 584F 486E FD00 486E FB00 3F3C 0002"            /* ËûXOHn˝.Hn˚.?<.. */
	$"4EB9 0000 DE7E 4FEF 000E 486E FB00 2F0E"            /* Nπ..ﬁ~OÔ..Hn˚./. */
	$"4EBA F712 206E 0008 2F10 486E FE00 1F3C"            /* N∫˜. n../.Hn˛..< */
	$"0005 4EBA EE1A 584F 486E FE00 486E FD00"            /* ..N∫Ó.XOHn˛.Hn˝. */
	$"1F3C 0005 4EBA E8A6 584F 486E FD00 486E"            /* .<..N∫Ë¶XOHn˝.Hn */
	$"FB00 3F3C 0002 4EB9 0000 DE7E 4FEF 000E"            /* ˚.?<..Nπ..ﬁ~OÔ.. */
	$"486E FB00 2F0E 4EBA F6CC 206E 000C 2F10"            /* Hn˚./.N∫ˆÃ n../. */
	$"486E FE00 1F3C 0006 4EBA EDD4 584F 486E"            /* Hn˛..<..N∫Ì‘XOHn */
	$"FE00 486E FD00 1F3C 0006 4EBA E812 584F"            /* ˛.Hn˝..<..N∫Ë.XO */
	$"486E FD00 486E FB00 3F3C 0002 4EB9 0000"            /* Hn˝.Hn˚.?<..Nπ.. */
	$"DE7E 4FEF 000E 486E FB00 2F0E 4EBA F686"            /* ﬁ~OÔ..Hn˚./.N∫ˆÜ */
	$"206E 0008 2F10 486E FE00 1F3C 0006 4EBA"            /*  n../.Hn˛..<..N∫ */
	$"ED8E 584F 486E FE00 486E FD00 1F3C 0006"            /* ÌéXOHn˛.Hn˝..<.. */
	$"4EBA E81A 584F 486E FD00 486E FB00 3F3C"            /* N∫Ë.XOHn˝.Hn˚.?< */
	$"0002 4EB9 0000 DE7E 4FEF 000E 486E FB00"            /* ..Nπ..ﬁ~OÔ..Hn˚. */
	$"2F0E 4EBA F640 486E FD00 1F3C 0008 4EBA"            /* /.N∫ˆ@Hn˝..<..N∫ */
	$"ED4E 41EE FD00 2608 2043 7000 1010 5240"            /* ÌNAÓ˝.&. Cp...R@ */
	$"48C0 2043 43EE FF00 A22E 584F 6000 00A0"            /* H¿ CCÓˇ.¢.XO`..† */
	$"486E FF00 3F3C 000D 486E FC00 486E FF00"            /* Hnˇ.?<..Hn¸.Hnˇ. */
	$"4EB9 0000 CD24 554F 486E FC00 486D F986"            /* Nπ..Õ$UOHn¸.Hm˘Ü */
	$"3F3C 0001 4EB9 0000 DD64 101F 6770 206E"            /* ?<..Nπ..›d..gp n */
	$"000C 2F10 486E FC00 486E FD00 1F3C 0007"            /* ../.Hn¸.Hn˝..<.. */
	$"4EBA E73C 584F 486E FD00 486E FE00 3F3C"            /* N∫Á<XOHn˝.Hn˛.?< */
	$"0002 4EB9 0000 DE7E 4FEF 000E 486E FE00"            /* ..Nπ..ﬁ~OÔ..Hn˛. */
	$"2F0E 4EBA F5B0 206E 0008 2F10 486E FC00"            /* /.N∫ı∞ n../.Hn¸. */
	$"486E FD00 1F3C 0007 4EBA E752 584F 486E"            /* Hn˝..<..N∫ÁRXOHn */
	$"FD00 486E FE00 3F3C 0002 4EB9 0000 DE7E"            /* ˝.Hn˛.?<..Nπ..ﬁ~ */
	$"4FEF 000E 486E FE00 2F0E 4EBA F578 554F"            /* OÔ..Hn˛./.N∫ıxUO */
	$"486E FF00 486D F986 3F3C 0001 4EB9 0000"            /* Hnˇ.Hm˘Ü?<..Nπ.. */
	$"DD64 101F 6600 FF4A 382D F296 7601 6000"            /* ›d..f.ˇJ8-Úñv.`. */
	$"0140 3043 2008 5380 223C 0000 02F6 4EB9"            /* .@0C .SÄ"<...ˆNπ */
	$"0000 04DA 206D F298 D1C0 2448 1F3C 0008"            /* ...⁄ mÚò—¿$H.<.. */
	$"594F 3F03 4EBA E044 201F 222A 01D4 4EB9"            /* YO?.N∫‡D ."*.‘Nπ */
	$"0000 04DA 2F00 2F2A 01D4 3F03 2F0E 4EBA"            /* ...⁄/./*.‘?./.N∫ */
	$"F706 1F3C 0009 594F 3F03 4EBA E0C2 201F"            /* ˜..<..YO?.N∫‡¬ . */
	$"222A 01D8 4EB9 0000 04DA 2F00 2F2A 01D8"            /* "*.ÿNπ...⁄/./*.ÿ */
	$"3F03 2F0E 4EBA F6E0 1F3C 000A 594F 3F03"            /* ?./.N∫ˆ‡.<..YO?. */
	$"4EBA E0F6 201F 222A 01DC 4EB9 0000 04DA"            /* N∫‡ˆ ."*.‹Nπ...⁄ */
	$"2F00 2F2A 01DC 3F03 2F0E 4EBA F6BA 1F3C"            /* /./*.‹?./.N∫ˆ∫.< */
	$"000B 2F2A 01E0 42A7 3F03 2F0E 4EBA F6A8"            /* ../*.‡Bß?./.N∫ˆ® */
	$"554F 486A 00D0 486D F986 3F3C 0001 4EB9"            /* UOHj.–Hm˘Ü?<..Nπ */
	$"0000 DD64 101F 6700 0080 486E FF00 486E"            /* ..›d..g..ÄHnˇ.Hn */
	$"FD00 1F3C 000C 4EBA E5F6 584F 486E FD00"            /* ˝..<..N∫ÂˆXOHn˝. */
	$"486A 00D0 486D F986 486D F986 2F0A 486D"            /* Hj.–Hm˘ÜHm˘Ü/.Hm */
	$"F986 4EB9 0000 CBE4 206E 000C 2F10 486E"            /* ˘ÜNπ..À‰ n../.Hn */
	$"FF00 2F0E 4EBA F45E 486E FF00 486E FD00"            /* ˇ./.N∫Ù^Hnˇ.Hn˝. */
	$"1F3C 000C 4EBA E606 584F 486E FD00 486A"            /* .<..N∫Ê.XOHn˝.Hj */
	$"00D0 486D F986 486D F986 486A 0080 486D"            /* .–Hm˘ÜHm˘ÜHj.ÄHm */
	$"F986 4EB9 0000 CBE4 206E 0008 2F10 486E"            /* ˘ÜNπ..À‰ n../.Hn */
	$"FF00 2F0E 4EBA F41E 0C43 7FFF 6708 5243"            /* ˇ./.N∫Ù..C.ˇg.RC */
	$"B644 6F00 FEBE 4A6D F286 6700 00A2 486E"            /* ∂Do.˛æJmÚÜg..¢Hn */
	$"FF00 486E FD00 1F3C 000D 4EBA E562 584F"            /* ˇ.Hn˝..<..N∫ÂbXO */
	$"486E FD00 486D F9CA 486E FE00 306D F286"            /* Hn˝.Hm˘ Hn˛.0mÚÜ */
	$"2F08 4EBA E432 584F 486E FE00 486D F986"            /* /.N∫‰2XOHn˛.Hm˘Ü */
	$"486D F986 486D F986 4EB9 0000 CBE4 206E"            /* Hm˘ÜHm˘ÜNπ..À‰ n */
	$"000C 2F10 486E FF00 2F0E 4EBA F3B8 486E"            /* ../.Hnˇ./.N∫Û∏Hn */
	$"FF00 486E FD00 1F3C 000D 4EBA E560 584F"            /* ˇ.Hn˝..<..N∫Â`XO */
	$"486E FD00 486D F9CA 486E FE00 306D F286"            /* Hn˝.Hm˘ Hn˛.0mÚÜ */
	$"2F08 4EBA E3E2 584F 486E FE00 486D F986"            /* /.N∫„‚XOHn˛.Hm˘Ü */
	$"486D F986 486D F986 4EB9 0000 CBE4 206E"            /* Hm˘ÜHm˘ÜNπ..À‰ n */
	$"0008 2F10 486E FF00 2F0E 4EBA F368 486E"            /* ../.Hnˇ./.N∫ÛhHn */
	$"FF00 486E FD00 1F3C 000E 4EBA E4C2 584F"            /* ˇ.Hn˝..<..N∫‰¬XO */
	$"486E FD00 486E FE00 4EBA E924 584F 486E"            /* Hn˝.Hn˛.N∫È$XOHn */
	$"FE00 486D F986 486D F986 486D F986 486D"            /* ˛.Hm˘ÜHm˘ÜHm˘ÜHm */
	$"F986 4EB9 0000 CBE4 206E 000C 2F10 486E"            /* ˘ÜNπ..À‰ n../.Hn */
	$"FF00 2F0E 4EBA F31E 486E FF00 486E FD00"            /* ˇ./.N∫Û.Hnˇ.Hn˝. */
	$"1F3C 000E 4EBA E4C6 584F 486E FD00 486E"            /* .<..N∫‰∆XOHn˝.Hn */
	$"FE00 4EBA E8DA 584F 486E FE00 486D F986"            /* ˛.N∫Ë⁄XOHn˛.Hm˘Ü */
	$"486D F986 486D F986 486D F986 4EB9 0000"            /* Hm˘ÜHm˘ÜHm˘ÜNπ.. */
	$"CBE4 206E 0008 2F10 486E FF00 2F0E 4EBA"            /* À‰ n../.Hnˇ./.N∫ */
	$"F2D4 4A6E FAFE 6714 206E 000C 2F10 205F"            /* Ú‘Jn˙˛g. n../. _ */
	$"A023 206E 0008 2F10 205F A023 3D6E FAFE"            /* †# n../. _†#=n˙˛ */
	$"0010 4CDF 0418 4E5E 205F 504F 4ED0 8747"            /* ..Lﬂ..N^ _PON–áG */
	$"4554 4441 5441 0000 4E56 FD00 2F03 162E"            /* ETDATA..NV˝./... */
	$"000C 206E 000E 43EE FF00 703F 22D8 51C8"            /* .. n..CÓˇ.p?"ÿQ» */
	$"FFFC 4A2E 0012 6626 554F 486E FD00 486E"            /* ˇ¸J...f&UOHn˝.Hn */
	$"FF00 4EB9 0000 C334 584F 486E FD00 486D"            /* ˇ.Nπ..√4XOHn˝.Hm */
	$"F986 4267 4EB9 0000 DD64 101F 6728 2F2D"            /* ˘ÜBgNπ..›d..g(/- */
	$"F29C 7000 1003 3F00 486E FE00 4EB9 0000"            /* Úúp...?.Hn˛.Nπ.. */
	$"ADB2 554F 486E FF00 486E FE00 4EB9 0000"            /* ≠≤UOHnˇ.Hn˛.Nπ.. */
	$"C388 301F 3600 261F 4E5E 205F 4FEF 000C"            /* √à0.6.&.N^ _OÔ.. */
	$"4ED0 9253 6574 4465 6661 756C 7453 7472"            /* N–íSetDefaultStr */
	$"696E 6731 3100 0000 4E56 FFFE 554F 1F3C"            /* ing11...NVˇ˛UO.< */
	$"0002 4EB9 0000 C3F6 301F 3D40 FFFE 4227"            /* ..Nπ..√ˆ0.=@ˇ˛B' */
	$"486D FA06 1F3C 0005 2F0E 4EBA FF4C 4227"            /* Hm˙..<../.N∫ˇLB' */
	$"486D FA10 1F3C 0006 2F0E 4EBA FF3C 1F3C"            /* Hm˙..<../.N∫ˇ<.< */
	$"0001 486D FA16 1F3C 0008 2F0E 4EBA FF2A"            /* ..Hm˙..<../.N∫ˇ* */
	$"554F 4EB9 0000 C42E 301F 3D40 FFFE 4E5E"            /* UONπ..ƒ.0.=@ˇ˛N^ */
	$"4E75 8953 4156 4550 5245 4653 0000 4E56"            /* NuâSAVEPREFS..NV */
	$"FDF0 2F03 362E 000A 4A43 675E 0C43 FF80"            /* ˝/.6...JCg^.CˇÄ */
	$"6758 486E FF00 486E FDF0 1F2E 0008 4EBA"            /* gXHnˇ.Hn˝....N∫ */
	$"E16A 584F 486E FDF0 486E FEF0 3043 2F08"            /* ·jXOHn˝Hn˛0C/. */
	$"4EB9 0000 D6F2 584F 486E FEF0 486D F986"            /* Nπ..÷ÚXOHn˛Hm˘Ü */
	$"486D F986 4EB9 0000 CC7E 486D F986 486E"            /* Hm˘ÜNπ..Ã~Hm˘ÜHn */
	$"FF00 486D F986 486D F986 4EB9 0000 7640"            /* ˇ.Hm˘ÜHm˘ÜNπ..v@ */
	$"3F3C 0096 4EB9 0000 830A 261F 4E5E 2E9F"            /* ?<.ñNπ..É.&.N^.ü */
	$"4E75 8C44 4953 504C 4159 4552 524F 5200"            /* NuåDISPLAYERROR. */
	$"0000 4E56 FE0E 48E7 1C20 2A2E 0010 246E"            /* ..NV˛.HÁ. *...$n */
	$"0008 206E 000C 43EE FE0E 700F 22D8 51C8"            /* .. n..CÓ˛.p."ÿQ» */
	$"FFFC 78FF 7001 BA80 6700 0082 7800 41EE"            /* ˇ¸xˇp.∫Äg..Çx.AÓ */
	$"FE0E 2608 2043 7000 1010 5240 48C0 2043"            /* ˛.&. Cp...R@H¿ C */
	$"224A A22E 3D6E 0014 FFBA 2D45 FFBC 6050"            /* "J¢.=n..ˇ∫-Eˇº`P */
	$"554F 486E FFBA 3F3C FFFF 486E FE4E 4EB9"            /* UOHnˇ∫?<ˇˇHn˛NNπ */
	$"0000 C59A 301F 3800 2F0A 486D FA28 486E"            /* ..≈ö0.8./.Hm˙(Hn */
	$"FFC0 486E FEBA 3F3C 0003 4EB9 0000 DE7E"            /* ˇ¿Hn˛∫?<..Nπ..ﬁ~ */
	$"41EE FEBA 2608 2043 7000 1010 5240 48C0"            /* AÓ˛∫&. Cp...R@H¿ */
	$"2043 224A A22E 2D6E FEB2 FFBC 4FEF 0012"            /*  C"J¢.-n˛≤ˇºOÔ.. */
	$"4A44 6608 7001 B0AE FFBC 66A4 3D44 0016"            /* JDf.p.∞Æˇºf§=D.. */
	$"4CDF 0438 4E5E 205F 4FEF 000E 4ED0 9648"            /* Lﬂ.8N^ _OÔ..N–ñH */
	$"4143 4B53 5953 5445 4D36 4745 5446 554C"            /* ACKSYSTEM6GETFUL */
	$"4C50 4154 4800 0000 4E56 FEC0 48E7 1C00"            /* LPATH...NV˛¿HÁ.. */
	$"3A2E 0010 282E 000C 206E 0008 43EE FFC0"            /* :...(... n..CÓˇ¿ */
	$"700F 22D8 51C8 FFFC 4A2D F86F 670C 3F05"            /* p."ÿQ»ˇ¸J-¯og.?. */
	$"2F04 486E FFC0 A81B 6020 554F 3F05 2F04"            /* /.Hnˇ¿®.` UO?./. */
	$"486E FFC0 486E FEC0 4EBA FEE8 301F 3600"            /* Hnˇ¿Hn˛¿N∫˛Ë0.6. */
	$"4A43 6606 486E FEC0 A9B1 4CDF 0038 4E5E"            /* JCf.Hn˛¿©±Lﬂ.8N^ */
	$"205F 4FEF 000A 4ED0 9848 4143 4B53 5953"            /*  _OÔ..N–òHACKSYS */
	$"5445 4D36 4352 4541 5445 5245 5346 494C"            /* TEM6CREATERESFIL */
	$"4500 0000 4E56 FEC0 48E7 1C20 3A2E 0016"            /* E...NV˛¿HÁ. :... */
	$"282E 0012 246E 0008 206E 000E 43EE FFC0"            /* (...$n.. n..CÓˇ¿ */
	$"700F 22D8 51C8 FFFC 4A2D F86F 671E 554F"            /* p."ÿQ»ˇ¸J-¯og.UO */
	$"3F05 2F04 486E FFC0 1F2E 000C A81A 301F"            /* ?./.Hnˇ¿....®.0. */
	$"3480 554F A9AF 301F 3600 6030 76FF 554F"            /* 4ÄUO©Ø0.6.`0vˇUO */
	$"3F05 2F04 486E FFC0 486E FEC0 4EBA FE54"            /* ?./.Hnˇ¿Hn˛¿N∫˛T */
	$"301F 3600 4A43 6614 554F 486E FEC0 A997"            /* 0.6.JCf.UOHn˛¿©ó */
	$"301F 3480 554F A9AF 301F 3600 4A43 6704"            /* 0.4ÄUO©Ø0.6.JCg. */
	$"34BC FFFF 4A43 6608 0C52 FFFF 6602 76FE"            /* 4ºˇˇJCf..Rˇˇf.v˛ */
	$"3D43 0018 4CDF 0438 4E5E 205F 4FEF 0010"            /* =C..Lﬂ.8N^ _OÔ.. */
	$"4ED0 9648 4143 4B53 5953 5445 4D36 4F50"            /* N–ñHACKSYSTEM6OP */
	$"454E 5245 5346 494C 4500 0000 4E56 FCA4"            /* ENRESFILE...NV¸§ */
	$"48E7 1E20 95CA 554F 486E FDAE 486E FDA4"            /* HÁ. ï UOHn˝ÆHn˝§ */
	$"4EBA F2D6 301F 3D40 FFB2 4A6E FFB2 6600"            /* N∫Ú÷0.=@ˇ≤Jnˇ≤f. */
	$"030A 554F 7000 102D F285 2F00 486D FA2B"            /* ..UOp..-ÚÖ/.Hm˙+ */
	$"4878 0001 4EB9 0000 DCD0 101F 6704 7C01"            /* Hx..Nπ..‹–..g.|. */
	$"601A 554F 3F3C 00AA 4EB9 0000 82CA 301F"            /* `.UO?<.™Nπ..Ç 0. */
	$"3600 0C43 0001 56C0 4400 1C00 4A06 6722"            /* 6..C..V¿D...J.g" */
	$"2F2E FDAE 3F3C 0141 486E FFB2 4EBA ED9E"            /* /.˝Æ?<.AHnˇ≤N∫Ìû */
	$"594F 2F2E FDA4 4EB9 0000 741A 205F 2448"            /* YO/.˝§Nπ..t. _$H */
	$"6018 2F2E FDAE 3F3C 0140 486E FFB2 4EBA"            /* `./.˝Æ?<.@Hnˇ≤N∫ */
	$"ED7C 2F2E FDAE 4EBA EE10 4A6E FFB2 6600"            /* Ì|/.˝ÆN∫Ó.Jnˇ≤f. */
	$"0274 486E FEB2 1F3C 0005 4EBA DE4E 584F"            /* .tHn˛≤.<..N∫ﬁNXO */
	$"486E FEB2 486E FCA4 1F3C 0006 4EBA DE3C"            /* Hn˛≤Hn¸§.<..N∫ﬁ< */
	$"584F 486E FCA4 486E FFB4 4EB9 0000 9A9E"            /* XOHn¸§Hnˇ¥Nπ..öû */
	$"4A2E FFB4 6700 023E 554F 3F2E FFBA 2F2E"            /* J.ˇ¥g..>UO?.ˇ∫/. */
	$"FFBC 486E FFC0 4EB9 0000 EB20 301F 3D40"            /* ˇºHnˇ¿Nπ..Î 0.=@ */
	$"FFB2 4A06 674A 554F 3F2E FFBA 2F2E FFBC"            /* ˇ≤J.gJUO?.ˇ∫/.ˇº */
	$"486E FFC0 2F2D FA2C 2F2D FA30 4EB9 0000"            /* Hnˇ¿/-˙,/-˙0Nπ.. */
	$"EABA 301F 3D40 FFB2 4A2D F86F 6710 3F2E"            /* Í∫0.=@ˇ≤J-¯og.?. */
	$"FFBA 2F2E FFBC 486E FFC0 A81B 6034 3F2E"            /* ˇ∫/.ˇºHnˇ¿®.`4?. */
	$"FFBA 2F2E FFBC 486E FFC0 4EBA FD8C 6022"            /* ˇ∫/.ˇºHnˇ¿N∫˝å`" */
	$"554F 3F2E FFBA 2F2E FFBC 486E FFC0 2F2D"            /* UO?.ˇ∫/.ˇºHnˇ¿/- */
	$"FA2C 2F2D F9C4 4EB9 0000 EABA 301F 3D40"            /* ˙,/-˘ƒNπ..Í∫0.=@ */
	$"FFB2 554F 3F2E FFBA 2F2E FFBC 486E FFC0"            /* ˇ≤UO?.ˇ∫/.ˇºHnˇ¿ */
	$"1F3C 0003 486E FDAC 4EB9 0000 EA26 301F"            /* .<..Hn˝¨Nπ..Í&0. */
	$"3D40 FFB2 4A6E FFB2 6600 0120 2F2E FDAE"            /* =@ˇ≤Jnˇ≤f.. /.˝Æ */
	$"205F A029 594F 2F2E FDAE 4EB9 0000 E790"            /*  _†)YO/.˝ÆNπ..Áê */
	$"201F 2D40 FDA8 554F 3F2E FDAC 486E FDA8"            /*  .-@˝®UO?.˝¨Hn˝® */
	$"206E FDAE 2F10 4EB9 0000 E7FA 301F 3D40"            /*  n˝Æ/.Nπ..Á˙0.=@ */
	$"FFB2 4A6E FFB2 6600 00C8 4A06 6700 00C2"            /* ˇ≤Jnˇ≤f..»J.g..¬ */
	$"486D F9C8 486D FA34 486D F9C8 486D F9C8"            /* Hm˘»Hm˙4Hm˘»Hm˘» */
	$"486E FEB2 3F3C 0004 4EB9 0000 DE7E 41EE"            /* Hn˛≤?<..Nπ..ﬁ~AÓ */
	$"FEB2 2608 2043 7000 1010 5240 48C0 2043"            /* ˛≤&. Cp...R@H¿ C */
	$"43EE FDB2 A22E 2052 2252 3029 0006 9068"            /* CÓ˝≤¢. R"R0)..êh */
	$"0002 48C0 2A00 E685 E08D E08D E08D E88D"            /* ..H¿*.ÊÖ‡ç‡ç‡çËç */
	$"DA80 E885 7801 4FEF 0016 603A 486D F9C8"            /* ⁄ÄËÖx.OÔ..`:Hm˘» */
	$"486E FDB2 486E FEB2 3F3C 0002 4EB9 0000"            /* Hn˝≤Hn˛≤?<..Nπ.. */
	$"DE7E 41EE FEB2 2608 2043 7000 1010 5240"            /* ﬁ~AÓ˛≤&. Cp...R@ */
	$"48C0 2043 43EE FDB2 A22E 0C44 7FFF 4FEF"            /* H¿ CCÓ˝≤¢..D.ˇOÔ */
	$"000E 6706 5244 B845 6FC2 7000 102E FDB2"            /* ..g.RD∏Eo¬p...˝≤ */
	$"48C0 2D40 FDA8 554F 3F2E FDAC 486E FDA8"            /* H¿-@˝®UO?.˝¨Hn˝® */
	$"486E FDB3 4EB9 0000 E7FA 301F 3D40 FFB2"            /* Hn˝≥Nπ..Á˙0.=@ˇ≤ */
	$"554F 3F2E FDAC 4EB9 0000 E7DC 301F 3600"            /* UO?.˝¨Nπ..Á‹0.6. */
	$"4A6E FFB2 6604 3D43 FFB2 4A6E FFB2 6646"            /* Jnˇ≤f.=Cˇ≤Jnˇ≤fF */
	$"4A06 6742 554F 3F2E FFBA 2F2E FFBC 486E"            /* J.gBUO?.ˇ∫/.ˇºHn */
	$"FFC0 1F3C 0003 486E FDAC 4EBA FC78 301F"            /* ˇ¿.<..Hn˝¨N∫¸x0. */
	$"3D40 FFB2 4A6E FFB2 661C 2F0A 2F2D FA36"            /* =@ˇ≤Jnˇ≤f././-˙6 */
	$"3F3C 03E8 486D F986 A9AB 2F0A A9B0 3F2E"            /* ?<.ËHm˘Ü©´/.©∞?. */
	$"FDAC A99A 95CA 4A6E FFB2 6718 554F 3F2E"            /* ˝¨©öï Jnˇ≤g.UO?. */
	$"FFBA 2F2E FFBC 486E FFC0 4EB9 0000 EB20"            /* ˇ∫/.ˇºHnˇ¿Nπ..Î  */
	$"301F 3600 2F2E FDAE 205F A023 2F2E FDA4"            /* 0.6./.˝Æ _†#/.˝§ */
	$"205F A023 2F0A 205F A023 4A6E FFB2 6606"            /*  _†#/. _†#Jnˇ≤f. */
	$"1B7C 0001 F261 3F2E FFB2 1F3C 0007 4EBA"            /* .|..Úa?.ˇ≤.<..N∫ */
	$"FA2E 4CDF 0478 4E5E 4E75 8844 4F53 4156"            /* ˙.Lﬂ.xN^NuàDOSAV */
	$"4541 5300 0000 4E56 FFF2 554F 486E FFFA"            /* EAS...NVˇÚUOHnˇ˙ */
	$"486E FFF6 4EBA EF82 301F 3D40 FFFE 4A6E"            /* HnˇˆN∫ÔÇ0.=@ˇ˛Jn */
	$"FFFE 6600 00D8 554F 7000 102D F285 2F00"            /* ˇ˛f..ÿUOp..-ÚÖ/. */
	$"486D FA2B 4878 0001 4EB9 0000 DCD0 101F"            /* Hm˙+Hx..Nπ..‹–.. */
	$"6712 486E FFFE 1F3C 000B 486D F986 4EBA"            /* g.Hnˇ˛.<..Hm˘ÜN∫ */
	$"E2DC 6010 486E FFFE 1F3C 0009 486D F986"            /* ‚‹`.Hnˇ˛.<..Hm˘Ü */
	$"4EBA E2CA 4A6E FFFE 6646 554F 7000 102D"            /* N∫‚ Jnˇ˛fFUOp..- */
	$"F285 2F00 486D FA2B 4878 0001 4EB9 0000"            /* ÚÖ/.Hm˙+Hx..Nπ.. */
	$"DCD0 101F 6712 2F2E FFFA 3F3C 0142 486E"            /* ‹–..g./.ˇ˙?<.BHn */
	$"FFFE 4EBA EA28 6010 2F2E FFFA 3F3C 0140"            /* ˇ˛N∫Í(`./.ˇ˙?<.@ */
	$"486E FFFE 4EBA EA16 2F2E FFFA 4EBA EAAA"            /* Hnˇ˛N∫Í./.ˇ˙N∫Í™ */
	$"4A6E FFFE 6636 594F A9FC 201F 2D40 FFF2"            /* Jnˇ˛f6YO©¸ .-@ˇÚ */
	$"2F2E FFFA 205F A029 594F 594F 2F2E FFFA"            /* /.ˇ˙ _†)YOYO/.ˇ˙ */
	$"4EB9 0000 E790 201F 2F00 2F2D F9C4 206E"            /* Nπ..Áê ././-˘ƒ n */
	$"FFFA 2F10 A9FE 201F 2D40 FFF2 2F2E FFFA"            /* ˇ˙/.©˛ .-@ˇÚ/.ˇ˙ */
	$"205F A023 2F2E FFF6 205F A023 4A6E FFFE"            /*  _†#/.ˇˆ _†#Jnˇ˛ */
	$"6606 1B7C 0001 F261 3F2E FFFE 1F3C 0009"            /* f..|..Úa?.ˇ˛.<.. */
	$"4EBA F90C 4E5E 4E75 8644 4F43 4F50 5900"            /* N∫˘.N^NuÜDOCOPY. */
	$"0000 4E56 FFF8 2F03 554F 486E FFF8 486E"            /* ..NVˇ¯/.UOHnˇ¯Hn */
	$"FFFC 4EBA EE64 301F 3600 4A43 6624 554F"            /* ˇ¸N∫Ód0.6.JCf$UO */
	$"2F2E FFF8 2F2E FFFC 4EB9 0000 74BC 301F"            /* /.ˇ¯/.ˇ¸Nπ..tº0. */
	$"3600 2F2E FFF8 205F A023 2F2E FFFC 205F"            /* 6./.ˇ¯ _†#/.ˇ¸ _ */
	$"A023 4A43 6606 1B7C 0001 F261 3F03 1F3C"            /* †#JCf..|..Úa?..< */
	$"0008 4EBA F8AA 261F 4E5E 4E75 8744 4F50"            /* ..N∫¯™&.N^NuáDOP */
	$"5249 4E54 0000 4E56 FEF8 48E7 1E20 246E"            /* RINT..NV˛¯HÁ. $n */
	$"0016 362E 0014 3C2E 0012 3A2E 0010 382E"            /* ..6...<...:...8. */
	$"000E 206E 000A 43EE FF00 703F 22D8 51C8"            /* .. n..CÓˇ.p?"ÿQ» */
	$"FFFC 4A2E 0008 6710 554F 486E FF00 A88C"            /* ˇ¸J...g.UOHnˇ.®å */
	$"301F 3203 9240 3601 3F03 3006 D052 3F00"            /* 0.2.í@6.?.0.–R?. */
	$"A893 0C45 8000 6604 3A03 5345 0C44 8000"            /* ®ì.EÄ.f.:.SE.DÄ. */
	$"6610 554F 486E FF00 A88C 301F D043 5240"            /* f.UOHnˇ.®å0.–CR@ */
	$"3800 486E FEF8 3F05 3006 5340 3F00 3F04"            /* 8.Hn˛¯?.0.S@?.?. */
	$"3006 D052 D06A 0002 5240 3F00 A8A7 486E"            /* 0.–R–j..R@?.®ßHn */
	$"FEF8 A8A3 486E FF00 A884 4CDF 0478 4E5E"            /* ˛¯®£Hnˇ.®ÑLﬂ.xN^ */
	$"205F 4FEF 0012 4ED0 8644 5241 5741 5400"            /*  _OÔ..N–ÜDRAWAT. */
	$"0000 4E56 0000 7000 102E 000C 206E 0008"            /* ..NV..p..... n.. */
	$"7200 1228 FD9F D240 3D41 000E 4E5E 205F"            /* r..(˝ü“@=A..N^ _ */
	$"5C4F 4ED0 8849 7465 6D4E 6F31 3200 0000"            /* \ON–àItemNo12... */
	$"4E56 FEE0 206E 000C 43EE FEE0 7007 22D8"            /* NV˛‡ n..CÓ˛‡p."ÿ */
	$"51C8 FFFC 4AAE 0010 6622 2F2D F29C 554F"            /* Q»ˇ¸JÆ..f"/-ÚúUO */
	$"1F2E 0014 2F2E 0008 4EBA FFA8 301F 3F00"            /* ..../...N∫ˇ®0.?. */
	$"486E FEE0 4EB9 0000 AD44 602E 2F2E 0010"            /* Hn˛‡Nπ..≠D`./... */
	$"486E FF00 4EB9 0000 E8AE 2F2D F29C 554F"            /* Hnˇ.Nπ..ËÆ/-ÚúUO */
	$"1F2E 0014 2F2E 0008 4EBA FF78 301F 3F00"            /* ..../...N∫ˇx0.?. */
	$"486E FF00 4EB9 0000 AD44 4E5E 205F 4FEF"            /* Hnˇ.Nπ..≠DN^ _OÔ */
	$"000E 4ED0 8853 6574 4E75 6D31 3300 0000"            /* ..N–àSetNum13... */
	$"4E56 FD9C 48E7 1F20 3A2E 000A 2F2D F29C"            /* NV˝úHÁ. :.../-Úú */
	$"1F3C 0001 4267 486E FDA0 4EB9 0000 B626"            /* .<..BgHn˝†Nπ..∂& */
	$"486E FEF0 A88B 554F 3005 5340 3F00 4EBA"            /* Hn˛®ãUO0.S@?.N∫ */
	$"D9D8 101F 1D40 FD9F 2F2D F29C 3F3C 001C"            /* Ÿÿ...@˝ü/-Úú?<.. */
	$"486E FEF8 4EB9 0000 B062 302E FEFC 906E"            /* Hn˛¯Nπ..∞b0.˛¸ên */
	$"FEF8 48C0 7203 4EB9 0000 056A 3600 3005"            /* ˛¯H¿r.Nπ...j6.0. */
	$"5340 C1C3 D06E FEF8 3D40 FEF8 302E FEF8"            /* S@¡√–n˛¯=@˛¯0.˛¯ */
	$"D043 5240 3D40 FEFC 486E FEF8 A8A1 486E"            /* –CR@=@˛¸Hn˛¯®°Hn */
	$"FEF8 2F3C 0001 0001 A8A9 554F 2F2D F28C"            /* ˛¯/<....®©UO/-Úå */
	$"A960 301F D045 5340 3800 4A44 6F00 058A"            /* ©`0.–ES@8.JDo..ä */
	$"B86D F296 6E00 0582 3044 2008 5380 223C"            /* ∏mÚñn..Ç0D .SÄ"< */
	$"0000 02F6 4EB9 0000 04DA 206D F298 D1C0"            /* ...ˆNπ...⁄ mÚò—¿ */
	$"2448 554F 486A 0090 486D F986 3F3C 0001"            /* $HUOHj.êHm˘Ü?<.. */
	$"4EB9 0000 DD64 101F 1D40 FDBE 594F 3F04"            /* Nπ..›d...@˝æYO?. */
	$"4EBA D3BC 201F 4A80 56C0 4400 1D40 FDBF"            /* N∫”º .JÄV¿D..@˝ø */
	$"594F 3F04 4EBA D402 201F 4A80 56C0 4400"            /* YO?.N∫‘. .JÄV¿D. */
	$"1E00 202A 01D0 0800 0004 56C0 4400 57C0"            /* .. *.–....V¿D.W¿ */
	$"4400 1600 2F2D F29C 554F 1F3C 0004 2F0E"            /* D.../-ÚúUO.<../. */
	$"4EBA FE30 301F 3F00 102E FDBE 57C0 4400"            /* N∫˛00.?...˝æW¿D. */
	$"1F00 4EBA D5C2 2F2D F29C 554F 1F3C 0002"            /* ..N∫’¬/-ÚúUO.<.. */
	$"2F0E 4EBA FE0E 301F 3F00 102E FDBF 57C0"            /* /.N∫˛.0.?...˝øW¿ */
	$"4400 1F00 4EBA D5A0 2F2D F29C 554F 1F3C"            /* D...N∫’†/-ÚúUO.< */
	$"0003 2F0E 4EBA FDEC 301F 3F00 1007 57C0"            /* ../.N∫˝Ï0.?...W¿ */
	$"4400 1F00 4EBA D580 554F 1F3C 0001 2F0E"            /* D...N∫’ÄUO.<../. */
	$"4EBA FDD0 301F 3D40 FD9C 554F 2F2D F29C"            /* N∫˝–0.=@˝úUO/-Úú */
	$"4EB9 0000 B2FC 301F B06E FD9C 661C 4A03"            /* Nπ..≤¸0.∞n˝úf.J. */
	$"6618 2F2D F29C 554F 4227 2F0E 4EBA FDA4"            /* f./-ÚúUOB'/.N∫˝§ */
	$"301F 3F00 4EB9 0000 B328 2F2D F29C 554F"            /* 0.?.Nπ..≥(/-ÚúUO */
	$"1F3C 0001 2F0E 4EBA FD8A 301F 3F00 1003"            /* .<../.N∫˝ä0.?... */
	$"57C0 4400 1F00 4EBA D51E 4227 2F2A 01D4"            /* W¿D...N∫’.B'/*.‘ */
	$"486D F9C2 2F0E 4EBA FD98 2F2D F29C 554F"            /* Hm˘¬/.N∫˝ò/-ÚúUO */
	$"1F3C 0002 2F0E 4EBA FD5A 301F 3F00 7001"            /* .<../.N∫˝Z0.?.p. */
	$"B0AA 01D8 57C0 4400 1F00 4EB9 0000 B280"            /* ∞™.ÿW¿D...Nπ..≤Ä */
	$"2F2D F29C 554F 1F3C 0003 2F0E 4EBA FD34"            /* /-ÚúUO.<../.N∫˝4 */
	$"301F 3F00 7001 B0AA 01DC 57C0 4400 1F00"            /* 0.?.p.∞™.‹W¿D... */
	$"4EB9 0000 B280 1F3C 0001 2F2A 01E0 486D"            /* Nπ..≤Ä.<../*.‡Hm */
	$"F986 2F0E 4EBA FD3A 2F2D F29C 554F 1F3C"            /* ˘Ü/.N∫˝:/-ÚúUO.< */
	$"0001 2F0E 4EBA FCFC 301F 3F00 486E FDD0"            /* ../.N∫¸¸0.?.Hn˝– */
	$"4EBA D406 2F2D F29C 554F 4227 2F0E 4EBA"            /* N∫‘./-ÚúUOB'/.N∫ */
	$"FCE2 301F 3F00 486E FDAE 4EBA D3EC 2F2D"            /* ¸‚0.?.Hn˝ÆN∫”Ï/- */
	$"F29C 554F 1F3C 0002 2F0E 4EBA FCC6 301F"            /* ÚúUO.<../.N∫¸∆0. */
	$"3F00 486E FDC0 4EBA D3D0 2F2D F29C 554F"            /* ?.Hn˝¿N∫”–/-ÚúUO */
	$"1F3C 0003 2F0E 4EBA FCAA 301F 3F00 486E"            /* .<../.N∫¸™0.?.Hn */
	$"FDC8 4EBA D3B4 2F2D F29C 554F 1F3C 0004"            /* ˝»N∫”¥/-ÚúUO.<.. */
	$"2F0E 4EBA FC8E 301F 3F00 486E FDE8 4EBA"            /* /.N∫¸é0.?.Hn˝ËN∫ */
	$"D398 2F2D F29C 554F 1F3C 0005 2F0E 4EBA"            /* ”ò/-ÚúUO.<../.N∫ */
	$"FC72 301F 3F00 486E FDB6 4EB9 0000 B062"            /* ¸r0.?.Hn˝∂Nπ..∞b */
	$"7C00 DC6E FDD0 7A03 DA6E FDC0 4A2E 0008"            /* |.‹n˝–z.⁄n˝¿J... */
	$"6700 00B4 4A03 6728 486E FDF0 1F3C 0002"            /* g..¥J.g(Hn˝.<.. */
	$"4EBA CF90 41EE FDF0 2608 2043 7000 1010"            /* N∫œêAÓ˝&. Cp... */
	$"5240 48C0 2043 43EE FF00 A22E 584F 6018"            /* R@H¿ CCÓˇ.¢.XO`. */
	$"41ED F986 2608 2043 7000 1010 5240 48C0"            /* AÌ˘Ü&. Cp...R@H¿ */
	$"2043 43EE FF00 A22E 4A2E FDBE 6746 486E"            /*  CCÓˇ.¢.J.˝ægFHn */
	$"FEF0 302E FDD2 5B40 3F00 3F06 7012 D06E"            /* ˛0.˝“[@?.?.p.–n */
	$"FDEA 3F00 3F3C 8000 486E FF00 1F3C 0001"            /* ˝Í?.?<Ä.Hnˇ..<.. */
	$"4EBA FB34 486E FEF0 7012 D06E FDEA 3F00"            /* N∫˚4Hn˛p.–n˝Í?. */
	$"3F06 2F3C 8000 8000 486A 0090 4227 4EBA"            /* ?./<Ä.Ä.Hj.êB'N∫ */
	$"FB16 6022 486E FEF0 302E FDD2 5B40 3F00"            /* ˚.`"Hn˛0.˝“[@?. */
	$"3F06 3F2E FDEA 3F3C 8000 486E FF00 1F3C"            /* ?.?.˝Í?<Ä.Hnˇ..< */
	$"0001 4EBA FAF2 486E FF00 486E FDF0 1F3C"            /* ..N∫˙ÚHnˇ.Hn˝.< */
	$"0004 4EBA CEDE 584F 486E FDF0 486E FDD8"            /* ..N∫ŒﬁXOHn˝Hn˝ÿ */
	$"594F 3F04 4EBA D024 201F 2F00 4EB9 0000"            /* YO?.N∫–$ ./.Nπ.. */
	$"D6F2 584F 486E FDD8 486D F986 486D F986"            /* ÷ÚXOHn˝ÿHm˘ÜHm˘Ü */
	$"4EB9 0000 CC7E 486E FEF0 7005 D06E FDB4"            /* Nπ..Ã~Hn˛p.–n˝¥ */
	$"3F00 3F05 3F3C 8000 302E FDC2 5340 3F00"            /* ?.?.?<Ä.0.˝¬S@?. */
	$"486E FF00 4227 4EBA FA8E 4A2E 0008 6700"            /* Hnˇ.B'N∫˙éJ...g. */
	$"0184 4A2E FDBF 6742 486E FF00 486E FDF0"            /* .ÑJ.˝øgBHnˇ.Hn˝ */
	$"1F3C 0005 4EBA CE6C 584F 486E FDF0 486E"            /* .<..N∫ŒlXOHn˝Hn */
	$"FDD8 594F 3F04 4EBA D056 201F 2F00 4EB9"            /* ˝ÿYO?.N∫–V ./.Nπ */
	$"0000 D6F2 584F 486E FDD8 486D F986 486D"            /* ..÷ÚXOHn˝ÿHm˘ÜHm */
	$"F986 4EB9 0000 CC7E 6018 41ED F986 2608"            /* ˘ÜNπ..Ã~`.AÌ˘Ü&. */
	$"2043 7000 1010 5240 48C0 2043 43EE FF00"            /*  Cp...R@H¿ CCÓˇ. */
	$"A22E 486E FEF0 7012 D06E FDC2 3F00 3F05"            /* ¢.Hn˛p.–n˝¬?.?. */
	$"3F3C 8000 302E FDCA 5340 3F00 486E FF00"            /* ?<Ä.0.˝ S@?.Hnˇ. */
	$"4227 4EBA FA02 4A07 6742 486E FF00 486E"            /* B'N∫˙.J.gBHnˇ.Hn */
	$"FDF0 1F3C 0006 4EBA CDEA 584F 486E FDF0"            /* ˝.<..N∫ÕÍXOHn˝ */
	$"486E FDD8 594F 3F04 4EBA D02E 201F 2F00"            /* Hn˝ÿYO?.N∫–. ./. */
	$"4EB9 0000 D6F2 584F 486E FDD8 486D F986"            /* Nπ..÷ÚXOHn˝ÿHm˘Ü */
	$"486D F986 4EB9 0000 CC7E 6018 41ED F986"            /* Hm˘ÜNπ..Ã~`.AÌ˘Ü */
	$"2608 2043 7000 1010 5240 48C0 2043 43EE"            /* &. Cp...R@H¿ CCÓ */
	$"FF00 A22E 486E FEF0 7012 D06E FDCA 3F00"            /* ˇ.¢.Hn˛p.–n˝ ?. */
	$"3F05 3F3C 8000 302E FEFE 5340 3F00 486E"            /* ?.?<Ä.0.˛˛S@?.Hn */
	$"FF00 4227 4EBA F980 3F3C 0001 A888 554F"            /* ˇ.B'N∫˘Ä?<..®àUO */
	$"486A 0040 486D F986 4267 4EB9 0000 DD64"            /* Hj.@Hm˘ÜBgNπ..›d */
	$"101F 6716 260A 2043 7000 1010 5240 48C0"            /* ..g.&. Cp...R@H¿ */
	$"2043 43EE FF00 A22E 6026 486E FF00 486E"            /*  CCÓˇ.¢.`&Hnˇ.Hn */
	$"FDF0 1F3C 0001 4EBA CD3A 584F 486E FDF0"            /* ˝.<..N∫Õ:XOHn˝ */
	$"2F0A 486A 0040 486D F986 4EB9 0000 CC7E"            /* /.Hj.@Hm˘ÜNπ..Ã~ */
	$"486E FEF0 7014 D06E FDB8 3F00 3F06 3F3C"            /* Hn˛p.–n˝∏?.?.?< */
	$"8000 3F2E FDEA 486E FF00 4227 4EBA F908"            /* Ä.?.˝ÍHnˇ.B'N∫˘. */
	$"4267 A888 594F 3F04 4EBA D542 201F 2600"            /* Bg®àYO?.N∫’B .&. */
	$"4A83 6738 486E FF00 486E FDF0 1F3C 0003"            /* JÉg8Hnˇ.Hn˝.<.. */
	$"4EBA CCE0 584F 486E FDF0 486E FDD8 2F03"            /* N∫Ã‡XOHn˝Hn˝ÿ/. */
	$"4EB9 0000 D6F2 584F 486E FDD8 486D F986"            /* Nπ..÷ÚXOHn˝ÿHm˘Ü */
	$"486D F986 4EB9 0000 CC7E 6018 41ED F986"            /* Hm˘ÜNπ..Ã~`.AÌ˘Ü */
	$"2608 2043 7000 1010 5240 48C0 2043 43EE"            /* &. Cp...R@H¿ CCÓ */
	$"FF00 A22E 486E FEF0 302E FEFE 0440 000A"            /* ˇ.¢.Hn˛0.˛˛.@.. */
	$"3F00 3F05 3F2E FDCE 3F3C 8000 486E FF00"            /* ?.?.?.˝Œ?<Ä.Hnˇ. */
	$"1F3C 0001 4EBA F880 486E FDA0 4EB9 0000"            /* .<..N∫¯ÄHn˝†Nπ.. */
	$"B684 4CDF 04F8 4E5E 2E9F 4E75 8753 4554"            /* ∂ÑLﬂ.¯N^.üNuáSET */
	$"4C49 4E45 0000 4E56 0000 2F03 7601 600C"            /* LINE..NV../.v.`. */
	$"3F03 1F3C 0001 4EBA F9A8 5243 0C43 0003"            /* ?..<..N∫˘®RC.C.. */
	$"6FEE 261F 4E5E 4E75 8853 4554 4C49 4E45"            /* oÓ&.N^NuàSETLINE */
	$"5300 0000 4E56 0000 3B6E 0008 F05E 2F2D"            /* S...NV..;n..^/- */
	$"F28C 3F2E 0008 A963 4EBA FFBC 4E5E 205F"            /* Úå?...©cN∫ˇºN^ _ */
	$"544F 4ED0 8653 4554 524F 5700 0000 4E56"            /* TON–ÜSETROW...NV */
	$"FFFA 48E7 1F20 3E2E 0008 3C2D F05E 206D"            /* ˇ˙HÁ. >...<-^ m */
	$"F29C 2068 00A0 2450 3A2A 0020 382A 0022"            /* Úú h.†$P:*. 8*." */
	$"3F07 4EBA FFB0 554F 2F2D F29C 4EB9 0000"            /* ?.N∫ˇ∞UO/-ÚúNπ.. */
	$"B2FC 301F 1600 BE46 6700 0090 554F 7000"            /* ≤¸0...æFg..êUOp. */
	$"1003 2F00 486D FA3A 4878 0006 4EB9 0000"            /* ../.Hm˙:Hx..Nπ.. */
	$"DCD0 101F 6774 1F03 486E FFFE 486E FFFD"            /* ‹–..gt..Hnˇ˛Hnˇ˝ */
	$"4EBA CE50 3006 9047 D06E FFFE 3D40 FFFE"            /* N∫ŒP0.êG–nˇ˛=@ˇ˛ */
	$"594F 42A7 306E FFFE 2F08 4878 0002 201F"            /* YOBß0nˇ˛/.Hx.. . */
	$"221F B280 6F02 2200 201F B280 6C02 2200"            /* ".≤Äo.". .≤Äl.". */
	$"2E81 201F 3600 B66E FFFE 6706 7A00 383C"            /* .Å .6.∂nˇ˛g.z.8< */
	$"00FF 2F2D F29C 7000 102E FFFD 3D40 FFFA"            /* .ˇ/-Úúp...ˇ˝=@ˇ˙ */
	$"554F 3F03 4EBA D2B2 101F 7200 1200 D26E"            /* UO?.N∫“≤..r...“n */
	$"FFFA 3F01 3F05 3F04 A97E 4CDF 04F8 4E5E"            /* ˇ˙?.?.?.©~Lﬂ.¯N^ */
	$"205F 544F 4ED0 8953 4554 524F 5754 4142"            /*  _TON–âSETROWTAB */
	$"0000 4E56 FCD8 48E7 1F00 2F2D F29C 1F3C"            /* ..NV¸ÿHÁ../-Úú.< */
	$"0001 4267 486E FCD8 4EB9 0000 B626 486E"            /* ..BgHn¸ÿNπ..∂&Hn */
	$"FDF0 A88B 2F2D F29C 3F3C 001F 486E FEF8"            /* ˝®ã/-Úú?<..Hn˛¯ */
	$"4EB9 0000 B062 2F2D F29C 3F3C 001E 486E"            /* Nπ..∞b/-Úú?<..Hn */
	$"FDE6 4EB9 0000 B062 7603 D66E FDE6 3003"            /* ˝ÊNπ..∞bv.÷n˝Ê0. */
	$"0440 0010 3D40 FDEE 7E10 DE43 2F2D F29C"            /* .@..=@˝Ó~.ﬁC/-Úú */
	$"3F3C 001E 4A6D F286 56C0 4400 1F00 4EB9"            /* ?<..JmÚÜV¿D...Nπ */
	$"0000 B280 486E FF00 1F3C 0007 4EBA CAA4"            /* ..≤ÄHnˇ..<..N∫ § */
	$"41EE FF00 2808 2044 7000 1010 5240 48C0"            /* AÓˇ.(. Dp...R@H¿ */
	$"2044 43EE FDF8 A22E 7C12 DC6E FDE8 486E"            /*  DCÓ˝¯¢.|.‹n˝ËHn */
	$"FDF8 A88C 301F D046 3A00 382E FEFE 0444"            /* ˝¯®å0.–F:.8.˛˛.D */
	$"000A 486E FDF0 3F06 3F03 3F3C 8000 302E"            /* ..Hn˝?.?.?<Ä.0. */
	$"FEFE 5340 3F00 486E FDF8 4227 4EBA F658"            /* ˛˛S@?.Hn˝¯B'N∫ˆX */
	$"4A6D F286 544F 6752 486E FDF8 486E FF00"            /* JmÚÜTOgRHn˝¯Hnˇ. */
	$"1F3C 0008 4EBA CA3C 584F 486E FF00 486E"            /* .<..N∫ <XOHnˇ.Hn */
	$"FCE6 306D F286 2F08 4EBA D0BC 584F 486E"            /* ¸Ê0mÚÜ/.N∫–ºXOHn */
	$"FCE6 486D F986 486D F986 4EB9 0000 CC7E"            /* ¸ÊHm˘ÜHm˘ÜNπ..Ã~ */
	$"486E FDF0 3F04 3F03 2F3C 8000 8000 486E"            /* Hn˝?.?./<Ä.Ä.Hn */
	$"FDF8 1F3C 0001 4EBA F5FE 486E FDF0 3F05"            /* ˝¯.<..N∫ı˛Hn˝?. */
	$"3F2E FDEE 3F2E FEFA 3F2E FEFE 486E FF00"            /* ?.˝Ó?.˛˙?.˛˛Hnˇ. */
	$"1F3C 0009 4EBA C9DC 584F 486E FF00 1F3C"            /* .<..N∫…‹XOHnˇ..< */
	$"0001 4EBA F5D2 486E FDF8 486E FF00 1F3C"            /* ..N∫ı“Hn˝¯Hnˇ..< */
	$"0008 4EBA C9BE 584F 486E FF00 486E FCE6"            /* ..N∫…æXOHnˇ.Hn¸Ê */
	$"594F 4EBA D36A 201F 306D F286 9088 2F00"            /* YON∫”j .0mÚÜêà/. */
	$"4EBA D034 584F 486E FCE6 486D F986 486D"            /* N∫–4XOHn¸ÊHm˘ÜHm */
	$"F986 4EB9 0000 CC7E 486E FDF0 3F04 3F2E"            /* ˘ÜNπ..Ã~Hn˝?.?. */
	$"FDEE 2F3C 8000 8000 486E FDF8 1F3C 0001"            /* ˝Ó/<Ä.Ä.Hn˝¯.<.. */
	$"4EBA F574 3F3C 0001 A888 486E FDF0 3F05"            /* N∫ıt?<..®àHn˝?. */
	$"3F07 3F2E FEFA 3F2E FEFE 486E FF00 1F3C"            /* ?.?.˛˙?.˛˛Hnˇ..< */
	$"000A 4EBA C94E 584F 486E FF00 1F3C 0001"            /* ..N∫…NXOHnˇ..<.. */
	$"4EBA F544 486E FDF0 3F04 3F07 2F3C 8000"            /* N∫ıDHn˝?.?./<Ä. */
	$"8000 486E FF00 4EBA D546 584F 486E FF00"            /* Ä.Hnˇ.N∫’FXOHnˇ. */
	$"1F3C 0001 4EBA F520 4267 A888 554F 4EBA"            /* .<..N∫ı Bg®àUON∫ */
	$"D24A 101F 1600 554F 7000 1003 2F00 486D"            /* “J....UOp.../.Hm */
	$"F98D 4878 0001 4EB9 0000 DCD0 101F 6722"            /* ˘çHx..Nπ..‹–..g" */
	$"2F2D F29C 3F3C 0007 486E FF00 1F3C 0016"            /* /-Úú?<..Hnˇ..<.. */
	$"4EBA C8E0 584F 486E FF00 4EB9 0000 AD44"            /* N∫»‡XOHnˇ.Nπ..≠D */
	$"6020 2F2D F29C 3F3C 0007 486E FF00 1F3C"            /* ` /-Úú?<..Hnˇ..< */
	$"0015 4EBA C8BE 584F 486E FF00 4EB9 0000"            /* ..N∫»æXOHnˇ.Nπ.. */
	$"AD44 554F 7000 1003 2F00 486D F98C 4878"            /* ≠DUOp.../.Hm˘åHx */
	$"0001 4EB9 0000 DCD0 101F 6722 2F2D F29C"            /* ..Nπ..‹–..g"/-Úú */
	$"3F3C 0009 486E FF00 1F3C 000C 4EBA C884"            /* ?<..Hnˇ..<..N∫»Ñ */
	$"584F 486E FF00 4EB9 0000 AD44 6020 2F2D"            /* XOHnˇ.Nπ..≠D` /- */
	$"F29C 3F3C 0009 486E FF00 1F3C 000B 4EBA"            /* Úú?<..Hnˇ..<..N∫ */
	$"C862 584F 486E FF00 4EB9 0000 AD44 4CDF"            /* »bXOHnˇ.Nπ..≠DLﬂ */
	$"00F8 4E5E 4E75 8C53 4554 4655 4C4C 544F"            /* .¯N^NuåSETFULLTO */
	$"5441 4C00 0000 4E56 FFF2 48E7 1C00 362E"            /* TAL...NVˇÚHÁ..6. */
	$"000A 1A2E 0008 554F 2F2D F29C 4EB9 0000"            /* ......UO/-ÚúNπ.. */
	$"B3CA 301F 3800 4A05 6704 D644 5543 3043"            /* ≥ 0.8.J.g.÷DUC0C */
	$"3244 2008 2209 4EB9 0000 05E8 5280 3600"            /* 2D .".Nπ...ËRÄ6. */
	$"2F2D F29C 3F03 486E FFF6 486E FFF2 486E"            /* /-Úú?.HnˇˆHnˇÚHn */
	$"FFF8 A98D 0C6E 0010 FFF6 66CA 554F 486E"            /* ˇ¯©ç.n..ˇˆf UOHn */
	$"FFF8 4EBA CB30 101F 66BC 3D43 000C 4CDF"            /* ˇ¯N∫À0..fº=C..Lﬂ */
	$"0038 4E5E 2E9F 4E75 9046 494E 444E 4558"            /* .8N^.üNuêFINDNEX */
	$"5454 4558 5449 5445 4D00 0000 4E56 0000"            /* TTEXTITEM...NV.. */
	$"0C6E 000A 0008 6D08 0C6E 001B 0008 6F04"            /* .n....m..n....o. */
	$"7000 6002 7001 1D40 000A 4E5E 205F 544F"            /* p.`.p..@..N^ _TO */
	$"4ED0 8949 5352 4F57 4954 454D 0000 4E56"            /* N–âISROWITEM..NV */
	$"0000 48E7 1E00 1C2E 0008 554F 2F2D F29C"            /* ..HÁ......UO/-Úú */
	$"4EB9 0000 B2FC 301F 3800 0C44 0001 6C02"            /* Nπ..≤¸0.8..D..l. */
	$"7805 554F 2F2D F28C A960 301F 3A00 554F"            /* x.UO/-Úå©`0.:.UO */
	$"3F04 1F06 4EBA FF10 301F 3600 4A06 667C"            /* ?...N∫ˇ.0.6.J.f| */
	$"554F 3F04 4EBA FF86 101F 6734 554F 3F03"            /* UO?.N∫ˇÜ..g4UO?. */
	$"4EBA FF7A 101F 6628 302D F296 5540 BA40"            /* N∫ˇz..f(0-ÚñU@∫@ */
	$"6C1E 7001 D045 3F00 4EBA FAEA 554F 3F3C"            /* l.p.–E?.N∫˙ÍUO?< */
	$"0015 1F06 4EBA FED0 301F 3600 6000 00B4"            /* ....N∫˛–0.6.`..¥ */
	$"554F 3F04 4EBA FF46 101F 6600 00A6 554F"            /* UO?.N∫ˇF..f..¶UO */
	$"3F03 4EBA FF38 101F 6700 0098 0C45 0001"            /* ?.N∫ˇ8..g..ò.E.. */
	$"6700 0090 3F3C 0001 4EBA FAAA 554F 3F04"            /* g..ê?<..N∫˙™UO?. */
	$"1F06 4EBA FE92 301F 3600 6076 554F 3F04"            /* ..N∫˛í0.6.`vUO?. */
	$"4EBA FF0A 101F 672E 554F 3F03 4EBA FEFE"            /* N∫ˇ...g.UO?.N∫˛˛ */
	$"101F 6622 0C45 0001 671C 3005 5340 3F00"            /* ..f".E..g.0.S@?. */
	$"4EBA FA72 554F 3F3C 0010 1F06 4EBA FE58"            /* N∫˙rUO?<....N∫˛X */
	$"301F 3600 603C 554F 3F04 4EBA FED0 101F"            /* 0.6.`<UO?.N∫˛–.. */
	$"6630 554F 3F03 4EBA FEC4 101F 6724 302D"            /* f0UO?.N∫˛ƒ..g$0- */
	$"F296 5540 BA40 671A 302D F296 5540 3F00"            /* ÚñU@∫@g.0-ÚñU@?. */
	$"4EBA FA32 554F 3F04 1F06 4EBA FE1A 301F"            /* N∫˙2UO?...N∫˛.0. */
	$"3600 2F2D F29C 3F03 4EB9 0000 B328 4CDF"            /* 6./-Úú?.Nπ..≥(Lﬂ */
	$"0078 4E5E 205F 544F 4ED0 8544 4F54 4142"            /* .xN^ _TON–ÖDOTAB */
	$"0000 4E56 0000 2F03 362D F26C 3043 2008"            /* ..NV../.6-Úl0C . */
	$"5380 7230 4EB9 0000 04DA 206D F292 2B70"            /* SÄr0Nπ...⁄ mÚí+p */
	$"0824 F280 3043 2008 5380 7230 4EB9 0000"            /* .$ÚÄ0C .SÄr0Nπ.. */
	$"04DA 206D F292 2B70 0828 F27C 3043 2008"            /* .⁄ mÚí+p.(Ú|0C . */
	$"5380 7230 4EB9 0000 04DA 206D F292 2B70"            /* SÄr0Nπ...⁄ mÚí+p */
	$"082C F278 3043 2008 5380 7230 4EB9 0000"            /* .,Úx0C .SÄr0Nπ.. */
	$"04DA 206D F292 2B70 0820 F274 4EBA FAA4"            /* .⁄ mÚí+p. ÚtN∫˙§ */
	$"261F 4E5E 4E75 8E53 454C 4543 5443 5552"            /* &.N^NuéSELECTCUR */
	$"5245 4E43 5900 0000 4E56 0000 2B7C 3F80"            /* RENCY...NV..+|?Ä */
	$"0000 F280 7001 2B40 F27C 7001 2B40 F278"            /* ..ÚÄp.+@Ú|p.+@Úx */
	$"2B6D FA40 F274 4E5E 4E75 9153 454C 4543"            /* +m˙@ÚtN^NuëSELEC */
	$"5455 5341 4355 5252 454E 4359 0000 4E56"            /* TUSACURRENCY..NV */
	$"FF00 48E7 1C00 162D F267 B62D F285 6700"            /* ˇ.HÁ...-Úg∂-ÚÖg. */
	$"00DE 4EBA FFB4 1B43 F285 7000 1003 0C40"            /* .ﬁN∫ˇ¥.CÚÖp....@ */
	$"0007 627C D040 303B 0006 4EFB 0002 0072"            /* ..b|–@0;..N˚...r */
	$"0010 005E 0010 0068 0068 0068 006E 7A2A"            /* ...^...h.h.h.nz* */
	$"782A 0C03 0001 6622 2F2D F29C 3F3C 002A"            /* x*....f"/-Úú?<.* */
	$"486E FF00 1F3C 0011 4EBA C518 584F 486E"            /* Hnˇ..<..N∫≈.XOHn */
	$"FF00 4EB9 0000 AD44 6036 2F2D F29C 3F3C"            /* ˇ.Nπ..≠D`6/-Úú?< */
	$"002A 486E FF00 1F3C 0014 4EBA C4F6 584F"            /* .*Hnˇ..<..N∫ƒˆXO */
	$"486E FF00 4EB9 0000 AD44 6014 7A2B 782D"            /* Hnˇ.Nπ..≠D`.z+x- */
	$"4EBA FEB0 600A 7A20 7826 6004 7A27 7829"            /* N∫˛∞`.z x&`.z'x) */
	$"7620 6020 2F2D F29C 7000 1003 3F00 B605"            /* v ` /-Úúp...?.∂. */
	$"6D08 B604 6E04 7000 6002 7001 1F00 4EBA"            /* m.∂.n.p.`.p...N∫ */
	$"C906 5203 7000 1003 0C40 002D 6FD6 4EBA"            /* ….R.p....@.-o÷N∫ */
	$"F982 2F2D F29C 554F 3F3C 0017 4227 4EBA"            /* ˘Ç/-ÚúUO?<..B'N∫ */
	$"FC56 301F 3F00 2F3C 00FF 00FF A97E 4CDF"            /* ¸V0.?./<.ˇ.ˇ©~Lﬂ */
	$"0038 4E5E 4E75 8C53 454C 4543 544D 4554"            /* .8N^NuåSELECTMET */
	$"484F 4400 0000 4E56 0000 48E7 1C20 246E"            /* HOD...NV..HÁ. $n */
	$"000A 382E 0008 4A44 6700 0086 3004 0440"            /* ..8...JDg..Ü0..@ */
	$"0014 670E 5340 670A 5340 670A 5340 6706"            /* ..g.S@g.S@g.S@g. */
	$"6008 7601 6006 7602 6002 7600 0C44 0017"            /* `.v.`.v.`.v..D.. */
	$"57C0 4400 0C44 0015 57C1 4401 8200 6702"            /* W¿D..D..W¡D.Ç.g. */
	$"4443 554F 2F0A A960 301F 3A00 594F 554F"            /* DCUO/.©`0.:.YOUO */
	$"2F0A A961 301F 48C0 2F00 3005 9043 48C0"            /* /.©a0.H¿/.0.êCH¿ */
	$"2F00 554F 2F0A A962 301F 48C0 2F00 201F"            /* /.UO/.©b0.H¿/. . */
	$"221F B280 6F02 2200 201F B280 6C02 2200"            /* ".≤Äo.". .≤Äl.". */
	$"2E81 201F 3800 BA44 6706 3F04 4EBA F7D0"            /* .Å .8.∫Dg.?.N∫˜– */
	$"4CDF 0438 4E5E 205F 5C4F 4ED0 8B56 4143"            /* Lﬂ.8N^ _\ON–ãVAC */
	$"5449 4F4E 5052 4F43 0000 4E56 FFEC 48E7"            /* TIONPROC..NVˇÏHÁ */
	$"1800 206E 0008 43EE FFEC 22D8 22D8 22D8"            /* .. n..CÓˇÏ"ÿ"ÿ"ÿ */
	$"22D8 2F2D F29C A873 0C6D 0003 F296 6F78"            /* "ÿ/-Úú®s.m..Úñox */
	$"486E FFF6 A871 554F 2F2E FFF6 2F2D F29C"            /* Hnˇˆ®qUO/.ˇˆ/-Úú */
	$"486E FFFC A96C 301F 3600 0C43 0081 6644"            /* Hnˇ¸©l0.6..C.ÅfD */
	$"554F 2F2E FFFC A960 301F 3800 554F 2F2E"            /* UO/.ˇ¸©`0.8.UO/. */
	$"FFFC 2F2E FFF6 4878 0000 A968 301F 3600"            /* ˇ¸/.ˇˆHx..©h0.6. */
	$"4A43 6734 554F 2F2E FFFC A960 301F B840"            /* JCg4UO/.ˇ¸©`0.∏@ */
	$"6726 554F 2F2E FFFC A960 301F 3F00 4EBA"            /* g&UO/.ˇ¸©`0.?.N∫ */
	$"F72E 6014 554F 2F2E FFFC 2F2E FFF6 487A"            /* ˜.`.UO/.ˇ¸/.ˇˆHz */
	$"FEB6 A968 301F 3800 4CDF 0018 4E5E 2E9F"            /* ˛∂©h0.8.Lﬂ..N^.ü */
	$"4E75 8B44 4F53 4352 4F4C 4C42 4152 0000"            /* NuãDOSCROLLBAR.. */
	$"4E56 FEEA 48E7 1820 246E 000A 382E 0008"            /* NV˛ÍHÁ. $n..8... */
	$"2F0A 1F3C 0009 4267 486E FFEA 4EB9 0000"            /* /..<..BgHnˇÍNπ.. */
	$"B626 554F 3F04 4EBA C32A 101F 1600 2F0A"            /* ∂&UO?.N∫√*...... */
	$"3F04 486E FFF8 4EB9 0000 B062 7000 1003"            /* ?.Hnˇ¯Nπ..∞bp... */
	$"C1FC 0006 41ED F262 2470 0800 2F0A 7000"            /* ¡¸..AÌÚb$p../.p. */
	$"1003 C1FC 0006 41ED F262 3F30 0804 486E"            /* ..¡¸..AÌÚb?0..Hn */
	$"FEEA 4EBA C3B2 302E FFFE 5340 3D40 FFFE"            /* ˛ÍN∫√≤0.ˇ˛S@=@ˇ˛ */
	$"302E FFFC 5340 3D40 FFFC 486E FFF8 2F3C"            /* 0.ˇ¸S@=@ˇ¸Hnˇ¯/< */
	$"0001 0001 A8A9 486E FFF8 A8A3 700E D06E"            /* ....®©Hnˇ¯®£p.–n */
	$"FFFA 3F00 302E FFFC 5940 3F00 A893 486E"            /* ˇ˙?.0.ˇ¸Y@?.®ìHn */
	$"FEEA A884 486E FFF8 4878 FFFF A8A9 486E"            /* ˛Í®ÑHnˇ¯Hxˇˇ®©Hn */
	$"FFF8 A8A1 3F2E FFFE 7002 D06E FFF8 3F00"            /* ˇ¯®°?.ˇ˛p.–nˇ¯?. */
	$"A893 3F2E FFFE 3F2E FFFC A891 7002 D06E"            /* ®ì?.ˇ˛?.ˇ¸®ëp.–n */
	$"FFFA 3F00 3F2E FFFC A891 7600 6026 302E"            /* ˇ˙?.?.ˇ¸®ëv.`&0. */
	$"FFFE 0440 000D 9043 3F00 302E FFFC 5F40"            /* ˇ˛.@..êC?.0.ˇ¸_@ */
	$"9043 3F00 A893 7002 C1C3 5240 3F00 4267"            /* êC?.®ìp.¡√R@?.Bg */
	$"A892 5243 0C43 0005 6FD4 486E FFEA 4EB9"            /* ®íRC.C..o‘HnˇÍNπ */
	$"0000 B684 4CDF 0418 4E5E 205F 5C4F 4ED0"            /* ..∂ÑLﬂ..N^ _\ON– */
	$"8944 5241 5750 4F50 5550 0000 4E56 FFF0"            /* âDRAWPOPUP..NVˇ */
	$"48E7 1C20 3A2E 0008 2F2D F29C A873 422E"            /* HÁ. :.../-Úú®sB. */
	$"000A 554F 3F05 4EBA C20A 101F 1600 2F2D"            /* ..UO?.N∫¬...../- */
	$"F29C 3F05 486E FFF4 4EB9 0000 B062 7000"            /* Úú?.HnˇÙNπ..∞bp. */
	$"1003 C1FC 0006 41ED F262 2470 0800 2F0A"            /* ..¡¸..AÌÚb$p../. */
	$"3F3C FFFF A935 7001 D06E FFF6 3D40 FFFE"            /* ?<ˇˇ©5p.–nˇˆ=@ˇ˛ */
	$"7001 D06E FFF4 3D40 FFFC 486E FFFC A870"            /* p.–nˇÙ=@ˇ¸Hnˇ¸®p */
	$"2F0A 7000 1003 C1FC 0006 41ED F262 3F30"            /* /.p...¡¸..AÌÚb?0 */
	$"0804 1F3C 0001 A945 594F 2F0A 3F2E FFFC"            /* ...<..©EYO/.?.ˇ¸ */
	$"3F2E FFFE 7000 1003 C1FC 0006 41ED F262"            /* ?.ˇ˛p...¡¸..AÌÚb */
	$"3F30 0804 A80B 201F 2800 2F0A 7000 1003"            /* ?0..®. .(./.p... */
	$"C1FC 0006 41ED F262 3F30 0804 4227 A945"            /* ¡¸..AÌÚb?0..B'©E */
	$"2052 3F10 A936 7000 1003 C1FC 0006 41ED"            /*  R?.©6p...¡¸..AÌ */
	$"F262 3D70 0804 FFF0 554F 2F04 A86B 301F"            /* Úb=p..ˇUO/.®k0. */
	$"B06E FFF0 56C0 4400 1D40 FFF3 554F 2F04"            /* ∞nˇV¿D..@ˇÛUO/. */
	$"A86A 301F 4A40 56C0 4400 C02E FFF3 6728"            /* ®j0.J@V¿D.¿.ˇÛg( */
	$"1D7C 0001 000A 554F 2F04 A86B 301F 7200"            /* .|....UO/.®k0.r. */
	$"1203 C3FC 0006 41ED F262 3180 1804 2F2D"            /* ..√¸..AÌÚb1Ä../- */
	$"F29C 3F05 4EBA FDBA 4CDF 0438 4E5E 205F"            /* Úú?.N∫˝∫Lﬂ.8N^ _ */
	$"544F 4ED0 8744 4F50 4F50 5550 0000 4E56"            /* TON–áDOPOPUP..NV */
	$"0000 306E 0008 2008 5380 223C 0000 02F6"            /* ..0n.. .SÄ"<...ˆ */
	$"4EB9 0000 04DA 206D F298 D1C0 4850 306E"            /* Nπ...⁄ mÚò—¿HP0n */
	$"0008 2008 5380 223C 0000 02F6 4EB9 0000"            /* .. .SÄ"<...ˆNπ.. */
	$"04DA 206D F298 D1C0 4868 00D0 4EB9 0000"            /* .⁄ mÚò—¿Hh.–Nπ.. */
	$"66C0 4E5E 205F 544F 4ED0 8F44 4F43 4F4D"            /* f¿N^ _TON–èDOCOM */
	$"4D45 4E54 4255 5454 4F4E 0000 4E56 0000"            /* MENTBUTTON..NV.. */
	$"2F03 162E 000C 206E 0008 B628 FFEF 675C"            /* /..... n..∂(ˇÔg\ */
	$"206E 0008 1143 FFEF 206E 0008 4AA8 FFF0"            /*  n...CˇÔ n..J®ˇ */
	$"6740 554F 206E 0008 4868 FFE6 4267 594F"            /* g@UO n..HhˇÊBgYO */
	$"206E 0008 1F28 FFEF 4878 4000 42A7 201F"            /*  n...(ˇÔHx@.Bß . */
	$"221F 4A1F 6602 2200 2E81 201F 3F00 206E"            /* ".J.f."..Å .?. n */
	$"0008 2F28 FFF0 303C 061F ABC9 301F 3600"            /* ../(ˇ0<..´…0.6. */
	$"600A 206E 0008 4868 FFF4 A8A4 261F 4E5E"            /* `. n..HhˇÙ®§&.N^ */
	$"205F 5C4F 4ED0 8650 6C6F 7431 3400 0000"            /*  _\ON–ÜPlot14... */
	$"4E56 FFE6 422E 000C 2F2D F29C A873 2F2D"            /* NVˇÊB.../-Úú®s/- */
	$"F29C 3F2E 000A 486E FFE6 4EB9 0000 B062"            /* Úú?...HnˇÊNπ..∞b */
	$"2D6E FFE6 FFF4 2D6E FFEA FFF8 7010 D06E"            /* -nˇÊˇÙ-nˇÍˇ¯p.–n */
	$"FFF6 3D40 FFFA 7010 D06E FFF4 3D40 FFF8"            /* ˇˆ=@ˇ˙p.–nˇÙ=@ˇ¯ */
	$"422E FFEF 486E FFFC A972 554F 2F2E FFFC"            /* B.ˇÔHnˇ¸©rUO/.ˇ¸ */
	$"486E FFF4 A8AD 101F 6758 4A2D F86F 6710"            /* HnˇÙ®≠..gXJ-¯og. */
	$"594F 3F2E 0008 AA1E 205F 2D48 FFF0 6004"            /* YO?...™. _-Hˇ`. */
	$"42AE FFF0 486E FFFC A972 554F 2F2E FFFC"            /* BÆˇHnˇ¸©rUO/.ˇ¸ */
	$"486E FFF4 A8AD 101F 1F00 2F0E 4EBA FEEE"            /* HnˇÙ®≠..../.N∫˛Ó */
	$"554F A973 101F 66DC 1D6E FFEF 000C 4227"            /* UO©s..f‹.nˇÔ..B' */
	$"2F0E 4EBA FED8 4AAE FFF0 6706 2F2E FFF0"            /* /.N∫˛ÿJÆˇg./.ˇ */
	$"AA25 4E5E 2E9F 4E75 8F46 4C41 5348 4943"            /* ™%N^.üNuèFLASHIC */
	$"4F4E 4255 5454 4F4E 0000 4E56 FFF8 48E7"            /* ONBUTTON..NVˇ¯HÁ */
	$"1E00 362E 0008 1803 0C04 000A 6D26 0C04"            /* ..6.........m&.. */
	$"001B 6E20 554F 2F2D F28C A960 301F 3C00"            /* ..n UO/-Úå©`0.<. */
	$"1F04 486E FFFE 486E FFFD 4EBA C176 3A06"            /* ..Hnˇ˛Hnˇ˝N∫¡v:. */
	$"DA6E FFFE 7000 1004 5340 6700 024A 5340"            /* ⁄nˇ˛p...S@g..JS@ */
	$"6770 5340 6700 0246 5340 6700 0234 5140"            /* gpS@g..FS@g..4Q@ */
	$"6776 5340 6700 00CC 5340 6700 0120 5340"            /* gvS@g..ÃS@g.. S@ */
	$"6700 0170 5740 6760 5340 6700 00B6 5340"            /* g..pW@g`S@g..∂S@ */
	$"6700 010A 5340 6700 015A 5740 674A 5340"            /* g...S@g..ZW@gJS@ */
	$"6700 00A0 5340 6700 00F4 5340 6700 0144"            /* g..†S@g..ÙS@g..D */
	$"5540 6728 5340 6700 0178 5B40 6700 0150"            /* U@g(S@g..x[@g..P */
	$"0440 0009 6700 01EC 5540 6700 01E6 6000"            /* .@..g..ÏU@g..Ê`. */
	$"0208 1B7C 0001 F2A1 6000 01FE 2F2E 000A"            /* ...|..Ú°`..˛/... */
	$"4EBA FA78 6000 01F2 2F2D F29C 3F03 4EB9"            /* N∫˙x`..Ú/-Úú?.Nπ */
	$"0000 B2BA 554F 2F2D F29C 3F03 4EB9 0000"            /* ..≤∫UO/-Úú?.Nπ.. */
	$"B240 101F 7200 1200 48C1 3045 2008 5380"            /* ≤@..r...H¡0E .SÄ */
	$"2D41 FFF8 223C 0000 02F6 4EB9 0000 04DA"            /* -Aˇ¯"<...ˆNπ...⁄ */
	$"206D F298 D1C0 216E FFF8 01D8 7001 D06E"            /*  mÚò—¿!nˇ¯.ÿp.–n */
	$"FFFE 3F00 4227 4EBA EB38 4EBA F2B6 6000"            /* ˇ˛?.B'N∫Î8N∫Ú∂`. */
	$"0198 2F2D F29C 3F03 4EB9 0000 B2BA 554F"            /* .ò/-Úú?.Nπ..≤∫UO */
	$"2F2D F29C 3F03 4EB9 0000 B240 101F 7200"            /* /-Úú?.Nπ..≤@..r. */
	$"1200 48C1 3045 2008 5380 2D41 FFF8 223C"            /* ..H¡0E .SÄ-Aˇ¯"< */
	$"0000 02F6 4EB9 0000 04DA 206D F298 D1C0"            /* ...ˆNπ...⁄ mÚò—¿ */
	$"216E FFF8 01DC 7001 D06E FFFE 3F00 4227"            /* !nˇ¯.‹p.–nˇ˛?.B' */
	$"4EBA EADE 4EBA F25C 6000 013E 2F2D F29C"            /* N∫ÍﬁN∫Ú\`..>/-Úú */
	$"3F03 4EB9 0000 B2BA 554F 2F2D F29C 3F03"            /* ?.Nπ..≤∫UO/-Úú?. */
	$"4EB9 0000 B240 101F 3045 2208 5381 1D40"            /* Nπ..≤@..0E".SÅ.@ */
	$"FFFC 203C 0000 02F6 4EB9 0000 04DA 206D"            /* ˇ¸ <...ˆNπ...⁄ m */
	$"F298 D1C0 116E FFFC 01E4 7001 D06E FFFE"            /* Úò—¿.nˇ¸.‰p.–nˇ˛ */
	$"3F00 1F3C 0001 4EBA EA88 4EBA F206 6000"            /* ?..<..N∫ÍàN∫Ú.`. */
	$"00E8 554F 3F03 3F3C 00E1 4EBA FD54 101F"            /* .ËUO?.?<.·N∫˝T.. */
	$"6700 00D6 3F05 4EBA FC66 6000 00CC 554F"            /* g..÷?.N∫¸f`..ÃUO */
	$"3F03 3F3C 00E2 4EBA FD38 101F 6700 00BA"            /* ?.?<.‚N∫˝8..g..∫ */
	$"554F 4EB9 0000 625E 101F 1600 6000 00AA"            /* UONπ..b^....`..™ */
	$"7801 554F 2F2D F29C 3F03 4EB9 0000 B240"            /* x.UO/-Úú?.Nπ..≤@ */
	$"101F 661A 554F 3F3C 00AF 4EB9 0000 82CA"            /* ..f.UO?<.ØNπ..Ç  */
	$"301F 3A00 0C45 0001 57C0 4400 1800 4A04"            /* 0.:..E..W¿D...J. */
	$"6776 2F2D F29C 3F03 4EB9 0000 B2BA 554F"            /* gv/-Úú?.Nπ..≤∫UO */
	$"2F2D F29C 3F03 4EB9 0000 B240 101F 7200"            /* /-Úú?.Nπ..≤@..r. */
	$"1200 3B41 F286 4A6D F286 6F0E 2F2D F29C"            /* ..;AÚÜJmÚÜo./-Úú */
	$"3F3C 0008 4EB9 0000 B328 4EBA F156 6038"            /* ?<..Nπ..≥(N∫ÒV`8 */
	$"4EBA E6F4 6032 4EBA E394 602C 4EBA E804"            /* N∫ÊÙ`2N∫„î`,N∫Ë. */
	$"6026 554F 3F03 4EBA FA84 101F 671A 7000"            /* `&UO?.N∫˙Ñ..g.p. */
	$"1004 0440 002C 670C 5540 6702 600A 4EBA"            /* ...@.,g.U@g.`.N∫ */
	$"F6CE 6004 4EBA F60C 4CDF 0078 4E5E 205F"            /* ˆŒ`.N∫ˆ.Lﬂ.xN^ _ */
	$"5C4F 4ED0 8B44 4F49 5445 4D57 4845 5245"            /* \ON–ãDOITEMWHERE */
	$"0000 4E56 FFE0 2F0A 246E 0008 554F 2F2D"            /* ..NVˇ‡/.$n..UO/- */
	$"F29C 4EB9 0000 B2FC 301F 7200 1200 5D41"            /* ÚúNπ..≤¸0.r...]A */
	$"6748 5541 6734 5541 6720 5341 671C 5B41"            /* gHUAg4UAg SAg.[A */
	$"6718 5341 6714 5B41 6710 5341 670C 0441"            /* g.SAg.[Ag.SAg..A */
	$"000A 6736 5341 6742 6050 41ED FA44 43D2"            /* ..g6SAgB`PAÌ˙DC“ */
	$"7007 22D8 51C8 FFFC 604E 41ED FA64 43D2"            /* p."ÿQ»ˇ¸`NAÌ˙dC“ */
	$"7007 22D8 51C8 FFFC 603E 41ED FA84 43D2"            /* p."ÿQ»ˇ¸`>AÌ˙ÑC“ */
	$"7007 22D8 51C8 FFFC 602E 41ED FAA4 43D2"            /* p."ÿQ»ˇ¸`.AÌ˙§C“ */
	$"7007 22D8 51C8 FFFC 601E 41ED FAC4 43D2"            /* p."ÿQ»ˇ¸`.AÌ˙ƒC“ */
	$"7007 22D8 51C8 FFFC 600E 41ED FAE4 43D2"            /* p."ÿQ»ˇ¸`.AÌ˙‰C“ */
	$"7007 22D8 51C8 FFFC 594F 2F0A 4878 0020"            /* p."ÿQ»ˇ¸YO/.Hx.  */
	$"486D FB04 4878 0020 486E FFE0 4878 0020"            /* Hm˚.Hx. Hnˇ‡Hx.  */
	$"4EB9 0000 DC0E 205F 43D2 7007 22D8 51C8"            /* Nπ..‹. _C“p."ÿQ» */
	$"FFFC 245F 4E5E 2E9F 4E75 8A42 4144 4348"            /* ˇ¸$_N^.üNuäBADCH */
	$"4152 5345 5400 0000 4E56 FEE0 48E7 1820"            /* ARSET...NV˛‡HÁ.  */
	$"246E 000E 382E 000C 206E 0008 43EE FFE0"            /* $n..8... n..CÓˇ‡ */
	$"7007 22D8 51C8 FFFC 7601 6006 7001 D043"            /* p."ÿQ»ˇ¸v.`.p.–C */
	$"3600 7000 1012 B640 6E20 B644 6E1C 554F"            /* 6.p...∂@n ∂Dn.UO */
	$"7000 1032 3000 2F00 486E FFE0 4878 0020"            /* p..20./.Hnˇ‡Hx.  */
	$"4EB9 0000 DCD0 101F 66D2 5343 7000 1012"            /* Nπ..‹–..f“SCp... */
	$"B640 672C 486E FEE0 2F0A 3F3C 0001 3F03"            /* ∂@g,Hn˛‡/.?<..?. */
	$"4EB9 0000 C992 41EE FEE0 2808 2044 7000"            /* Nπ..…íAÓ˛‡(. Dp. */
	$"1010 5240 48C0 2044 224A A22E 584F 6004"            /* ..R@H¿ D"J¢.XO`. */
	$"422E 0012 4CDF 0418 4E5E 205F 4FEF 000A"            /* B...Lﬂ..N^ _OÔ.. */
	$"4ED0 884C 4547 414C 495A 4500 0000 4E56"            /* N–àLEGALIZE...NV */
	$"FEF8 48E7 1C00 362E 0008 554F 7000 1003"            /* ˛¯HÁ..6...UOp... */
	$"2F00 486D FA3A 4878 0006 4EB9 0000 DCD0"            /* /.Hm˙:Hx..Nπ..‹– */
	$"101F 6700 0124 2F2D F29C 3F03 486E FF00"            /* ..g..$/-Úú?.Hnˇ. */
	$"4EB9 0000 ADB2 1A03 7000 1005 0440 000A"            /* Nπ..≠≤..p....@.. */
	$"6716 5340 6716 5B40 670E 5340 670E 5B40"            /* g.S@g.[@g.S@g.[@ */
	$"6706 5340 6706 6008 7803 6006 7803 6002"            /* g.S@g.`.x.`.x.`. */
	$"7800 554F 486E FF00 3F04 486D F98E 4EBA"            /* x.UOHnˇ.?.Hm˘éN∫ */
	$"FEE8 101F 6724 2F2D F29C 3F03 486E FF00"            /* ˛Ë..g$/-Úú?.Hnˇ. */
	$"4EB9 0000 AD44 2F2D F29C 3F03 2F3C 00FF"            /* Nπ..≠D/-Úú?./<.ˇ */
	$"00FF A97E 3F3C 0001 A9C8 486E FF00 486E"            /* .ˇ©~?<..©»Hnˇ.Hn */
	$"FEFA 4EB9 0000 E89A 554F 2F2D F28C A960"            /* ˛˙Nπ..ËöUO/-Úå©` */
	$"301F 3600 7000 1005 0440 000A 0C40 000D"            /* 0.6.p....@...@.. */
	$"6200 0082 5540 6D0C 5940 6D78 5540 6D04"            /* b..ÇU@m.Y@mxU@m. */
	$"5940 6D70 1F05 486E FEFE 486E FEF9 4EBA"            /* Y@mp..Hn˛˛Hn˛˘N∫ */
	$"BC62 7000 102E FEF9 6706 5340 6726 6046"            /* ºbp...˛˘g.S@g&`F */
	$"3003 D06E FEFE 48C0 5380 223C 0000 02F6"            /* 0.–n˛˛H¿SÄ"<...ˆ */
	$"4EB9 0000 04DA 206D F298 D1C0 216E FEFA"            /* Nπ...⁄ mÚò—¿!n˛˙ */
	$"01D4 6022 3003 D06E FEFE 48C0 5380 223C"            /* .‘`"0.–n˛˛H¿SÄ"< */
	$"0000 02F6 4EB9 0000 04DA 206D F298 D1C0"            /* ...ˆNπ...⁄ mÚò—¿ */
	$"216E FEFA 01E0 7001 D06E FEFE 3F00 4227"            /* !n˛˙.‡p.–n˛˛?.B' */
	$"4EBA E6AE 4EBA EE2C 4CDF 0038 4E5E 205F"            /* N∫ÊÆN∫Ó,Lﬂ.8N^ _ */
	$"544F 4ED0 8B54 4558 5443 4841 4E47 4544"            /* TON–ãTEXTCHANGED */
	$"0000 4E56 FF00 2F2E 000A A873 2F2E 000A"            /* ..NVˇ./...®s/... */
	$"3F2E 0008 486E FF00 1F3C 0001 4EBA BF3C"            /* ?...Hnˇ..<..N∫ø< */
	$"584F 486E FF00 4EB9 0000 B76A 4E5E 205F"            /* XOHnˇ.Nπ..∑jN^ _ */
	$"5C4F 4ED0 8D44 5241 574D 4554 484F 4442"            /* \ON–çDRAWMETHODB */
	$"4F58 0000 4E56 0000 3D6E 0008 0008 2F2E"            /* OX..NV..=n..../. */
	$"000A A873 4EBA EC80 4E5E 205F 5C4F 4ED0"            /* ..®sN∫ÏÄN^ _\ON– */
	$"8B44 5241 5752 4F57 5342 4F58 0000 4E56"            /* ãDRAWROWSBOX..NV */
	$"0000 3D6E 0008 0008 2F2E 000A A873 4EBA"            /* ..=n..../...®sN∫ */
	$"ED92 4E5E 205F 5C4F 4ED0 8944 5241 5754"            /* ÌíN^ _\ON–âDRAWT */
	$"4F54 414C 0000 4E56 0000 48E7 1838 266E"            /* OTAL..NV..HÁ.8&n */
	$"0012 246E 000E 286E 000A 422E 0016 594F"            /* ..$n..(n..B...YO */
	$"2F0B 4EB9 0000 E790 201F 2800 B892 6F78"            /* /.Nπ..Áê .(.∏íox */
	$"594F 2F13 2F12 201F D09F 2E80 205F 1010"            /* YO/./. .–ü.Ä _.. */
	$"4880 0280 0000 00FF 3600 3043 2012 D088"            /* HÄ.Ä...ˇ6.0C .–à */
	$"5280 B084 6E52 594F 306E 0008 2F08 3043"            /* RÄ∞ÑnRYO0n../.0C */
	$"2F08 201F 2E9F B097 6C02 2E80 201F 3800"            /* /. ..ü∞ól..Ä .8. */
	$"594F 2F13 2F12 201F D09F 2E80 205F 2F08"            /* YO/./. .–ü.Ä _/. */
	$"2F0C 7001 D044 48C0 2F00 201F 225F 205F"            /* /.p.–DH¿/. ."_ _ */
	$"A22E 7000 3004 1880 3043 2012 D088 5280"            /* ¢.p.0..Ä0C .–àRÄ */
	$"2480 1D7C 0001 0016 4CDF 1C18 4E5E 205F"            /* $Ä.|....Lﬂ..N^ _ */
	$"4FEF 000E 4ED0 9347 4554 5354 5249 4E47"            /* OÔ..N–ìGETSTRING */
	$"4652 4F4D 4841 4E44 4C45 0000 4E56 0000"            /* FROMHANDLE..NV.. */
	$"2F0A 246E 000C 422E 0014 594F 2F2E 0010"            /* /.$n..B...YO/... */
	$"4EB9 0000 E790 201F 7204 D292 B280 6E30"            /* Nπ..Áê .r.“í≤Än0 */
	$"594F 206E 0010 2F10 2F12 201F D09F 2E80"            /* YO n.././. .–ü.Ä */
	$"205F 2F08 2F2E 0008 4878 0004 201F 225F"            /*  _/./...Hx.. ."_ */
	$"205F A22E 7004 D092 2480 1D7C 0001 0014"            /*  _¢.p.–í$Ä.|.... */
	$"245F 4E5E 205F 4FEF 000C 4ED0 9147 4554"            /* $_N^ _OÔ..N–ëGET */
	$"4C4F 4E47 4652 4F4D 4841 4E44 4C45 0000"            /* LONGFROMHANDLE.. */
	$"4E56 FFDA 206E 0010 226E 000C 4291 7201"            /* NVˇ⁄ n.."n..Bër. */
	$"606C 7000 1030 1000 0440 0030 3D40 FFDA"            /* `lp..0...@.0=@ˇ⁄ */
	$"486E FFDA 486E FFDA 3F3C 200E A9EB 2D7C"            /* Hnˇ⁄Hnˇ⁄?< .©Î-| */
	$"4002 A000 FFE4 42AE FFE8 426E FFEC 4851"            /* @.†.ˇ‰BÆˇËBnˇÏHQ */
	$"486E FFEE 3F3C 100E A9EB 486E FFE4 486E"            /* HnˇÓ?<..©ÎHnˇ‰Hn */
	$"FFEE 3F3C 0004 A9EB 486E FFDA 486E FFEE"            /* ˇÓ?<..©ÎHnˇ⁄HnˇÓ */
	$"3F3C 0000 A9EB 486E FFEE 486E FFF8 3F3C"            /* ?<..©ÎHnˇÓHnˇ¯?< */
	$"1010 A9EB 22AE FFF8 7001 D041 3200 7000"            /* ..©Î"Æˇ¯p.–A2.p. */
	$"1010 B240 6E0C 7000 1030 1000 0C40 002E"            /* ..≤@n.p..0...@.. */
	$"6680 7000 1010 B240 6E12 7000 1030 1000"            /* fÄp...≤@n.p..0.. */
	$"0C40 002E 6606 7001 D041 3200 2D7C 3F80"            /* .@..f.p.–A2.-|?Ä */
	$"0000 FFFC 6000 00AC 2D7C 4002 A000 FFEE"            /* ..ˇ¸`..¨-|@.†.ˇÓ */
	$"42AE FFF2 426E FFF6 486E FFFC 486E FFE4"            /* BÆˇÚBnˇˆHnˇ¸Hnˇ‰ */
	$"3F3C 100E A9EB 486E FFEE 486E FFE4 3F3C"            /* ?<..©ÎHnˇÓHnˇ‰?< */
	$"0006 A9EB 486E FFE4 486E FFF8 3F3C 1010"            /* ..©ÎHnˇ‰Hnˇ¯?<.. */
	$"A9EB 2D6E FFF8 FFFC 7000 1030 1000 0440"            /* ©Î-nˇ¯ˇ¸p..0...@ */
	$"0030 3D40 FFEE 486E FFEE 486E FFEE 3F3C"            /* .0=@ˇÓHnˇÓHnˇÓ?< */
	$"200E A9EB 486E FFFC 486E FFE4 3F3C 100E"            /*  .©ÎHnˇ¸Hnˇ‰?<.. */
	$"A9EB 486E FFEE 486E FFE4 3F3C 0004 A9EB"            /* ©ÎHnˇÓHnˇ‰?<..©Î */
	$"4851 486E FFDA 3F3C 100E A9EB 486E FFE4"            /* HQHnˇ⁄?<..©ÎHnˇ‰ */
	$"486E FFDA 3F3C 0000 A9EB 486E FFDA 486E"            /* Hnˇ⁄?<..©ÎHnˇ⁄Hn */
	$"FFF8 3F3C 1010 A9EB 22AE FFF8 7001 D041"            /* ˇ¯?<..©Î"Æˇ¯p.–A */
	$"3200 7000 1010 B240 6F00 FF4E 4E5E 205F"            /* 2.p...≤@o.ˇNN^ _ */
	$"4FEF 000C 4ED0 8E53 7472 696E 6754 6F52"            /* OÔ..N–éStringToR */
	$"6561 6C31 3500 0000 4E56 0000 48E7 0038"            /* eal15...NV..HÁ.8 */
	$"286E 0014 266E 0010 246E 000C 554F 2F0C"            /* (n..&n..$n..UO/. */
	$"2F0B 2F0A 3F3C 001F 4EBA FD1C 101F 4A00"            /* /./.?<..N∫˝...J. */
	$"6770 554F 2F0C 2F0B 486A 0020 3F3C 001F"            /* gpUO/./.Hj. ?<.. */
	$"4EBA FD04 101F 4A00 6758 554F 2F0C 2F0B"            /* N∫˝...J.gXUO/./. */
	$"486A 0040 3F3C 001F 4EBA FCEC 101F 4A00"            /* Hj.@?<..N∫¸Ï..J. */
	$"6740 554F 2F0C 2F0B 486A 0060 3F3C 001F"            /* g@UO/./.Hj.`?<.. */
	$"4EBA FCD4 101F 4A00 6728 554F 2F0C 2F0B"            /* N∫¸‘..J.g(UO/./. */
	$"486A 0080 4EBA FD86 101F 4A00 6714 554F"            /* Hj.ÄN∫˝Ü..J.g.UO */
	$"2F0C 2F0B 486A 0084 4EBA FD72 101F 4A00"            /* /./.Hj.ÑN∫˝r..J. */
	$"6604 7000 6002 7001 1D40 0018 4CDF 1C00"            /* f.p.`.p..@..Lﬂ.. */
	$"4E5E 205F 4FEF 0010 4ED0 9247 6574 5465"            /* N^ _OÔ..N–íGetTe */
	$"6D70 6C61 7465 456E 7472 7931 3600 0000"            /* mplateEntry16... */
	$"4E56 FE74 48E7 1E30 246E 0008 7A00 594F"            /* NV˛tHÁ.0$n..z.YO */
	$"2F2D FB24 3F3C 0080 A9A0 205F 2648 200B"            /* /-˚$?<.Ä©† _&H . */
	$"6700 019C 4A93 6700 0196 594F 2F0B 4EB9"            /* g..úJìg..ñYO/.Nπ */
	$"0000 E790 201F 7202 B081 6D00 0182 2053"            /* ..Áê .r.∞Åm..Ç S */
	$"3B50 F290 594F 306D F290 7030 2208 4EB9"            /* ;PÚêYO0mÚêp0".Nπ */
	$"0000 04DA 2F00 201F A11E 2E88 205F 2B48"            /* ...⁄/. .°..à _+H */
	$"F292 4AAD F292 6700 0152 3B7C 0001 F26E"            /* ÚíJ≠Úíg..R;|..Ún */
	$"7002 2D40 FE74 7A01 3C2D F290 7601 6000"            /* p.-@˛tz.<-Úêv.`. */
	$"0116 554F 2F0B 486E FE74 486E FF78 2F0E"            /* ..UO/.Hn˛tHnˇx/. */
	$"4EBA FEA6 101F 6606 7A00 6000 0100 41EE"            /* N∫˛¶..f.z.`...AÓ */
	$"FF78 2808 2044 7000 1010 5240 48C0 2F00"            /* ˇx(. Dp...R@H¿/. */
	$"3043 2008 5380 7230 4EB9 0000 04DA 206D"            /* 0C .SÄr0Nπ...⁄ m */
	$"F292 D1C0 43D0 201F 2044 A22E 3043 2008"            /* Úí—¿C– . D¢.0C . */
	$"5380 7230 4EB9 0000 04DA 206D F292 21AE"            /* SÄr0Nπ...⁄ mÚí!Æ */
	$"FFB8 0820 486E FFD8 3043 2008 5380 7230"            /* ˇ∏. Hnˇÿ0C .SÄr0 */
	$"4EB9 0000 04DA 206D F292 4870 0824 2F0E"            /* Nπ...⁄ mÚíHp.$/. */
	$"4EBA FCAE 3043 2008 5380 7230 4EB9 0000"            /* N∫¸Æ0C .SÄr0Nπ.. */
	$"04DA 206D F292 21AE FFF8 0828 3043 2008"            /* .⁄ mÚí!Æˇ¯.(0C . */
	$"5380 7230 4EB9 0000 04DA 206D F292 21AE"            /* SÄr0Nπ...⁄ mÚí!Æ */
	$"FFFC 082C 554F 486E FF78 486D FB28 4267"            /* ˇ¸.,UOHnˇxHm˚(Bg */
	$"4EB9 0000 DD64 101F 6704 3B43 F26E 2F0A"            /* Nπ..›d..g.;CÚn/. */
	$"486D FB30 486E FFD8 486D FB2C 3043 2008"            /* Hm˚0HnˇÿHm˚,0C . */
	$"5380 7230 4EB9 0000 04DA 206D F292 D1C0"            /* SÄr0Nπ...⁄ mÚí—¿ */
	$"4850 486E FE78 3F3C 0004 4EB9 0000 DE7E"            /* HPHn˛x?<..Nπ..ﬁ~ */
	$"4FEF 0016 486E FE78 4EB9 0000 C642 0C43"            /* OÔ..Hn˛xNπ..∆B.C */
	$"7FFF 6708 5243 B646 6F00 FEE8 4A05 6712"            /* .ˇg.RC∂Fo.˛ËJ.g. */
	$"594F 2F0B 4EB9 0000 E790 201F B0AE FE74"            /* YO/.Nπ..Áê .∞Æ˛t */
	$"6704 7000 6002 7001 1A00 2F0B A9A3 4A05"            /* g.p.`.p.../.©£J. */
	$"661A 426D F290 6008 2F0A 3F3C 0001 A952"            /* f.BmÚê`./.?<..©R */
	$"554F 2F0A A950 301F 4A40 6EEC 4CDF 0C78"            /* UO/.©P0.J@nÏLﬂ.x */
	$"4E5E 2E9F 4E75 8C46 494C 4C43 4153 484D"            /* N^.üNuåFILLCASHM */
	$"454E 5500 0000 4E56 FF00 48E7 1C20 7801"            /* ENU...NVˇ.HÁ. x. */
	$"594F 2F2D FB32 3F3C 0080 A9A0 205F 2448"            /* YO/-˚2?<.Ä©† _$H */
	$"200A 6778 2F12 486E FF00 594F 594F 2F0A"            /*  .gx/.Hnˇ.YOYO/. */
	$"4EB9 0000 E790 201F 2F00 4878 0100 201F"            /* Nπ..Áê ./.Hx.. . */
	$"2E9F B097 6C02 2E80 201F 2F00 201F 225F"            /* .ü∞ól..Ä ./. ."_ */
	$"205F A22E 3A2D F296 7601 6038 554F 3043"            /*  _¢.:-Úñv.`8UO0C */
	$"2008 5380 223C 0000 02F6 4EB9 0000 04DA"            /*  .SÄ"<...ˆNπ...⁄ */
	$"206D F298 D1C0 4868 0080 486E FF00 4267"            /*  mÚò—¿Hh.ÄHnˇ.Bg */
	$"4EB9 0000 DD64 101F 6702 3803 0C43 7FFF"            /* Nπ..›d..g.8..C.ˇ */
	$"6706 5243 B645 6FC4 2F0A A9A3 3D44 0008"            /* g.RC∂Eoƒ/.©£=D.. */
	$"4CDF 0438 4E5E 4E75 9047 4554 4155 544F"            /* Lﬂ.8N^NuêGETAUTO */
	$"5343 524F 4C4C 524F 5700 0000 4E56 FD00"            /* SCROLLROW...NV˝. */
	$"2F03 206E 0010 43EE FD00 703F 22D8 51C8"            /* /. n..CÓ˝.p?"ÿQ» */
	$"FFFC 486E FE00 486E FD00 4EB9 0000 C334"            /* ˇ¸Hn˛.Hn˝.Nπ..√4 */
	$"41EE FE00 2608 2043 7000 1010 5240 48C0"            /* AÓ˛.&. Cp...R@H¿ */
	$"2043 43EE FF00 A22E 486E FF00 486D F986"            /*  CCÓˇ.¢.Hnˇ.Hm˘Ü */
	$"4267 4EB9 0000 DD64 101F 544F 672C 486E"            /* BgNπ..›d..TOg,Hn */
	$"FE00 3F3C 00B4 3F2E 000E 4EB9 0000 C746"            /* ˛.?<.¥?...Nπ..«F */
	$"41EE FE00 2608 2043 7000 1010 5240 48C0"            /* AÓ˛.&. Cp...R@H¿ */
	$"2043 43EE FF00 A22E 584F 2F2D F29C 7000"            /*  CCÓˇ.¢.XO/-Úúp. */
	$"102E 000C 3F00 486E FF00 4EB9 0000 AD44"            /* ....?.Hnˇ.Nπ..≠D */
	$"261F 4E5E 205F 4FEF 000C 4ED0 9253 6574"            /* &.N^ _OÔ..N–íSet */
	$"4465 6661 756C 7453 7472 696E 6731 3700"            /* DefaultString17. */
	$"0000 4E56 FFF2 48E7 1820 182E 0010 246E"            /* ..NVˇÚHÁ. ....$n */
	$"000C 2F0A 4EBA B228 2F2D F29C 7000 1004"            /* ../.N∫≤(/-Úúp... */
	$"3F00 486E FFF6 486E FFF2 486E FFF8 A98D"            /* ?.HnˇˆHnˇÚHnˇ¯©ç */
	$"2F0A A948 2052 302E FFFA D068 0002 5240"            /* /.©H R0.ˇ˙–h..R@ */
	$"3D40 FFFE 7012 D06E FFF8 5240 3D40 FFFC"            /* =@ˇ˛p.–nˇ¯R@=@ˇ¸ */
	$"2F2D F29C 7000 1004 3F00 3F2E FFF6 487A"            /* /-Úúp...?.?.ˇˆHz */
	$"EE50 486E FFF8 A98E 554F 7000 1004 3F00"            /* ÓPHnˇ¯©éUOp...?. */
	$"4EBA B190 101F 1600 7000 1003 C1FC 0006"            /* N∫±ê....p...¡¸.. */
	$"41ED F262 218A 0800 7000 1003 C1FC 0006"            /* AÌÚb!ä..p...¡¸.. */
	$"41ED F262 31BC 0001 0804 4CDF 0418 4E5E"            /* AÌÚb1º....Lﬂ..N^ */
	$"205F 4FEF 000A 4ED0 8C53 6574 7570 506F"            /*  _OÔ..N–åSetupPo */
	$"7075 7031 3800 0000 4E56 FEF6 2F0A 422E"            /* pup18...NV˛ˆ/.B. */
	$"0008 594F 3F3C 00C8 4878 0000 4878 FFFF"            /* ..YO?<.»Hx..Hxˇˇ */
	$"A97C 205F 2B48 F29C 4AAD F29C 6700 01CC"            /* ©| _+HÚúJ≠Úúg..Ã */
	$"2F2D F29C A873 1F3C 002E 594F 3F3C 00C8"            /* /-Úú®s.<..YO?<.» */
	$"A9BF 205F 2F08 2F0E 4EBA FF08 594F 3F3C"            /* ©ø _/./.N∫ˇ.YO?< */
	$"00C9 A9BF 205F 2448 2F0A 4EBA FB94 1F3C"            /* .…©ø _$H/.N∫˚î.< */
	$"002C 2F0A 2F0E 4EBA FEEA 4EBA B67C 2F2D"            /* .,/./.N∫˛ÍN∫∂|/- */
	$"F29C 1F3C 0001 4267 4EB9 0000 B6CE 2F2D"            /* Úú.<..BgNπ..∂Œ/- */
	$"F29C 3F3C 002F 487A F74A 4EB9 0000 B138"            /* Úú?<./Hz˜JNπ..±8 */
	$"2F2D F29C 3F3C 001C 487A F77A 4EB9 0000"            /* /-Úú?<..Hz˜zNπ.. */
	$"B138 2F2D F29C 3F3C 001F 487A F792 4EB9"            /* ±8/-Úú?<..Hz˜íNπ */
	$"0000 B138 2F2D F29C 3F3C 001D 486E FFF8"            /* ..±8/-Úú?<..Hnˇ¯ */
	$"4EB9 0000 B062 594F 2F2D F29C 486E FFF8"            /* Nπ..∞bYO/-ÚúHnˇ¯ */
	$"486D F986 1F3C 0001 2F3C 0001 0001 594F"            /* Hm˘Ü.<../<....YO */
	$"4878 0001 302D F296 5540 48C0 2F00 201F"            /* Hx..0-ÚñU@H¿/. . */
	$"2E9F B097 6F02 2E80 201F 3F00 3F3C 0010"            /* .ü∞óo..Ä .?.?<.. */
	$"42A7 A954 205F 2B48 F28C 594F 4878 0001"            /* Bß©T _+HÚåYOHx.. */
	$"554F 4EBA FCD2 301F 48C0 2F00 306D F296"            /* UON∫¸“0.H¿/.0mÚñ */
	$"2F08 201F 221F B280 6F02 2200 201F B280"            /* /. .".≤Äo.". .≤Ä */
	$"6C02 2200 2E81 201F 3F00 4EBA E398 4EBA"            /* l."..Å .?.N∫„òN∫ */
	$"E366 426D F286 4EBA E49A 422D F285 4EBA"            /* „fBmÚÜN∫‰öB-ÚÖN∫ */
	$"EA3E 3B6D F26E F26C 4EBA E978 2F2D F29C"            /* Í>;mÚnÚlN∫Èx/-Úú */
	$"486D F288 4EB9 0000 D2C2 554F 1F3C 0001"            /* HmÚàNπ..“¬UO.<.. */
	$"4EB9 0000 C3F6 301F 3D40 FEF6 486D FA06"            /* Nπ..√ˆ0.=@˛ˆHm˙. */
	$"3F3C 0001 1F3C 0005 2F0E 4EBA FD10 486D"            /* ?<...<../.N∫˝.Hm */
	$"FA10 3F3C 0002 1F3C 0006 2F0E 4EBA FCFE"            /* ˙.?<...<../.N∫¸˛ */
	$"486D FA16 3F3C 0003 1F3C 0008 2F0E 4EBA"            /* Hm˙.?<...<../.N∫ */
	$"FCEC 554F 4EB9 0000 C42E 301F 3D40 FEF6"            /* ¸ÏUONπ..ƒ.0.=@˛ˆ */
	$"2F2D F29C 3F3C 0005 4EB9 0000 B328 2F2D"            /* /-Úú?<..Nπ..≥(/- */
	$"F29C 3F3C 002B 486E FEF8 1F3C 0010 4EBA"            /* Úú?<.+Hn˛¯.<..N∫ */
	$"AF22 584F 486E FEF8 4EB9 0000 AD44 2F2D"            /* Ø"XOHn˛¯Nπ..≠D/- */
	$"F29C A915 1D7C 0001 0008 245F 4E5E 205F"            /* Úú©..|....$_N^ _ */
	$"4ED0 8B53 4554 5550 4449 414C 4F47 0000"            /* N–ãSETUPDIALOG.. */
	$"4E56 0000 554F 206E 0008 2F28 FD04 206E"            /* NV..UO n../(˝. n */
	$"0008 4868 FCFE 2F2E 0010 3F2E 000E 4EBA"            /* ..Hh¸˛/...?...N∫ */
	$"F636 101F 1F00 4EB9 0000 ACEA 4E5E 205F"            /* ˆ6....Nπ..¨ÍN^ _ */
	$"4FEF 000C 4ED0 8C52 6561 6453 7472 696E"            /* OÔ..N–åReadStrin */
	$"6731 3900 0000 4E56 FFFE 594F 206E 0008"            /* g19...NVˇ˛YO n.. */
	$"2068 FD04 2F10 206E 0008 2F28 FCFE 201F"            /*  h˝./. n../(¸˛ . */
	$"D09F 2E80 205F 2F08 486E FFFE 4878 0002"            /* –ü.Ä _/.Hnˇ˛Hx.. */
	$"201F 225F 205F A02E 206E 0008 7002 D0A8"            /*  ."_ _†. n..p.–® */
	$"FCFE 206E 0008 2140 FCFE 302E FFFE 0280"            /* ¸˛ n..!@¸˛0.ˇ˛.Ä */
	$"0000 FFFF 2D40 000C 4E5E 2E9F 4E75 8B52"            /* ..ˇˇ-@..N^.üNuãR */
	$"6561 6453 686F 7274 3230 0000 4E56 FFFC"            /* eadShort20..NVˇ¸ */
	$"594F 206E 0008 2068 FD04 2F10 206E 0008"            /* YO n.. h˝./. n.. */
	$"2F28 FCFE 201F D09F 2E80 205F 2F08 486E"            /* /(¸˛ .–ü.Ä _/.Hn */
	$"FFFC 4878 0004 201F 225F 205F A02E 206E"            /* ˇ¸Hx.. ."_ _†. n */
	$"0008 7004 D0A8 FCFE 206E 0008 2140 FCFE"            /* ..p.–®¸˛ n..!@¸˛ */
	$"2D6E FFFC 000C 4E5E 2E9F 4E75 8A52 6561"            /* -nˇ¸..N^.üNuäRea */
	$"644C 6F6E 6732 3100 0000 4E56 FCFC 48E7"            /* dLong21...NV¸¸HÁ */
	$"1F20 594F 42A7 201F A122 2E88 205F 2448"            /* . YOBß .°".à _$H */
	$"554F 2F2D FB36 A80D 301F 3D40 FCFC 3D7C"            /* UO/-˚6®.0.=@¸¸=| */
	$"0001 FD02 6000 0242 594F 2F2D FB36 3F2E"            /* ..˝.`..BYO/-˚6?. */
	$"FD02 A80E 205F 2D48 FD04 4AAE FD04 6700"            /* ˝.®. _-H˝.JÆ˝.g. */
	$"021C 206E FD04 4A90 6700 0212 594F 2F2E"            /* .. n˝.Jêg...YO/. */
	$"FD04 4EB9 0000 E790 201F 7202 B081 6D00"            /* ˝.Nπ..Áê .r.∞Åm. */
	$"01FC 206E FD04 2050 3610 7002 2D40 FCFE"            /* .¸ n˝. P6.p.-@¸˛ */
	$"3D43 FD08 7E01 6000 01D6 486E FD0A 4878"            /* =C˝.~.`..÷Hn˝.Hx */
	$"003F 2F0E 4EBA FE6A 486E FD4A 4878 003F"            /* .?/.N∫˛jHn˝JHx.? */
	$"2F0E 4EBA FE5C 486E FD8A 4878 000F 2F0E"            /* /.N∫˛\Hn˝äHx../. */
	$"4EBA FE4E 486E FD9A 4878 003F 2F0E 4EBA"            /* N∫˛NHn˝öHx.?/.N∫ */
	$"FE40 594F 2F0E 4EBA FEE4 201F 2D40 FEDA"            /* ˛@YO/.N∫˛‰ .-@˛⁄ */
	$"7800 6000 0134 594F 2F0E 4EBA FE6A 201F"            /* x.`..4YO/.N∫˛j . */
	$"3C00 594F 42A7 3046 2F08 4878 0010 201F"            /* <.YOBß0F/.Hx.. . */
	$"221F B280 6F02 2200 201F B280 6C02 2200"            /* ".≤Äo.". .≤Äl.". */
	$"2E81 201F 3046 B1C0 57C0 4400 1F00 4EB9"            /* .Å .0F±¿W¿D...Nπ */
	$"0000 ACEA 3A06 7601 6058 594F 2F0E 4EBA"            /* ..¨Í:.v.`XYO/.N∫ */
	$"FE26 201F 7200 1204 C3FC 0088 41EE FD0A"            /* ˛& .r...√¸.àAÓ˝. */
	$"41E8 01E6 D1C1 3243 2209 5381 E789 2180"            /* AË.Ê—¡2C".SÅÁâ!Ä */
	$"1800 594F 2F0E 4EBA FDFE 201F 7200 1204"            /* ..YO/.N∫˝˛ .r... */
	$"C3FC 0088 41EE FD0A 41E8 01E6 D1C1 3243"            /* √¸.àAÓ˝.AË.Ê—¡2C */
	$"2209 5381 E789 2180 1804 0C43 7FFF 6706"            /* ".SÅÁâ!Ä...C.ˇg. */
	$"5243 B645 6FA4 7A01 DA46 3605 6042 7000"            /* RC∂Eo§z.⁄F6.`Bp. */
	$"1004 C1FC 0088 41EE FD0A 41E8 01E6 D1C0"            /* ..¡¸.àAÓ˝.AË.Ê—¿ */
	$"3243 2009 5380 E788 42B0 0800 7000 1004"            /* 2C .SÄÁàB∞..p... */
	$"C1FC 0088 41EE FD0A 41E8 01E6 D1C0 3243"            /* ¡¸.àAÓ˝.AË.Ê—¿2C */
	$"2009 5380 E788 21BC 7FFF FFFF 0804 5243"            /*  .SÄÁà!º.ˇˇˇ..RC */
	$"0C43 0010 6FB8 594F 2F0E 4EBA FD7A 201F"            /* .C..o∏YO/.N∫˝z . */
	$"7200 1204 C3FC 0088 41EE FD0A 41E8 01E6"            /* r...√¸.àAÓ˝.AË.Ê */
	$"D1C1 2140 0080 594F 2F0E 4EBA FD5A 201F"            /* —¡!@.ÄYO/.N∫˝Z . */
	$"7200 1204 C3FC 0088 41EE FD0A 41E8 01E6"            /* r...√¸.àAÓ˝.AË.Ê */
	$"D1C1 2140 0084 5204 0C04 0001 6F00 FEC8"            /* —¡!@.ÑR.....o.˛» */
	$"42AE FEDE 42AE FEE2 42AE FEE6 42AE FEEA"            /* BÆ˛ﬁBÆ˛‚BÆ˛ÊBÆ˛Í */
	$"422E FEEE 41ED F986 2608 2043 7000 1010"            /* B.˛ÓAÌ˘Ü&. Cp... */
	$"5240 48C0 2043 43EE FDDA A22E 554F 486E"            /* R@H¿ CCÓ˝⁄¢.UOHn */
	$"FD0A 2F0A 4878 02F6 201F 225F 205F A9EF"            /* ˝./.Hx.ˆ ."_ _©Ô */
	$"3E80 301F 3600 0C47 7FFF 670A 5247 BE6E"            /* >Ä0.6..G.ˇg.RGæn */
	$"FD08 6F00 FE26 2F2E FD04 A9A3 0C6E 7FFF"            /* ˝.o.˛&/.˝.©£.n.ˇ */
	$"FD02 6710 526E FD02 302E FD02 B06E FCFC"            /* ˝.g.Rn˝.0.˝.∞n¸¸ */
	$"6F00 FDB6 594F 2F0A 4EB9 0000 E790 201F"            /* o.˝∂YO/.Nπ..Áê . */
	$"223C 0000 02F6 4EB9 0000 056A 3B40 F296"            /* "<...ˆNπ...j;@Úñ */
	$"2F0A 205F A064 2F0A 205F A029 2B52 F298"            /* /. _†d/. _†)+RÚò */
	$"4A6D F296 5EC0 4400 1D40 0008 4CDF 04F8"            /* JmÚñ^¿D..@..Lﬂ.¯ */
	$"4E5E 205F 4ED0 8C52 4541 4450 524F 4752"            /* N^ _N–åREADPROGR */
	$"414D 5300 0000 4E56 0000 2F3C 0001 0082"            /* AMS...NV../<...Ç */
	$"4227 4EB9 0000 C6CA 2F3C 0003 0082 4227"            /* B'Nπ..∆ /<...ÇB' */
	$"4EB9 0000 C6CA 2F3C 0004 0082 4227 4EB9"            /* Nπ..∆ /<...ÇB'Nπ */
	$"0000 C6CA 2F3C 0005 0082 4227 4EB9 0000"            /* ..∆ /<...ÇB'Nπ.. */
	$"C6CA 2F3C 0006 0082 4227 4EB9 0000 C6CA"            /* ∆ /<...ÇB'Nπ..∆  */
	$"4E5E 4E75 8B41 444A 5553 544D 454E 5553"            /* N^NuãADJUSTMENUS */
	$"0000 4E56 FFFE 2D6E 0008 0008 554F 4EBA"            /* ..NVˇ˛-n....UON∫ */
	$"B12A 301F 3D40 FFFE 4E5E 2E9F 4E75 8744"            /* ±*0.=@ˇ˛N^.üNuáD */
	$"4F43 4C4F 5345 0000 4E56 FF00 2F03 362E"            /* OCLOSE..NVˇ./.6. */
	$"0008 302E 000A 0440 0080 670E 5340 6746"            /* ..0....@.Äg.S@gF */
	$"5340 6700 009A 6000 00CC 3003 5340 6708"            /* S@g..ö`..Ã0.S@g. */
	$"5340 6700 00C0 600A 4EB9 0000 6590 6000"            /* S@g..¿`.Nπ..eê`. */
	$"00B4 594F 3F3C 0080 A949 205F 2F08 3F03"            /* .¥YO?<.Ä©I _/.?. */
	$"486E FF00 A946 554F 486E FF00 A9B6 301F"            /* Hnˇ.©FUOHnˇ.©∂0. */
	$"3600 6000 0090 3003 0C40 0007 6200 0086"            /* 6.`..ê0..@..b..Ü */
	$"D040 303B 0006 4EFB 0002 007A 0010 001E"            /* –@0;..N˚...z.... */
	$"007A 0024 0032 007A 0038 594F A924 205F"            /* .z.$.2.z.8YO©$ _ */
	$"2F08 4EBA FF4E 605C 4EBA D132 6056 554F"            /* /.N∫ˇN`\N∫—2`VUO */
	$"4EB9 0000 6AB8 301F 3600 6048 4EBA D594"            /* Nπ..j∏0.6.`HN∫’î */
	$"6042 554F 4EBA B064 301F 3600 6036 3003"            /* `BUON∫∞d0.6.`60. */
	$"5340 6730 0C40 0006 622A 5540 6D26 5940"            /* S@g0.@..b*U@m&Y@ */
	$"6D22 594F A924 205F 2F08 554F 594F A924"            /* m"YO©$ _/.UOYO©$ */
	$"205F 2F08 4EB9 0000 B2FC 301F 3F00 4EB9"            /*  _/.Nπ..≤¸0.?.Nπ */
	$"0000 B328 4A2D F2A1 6604 4267 A938 261F"            /* ..≥(J-Ú°f.Bg©8&. */
	$"4E5E 2E9F 4E75 8644 4F4D 454E 5500 0000"            /* N^.üNuÜDOMENU... */
	$"4E56 FFE8 48E7 1820 246E 000A 382E 0008"            /* NVˇËHÁ. $n..8... */
	$"206E 000E 43EE FFF0 22D8 22D8 22D8 22D8"            /*  n..CÓˇ"ÿ"ÿ"ÿ"ÿ */
	$"B5FC 0000 0000 670A 594F A924 205F B5C8"            /* µ¸....g.YO©$ _µ» */
	$"6604 7000 6002 7001 1600 4A03 671C 554F"            /* f.p.`.p...J.g.UO */
	$"3044 2F08 486D FB3A 4878 0100 4EB9 0000"            /* 0D/.Hm˚:Hx..Nπ.. */
	$"DCD0 101F 6604 2F0A A91F 3004 0C40 0008"            /* ‹–..f./.©.0..@.. */
	$"6200 00BE D040 303B 0006 4EFB 0002 00B2"            /* b..æ–@0;..N˚...≤ */
	$"0012 00AA 00A0 004A 00B2 008A 00B2 00B2"            /* ...™.†.J.≤.ä.≤.≤ */
	$"4EBA FDF4 594F 2F2E FFFA A93D 201F 2600"            /* N∫˝ÙYO/.ˇ˙©= .&. */
	$"4A83 6718 554F 2F03 A86A 301F 3F00 554F"            /* JÉg.UO/.®j0.?.UO */
	$"2F03 A86B 301F 3F00 4EBA FE4E 4A2D F2A1"            /* /.®k0.?.N∫˛NJ-Ú° */
	$"666E 4267 A938 6068 302E FFFE 0280 0000"            /* fnBg©8`h0.ˇ˛.Ä.. */
	$"0100 4A80 57C0 4400 C003 6704 2F0A A91F"            /* ..JÄW¿D.¿.g./.©. */
	$"2F0A A873 594F 2EB8 09EE 205F 2050 2D68"            /* /.®sYO.∏.Ó _ P-h */
	$"0002 FFE8 2D68 0006 FFEC 2F0A 2F2E FFFA"            /* ..ˇË-h..ˇÏ/./.ˇ˙ */
	$"486E FFE8 A925 6028 554F 2F0A 2F2E FFFA"            /* HnˇË©%`(UO/./.ˇ˙ */
	$"A91E 101F 671A 2F0A 4EBA FDC8 6012 4A03"            /* ©...g./.N∫˝»`.J. */
	$"670E 2F0A A91F 6008 486E FFF0 2F0A A9B3"            /* g./.©.`.Hnˇ/.©≥ */
	$"4CDF 0418 4E5E 205F 4FEF 000A 4ED0 8B44"            /* Lﬂ..N^ _OÔ..N–ãD */
	$"4F4D 4149 4E43 4C49 434B 0000 4E56 FFC2"            /* OMAINCLICK..NVˇ¬ */
	$"48E7 1C00 554F 3F3C FFFF 486E FFEE 4878"            /* HÁ..UO?<ˇˇHnˇÓHx */
	$"000F 4878 0000 A860 101F 1600 2F2D F29C"            /* ..Hx..®`..../-Úú */
	$"A873 7601 282E FFF0 0284 0000 00FF 302E"            /* ®sv.(.ˇ.Ñ...ˇ0. */
	$"FFFC 0280 0000 0100 4A80 56C0 4400 1A00"            /* ˇ¸.Ä....JÄV¿D... */
	$"4A03 676A 4A05 6666 0C6E 0003 FFEE 6708"            /* J.gjJ.ff.n..ˇÓg. */
	$"0C6E 0005 FFEE 6656 594F A924 205F B1ED"            /* .n..ˇÓfVYO©$ _±Ì */
	$"F29C 664A 486E FFC6 4EBA EBC8 554F 7000"            /* ÚúfJHnˇ∆N∫Î»UOp. */
	$"3004 2F00 486E FFC6 4878 0020 4EB9 0000"            /* 0./.Hnˇ∆Hx. Nπ.. */
	$"DCD0 101F 670A 3F3C 0001 A9C8 7600 601E"            /* ‹–..g.?<..©»v.`. */
	$"0C44 0009 6618 302E FFFC 0280 0000 0200"            /* .D..f.0.ˇ¸.Ä.... */
	$"4A80 56C0 4400 1F00 4EBA E024 7600 4A03"            /* JÄV¿D...N∫‡$v.J. */
	$"6736 554F 486E FFEE A97F 101F 672A 554F"            /* g6UOHnˇÓ©...g*UO */
	$"486E FFEE 486E FFC2 486E FFFE A980 101F"            /* HnˇÓHnˇ¬Hnˇ˛©Ä.. */
	$"6716 206E FFC2 B1ED F29C 660C 486E FFEE"            /* g. nˇ¬±ÌÚúf.HnˇÓ */
	$"3F2E FFFE 4EBA E874 4A03 6700 017E 302E"            /* ?.ˇ˛N∫ËtJ.g..~0. */
	$"FFEE 5340 672C 5540 675A 5540 6700 016C"            /* ˇÓS@g,U@gZU@g..l */
	$"5340 6700 0086 5340 6700 0104 5340 6700"            /* S@g..ÜS@g...S@g. */
	$"008A 5F40 6700 009C 5140 6700 00DA 6000"            /* .ä_@g..úQ@g..⁄`. */
	$"014A 554F 2F2E FFF8 486E FFEA A92C 301F"            /* .JUO/.ˇ¯HnˇÍ©,0. */
	$"3600 4AAE FFEA 660A 594F A924 205F 2D48"            /* 6.JÆˇÍf.YO©$ _-H */
	$"FFEA 486E FFEE 2F2E FFEA 3F03 4EBA FD72"            /* ˇÍHnˇÓ/.ˇÍ?.N∫˝r */
	$"6000 0118 7600 4A05 670E 4EBA FBDA 594F"            /* `...v.J.g.N∫˚⁄YO */
	$"3F04 A93E 201F 2600 4A83 6700 00FE 554F"            /* ?.©> .&.JÉg..˛UO */
	$"2F03 A86A 301F 3F00 554F 2F03 A86B 301F"            /* /.®j0.?.UO/.®k0. */
	$"3F00 4EBA FC34 6000 00E2 2F2E FFF0 A922"            /* ?.N∫¸4`..‚/.ˇ©" */
	$"2F2E FFF0 A923 6000 00D2 302E FFFC 0240"            /* /.ˇ©#`..“0.ˇ¸.@ */
	$"0001 4A00 6700 00C4 2F2E FFF0 A91F 6000"            /* ..J.g..ƒ/.ˇ©.`. */
	$"00BA 202E FFF0 E198 0280 0000 00FF 5380"            /* .∫ .ˇ·ò.Ä...ˇSÄ */
	$"6600 00A8 7001 C0AE FFF0 4A80 56C0 4400"            /* f..®p.¿ÆˇJÄV¿D. */
	$"1600 1F03 4EB9 0000 CEF4 594F A924 205F"            /* ....Nπ..ŒÙYO©$ _ */
	$"2008 670E 4A03 670A 594F A924 205F 2F08"            /*  .g.J.g.YO©$ _/. */
	$"A91F A850 6074 4A2D F869 676E 554F 486E"            /* ©.®P`tJ-¯ignUOHn */
	$"FFEE 303C 021B A816 301F 3600 605C 554F"            /* ˇÓ0<..®.0.6.`\UO */
	$"2F2E FFF0 A86A 301F 6750 302D EFE2 906D"            /* /.ˇ®j0.gP0-Ô‚êm */
	$"EFDE 0440 0130 48C0 2200 E089 E089 E089"            /* Ôﬁ.@.0H¿".‡â‡â‡â */
	$"EE89 D280 E281 3D41 FFE8 302D EFE0 906D"            /* Óâ“Ä‚Å=AˇË0-Ô‡êm */
	$"EFDC 0440 009C 48C0 7203 4EB9 0000 056A"            /* Ô‹.@.úH¿r.Nπ...j */
	$"3D40 FFE6 A850 554F 2F2E FFE6 2F2E FFF0"            /* =@ˇÊ®PUO/.ˇÊ/.ˇ */
	$"7000 3F00 A9E9 301F 3600 7600 554F 2F2D"            /* p.?.©È0.6.v.UO/- */
	$"F29C 4EB9 0000 B3CA 301F 3800 3D7C 0001"            /* ÚúNπ..≥ 0.8.=|.. */
	$"FFFE 602E 554F 2F2D F288 2F2D F29C 3F2E"            /* ˇ˛`.UO/-Úà/-Úú?. */
	$"FFFE 4EB9 0000 D432 101F 670A 3F2E FFFE"            /* ˇ˛Nπ..‘2..g.?.ˇ˛ */
	$"4EBA EB1C 7601 0C6E 7FFF FFFE 670A 526E"            /* N∫Î.v..n.ˇˇ˛g.Rn */
	$"FFFE B86E FFFE 6CCC 4A03 670E 2F2D F288"            /* ˇ˛∏nˇ˛lÃJ.g./-Úà */
	$"2F2D F29C 4EB9 0000 D382 4CDF 0038 4E5E"            /* /-ÚúNπ..”ÇLﬂ.8N^ */
	$"4E75 8C48 414E 444C 4545 5645 4E54 5300"            /* NuåHANDLEEVENTS. */
	$"0000 4E56 FF00 4EB9 0000 D922 4EB9 0000"            /* ..NVˇ.Nπ..Ÿ"Nπ.. */
	$"9936 4EB9 0000 D7AE 422D F2A1 4EB9 0000"            /* ô6Nπ..◊ÆB-Ú°Nπ.. */
	$"CFFE 4EB9 0000 C07E 422D F261 422D F2A3"            /* œ˛Nπ..¿~B-ÚaB-Ú£ */
	$"486D F270 205F 20B8 020C 202D F270 0480"            /* HmÚp _ ∏.. -Úp.Ä */
	$"A1C4 4E00 2B40 F270 4A2D F869 6716 4878"            /* °ƒN.+@ÚpJ-¯ig.Hx */
	$"0000 4878 0000 4878 0000 487A AB8E 4EB9"            /* ..Hx..Hx..Hz´éNπ */
	$"0000 AC06 594F 3F3C 0080 A9C0 205F 2B48"            /* ..¨.YO?<.Ä©¿ _+H */
	$"F05A 4AAD F05A 56C0 4400 1F00 4EB9 0000"            /* ZJ≠ZV¿D...Nπ.. */
	$"ACEA 2F2D F05A A93C 4EB9 0000 75E0 4EB9"            /* ¨Í/-Z©<Nπ..u‡Nπ */
	$"0000 9C68 4EB9 0000 A2FA 4EB9 0000 BE30"            /* ..úhNπ..¢˙Nπ..æ0 */
	$"2F3C FFFF 0080 4EB9 0000 8440 2F2D FC3A"            /* /<ˇˇ.ÄNπ..Ñ@/-¸: */
	$"4227 4EB9 0000 C530 4EB9 0000 7572 594F"            /* B'Nπ..≈0Nπ..urYO */
	$"486D F058 4EB9 0000 C0BE 201F 3B40 F054"            /* HmXNπ..¿æ .;@T */
	$"4A6D F054 6600 00A8 594F 3F3C 0080 A949"            /* JmTf..®YO?<.Ä©I */
	$"205F 2F08 2F2D FC3E A94D A937 3B7C 0004"            /*  _/./-¸>©M©7;|.. */
	$"F058 554F 4EBA F694 101F 6700 0082 3B7C"            /* XUON∫ˆî..g..Ç;| */
	$"0005 F058 554F 4EBA F370 101F 6770 426D"            /* ..XUON∫Ûp..gpBm */
	$"F058 4EB9 0000 A140 605E 4EBA FC00 554F"            /* XNπ..°@`^N∫¸.UO */
	$"4EB9 0000 BD08 101F 6708 4EB9 0000 A170"            /* Nπ..Ω...g.Nπ..°p */
	$"6006 4EB9 0000 A140 4EB9 0000 BF86 4A2D"            /* `.Nπ..°@Nπ..øÜJ- */
	$"F2A1 6734 4A2D F261 662E 594F 4EBA ADE0"            /* Ú°g4J-Úaf.YON∫≠‡ */
	$"201F 4A80 6F22 554F 3F3C 00B4 4EB9 0000"            /*  .JÄo"UO?<.¥Nπ.. */
	$"82CA 301F 3B40 F056 0C6D 0001 F056 6708"            /* Ç 0.;@V.m..Vg. */
	$"4267 A938 422D F2A1 4A2D F2A1 679C 4A6D"            /* Bg©8B-Ú°J-Ú°gúJm */
	$"F058 6734 486D F986 486E FF00 3F3C 0096"            /* Xg4Hm˘ÜHnˇ.?<.ñ */
	$"3F2D F058 4EB9 0000 C746 584F 486E FF00"            /* ?-XNπ..«FXOHnˇ. */
	$"486D F986 486D F986 4EB9 0000 7640 3F3C"            /* Hm˘ÜHm˘ÜNπ..v@?< */
	$"0096 4EB9 0000 830A 4EBA C7EE 4EB9 0000"            /* .ñNπ..É.N∫«ÓNπ.. */
	$"C17A 4E5E 4E75 846D 6169 6E00 0000 4E56"            /* ¡zN^NuÑmain...NV */
	$"FDFA 48E7 1020 422E 0008 594F 3F3C 00E2"            /* ˝˙HÁ. B...YO?<.‚ */
	$"4878 0000 4878 FFFF A97C 205F 2448 200A"            /* Hx..Hxˇˇ©| _$H . */
	$"6700 0126 2F0A 2F3C 0003 0001 4EB9 0000"            /* g..&/./<....Nπ.. */
	$"AF6A 2F0A 3F3C 0005 486E FDFE 486D FC42"            /* Øj/.?<..Hn˝˛Hm¸B */
	$"4EB9 0000 C334 584F 486E FDFE 4EB9 0000"            /* Nπ..√4XOHn˝˛Nπ.. */
	$"AD44 2F0A 3F3C 0006 486E FDFE 486D FC56"            /* ≠D/.?<..Hn˝˛Hm¸V */
	$"4EB9 0000 C334 584F 486E FDFE 4EB9 0000"            /* Nπ..√4XOHn˝˛Nπ.. */
	$"AD44 2F0A 3F3C 0005 4EB9 0000 B328 2F0A"            /* ≠D/.?<..Nπ..≥(/. */
	$"A915 486E FDFA 3F3C FFFF 4EB9 0000 8A0E"            /* ©.Hn˝˙?<ˇˇNπ..ä. */
	$"2F2D F64A 486E FFFE 4EB9 0000 8DBC 162E"            /* /-ˆJHnˇ˛Nπ..çº.. */
	$"FFFF 554F 7000 1003 2F00 486D FC69 4878"            /* ˇˇUOp.../.Hm¸iHx */
	$"0001 4EB9 0000 DCD0 101F 67D4 7000 1003"            /* ..Nπ..‹–..g‘p... */
	$"5340 670A 5340 6772 5540 675E 606C 2F0A"            /* S@g.S@grU@g^`l/. */
	$"3F3C 0005 486E FEFE 4EB9 0000 ADB2 554F"            /* ?<..Hn˛˛Nπ..≠≤UO */
	$"486D FC42 486E FEFE 4EB9 0000 C388 301F"            /* Hm¸BHn˛˛Nπ..√à0. */
	$"3600 2F0A 3F3C 0006 486E FEFE 4EB9 0000"            /* 6./.?<..Hn˛˛Nπ.. */
	$"ADB2 554F 486D FC56 486E FEFE 4EB9 0000"            /* ≠≤UOHm¸VHn˛˛Nπ.. */
	$"C388 301F 3600 1D7C 0001 0008 1B7C 0001"            /* √à0.6..|.....|.. */
	$"F2A3 1B7C 0001 F2A2 6010 422D F2A2 1D7C"            /* Ú£.|..Ú¢`.B-Ú¢.| */
	$"0001 0008 1B7C 0001 F2A3 486E FDFA 4EB9"            /* .....|..Ú£Hn˝˙Nπ */
	$"0000 8B34 2F0A A982 4CDF 0408 4E5E 205F"            /* ..ã4/.©ÇLﬂ..N^ _ */
	$"4ED0 9443 4F4E 4649 4755 5245 4249 4C4C"            /* N–îCONFIGUREBILL */
	$"4144 4452 4553 5300 0000 4E56 FF00 48E7"            /* ADDRESS...NVˇ.HÁ */
	$"1030 266E 000C 246E 0008 4A2D F2A3 660A"            /* .0&n..$n..J-Ú£f. */
	$"554F 4EBA FE7A 101F 1600 102D F2A3 C02D"            /* UON∫˛z.....-Ú£¿- */
	$"F2A2 674C 486E FF00 486D FC42 4EB9 0000"            /* Ú¢gLHnˇ.Hm¸BNπ.. */
	$"C334 41EE FF00 2608 2043 7000 1010 5240"            /* √4AÓˇ.&. Cp...R@ */
	$"48C0 2043 224B A22E 486E FF00 486D FC56"            /* H¿ C"K¢.Hnˇ.Hm¸V */
	$"4EB9 0000 C334 41EE FF00 2608 2043 7000"            /* Nπ..√4AÓˇ.&. Cp. */
	$"1010 5240 48C0 2043 224A A22E 504F 602C"            /* ..R@H¿ C"J¢.PO`, */
	$"41ED FC6A 2608 2043 7000 1010 5240 48C0"            /* AÌ¸j&. Cp...R@H¿ */
	$"2043 224B A22E 41ED FC6A 2608 2043 7000"            /*  C"K¢.AÌ¸j&. Cp. */
	$"1010 5240 48C0 2043 224A A22E 1D6D F2A3"            /* ..R@H¿ C"J¢..mÚ£ */
	$"0010 4CDF 0C08 4E5E 205F 504F 4ED0 8E47"            /* ..Lﬂ..N^ _PON–éG */
	$"4554 4249 4C4C 4144 4452 4553 5300 0000"            /* ETBILLADDRESS... */
	$"4E56 FF00 2F2E 000A A873 486E FF00 3F3C"            /* NVˇ./...®sHnˇ.?< */
	$"03A0 3F2E 0008 4EB9 0000 E980 486E FF00"            /* .†?...Nπ..ÈÄHnˇ. */
	$"486E FF00 486D F2AA 486D F3BA 486D F2BA"            /* Hnˇ.HmÚ™HmÛ∫HmÚ∫ */
	$"4EB9 0000 CC7E 2F2E 000A 3F2E 0008 486E"            /* Nπ..Ã~/...?...Hn */
	$"FF00 4EB9 0000 B974 4E5E 205F 5C4F 4ED0"            /* ˇ.Nπ..πtN^ _\ON– */
	$"8B44 4953 504C 4159 4954 454D 0000 4E56"            /* ãDISPLAYITEM..NV */
	$"FEF0 2F03 554F 206E 0008 2F28 FFFA 7000"            /* ˛/.UO n../(ˇ˙p. */
	$"102E 0012 3F00 7000 102E 0010 3F00 7000"            /* ....?.p.....?.p. */
	$"102E 000E 3F00 4EB9 0000 B8E6 101F 675C"            /* ....?.Nπ..∏Ê..g\ */
	$"554F 486D FC6C 486E FEF0 3F3C 0320 3F2E"            /* UOHm¸lHn˛?<. ?. */
	$"000C 4EB9 0000 C746 584F 486E FEF0 4EB9"            /* ..Nπ..«FXOHn˛Nπ */
	$"0000 C21A 301F 3600 4A43 6730 486D FC6C"            /* ..¬.0.6.JCg0Hm¸l */
	$"486E FFF0 3043 2F08 4EB9 0000 D6F2 584F"            /* Hnˇ0C/.Nπ..÷ÚXO */
	$"486E FFF0 486D FC6C 486D FC6C 4EB9 0000"            /* HnˇHm¸lHm¸lNπ.. */
	$"7640 3F3C 00B9 4EB9 0000 830A 261F 4E5E"            /* v@?<.πNπ..É.&.N^ */
	$"205F 4FEF 000C 4ED0 8544 6F69 7430 0000"            /*  _OÔ..N–ÖDoit0.. */
	$"4E56 FEF6 2F03 486D F2A4 4EB9 0000 D7E0"            /* NV˛ˆ/.HmÚ§Nπ..◊‡ */
	$"594F 3F3C 0080 4878 0000 4878 FFFF A97C"            /* YO?<.ÄHx..Hxˇˇ©| */
	$"205F 2D48 FFFA 4AAE FFFA 6700 00EC 7601"            /*  _-Hˇ˙JÆˇ˙g..Ïv. */
	$"603C 554F 486E FEFA 3F3C 03A0 3F03 4EB9"            /* `<UOHn˛˙?<.†?.Nπ */
	$"0000 C746 584F 486E FEFA 486D FC6C 3F3C"            /* ..«FXOHn˛˙Hm¸l?< */
	$"0001 4EB9 0000 DD64 101F 6710 2F2E FFFA"            /* ..Nπ..›d..g./.ˇ˙ */
	$"3F03 487A FE9C 4EB9 0000 B138 5243 0C43"            /* ?.Hz˛úNπ..±8RC.C */
	$"0014 6FBE 2F2E FFFA 2F3C 0002 0001 4EB9"            /* ..oæ/.ˇ˙/<....Nπ */
	$"0000 AF6A 2F2E FFFA A915 486E FEF6 3F3C"            /* ..Øj/.ˇ˙©.Hn˛ˆ?< */
	$"FFFF 4EB9 0000 8A0E 2F2D F64E 486E FFFE"            /* ˇˇNπ..ä./-ˆNHnˇ˛ */
	$"4EB9 0000 8DBC 7000 102E FFFF 5740 0C40"            /* Nπ..çºp...ˇˇW@.@ */
	$"0006 624C 5540 6D08 6746 5340 6718 602A"            /* ..bLU@m.gFS@g.`* */
	$"1F3C 0003 1F3C 0004 4227 3F3C 0001 2F0E"            /* .<...<..B'?<../. */
	$"4EBA FE8C 602A 1F3C 0006 4227 4227 3F3C"            /* N∫˛å`*.<..B'B'?< */
	$"0003 2F0E 4EBA FE78 6016 1F3C 0007 1F3C"            /* ../.N∫˛x`..<...< */
	$"0008 1F3C 0009 3F3C 0002 2F0E 4EBA FE60"            /* ...<..?<../.N∫˛` */
	$"0C6E 0001 FFFE 6690 486E FEF6 4EB9 0000"            /* .n..ˇ˛fêHn˛ˆNπ.. */
	$"8B34 2F2E FFFA A982 261F 4E5E 4E75 8F44"            /* ã4/.ˇ˙©Ç&.N^NuèD */
	$"4F52 4547 4953 5445 5241 424F 5554 0000"            /* OREGISTERABOUT.. */
	$"4E56 FEFA 2F0A 206E 000C 43EE FEFA 703F"            /* NV˛˙/. n..CÓ˛˙p? */
	$"22D8 51C8 FFFC 486D FC6E 486E FEFA 486D"            /* "ÿQ»ˇ¸Hm¸nHn˛˙Hm */
	$"FC6E 486D FC6E A98B 594F 3F3C 00E1 4878"            /* ¸nHm¸n©ãYO?<.·Hx */
	$"0000 4878 FFFF A97C 205F 2448 200A 6700"            /* ..Hxˇˇ©| _$H .g. */
	$"008C 2F0A 2F3C 0003 0001 4EB9 0000 AF6A"            /* .å/./<....Nπ..Øj */
	$"2F0A 3F3C 0004 2F2E 0008 4EB9 0000 AD44"            /* /.?<../...Nπ..≠D */
	$"2F0A 4878 0004 3F3C 7FFF A97E 2F0A A915"            /* /.Hx..?<.ˇ©~/.©. */
	$"486E FFFA 3F3C FFFF 4EB9 0000 8A0E 2F2D"            /* Hnˇ˙?<ˇˇNπ..ä./- */
	$"F64A 486E FFFE 4EB9 0000 8DBC 554F 306E"            /* ˆJHnˇ˛Nπ..çºUO0n */
	$"FFFE 2F08 486D FC70 4878 0100 4EB9 0000"            /* ˇ˛/.Hm¸pHx..Nπ.. */
	$"DCD0 101F 67D8 0C6E 0001 FFFE 6610 2F0A"            /* ‹–..gÿ.n..ˇ˛f./. */
	$"3F3C 0004 2F2E 0008 4EB9 0000 ADB2 486E"            /* ?<../...Nπ..≠≤Hn */
	$"FFFA 4EB9 0000 8B34 2F0A A982 245F 4E5E"            /* ˇ˙Nπ..ã4/.©Ç$_N^ */
	$"205F 504F 4ED0 8C45 4449 5441 434F 4D4D"            /*  _PON–åEDITACOMM */
	$"454E 5400 0000 4E56 FEFA 48E7 1E00 206E"            /* ENT...NV˛˙HÁ.. n */
	$"000A 43EE FEFA 703F 22D8 51C8 FFFC 1D7C"            /* ..CÓ˛˙p?"ÿQ»ˇ¸.| */
	$"0001 000E 7A00 1A2E FEFA 0C45 0010 5EC0"            /* ....z...˛˙.E..^¿ */
	$"4400 0C45 000D 5DC1 4401 8200 6600 00DA"            /* D..E..]¡D.Ç.f..⁄ */
	$"7000 102E 0008 5940 672E 5340 673A 5340"            /* p.....Y@g.S@g:S@ */
	$"6702 6042 7000 102E FEFC 0C40 0037 56C0"            /* g.`Bp...˛¸.@.7V¿ */
	$"4400 7200 122E FEFB 0C41 0033 56C1 4401"            /* D.r...˛˚.A.3V¡D. */
	$"8200 6600 00A4 601E 7000 102E FEFB 0C40"            /* Ç.f..§`.p...˛˚.@ */
	$"0034 6600 0094 600E 7000 102E FEFB 0C40"            /* .4f..î`.p...˛˚.@ */
	$"0035 6600 0084 7800 3C05 7601 6060 41EE"            /* .5f..Ñx.<.v.``AÓ */
	$"FEFA 7000 1030 3000 0040 0100 3D40 FFFA"            /* ˛˙p..00..@..=@ˇ˙ */
	$"486E FFFA 486E FFFC 4EB9 0000 E89A 3005"            /* Hnˇ˙Hnˇ¸Nπ..Ëö0. */
	$"9043 0800 0000 6710 7002 222E FFFC 4EB9"            /* êC....g.p.".ˇ¸Nπ */
	$"0000 04DA 2D40 FFFC 700A B0AE FFFC 6E0C"            /* ...⁄-@ˇ¸p.∞Æˇ¸n. */
	$"202E FFFC 7209 9081 2D40 FFFC 3044 2008"            /*  .ˇ¸r.êÅ-@ˇ¸0D . */
	$"D0AE FFFC 3800 0C43 7FFF 6706 5243 B646"            /* –Æˇ¸8..C.ˇg.RC∂F */
	$"6F9C 3044 2008 720A 4EB9 0000 05E8 4A80"            /* oú0D .r.Nπ...ËJÄ */
	$"56C0 4400 1D40 000E 4CDF 0078 4E5E 205F"            /* V¿D..@..Lﬂ.xN^ _ */
	$"5C4F 4ED0 8943 4845 434B 4341 5244 0000"            /* \ON–âCHECKCARD.. */
	$"4E56 FCEA 48E7 1800 206E 0008 43EE FDEA"            /* NV¸ÍHÁ.. n..CÓ˝Í */
	$"703F 22D8 51C8 FFFC 7801 486E FEEA 205F"            /* p?"ÿQ»ˇ¸x.Hn˛Í _ */
	$"2038 020C A9C6 41EE FDEA 2608 2043 7000"            /*  8..©∆AÓ˝Í&. Cp. */
	$"1010 5240 48C0 2043 43EE FF00 A22E 7000"            /* ..R@H¿ CCÓˇ.¢.p. */
	$"102E FF00 5B40 6600 0180 554F 7000 102E"            /* ..ˇ.[@f..ÄUOp... */
	$"FF01 3F00 321F 0C41 0030 5CC0 6D08 0C41"            /* ˇ.?.2..A.0\¿m..A */
	$"0039 6F02 5FC0 4400 1E80 101F 6700 015A"            /* .9o._¿D..Ä..g..Z */
	$"554F 7000 102E FF02 3F00 321F 0C41 0030"            /* UOp...ˇ.?.2..A.0 */
	$"5CC0 6D08 0C41 0039 6F02 5FC0 4400 1E80"            /* \¿m..A.9o._¿D..Ä */
	$"101F 6700 0134 7000 102E FF03 0C40 002F"            /* ..g..4p...ˇ..@./ */
	$"6600 0126 554F 7000 102E FF04 3F00 321F"            /* f..&UOp...ˇ.?.2. */
	$"0C41 0030 5CC0 6D08 0C41 0039 6F02 5FC0"            /* .A.0\¿m..A.9o._¿ */
	$"4400 1E80 101F 6700 0100 554F 7000 102E"            /* D..Ä..g...UOp... */
	$"FF05 3F00 321F 0C41 0030 5CC0 6D08 0C41"            /* ˇ.?.2..A.0\¿m..A */
	$"0039 6F02 5FC0 4400 1E80 101F 6700 00DA"            /* .9o._¿D..Ä..g..⁄ */
	$"486E FCEA 486E FDEA 2F3C 0002 0004 4EB9"            /* Hn¸ÍHn˝Í/<....Nπ */
	$"0000 C992 41EE FCEA 2608 2043 7000 1010"            /* ..…íAÓ¸Í&. Cp... */
	$"5240 48C0 2043 43EE FF00 A22E 486E FF00"            /* R@H¿ CCÓˇ.¢.Hnˇ. */
	$"486E FEFC 4EB9 0000 E89A 486E FCEA 486E"            /* Hn˛¸Nπ..ËöHn¸ÍHn */
	$"FDEA 2F3C 0002 0001 4EB9 0000 C992 41EE"            /* ˝Í/<....Nπ..…íAÓ */
	$"FCEA 2608 2043 7000 1010 5240 48C0 2043"            /* ¸Í&. Cp...R@H¿ C */
	$"43EE FF00 A22E 486E FF00 486E FEF8 4EB9"            /* CÓˇ.¢.Hnˇ.Hn˛¯Nπ */
	$"0000 E89A 7032 B0AE FEFC 504F 6F10 203C"            /* ..Ëöp2∞Æ˛¸POo. < */
	$"0000 07D0 D0AE FEFC 2D40 FEFC 600E 203C"            /* ...––Æ˛¸-@˛¸`. < */
	$"0000 076C D0AE FEFC 2D40 FEFC 7001 B0AE"            /* ...l–Æ˛¸-@˛¸p.∞Æ */
	$"FEF8 6E34 700C B0AE FEF8 6D2C 306E FEEC"            /* ˛¯n4p.∞Æ˛¯m,0n˛Ï */
	$"B1EE FEF8 5FC0 4400 306E FEEA B1EE FEFC"            /* ±Ó˛¯_¿D.0n˛Í±Ó˛¸ */
	$"57C1 4401 C200 306E FEEA B1EE FEFC 5DC0"            /* W¡D.¬.0n˛Í±Ó˛¸]¿ */
	$"4400 8001 6702 7800 1D44 000C 4CDF 0018"            /* D.Ä.g.x..D..Lﬂ.. */
	$"4E5E 2E9F 4E75 8F43 4845 434B 4558 5049"            /* N^.üNuèCHECKEXPI */
	$"5241 5449 4F4E 0000 4E56 FFFE 554F A994"            /* RATION..NVˇ˛UO©î */
	$"301F 3D40 FFFE 554F 2F2D F466 2F2D F61E"            /* 0.=@ˇ˛UO/-Ùf/-ˆ. */
	$"4EB9 0000 A4D8 301F 3D40 0008 3F2E FFFE"            /* Nπ..§ÿ0.=@..?.ˇ˛ */
	$"A998 4E5E 4E75 8D50 5444 4F50 4147 4553"            /* ©òN^NuçPTDOPAGES */
	$"4554 5550 0000 4E56 0000 322E 0008 0C41"            /* ETUP..NV..2....A */
	$"000A 6D06 7007 D041 3200 7030 D041 3D40"            /* ..m.p.–A2.p0–A=@ */
	$"000A 4E5E 205F 544F 4ED0 864E 4942 424C"            /* ..N^ _TON–ÜNIBBL */
	$"4500 0000 4E56 FFEA 48E7 1020 206E 0008"            /* E...NVˇÍHÁ.  n.. */
	$"2D50 FFEA 2D68 0004 FFEE 76FF 45EE FFEA"            /* -PˇÍ-h..ˇÓvˇEÓˇÍ */
	$"701F D06A 0006 48C0 2200 E881 E089 E089"            /* p.–j..H¿".ËÅ‡â‡â */
	$"E089 E689 D280 EA81 7004 4EB9 0000 04DA"            /* ‡âÊâ“ÄÍÅp.Nπ...⁄ */
	$"3D40 FFF6 594F 7002 D06A 0004 C1EE FFF6"            /* =@ˇˆYOp.–j..¡Óˇˆ */
	$"2F00 201F A11E 2E88 205F 2D48 FFF2 554F"            /* /. .°..à _-HˇÚUO */
	$"3EB8 0220 301F 3600 2D6E FFEA FFF8 2D6E"            /* >∏. 0.6.-nˇÍˇ¯-n */
	$"FFEE FFFC 7002 D06E FFFC 3D40 FFFC 4A43"            /* ˇÓˇ¸p.–nˇ¸=@ˇ¸JC */
	$"660C 486D F3FA A86F 486E FFF2 A875 3D43"            /* f.HmÛ˙®oHnˇÚ®u=C */
	$"000C 4CDF 0408 4E5E 2E9F 4E75 8D4F 5045"            /* ..Lﬂ..N^.üNuçOPE */
	$"4E4F 4646 5343 5245 454E 0000 4E56 0000"            /* NOFFSCREEN..NV.. */
	$"2F2D F3FC 205F A01F 486D F3FA A87D 4E5E"            /* /-Û¸ _†.HmÛ˙®}N^ */
	$"4E75 8E43 4C4F 5345 4F46 4653 4352 4545"            /* NuéCLOSEOFFSCREE */
	$"4E00 0000 4E56 FFF4 48E7 1800 362E 000C"            /* N...NVˇÙHÁ..6... */
	$"41ED FD70 2808 2044 7000 1010 5240 48C0"            /* AÌ˝p(. Dp...R@H¿ */
	$"2044 43EE FFF4 A22E 554F 7000 3003 2F00"            /*  DCÓˇÙ¢.UOp.0./. */
	$"486D FD72 4878 0020 4EB9 0000 DCD0 101F"            /* Hm˝rHx. Nπ..‹–.. */
	$"6704 0443 0020 7000 3003 7200 1200 0041"            /* g..C. p.0.r....A */
	$"0100 3D41 FFF4 554F 486E FFF5 206E 0008"            /* ..=AˇÙUOHnˇı n.. */
	$"2F28 FFFC 4878 0001 201F 225F 205F A9EF"            /* /(ˇ¸Hx.. ."_ _©Ô */
	$"3E80 301F 3600 4CDF 0018 4E5E 205F 5C4F"            /* >Ä0.6.Lﬂ..N^ _\O */
	$"4ED0 8841 6464 4368 6172 3000 0000 4E56"            /* N–àAddChar0...NV */
	$"FFFC 48E7 1C20 246E 0008 594F 42A7 201F"            /* ˇ¸HÁ. $n..YOBß . */
	$"A122 2E88 205F 2D48 FFFC 594F 2F0A 4EB9"            /* °".à _-Hˇ¸YO/.Nπ */
	$"0000 E790 201F 5380 2A00 7800 6000 00C2"            /* ..Áê .SÄ*.x.`..¬ */
	$"594F 2F12 2F04 201F D09F 2E80 205F 1010"            /* YO/./. .–ü.Ä _.. */
	$"4880 0280 0000 00FF 3600 3003 0440 000D"            /* HÄ.Ä...ˇ6.0..@.. */
	$"673E 0C40 006D 6244 0440 0013 6D3E 6726"            /* g>.@.mbD.@..m>g& */
	$"0440 000B 6D36 671E 5540 6D30 5540 6D16"            /* .@..m6g.U@m0U@m. */
	$"672A 0440 000B 6D0E 5F40 6D20 0440 001A"            /* g*.@..m._@m .@.. */
	$"6D04 5D40 6D16 3F03 2F0E 4EBA FEE8 6056"            /* m.]@m.?./.N∫˛Ë`V */
	$"3F3C 002F 2F0E 4EBA FEDC 604A 3F3C 0025"            /* ?<.//.N∫˛‹`J?<.% */
	$"2F0E 4EBA FED0 554F 700F 3043 2208 E681"            /* /.N∫˛–UOp.0C".ÊÅ */
	$"E089 E089 E089 E889 D288 E881 C280 3F01"            /* ‡â‡â‡âËâ“àËÅ¬Ä?. */
	$"4EBA FDB4 301F 3F00 2F0E 4EBA FEA8 554F"            /* N∫˝¥0.?./.N∫˛®UO */
	$"3003 720F C081 3F00 4EBA FD9C 301F 3F00"            /* 0.r.¿Å?.N∫˝ú0.?. */
	$"2F0E 4EBA FE90 0C84 7FFF FFFF 6714 5284"            /* /.N∫˛ê.Ñ.ˇˇˇg.RÑ */
	$"B885 6F00 FF3C 600A 3F3C 0020 2F0E 4EBA"            /* ∏Öo.ˇ<`.?<. /.N∫ */
	$"FE74 594F 2F2E FFFC 4EB9 0000 E790 201F"            /* ˛tYO/.ˇ¸Nπ..Áê . */
	$"720B 4EB9 0000 05E8 4A80 66DC 2D6E FFFC"            /* r.Nπ...ËJÄf‹-nˇ¸ */
	$"000C 4CDF 0438 4E5E 2E9F 4E75 8E45 4E43"            /* ..Lﬂ.8N^.üNuéENC */
	$"4F44 4542 4152 434F 4445 5300 0000 4E56"            /* ODEBARCODES...NV */
	$"0000 594F 2F2E 0008 4EB9 0000 E790 201F"            /* ..YO/...Nπ..Áê . */
	$"720B 4EB9 0000 056A 3D40 000C 4E5E 2E9F"            /* r.Nπ...j=@..N^.ü */
	$"4E75 9343 4F55 4E54 4542 4152 434F 4445"            /* NuìCOUNTEBARCODE */
	$"4348 554E 4B53 0000 4E56 0000 554F 2F2E"            /* CHUNKS..NV..UO/. */
	$"0008 4EBA FFBA 301F 5240 48C0 2200 E089"            /* ..N∫ˇ∫0.R@H¿".‡â */
	$"E089 E089 EE89 D280 E281 3D41 000C 4E5E"            /* ‡â‡âÓâ“Ä‚Å=A..N^ */
	$"2E9F 4E75 9243 4F55 4E54 4542 4152 434F"            /* .üNuíCOUNTEBARCO */
	$"4445 4C49 4E45 5300 0000 4E56 FEFC 48E7"            /* DELINES...NV˛¸HÁ */
	$"1830 266E 000E 362E 000C 246E 0008 554F"            /* .0&n..6...$n..UO */
	$"2F0B 4EBA FF6A 301F 3800 0C43 0001 6D04"            /* /.N∫ˇj0.8..C..m. */
	$"B644 6F04 7000 6002 7001 1F00 4EB9 0000"            /* ∂Do.p.`.p...Nπ.. */
	$"ACEA 14BC 000B 594F 2F13 3003 5340 C1FC"            /* ¨Í.º..YO/.0.S@¡¸ */
	$"000B 48C0 2F00 201F D09F 2E80 205F 2F08"            /* ..H¿/. .–ü.Ä _/. */
	$"486A 0001 4878 000B 201F 225F 205F A02E"            /* Hj..Hx.. ."_ _†. */
	$"0C43 0001 6606 363C 0510 9644 486D FD92"            /* .C..f.6<..ñDHm˝í */
	$"2F0A 554F 3043 2008 7224 4EB9 0000 05E8"            /* /.UO0C .r$Nπ...Ë */
	$"3F00 4EBA FC32 301F 7200 3200 7000 1001"            /* ?.N∫¸20.r.2.p... */
	$"0040 0100 3D40 FEFE 486E FEFE 554F 3043"            /* .@..=@˛˛Hn˛˛UO0C */
	$"2008 7224 4EB9 0000 056A 3F00 4EBA FC08"            /*  .r$Nπ...j?.N∫¸. */
	$"301F 7200 3200 7000 1001 0040 0100 3D40"            /* 0.r.2.p....@..=@ */
	$"FEFC 486E FEFC 486D FD92 486E FF00 3F3C"            /* ˛¸Hn˛¸Hm˝íHnˇ.?< */
	$"0005 4EB9 0000 DE7E 41EE FF00 2808 2044"            /* ..Nπ..ﬁ~AÓˇ.(. D */
	$"7000 1010 5240 48C0 2044 224A A22E 4FEF"            /* p...R@H¿ D"J¢.OÔ */
	$"001A 4CDF 0C18 4E5E 205F 4FEF 000A 4ED0"            /* ..Lﬂ..N^ _OÔ..N– */
	$"8F47 4554 4542 4152 434F 4445 4C49 4E45"            /* èGETEBARCODELINE */
	$"0000 4E56 FEFE 48E7 1C00 362E 000A 3A2E"            /* ..NV˛˛HÁ..6...:. */
	$"0008 2F2E 0010 3F03 486E FEFE 4EBA FECC"            /* ../...?.Hn˛˛N∫˛Ã */
	$"306E 000E 3003 9045 0240 0001 7200 1200"            /* 0n..0.êE.@..r... */
	$"48C1 203C 0000 0100 4EB9 0000 04DA D088"            /* H¡ <....Nπ...⁄–à */
	$"3D40 FFFE 3003 9045 48C0 2200 E089 E089"            /* =@ˇ˛0.êEH¿".‡â‡â */
	$"E089 EE89 D280 E281 7021 4EB9 0000 04DA"            /* ‡âÓâ“Ä‚Åp!Nπ...⁄ */
	$"306E 000C D088 3800 486E FEFE 486E FFFE"            /* 0n..–à8.Hn˛˛Hnˇ˛ */
	$"3F04 1F3C 0001 4EB9 0000 9738 4CDF 0038"            /* ?..<..Nπ..ó8Lﬂ.8 */
	$"4E5E 205F 4FEF 000C 4ED0 9144 5241 5745"            /* N^ _OÔ..N–ëDRAWE */
	$"4241 5243 4F44 4543 4855 4E4B 0000 4E56"            /* BARCODECHUNK..NV */
	$"0000 48E7 1E20 246E 000C 3C2E 000A 3A2E"            /* ..HÁ. $n..<...:. */
	$"0008 554F 2F0A 4EBA FDB6 301F 3800 7601"            /* ..UO/.N∫˝∂0.8.v. */
	$"6018 2F0A 3F06 3F05 3F03 3F3C 0001 4EBA"            /* `./.?.?.?.?<..N∫ */
	$"FF32 0C43 7FFF 6706 5243 B644 6FE4 4CDF"            /* ˇ2.C.ˇg.RC∂Do‰Lﬂ */
	$"0478 4E5E 205F 504F 4ED0 8644 5241 5749"            /* .xN^ _PON–ÜDRAWI */
	$"5400 0000 4E56 0000 1F3C 0005 4EB9 0000"            /* T...NV...<..Nπ.. */
	$"D52A 4267 A888 A89E 2F2E 0008 2F3C 000A"            /* ’*Bg®à®û/.../<.. */
	$"0010 A8A9 4E5E 2E9F 4E75 8953 4554 5550"            /* ..®©N^.üNuâSETUP */
	$"504F 5254 0000 4E56 FFF4 2F0A 246E 000C"            /* PORT..NVˇÙ/.$n.. */
	$"206E 0010 2D50 FFF8 2D68 0004 FFFC 206E"            /*  n..-Pˇ¯-h..ˇ¸ n */
	$"0008 2050 2F28 0004 205F A029 206E 0008"            /* .. P/(.. _†) n.. */
	$"2050 2068 0004 2F10 594F 206E 0008 2050"            /*  P h../.YO n.. P */
	$"2F28 0004 4EB9 0000 E790 201F 2F00 486E"            /* /(..Nπ..Áê ./.Hn */
	$"FFF8 42A7 2F0A 486E FFF4 486E FFF6 4EB9"            /* ˇ¯Bß/.HnˇÙHnˇˆNπ */
	$"0000 9F50 206E 0008 2050 2F28 0004 205F"            /* ..üP n.. P/(.. _ */
	$"A02A 7014 D052 3480 245F 4E5E 205F 4FEF"            /* †*p.–R4Ä$_N^ _OÔ */
	$"000C 4ED0 9C50 7269 6E74 5465 7874 4F62"            /* ..N–úPrintTextOb */
	$"6A65 6374 5F44 7261 7744 6174 6154 6578"            /* ject_DrawDataTex */
	$"7400 0000 4E56 FFF8 48E7 1830 382E 0016"            /* t...NVˇ¯HÁ.08... */
	$"266E 000C 246E 0008 206E 0010 2D50 FFF8"            /* &n..$n.. n..-Pˇ¯ */
	$"2D68 0004 FFFC 36BC 0001 302E FFFC 906E"            /* -h..ˇ¸6º..0.ˇ¸ên */
	$"0014 48C0 7221 4EB9 0000 056A 7202 4EB9"            /* ..H¿r!Nπ...jr.Nπ */
	$"0000 04DA 3480 0C44 0001 6F32 302E FFFC"            /* ...⁄4Ä.D..o20.ˇ¸ */
	$"906E FFF8 48C0 7221 4EB9 0000 056A 7202"            /* ênˇ¯H¿r!Nπ...jr. */
	$"4EB9 0000 04DA 3600 3004 5540 C1C3 7201"            /* Nπ...⁄6.0.U@¡√r. */
	$"D252 D240 3681 3013 D043 5340 3480 4CDF"            /* “R“@6Å0.–CS@4ÄLﬂ */
	$"0C18 4E5E 205F 4FEF 0010 4ED0 8F47 4554"            /* ..N^ _OÔ..N–èGET */
	$"5041 4745 4241 5243 4F44 4553 0000 4E56"            /* PAGEBARCODES..NV */
	$"FFF2 48E7 1C00 206E 000C 2D50 FFF8 2D68"            /* ˇÚHÁ.. n..-Pˇ¯-h */
	$"0004 FFFC 7600 554F 486E FFF8 4EBA F956"            /* ..ˇ¸v.UOHnˇ¯N∫˘V */
	$"301F 6600 00AC 486E FFF8 4EBA FE68 486E"            /* 0.f..¨Hnˇ¯N∫˛hHn */
	$"FFF8 486E FFF4 2F2E 0008 4878 0007 2F2E"            /* ˇ¯HnˇÙ/...Hx../. */
	$"0008 4EB9 0000 E35A 504F 2050 4E90 206E"            /* ..Nπ..„ZPO PNê n */
	$"0008 2050 316E FFF4 000C 554F 206E 0008"            /* .. P1nˇÙ..UO n.. */
	$"2050 2F28 0008 4EBA FBA6 301F 3A00 3F3C"            /*  P/(..N∫˚¶0.:.?< */
	$"0001 206E 0008 2050 3F28 000C 486E FFF8"            /* .. n.. P?(..Hnˇ¯ */
	$"486E FFF2 486E FFF6 4EBA FEDA BA6E FFF6"            /* HnˇÚHnˇˆN∫˛⁄∫nˇˆ */
	$"6E04 7601 6036 302E FFFC 906E FFF8 48C0"            /* n.v.`60.ˇ¸ênˇ¯H¿ */
	$"7221 4EB9 0000 056A 7202 4EB9 0000 04DA"            /* r!Nπ...jr.Nπ...⁄ */
	$"3800 3005 906E FFF6 D044 5340 48C0 3044"            /* 8.0.ênˇˆ–DS@H¿0D */
	$"2208 4EB9 0000 056A 5280 3600 4EBA F94E"            /* ".Nπ...jRÄ6.N∫˘N */
	$"3D43 0010 4CDF 0038 4E5E 205F 504F 4ED0"            /* =C..Lﬂ.8N^ _PON– */
	$"9A50 7269 6E74 5465 7874 4F62 6A65 6374"            /* öPrintTextObject */
	$"5F43 6F75 6E74 5061 6765 7300 0000 4E56"            /* _CountPages...NV */
	$"FFF2 48E7 1C00 3A2E 0010 182E 000E 162E"            /* ˇÚHÁ..:......... */
	$"000C 206E 0016 2D50 FFF8 2D68 0004 FFFC"            /* .. n..-Pˇ¯-h..ˇ¸ */
	$"1804 1603 486E FFF8 4EBA FD6A 0C45 0001"            /* ....Hnˇ¯N∫˝j.E.. */
	$"662E 486E FFF8 486E FFF6 2F2E 0008 4878"            /* f.Hnˇ¯Hnˇˆ/...Hx */
	$"0007 2F2E 0008 4EB9 0000 E35A 504F 2050"            /* ../...Nπ..„ZPO P */
	$"4E90 206E 0008 2050 316E FFF6 000C 606E"            /* Nê n.. P1nˇˆ..`n */
	$"206E 0008 2050 0C68 8000 000C 665A 554F"            /*  n.. P.hÄ...fZUO */
	$"486E FFF8 4EBA F7FE 301F 6640 486E FFF8"            /* Hnˇ¯N∫˜˛0.f@Hnˇ¯ */
	$"4EBA FD12 486E FFF8 486E FFF6 2F2E 0008"            /* N∫˝.Hnˇ¯Hnˇˆ/... */
	$"4878 0007 2F2E 0008 4EB9 0000 E35A 504F"            /* Hx../...Nπ..„ZPO */
	$"2050 4E90 206E 0008 2050 316E FFF6 000C"            /*  PNê n.. P1nˇˆ.. */
	$"4EBA F86A 2F2E 0012 A873 600C 206E 0008"            /* N∫¯j/...®s`. n.. */
	$"2050 316E FFF8 000C 3D6E FFF8 FFF6 3F05"            /*  P1nˇ¯..=nˇ¯ˇˆ?. */
	$"206E 0008 2050 3F28 000C 486E FFF8 486E"            /*  n.. P?(..Hnˇ¯Hn */
	$"FFF4 486E FFF2 4EBA FD7C 554F 206E 0008"            /* ˇÙHnˇÚN∫˝|UO n.. */
	$"2050 2F28 0008 4EBA FA16 301F 3600 B66E"            /*  P/(..N∫˙.0.6.∂n */
	$"FFF2 6C04 3D43 FFF2 3A2E FFF4 382E FFF2"            /* ˇÚl.=CˇÚ:.ˇÙ8.ˇÚ */
	$"3605 6024 206E 0008 2050 2F28 0008 3F2E"            /* 6.`$ n.. P/(..?. */
	$"FFFA 3F2E FFF6 3F03 3F2E FFF4 4EBA FB74"            /* ˇ˙?.ˇˆ?.?.ˇÙN∫˚t */
	$"0C43 7FFF 6706 5243 B644 6FD8 426E 001A"            /* .C.ˇg.RC∂DoÿBn.. */
	$"4CDF 0038 4E5E 205F 4FEF 0012 4ED0 9850"            /* Lﬂ.8N^ _OÔ..N–òP */
	$"7269 6E74 5465 7874 4F62 6A65 6374 5F44"            /* rintTextObject_D */
	$"7261 7750 6167 6500 0000 4E56 FFF0 48E7"            /* rawPage...NVˇHÁ */
	$"0030 97CB 594F 2F2E 0008 4EBA F852 205F"            /* .0óÀYO/...N∫¯R _ */
	$"2448 486E FFF8 42A7 3F3C 01F0 554F 2F0A"            /* $HHnˇ¯Bß?<.UO/. */
	$"4EBA F9B6 301F 48C0 7221 4EB9 0000 04DA"            /* N∫˘∂0.H¿r!Nπ...⁄ */
	$"3F00 A8A7 554F 486E FFF8 4EBA F6C8 301F"            /* ?.®ßUOHnˇ¯N∫ˆ»0. */
	$"6632 594F 486E FFF8 A8F3 205F 2648 486E"            /* f2YOHnˇ¯®Û _&HHn */
	$"FFF0 2F3C 8AD0 8AD0 2F3C 7530 7530 A8A7"            /* ˇ/<ä–ä–/<u0u0®ß */
	$"486E FFF0 A87B 2F0A 42A7 4EBA FB62 A8F4"            /* Hnˇ®{/.BßN∫˚b®Ù */
	$"4EBA F73A 2F0A 205F A023 2D4B 000C 4CDF"            /* N∫˜:/. _†#-K..Lﬂ */
	$"0C00 4E5E 2E9F 4E75 9147 4554 4241 5243"            /* ..N^.üNuëGETBARC */
	$"4F44 4550 4943 5455 5245 0000 4E56 FFFE"            /* ODEPICTURE..NVˇ˛ */
	$"554F A994 301F 3D40 FFFE 206D F466 2050"            /* UO©î0.=@ˇ˛ mÙf P */
	$"216E 000C 0004 594F 2F2E 0008 4EBA F7A0"            /* !n....YO/...N∫˜† */
	$"205F 226D F466 2251 2348 0008 206D F466"            /*  _"mÙf"Q#H.. mÙf */
	$"2050 317C 8000 000C 554F 2F2D F466 2F2D"            /*  P1|Ä...UO/-Ùf/- */
	$"F61E 4EB9 0000 A53A 301F 3D40 0010 206D"            /* ˆ.Nπ..•:0.=@.. m */
	$"F466 2050 2F28 0008 205F A023 3F2E FFFE"            /* Ùf P/(.. _†#?.ˇ˛ */
	$"A998 4E5E 205F 504F 4ED0 8B50 5249 4E54"            /* ©òN^ _PON–ãPRINT */
	$"4841 4E44 4C45 0000 4E56 0000 206E 0008"            /* HANDLE..NV.. n.. */
	$"226E 0008 3290 486D F466 4878 000E 486D"            /* "n..2êHmÙfHx..Hm */
	$"FD94 4EB9 0000 E3DC 42AE 000C 4E5E 2E9F"            /* ˝îNπ..„‹BÆ..N^.ü */
	$"4E75 8D49 4E49 5450 5249 4E54 5445 5854"            /* NuçINITPRINTTEXT */
	$"0000 4E56 0000 4EB9 0000 A7FC 4EB9 0000"            /* ..NV..Nπ..ß¸Nπ.. */
	$"BE30 487A FFB4 4878 0000 42A7 4878 0000"            /* æ0Hzˇ¥Hx..BßHx.. */
	$"4EB9 0000 BE5E 4E5E 4E75 9053 5441 5254"            /* Nπ..æ^N^NuêSTART */
	$"5550 5052 494E 5454 4558 5400 0000 4E56"            /* UPPRINTTEXT...NV */
	$"0000 594F 487A 0074 2E9F 205F 2B48 F46A"            /* ..YOHz.t.ü _+HÙj */
	$"4EBA 004E 42AE 000C 4E5E 2E9F 4E75 8E49"            /* N∫.NBÆ..N^.üNuéI */
	$"4E49 5450 5245 5345 5256 4541 3500 0000"            /* NITPRESERVEA5... */
	$"4E56 0000 487A FFC8 4878 0000 42A7 4878"            /* NV..Hzˇ»Hx..BßHx */
	$"0000 4EB9 0000 BE5E 4E5E 4E75 9153 5441"            /* ..Nπ..æ^N^NuëSTA */
	$"5254 5550 5052 4553 4552 5645 4135 0000"            /* RTUPPRESERVEA5.. */
	$"41FA 002A 208D 4E75 2F4D 0004 2A7A 001E"            /* A˙.* çNu/M..*z.. */
	$"4E75 2A6F 0004 2E9F 4E75 2F0D 2A7A 000E"            /* Nu*o...üNu/.*z.. */
	$"2F08 2068 FFFC 4E90 2A5F 4E75 0000 0000"            /* /. hˇ¸Nê*_Nu.... */
	$"4E56 FC00 206E 0014 43EE FC00 703F 22D8"            /* NV¸. n..CÓ¸.p?"ÿ */
	$"51C8 FFFC 206E 0010 43EE FD00 703F 22D8"            /* Q»ˇ¸ n..CÓ˝.p?"ÿ */
	$"51C8 FFFC 206E 000C 43EE FE00 703F 22D8"            /* Q»ˇ¸ n..CÓ˛.p?"ÿ */
	$"51C8 FFFC 206E 0008 43EE FF00 703F 22D8"            /* Q»ˇ¸ n..CÓˇ.p?"ÿ */
	$"51C8 FFFC 4AAD F48A 660E 594F 4EB9 0000"            /* Q»ˇ¸J≠Ùäf.YONπ.. */
	$"C700 205F 2B48 F48A 4AAD F48A 6748 2F2D"            /* «. _+HÙäJ≠ÙägH/- */
	$"F48A 3F3C 0001 486E FC00 4EB9 0000 C8B2"            /* Ùä?<..Hn¸.Nπ..»≤ */
	$"2F2D F48A 3F3C 0002 486E FD00 4EB9 0000"            /* /-Ùä?<..Hn˝.Nπ.. */
	$"C8B2 2F2D F48A 3F3C 0003 486E FE00 4EB9"            /* »≤/-Ùä?<..Hn˛.Nπ */
	$"0000 C8B2 2F2D F48A 3F3C 0004 486E FF00"            /* ..»≤/-Ùä?<..Hnˇ. */
	$"4EB9 0000 C8B2 4E5E 205F 4FEF 0010 4ED0"            /* Nπ..»≤N^ _OÔ..N– */
	$"8F43 4C45 5645 5250 4152 414D 5445 5854"            /* èCLEVERPARAMTEXT */
	$"0000 4E56 FE00 48E7 1830 246E 000C 266E"            /* ..NV˛.HÁ.0$n..&n */
	$"0008 7600 6000 00D6 2052 2068 003E 2250"            /* ..v.`..÷ R h.>"P */
	$"7000 1031 3800 0C40 005E 6600 00BA 554F"            /* p..18..@.^f..∫UO */
	$"7001 D083 2052 2068 003E 2250 7200 1231"            /* p.–É R h.>"Pr..1 */
	$"0800 2F01 486D FDC8 4878 0020 4EB9 0000"            /* ../.Hm˝»Hx. Nπ.. */
	$"DCD0 101F 6700 0090 200B 661A 41ED FDE8"            /* ‹–..g..ê .f.AÌ˝Ë */
	$"2808 2044 7000 1010 5240 48C0 2044 43EE"            /* (. Dp...R@H¿ DCÓ */
	$"FF00 A22E 6040 486E FE00 2F0B 7001 D083"            /* ˇ.¢.`@Hn˛./.p.–É */
	$"2052 2068 003E 2250 7200 1231 0800 0441"            /*  R h.>"Pr..1...A */
	$"0030 5241 3F01 4EB9 0000 C812 41EE FE00"            /* .0RA?.Nπ..».AÓ˛. */
	$"2808 2044 7000 1010 5240 48C0 2044 43EE"            /* (. Dp...R@H¿ DCÓ */
	$"FF00 A22E 584F 2F03 7002 D083 2F00 2F0A"            /* ˇ.¢.XO/.p.–É/./. */
	$"A9D1 2F0A A9D7 486E FF01 7000 102E FF00"            /* ©—/.©◊Hnˇ.p...ˇ. */
	$"48C0 2F00 2F0A A9DE 7000 102E FF00 48C0"            /* H¿/./.©ﬁp...ˇ.H¿ */
	$"D083 2600 6006 7001 D083 2600 2052 3028"            /* –É&.`.p.–É&. R0( */
	$"003C 5340 48C0 B680 6D00 FF1E 4CDF 0C18"            /* .<S@H¿∂Äm.ˇ.Lﬂ.. */
	$"4E5E 205F 504F 4ED0 9149 4E53 4552 5450"            /* N^ _PON–ëINSERTP */
	$"4152 414D 4154 4552 4553 0000 4E56 0000"            /* ARAMATERES..NV.. */
	$"48E7 1830 246E 000C 266E 0008 41ED FDE8"            /* HÁ.0$n..&n..AÌ˝Ë */
	$"2608 2043 7000 1010 5240 48C0 2043 224B"            /* &. Cp...R@H¿ C"K */
	$"A22E 7600 7800 601C 2052 7000 1030 3000"            /* ¢.v.x.`. Rp..00. */
	$"0C40 000D 57C0 4400 1800 4A04 6606 7001"            /* .@..W¿D...J.f.p. */
	$"D043 3600 594F 2F0A 4EB9 0000 E790 201F"            /* –C6.YO/.Nπ..Áê . */
	$"3043 B1C0 6C0A 0C43 00FF 6C04 4A04 67C8"            /* 0C±¿l..C.ˇl.J.g» */
	$"4A04 6718 2F12 486B 0001 3043 2F08 201F"            /* J.g./.Hk..0C/. . */
	$"225F 205F A22E 7000 3003 1680 4CDF 0C18"            /* "_ _¢.p.0..ÄLﬂ.. */
	$"4E5E 205F 504F 4ED0 8C47 4554 4649 5253"            /* N^ _PON–åGETFIRS */
	$"544C 494E 4500 0000 4E56 FF00 2F0A 246E"            /* TLINE...NVˇ./.$n */
	$"0008 2052 2F28 003E 486E FF00 4EBA FF4E"            /* .. R/(.>Hnˇ.N∫ˇN */
	$"42A7 7000 102E FF00 5240 48C0 2F00 2F0A"            /* Bßp...ˇ.R@H¿/./. */
	$"A9D1 2F0A A9D7 245F 4E5E 2E9F 4E75 8F52"            /* ©—/.©◊$_N^.üNuèR */
	$"454D 4F56 4546 4952 5354 4C49 4E45 0000"            /* EMOVEFIRSTLINE.. */
	$"4E56 FFFE 554F 486E 000C 206E 0008 2F28"            /* NVˇ˛UOHn.. n../( */
	$"FCFC 4878 0002 201F 225F 205F A9EF 3E80"            /* ¸¸Hx.. ."_ _©Ô>Ä */
	$"301F 3D40 FFFE 4E5E 205F 5C4F 4ED0 8B41"            /* 0.=@ˇ˛N^ _\ON–ãA */
	$"7070 656E 6457 6F72 6430 0000 4E56 FFFE"            /* ppendWord0..NVˇ˛ */
	$"302E 000C 0280 0000 00FF 3D40 000C 7000"            /* 0....Ä...ˇ=@..p. */
	$"302E 000C 7200 322E 000C E189 8280 3D41"            /* 0...r.2...·âÇÄ=A */
	$"000C 554F 486E 000C 206E 0008 2F28 FCFC"            /* ..UOHn.. n../(¸¸ */
	$"4878 0001 201F 225F 205F A9EF 3E80 301F"            /* Hx.. ."_ _©Ô>Ä0. */
	$"3D40 FFFE 4E5E 205F 5C4F 4ED0 8B41 7070"            /* =@ˇ˛N^ _\ON–ãApp */
	$"656E 6442 7974 6531 0000 4E56 FFFE 554F"            /* endByte1..NVˇ˛UO */
	$"486E 000C 206E 0008 2F28 FCFC 4878 0004"            /* Hn.. n../(¸¸Hx.. */
	$"201F 225F 205F A9EF 3E80 301F 3D40 FFFE"            /*  ."_ _©Ô>Ä0.=@ˇ˛ */
	$"4E5E 205F 504F 4ED0 8B41 7070 656E 644C"            /* N^ _PON–ãAppendL */
	$"6F6E 6732 0000 4E56 0000 42A7 2F2E 0008"            /* ong2..NV..Bß/... */
	$"4EBA FFB8 3F2E 0016 2F2E 0008 4EBA FF12"            /* N∫ˇ∏?.../...N∫ˇ. */
	$"3F2E 0014 2F2E 0008 4EBA FF06 3F2E 0012"            /* ?.../...N∫ˇ.?... */
	$"2F2E 0008 4EBA FEFA 3F2E 0010 2F2E 0008"            /* /...N∫˛˙?.../... */
	$"4EBA FEEE 3F2E 000E 2F2E 0008 4EBA FF1E"            /* N∫˛Ó?.../...N∫ˇ. */
	$"3F2E 000C 2F2E 0008 4EBA FF12 4E5E 205F"            /* ?.../...N∫ˇ.N^ _ */
	$"4FEF 0010 4ED0 8B41 7070 656E 6449 7465"            /* OÔ..N–ãAppendIte */
	$"6D33 0000 4E56 FC8E 48E7 1F38 286E 0010"            /* m3..NV¸éHÁ.8(n.. */
	$"266E 000C 246E 0008 206E 0014 43EE FE00"            /* &n..$n.. n..CÓ˛. */
	$"703F 22D8 51C8 FFFC 486E FC8E A86F 1F3C"            /* p?"ÿQ»ˇ¸Hn¸é®o.< */
	$"0009 4EB9 0000 D52A 41ED FDE8 2808 2044"            /* ..Nπ..’*AÌ˝Ë(. D */
	$"7000 1010 5240 48C0 2044 224A A22E 4253"            /* p...R@H¿ D"J¢.BS */
	$"7A00 1A2E FE00 7601 6046 41EE FE00 7000"            /* z...˛.v.`FAÓ˛.p. */
	$"1030 3000 0C40 003A 662E 7001 D053 3680"            /* .00..@.:f.p.–S6Ä */
	$"486D FDEA 2F0A 486E FD00 3F3C 0002 4EB9"            /* Hm˝Í/.Hn˝.?<..Nπ */
	$"0000 DE7E 41EE FD00 2808 2044 224A 7010"            /* ..ﬁ~AÓ˝.(. D"Jp. */
	$"4EBA 658C 4FEF 000E 0C43 7FFF 6706 5243"            /* N∫eåOÔ...C.ˇg.RC */
	$"B645 6FB6 0C53 0001 6D12 7000 102A 0001"            /* ∂Eo∂.S..m.p..*.. */
	$"0C40 0020 6606 157C 000D 0001 0C53 0002"            /* .@. f..|.....S.. */
	$"6D12 7000 102A 0002 0C40 0020 6606 157C"            /* m.p..*...@. f..| */
	$"002E 0002 7000 102E FE01 0440 0043 6710"            /* ....p...˛..@.Cg. */
	$"0440 000B 6710 5B40 6702 6010 4254 6014"            /* .@..g.[@g.`.BT`. */
	$"38BC 0002 600E 38BC 0001 6008 4227 4EB9"            /* 8º..`.8º..`.B'Nπ */
	$"0000 ACEA 594F 42A7 201F A122 2E88 205F"            /* ..¨ÍYOBß .°".à _ */
	$"2D48 FCFC 7003 D053 5340 3F00 2F0E 4EBA"            /* -H¸¸p.–SS@?./.N∫ */
	$"FDA0 486E FE00 3F3C 003A 486E FF00 486E"            /* ˝†Hn˛.?<.:Hnˇ.Hn */
	$"FE00 4EB9 0000 CD24 7E4A 3A3C 01A6 3D53"            /* ˛.Nπ..Õ$~J:<.¶=S */
	$"FCFA 7601 6000 0150 486E FE00 3F3C 003A"            /* ¸˙v.`..PHn˛.?<.: */
	$"486E FF00 486E FE00 4EB9 0000 CD24 7C00"            /* Hnˇ.Hn˛.Nπ..Õ$|. */
	$"7000 102E FF01 0C40 002D 6612 7C01 486E"            /* p...ˇ..@.-f.|.Hn */
	$"FF00 2F3C 0001 0001 4EB9 0000 DEF4 7000"            /* ˇ./<....Nπ..ﬁÙp. */
	$"102E FF00 0C40 0002 6F66 7000 102E FF00"            /* ..ˇ..@..ofp...ˇ. */
	$"5340 41EE FF00 7200 1230 0000 0C41 002F"            /* S@AÓˇ.r..0...A./ */
	$"664E 554F 7000 102E FF00 41EE FF00 7200"            /* fNUOp...ˇ.AÓˇ.r. */
	$"1230 0000 3F01 301F 0C00 0061 6500 000E"            /* .0..?.0....ae... */
	$"0C00 007B 6400 0006 0400 0020 3E80 301F"            /* ...{d...... >Ä0. */
	$"7200 3200 1581 3000 486E FF00 7000 102E"            /* r.2..Å0.Hnˇ.p... */
	$"FF00 5340 3F00 3F3C 0002 4EB9 0000 DEF4"            /* ˇ.S@?.?<..Nπ..ﬁÙ */
	$"594F 554F 486E FF00 A88C 301F 0640 0016"            /* YOUOHnˇ.®å0..@.. */
	$"48C0 2F00 4878 003A 201F 2E9F B097 6F02"            /* H¿/.Hx.: ..ü∞óo. */
	$"2E80 201F 3800 4A06 670A 3C07 DE44 0647"            /* .Ä .8.J.g.<.ﬁD.G */
	$"000A 6018 3C05 9C44 0C43 0001 6608 9A44"            /* ..`.<.úD.C..f.öD */
	$"0445 000E 6006 9A44 0445 000A 4267 3F06"            /* .E..`.öD.E..Bg?. */
	$"3F3C 0014 3006 D044 3F00 3F3C 0004 7000"            /* ?<..0.–D?.?<..p. */
	$"102E FF00 3F00 2F0E 4EBA FD3C 554F 486E"            /* ..ˇ.?./.N∫˝<UOHn */
	$"FF01 2F2E FCFC 7000 102E FF00 48C0 2F00"            /* ˇ./.¸¸p...ˇ.H¿/. */
	$"201F 225F 205F A9EF 3E80 301F 3800 082E"            /*  ."_ _©Ô>Ä0.8... */
	$"0000 FF00 6708 4267 2F0E 4EBA FC70 0C43"            /* ..ˇ.g.Bg/.N∫¸p.C */
	$"7FFF 670A 5243 B66E FCFA 6F00 FEAC 42A7"            /* .ˇg.RC∂n¸˙o.˛¨Bß */
	$"42A7 4878 0080 2F0E 4EBA FCEC 2F3C 0014"            /* BßHx.Ä/.N∫¸Ï/<.. */
	$"000A 2F3C 0034 002A 2F3C 0002 00A0 2F0E"            /* ../<.4.*.<...†/. */
	$"4EBA FCD4 3F14 2F0E 4EBA FBF6 2F3C 004A"            /* N∫¸‘?./.N∫˚ˆ/<.J */
	$"0007 2F3C 01A6 03EF 4878 0080 2F0E 4EBA"            /* ../<.¶.ÔHx.Ä/.N∫ */
	$"FCB6 486E FC8E A87D 2D6E FCFC 0018 4CDF"            /* ¸∂Hn¸é®}-n¸¸..Lﬂ */
	$"1CF8 4E5E 205F 4FEF 0010 4ED0 874E 4557"            /* .¯N^ _OÔ..N–áNEW */
	$"4449 544C 0000 4E56 FFF8 2F2E 000A 3F2E"            /* DITL..NVˇ¯/...?. */
	$"0008 486E FFF8 4EB9 0000 B062 486E FFF8"            /* ..Hnˇ¯Nπ..∞bHnˇ¯ */
	$"2F2D F47E A9D3 4E5E 205F 5C4F 4ED0 8B44"            /* /-Ù~©”N^ _\ON–ãD */
	$"5241 574F 5552 5445 5854 0000 4E56 0000"            /* RAWOURTEXT..NV.. */
	$"48E7 1C00 3A2E 000C 554F 3F05 301F 0C00"            /* HÁ..:...UO?.0... */
	$"0061 6500 000E 0C00 007B 6400 0006 0400"            /* .ae......{d..... */
	$"0020 3E80 301F 3A00 7601 7800 604A 41ED"            /* . >Ä0.:.v.x.`JAÌ */
	$"F46E 7000 1030 3000 B045 6602 7801 4A04"            /* Ùnp..00.∞Ef.x.J. */
	$"6606 7001 D043 3600 4A04 672C 206E 0008"            /* f.p.–C6.J.g, n.. */
	$"2068 0008 3083 206E 0008 2F28 0010 206E"            /*  h..0É n../(.. n */
	$"0008 2068 0008 3F10 4EB9 0000 AFC2 206E"            /* .. h..?.Nπ..Ø¬ n */
	$"0008 117C 0001 FFFF 7000 102D F46E B640"            /* ...|..ˇˇp..-Ùn∂@ */
	$"6E04 4A04 67A8 4CDF 0038 4E5E 205F 5C4F"            /* n.J.g®Lﬂ.8N^ _\O */
	$"4ED0 8A44 6F43 6F6D 6D61 6E64 3400 0000"            /* N–äDoCommand4... */
	$"4E56 FFFE 48E7 1020 246E 000C 422E FFFF"            /* NVˇ˛HÁ. $n..B.ˇˇ */
	$"0C52 0005 57C0 4400 0C52 0003 57C1 4401"            /* .R..W¿D..R..W¡D. */
	$"8200 6776 262A 0002 0283 0000 00FF 0C43"            /* Ç.gv&*...É...ˇ.C */
	$"0003 57C0 4400 0C43 000D 57C1 4401 8200"            /* ..W¿D..C..W¡D.Ç. */
	$"670C 3F3C 000D 2F0E 4EBA FF12 604C 0C43"            /* g.?<../.N∫ˇ.`L.C */
	$"001B 57C0 4400 1D40 FFFE 302A 000E 0280"            /* ..W¿D..@ˇ˛0*...Ä */
	$"0000 0100 4A80 56C0 4400 0C43 002E 57C1"            /* ....JÄV¿D..C..W¡ */
	$"4401 C200 822E FFFE 670C 3F3C 002E 2F0E"            /* D.¬.Ç.ˇ˛g.?<../. */
	$"4EBA FEDA 6014 302A 000E 0280 0000 0100"            /* N∫˛⁄`.0*...Ä.... */
	$"6708 3F03 2F0E 4EBA FEC4 1D6E FFFF 0014"            /* g.?./.N∫˛ƒ.nˇˇ.. */
	$"4CDF 0408 4E5E 205F 4FEF 000C 4ED0 8E4F"            /* Lﬂ..N^ _OÔ..N–éO */
	$"5552 4D4F 4441 4C46 494C 5445 5200 0000"            /* URMODALFILTER... */
	$"4E56 FDD0 48E7 1F38 3A2E 000E 182D F86F"            /* NV˝–HÁ.8:....-¯o */
	$"486E FDDC A874 594F 487A FE4C 2E9F 205F"            /* Hn˝‹®tYOHz˛L.ü _ */
	$"2E08 594F 487A FF1A 2E9F 205F 2648 594F"            /* ..YOHzˇ..ü _&HYO */
	$"2F2D FDEC 3F05 A9A0 205F 2848 B8FC 0000"            /* /-˝Ï?.©† _(H∏¸.. */
	$"56C0 4400 1F00 4EB9 0000 ACEA 594F 2F2D"            /* V¿D...Nπ..¨ÍYO/- */
	$"FDF0 3F05 A9A0 205F 2608 2F0C 486E FEF0"            /* ˝?.©† _&./.Hn˛ */
	$"4EBA F8DA 486E FEF0 3F3C 0009 486E FEF0"            /* N∫¯⁄Hn˛?<..Hn˛ */
	$"486E FDE8 4EB9 0000 CD24 594F 486E FEF0"            /* Hn˝ËNπ..Õ$YOHn˛ */
	$"486E FDD0 486E FFF4 486D F46E 4EBA FAD6"            /* Hn˝–HnˇÙHmÙnN∫˙÷ */
	$"205F 2C08 486E FFF8 2F3C 0064 0064 2F3C"            /*  _,.Hnˇ¯/<.d.d/< */
	$"0066 0066 A8A7 594F 1F04 4878 0005 4878"            /* .f.f®ßYO..Hx..Hx */
	$"0001 201F 221F 4A1F 6602 2200 2E81 201F"            /* .. .".J.f."..Å . */
	$"3A00 4A2D F864 6724 594F 4878 0000 486E"            /* :.J-¯dg$YOHx..Hn */
	$"FFF8 486E FDE8 4227 3F05 4878 FFFF 4227"            /* ˇ¯Hn˝ËB'?.HxˇˇB' */
	$"42A7 2F06 AA4B 205F 2448 6022 594F 4878"            /* Bß/.™K _$H`"YOHx */
	$"0000 486E FFF8 486E FDE8 4227 3F05 4878"            /* ..Hnˇ¯Hn˝ËB'?.Hx */
	$"FFFF 4227 42A7 2F06 A97D 205F 2448 2F0A"            /* ˇˇB'Bß/.©} _$H/. */
	$"A873 1F3C 0009 4EB9 0000 D52A 486E FFF8"            /* ®s.<..Nπ..’*Hnˇ¯ */
	$"2F3C 0007 004A 2F3C 03E8 01A6 A8A7 594F"            /* /<...J/<.Ë.¶®ßYO */
	$"486E FFF8 486E FFF8 A83E 205F 2B48 F47E"            /* Hnˇ¯Hnˇ¯®> _+HÙ~ */
	$"2F0C 205F A029 4A83 6618 2F14 594F 2F0C"            /* /. _†)JÉf./.YO/. */
	$"4EB9 0000 E790 201F 2F00 2F2D F47E A9DE"            /* Nπ..Áê ././-Ù~©ﬁ */
	$"6020 2F14 594F 2F0C 4EB9 0000 E790 201F"            /* ` /.YO/.Nπ..Áê . */
	$"2F00 2F03 2F2D F47E 3F3C 0007 A83D 2F03"            /* /././-Ù~?<..®=/. */
	$"A9A3 2F0C A9A3 2F2D F47E 4EBA F84C 2F2D"            /* ©£/.©£/-Ù~N∫¯L/- */
	$"F47E 2F2E 000A 4EBA F68A 594F 594F 206D"            /* Ù~/...N∫ˆäYOYO m */
	$"F47E 2050 3268 003C 2F09 42A7 2F2D F47E"            /* Ù~ P2h.</.Bß/-Ù~ */
	$"3F3C 0009 A83D 201F 2F00 4878 0020 201F"            /* ?<..®= ./.Hx.  . */
	$"2E9F B097 6F02 2E80 201F 5E80 0680 0000"            /* .ü∞óo..Ä .^Ä.Ä.. */
	$"0028 3A00 486E FFF0 4267 554F 3EB8 0BAA"            /* .(:.HnˇBgUO>∏.™ */
	$"301F 3F00 A880 594F A924 205F 2848 200C"            /* 0.?.®ÄYO©$ _(H . */
	$"6752 2F0C 486E FEE8 4EB9 0000 8F7C 7000"            /* gR/.Hn˛ËNπ..è|p. */
	$"102E FEF3 0440 004D 673A 5D40 6714 5940"            /* ..˛Û.@.Mg:]@g.Y@ */
	$"6702 6028 3D6E FEEA FFF2 3D6E FEE8 FFF0"            /* g.`(=n˛ÍˇÚ=n˛Ëˇ */
	$"6022 486E FEE8 486E FDD4 486E FDD3 4EB9"            /* `"Hn˛ËHn˝‘Hn˝”Nπ */
	$"0000 90AA 2D6E FDD4 FFF0 6008 4227 4EB9"            /* ..ê™-n˝‘ˇ`.B'Nπ */
	$"0000 ACEA 7028 D06E FFF2 3D40 FFF2 7000"            /* ..¨Íp(–nˇÚ=@ˇÚp. */
	$"1004 C1FC 0014 7214 D26E FFF0 D240 3D41"            /* ..¡¸..r.“nˇ“@=A */
	$"FFF0 2F0A 3F2E FFF2 3F2E FFF0 1F3C 0001"            /* ˇ/.?.ˇÚ?.ˇ.<.. */
	$"A91B 3D7C 01B0 FDE6 3D45 FDE4 2F0A 4267"            /* ©.=|.∞˝Ê=E˝‰/.Bg */
	$"2F2E FDE4 4EB9 0000 92A4 2F0A 7003 D06E"            /* /.˝‰Nπ..í§/.p.–n */
	$"FFF4 3F00 2F07 4EB9 0000 B138 3C2E FFF4"            /* ˇÙ?./.Nπ..±8<.ˇÙ */
	$"7601 604E 2F0A 3F03 486E FFF8 4EB9 0000"            /* v.`N/.?.Hnˇ¯Nπ.. */
	$"B062 486E FFF8 4267 3005 0440 001E 3F00"            /* ∞bHnˇ¯Bg0..@..?. */
	$"A8A8 2F0A 3F03 486E FFF8 4EB9 0000 B00A"            /* ®®/.?.Hnˇ¯Nπ..∞. */
	$"594F 2F0A 3F03 4EB9 0000 B0CA 205F 2F08"            /* YO/.?.Nπ..∞  _/. */
	$"3F2E FFFA 3F2E FFF8 A959 0C43 7FFF 6706"            /* ?.ˇ˙?.ˇ¯©Y.C.ˇg. */
	$"5243 B646 6FAE 2F0A 3F3C 0001 7001 D06E"            /* RC∂FoÆ/.?<..p.–n */
	$"FFF4 3F00 4EB9 0000 AF6A 7000 102E FEF2"            /* ˇÙ?.Nπ..Øjp...˛Ú */
	$"0C40 0042 661A 4A2E 0008 672A 3F3C 0001"            /* .@.Bf.J...g*?<.. */
	$"594F 2EB8 0A9C 205F 2F08 205F 4E90 6016"            /* YO.∏.ú _/. _Nê`. */
	$"7000 102E FEF2 0C40 002D 57C0 4400 1F00"            /* p...˛Ú.@.-W¿D... */
	$"4EB9 0000 ACEA 2F0A A915 0C6E 0001 FFF4"            /* Nπ..¨Í/.©..n..ˇÙ */
	$"6F06 286D F64A 6004 286D F64E 4EB9 0000"            /* o.(mˆJ`.(mˆNNπ.. */
	$"A140 4227 4EB9 0000 A1B4 4A04 670E 486E"            /* °@B'Nπ..°¥J.g.Hn */
	$"FDE0 3F3C FFFF 4EB9 0000 8A0E 4A04 670E"            /* ˝‡?<ˇˇNπ..ä.J.g. */
	$"2F0B 486E FFF6 4EB9 0000 8DBC 6008 2F0B"            /* /.HnˇˆNπ..çº`./. */
	$"486E FFF6 A991 0C6E 0001 FFF6 6DDE 302E"            /* Hnˇˆ©ë.n..ˇˆmﬁ0. */
	$"FFF6 B06E FFF4 6ED4 4A04 670A 486E FDE0"            /* ˇˆ∞nˇÙn‘J.g.Hn˝‡ */
	$"4EB9 0000 8B34 2F0A A983 3D6E FFF6 0010"            /* Nπ..ã4/.©É=nˇˆ.. */
	$"2F0B 584F 2F07 584F 2F2E FDDC A873 4CDF"            /* /.XO/.XO/.˝‹®sLﬂ */
	$"1CF8 4E5E 205F 504F 4ED0 8C44 4953 504C"            /* .¯N^ _PON–åDISPL */
	$"4159 414C 4552 5400 0000 4E56 0000 554F"            /* AYALERT...NV..UO */
	$"3F2E 0008 2F2D F48A 1F3C 0001 4EBA FC02"            /* ?.../-Ùä.<..N∫¸. */
	$"301F 3D40 000A 2F2D F48A 4EB9 0000 C724"            /* 0.=@../-ÙäNπ..«$ */
	$"42AD F48A 4E5E 205F 544F 4ED0 8B43 4C45"            /* B≠ÙäN^ _TON–ãCLE */
	$"5645 5241 4C45 5254 0000 4E56 FFF8 2F03"            /* VERALERT..NVˇ¯/. */
	$"362E 0008 554F 4EB9 0000 CF18 101F 6710"            /* 6...UONπ..œ...g. */
	$"554F 3F03 4EBA FFA4 301F 3D40 FFF8 603C"            /* UO?.N∫ˇ§0.=@ˇ¯`< */
	$"2D6D F48A FFFC 3D43 FFFA 554F 2F2D F486"            /* -mÙäˇ¸=Cˇ˙UO/-ÙÜ */
	$"486E FFFA 4EB9 0000 95EC 301F 3600 42AD"            /* Hnˇ˙Nπ..ïÏ0.6.B≠ */
	$"F48A 1F3C 0001 4227 3F2D F484 3F2D F482"            /* Ùä.<..B'?-ÙÑ?-ÙÇ */
	$"4878 FFFF 42A7 4EB9 0000 8656 261F 4E5E"            /* HxˇˇBßNπ..ÜV&.N^ */
	$"205F 544F 4ED0 9143 4C45 5645 524E 4F54"            /*  _TON–ëCLEVERNOT */
	$"4946 5941 4C45 5254 0000 4E56 FFFA 2F03"            /* IFYALERT..NVˇ˙/. */
	$"554F 4EB9 0000 CF18 101F 6752 603E 2F2D"            /* UONπ..œ...gR`>/- */
	$"F486 4878 0001 486E FFFA 4EB9 0000 9640"            /* ÙÜHx..Hnˇ˙Nπ..ñ@ */
	$"2F2D F486 4878 0001 4EB9 0000 96C4 554F"            /* /-ÙÜHx..Nπ..ñƒUO */
	$"3F2E FFFA 2F2E FFFC 4227 4EBA FB14 301F"            /* ?.ˇ˙/.ˇ¸B'N∫˚.0. */
	$"3600 2F2D F48A 4EB9 0000 C724 594F 2F2D"            /* 6./-ÙäNπ..«$YO/- */
	$"F486 4EB9 0000 959A 201F 4A80 6EB0 261F"            /* ÙÜNπ..ïö .JÄn∞&. */
	$"4E5E 4E75 8F49 444C 4543 4C45 5645 5241"            /* N^NuèIDLECLEVERA */
	$"4C45 5254 0000 4E56 0000 42AD F48A 554F"            /* LERT..NV..B≠ÙäUO */
	$"486D F486 4878 0006 4EB9 0000 954E 301F"            /* HmÙÜHx..Nπ..ïN0. */
	$"48C0 2D40 000C 4E5E 2E9F 4E75 9049 4E49"            /* H¿-@..N^.üNuêINI */
	$"5443 4C45 5645 5241 4C45 5254 5300 0000"            /* TCLEVERALERTS... */
	$"4E56 0000 4EBA 0054 3B6E 000A F484 3B6E"            /* NV..N∫.T;n..ÙÑ;n */
	$"0008 F482 4E5E 2E9F 4E75 9543 4F4E 4649"            /* ..ÙÇN^.üNuïCONFI */
	$"4755 5245 434C 4556 4552 414C 4552 5453"            /* GURECLEVERALERTS */
	$"0000 4E56 0000 2F2D F48A 4EB9 0000 C724"            /* ..NV../-ÙäNπ..«$ */
	$"4E5E 4E75 9246 494E 4953 4843 4C45 5645"            /* N^NuíFINISHCLEVE */
	$"5241 4C45 5254 5300 0000 4E56 0000 4EB9"            /* RALERTS...NV..Nπ */
	$"0000 BE30 4EB9 0000 A2FA 4EB9 0000 88F2"            /* ..æ0Nπ..¢˙Nπ..àÚ */
	$"487A FF54 487A FED4 4878 000F 487A FFB4"            /* HzˇTHz˛‘Hx..Hzˇ¥ */
	$"4EB9 0000 BE5E 4E5E 4E75 9353 5441 5254"            /* Nπ..æ^N^NuìSTART */
	$"5550 434C 4556 4552 414C 4552 5453 0000"            /* UPCLEVERALERTS.. */
	$"4E56 0000 206E 0008 2068 0020 10BC 0001"            /* NV.. n.. h. .º.. */
	$"4E5E 2E9F 4E75 8A4D 5952 4553 504F 4E53"            /* N^.üNuäMYRESPONS */
	$"4500 0000 4E56 FFFE 2F0A 4AAD F492 673E"            /* E...NVˇ˛/.J≠Ùíg> */
	$"554F 2F2D F492 205F A05F 3E80 301F 3D40"            /* UO/-Ùí _†_>Ä0.=@ */
	$"FFFE 246D F492 4AAA 0018 6708 2F2A 0018"            /* ˇ˛$mÙíJ™..g./*.. */
	$"205F A01F 4AAA 0010 6708 2F2A 0010 205F"            /*  _†.J™..g./*.. _ */
	$"A023 2F2D F492 205F A01F 42AD F492 422D"            /* †#/-Ùí _†.B≠ÙíB- */
	$"F49B 422D F49A 2B7C 7FFF FFFF F496 245F"            /* ÙõB-Ùö+|.ˇˇˇÙñ$_ */
	$"4E5E 4E75 8855 4E4E 4F54 4946 5900 0000"            /* N^NuàUNNOTIFY... */
	$"4E56 FFFC 48E7 1820 282E 0008 4EBA FF86"            /* NVˇ¸HÁ. (...N∫ˇÜ */
	$"594F 3F3C A89F 1F3C 0001 4EB9 0000 E7B6"            /* YO?<®ü.<..Nπ..Á∂ */
	$"205F 2D48 FFFC 594F 3F3C A05E 4227 4EB9"            /*  _-Hˇ¸YO?<†^B'Nπ */
	$"0000 E7B6 205F B1EE FFFC 660A 3F3C 0001"            /* ..Á∂ _±Óˇ¸f.?<.. */
	$"A9C8 6000 008A 594F 4878 0024 201F A11E"            /* ©»`..äYOHx.$ .°. */
	$"2E88 205F 2B48 F492 4AAD F492 6608 3F3C"            /* .à _+HÙíJ≠Ùíf.?< */
	$"0001 A9C8 6068 246D F492 357C 0008 0004"            /* ..©»`h$mÙí5|.... */
	$"7600 41ED F49B 2548 0020 356E 0018 000E"            /* v.AÌÙõ%H. 5n.... */
	$"256E 000C 0018 256E 0010 0010 256E 0014"            /* %n....%n....%n.. */
	$"0014 256D F48E 001C 554F 2F2D F492 205F"            /* ..%mÙé..UO/-Ùí _ */
	$"A05E 3E80 301F 3600 4A43 670C 42AD F492"            /* †^>Ä0.6.JCg.B≠Ùí */
	$"3F3C 0001 A9C8 6016 1B7C 0001 F49A 4A84"            /* ?<..©»`..|..ÙöJÑ */
	$"6F0C 594F A975 201F D084 2B40 F496 4CDF"            /* o.YO©u .–Ñ+@ÙñLﬂ */
	$"0418 4E5E 205F 4FEF 0012 4ED0 874E 4F54"            /* ..N^ _OÔ..N–áNOT */
	$"4946 5948 0000 4E56 FEF4 48E7 1F30 3A2E"            /* IFYH..NV˛ÙHÁ.0:. */
	$"0010 3E2E 000E 362E 000C 7800 4A2E 0016"            /* ..>...6...x.J... */
	$"6704 7C01 6002 7C00 97CB 4A47 6700 00A8"            /* g.|.`.|.óÀJGg..® */
	$"4A43 6F10 486E FEFC 3F07 3F03 4EB9 0000"            /* JCo.Hn˛¸?.?.Nπ.. */
	$"E980 6042 41ED FDF4 2608 2043 7000 1010"            /* ÈÄ`BAÌ˝Ù&. Cp... */
	$"5240 48C0 2043 43EE FEFC A22E 594F 3F07"            /* R@H¿ CCÓ˛¸¢.YO?. */
	$"A9BA 205F 2448 200A 671C 4A92 6714 2612"            /* ©∫ _$H .g.Jíg.&. */
	$"2043 7000 1010 5240 48C0 2043 43EE FEFC"            /*  Cp...R@H¿ CCÓ˛¸ */
	$"A22E 2F0A A9A3 554F 486E FEFC 486D FDF4"            /* ¢./.©£UOHn˛¸Hm˝Ù */
	$"4267 4EB9 0000 DD64 101F 6704 7801 6036"            /* BgNπ..›d..g.x.`6 */
	$"594F 7000 102E FEFC 5240 48C0 2F00 201F"            /* YOp...˛¸R@H¿/. . */
	$"A11E 2E88 205F 2648 200B 6604 7801 6016"            /* °..à _&H .f.x.`. */
	$"41EE FEFC 2608 2043 7000 1010 5240 48C0"            /* AÓ˛¸&. Cp...R@H¿ */
	$"2043 224B A22E 42AE FFFC 4A6E 0012 6700"            /*  C"K¢.BÆˇ¸Jn..g. */
	$"00E2 42AE FFFC 554F 2F2D FDF6 486E FEF8"            /* .‚BÆˇ¸UO/-˝ˆHn˛¯ */
	$"225F 201F A1AD 2288 3E80 301F 6628 0CAE"            /* "_ .°≠"à>Ä0.f(.Æ */
	$"0000 0700 FEF8 6D1E 554F 486E FFFC 3F2E"            /* ....˛¯m.UOHnˇ¸?. */
	$"0012 2F3C 0000 FF00 303C 0501 ABC9 301F"            /* ../<..ˇ.0<..´…0. */
	$"6704 42AE FFFC 4AAE FFFC 6600 0096 0C45"            /* g.BÆˇ¸JÆˇ¸f..ñ.E */
	$"0001 6C02 7A01 5345 CBFC 0020 594F 2F2D"            /* ..l.z.SEÀ¸. YO/- */
	$"FDFA 3F2E 0012 A9A0 205F 2448 2F0A 205F"            /* ˝˙?...©† _$H/. _ */
	$"A04A 200A 6604 7801 6068 594F 4878 0020"            /* †J .f.x.`hYOHx.  */
	$"201F A122 2E88 205F 2D48 FFFC 4AAE FFFC"            /*  .°".à _-Hˇ¸JÆˇ¸ */
	$"6604 7801 6048 206E FFFC 4A90 6604 7801"            /* f.x.`H nˇ¸Jêf.x. */
	$"603C 7020 D045 48C0 2D40 FEF4 594F 2F0A"            /* `<p –EH¿-@˛ÙYO/. */
	$"4EB9 0000 E790 201F B0AE FEF4 6C04 7801"            /* Nπ..Áê .∞Æ˛Ùl.x. */
	$"601C 3045 2012 D088 2040 4850 206E FFFC"            /* `.0E .–à @HP nˇ¸ */
	$"2F10 4878 0020 201F 225F 205F A22E 2F0A"            /* /.Hx.  ."_ _¢./. */
	$"A9A3 102E 0014 8004 6706 70FF 2440 6002"            /* ©£....Ä.g.pˇ$@`. */
	$"95CA 3F06 2F0A 2F2E FFFC 2F0B 2F2E 0008"            /* ï ?././.ˇ¸/./... */
	$"4EBA FD3E 4CDF 0CF8 4E5E 205F 4FEF 0010"            /* N∫˝>Lﬂ.¯N^ _OÔ.. */
	$"4ED0 864E 4F54 4946 5900 0000 4E56 0000"            /* N–ÜNOTIFY...NV.. */
	$"42AD F492 422D F49B 422D F49A 2B7C 7FFF"            /* B≠ÙíB-ÙõB-Ùö+|.ˇ */
	$"FFFF F496 594F 487A FC78 2E9F 205F 2B48"            /* ˇˇÙñYOHz¸x.ü _+H */
	$"F48E 42AE 000C 4E5E 2E9F 4E75 8C49 4E49"            /* ÙéBÆ..N^.üNuåINI */
	$"544E 4F54 4946 4945 5200 0000 4E56 0000"            /* TNOTIFIER...NV.. */
	$"4AAD F492 6704 4EBA FC6C 4E5E 4E75 8E46"            /* J≠Ùíg.N∫¸lN^NuéF */
	$"494E 4953 484E 4F54 4946 4945 5200 0000"            /* INISHNOTIFIER... */
	$"4E56 FFFE 594F A975 201F B0AD F496 5EC0"            /* NVˇ˛YO©u .∞≠Ùñ^¿ */
	$"4400 1D40 FFFF 554F 4EB9 0000 CF18 101F"            /* D..@ˇˇUONπ..œ... */
	$"C02D F49B 802E FFFF 6704 4EBA FC28 4E5E"            /* ¿-ÙõÄ.ˇˇg.N∫¸(N^ */
	$"4E75 8C49 444C 454E 4F54 4946 4945 5200"            /* NuåIDLENOTIFIER. */
	$"0000 4E56 0000 487A FF54 487A FFB4 4878"            /* ..NV..HzˇTHzˇ¥Hx */
	$"000A 487A FF88 4EB9 0000 BE5E 4E5E 4E75"            /* ..HzˇàNπ..æ^N^Nu */
	$"8F53 5441 5254 5550 4E4F 5449 4649 4552"            /* èSTARTUPNOTIFIER */
	$"0000 4E56 FFFC 554F 2F2D FDFE 486E FFFC"            /* ..NVˇ¸UO/-˝˛Hnˇ¸ */
	$"225F 201F A1AD 2288 3E80 301F 4A40 6614"            /* "_ .°≠"à>Ä0.J@f. */
	$"554F 2F2E FFFC 4267 4EB9 0000 D492 101F"            /* UO/.ˇ¸BgNπ..‘í.. */
	$"4A00 6604 7000 6002 7001 1D40 0008 4E5E"            /* J.f.p.`.p..@..N^ */
	$"205F 4ED0 8E48 4153 4845 4C50 4D41 4E41"            /*  _N–éHASHELPMANA */
	$"4745 5200 0000 4E56 FFFA 4AAE 0008 677A"            /* GER...NVˇ˙JÆ..gz */
	$"2F2E 0008 486E FFFA 486E FFFC 486E FFFE"            /* /...Hnˇ˙Hnˇ¸Hnˇ˛ */
	$"4EB9 0000 B358 4A6E FFFA 6F5E 2F3C 0003"            /* Nπ..≥XJnˇ˙o^/<.. */
	$"0082 302E FFFC B06E FFFE 5DC0 4400 1F00"            /* .Ç0.ˇ¸∞nˇ˛]¿D... */
	$"4EB9 0000 C6CA 2F3C 0004 0082 302E FFFC"            /* Nπ..∆ /<...Ç0.ˇ¸ */
	$"B06E FFFE 5DC0 4400 1F00 4EB9 0000 C6CA"            /* ∞nˇ˛]¿D...Nπ..∆  */
	$"2F3C 0005 0082 1F3C 0001 4EB9 0000 C6CA"            /* /<...Ç.<..Nπ..∆  */
	$"2F3C 0006 0082 302E FFFC B06E FFFE 5DC0"            /* /<...Ç0.ˇ¸∞nˇ˛]¿ */
	$"4400 1F00 4EB9 0000 C6CA 4E5E 2E9F 4E75"            /* D...Nπ..∆ N^.üNu */
	$"8B53 4554 4544 4954 4D45 4E55 0000 4E56"            /* ãSETEDITMENU..NV */
	$"FFFE 48E7 1F38 282E 000A 554F 4EBA FF04"            /* ˇ˛HÁ.8(...UON∫ˇ. */
	$"101F 1E00 594F A924 205F 2448 B4FC 0000"            /* ....YO©$ _$H¥¸.. */
	$"6710 554F 2F0A 4EB9 0000 B2FC 301F 4A40"            /* g.UO/.Nπ..≤¸0.J@ */
	$"6E04 7000 6002 7001 1C00 594F 2EB8 0A1C"            /* n.p.`.p...YO.∏.. */
	$"205F 2848 2054 3250 2009 7206 4EB9 0000"            /*  _(H T2P .r.Nπ.. */
	$"056A 3600 594F 4878 0008 201F A11E 2E88"            /* .j6.YOHx.. .°..à */
	$"205F 2244 2288 2044 2650 4293 3A03 5345"            /*  _"D"à D&PBì:.SE */
	$"7600 607A 7006 C1C3 2054 5C88 2470 0800"            /* v.`zp.¡√ T\à$p.. */
	$"2052 3810 0C44 C180 6F5C 0C44 0082 661E"            /*  R8..D¡Äo\.D.Çf. */
	$"2052 2768 000A 0004 4A06 670A 2052 7039"            /*  R'h....J.g. Rp9 */
	$"2140 000A 6040 2F0A 4267 A93A 6038 554F"            /* !@..`@/.Bg©:`8UO */
	$"2052 2F28 000A 4267 4EB9 0000 D492 101F"            /*  R/(..BgNπ..‘í.. */
	$"670C 2013 07C0 2680 2F0A 4267 A93A 4A07"            /* g. ..¿&Ä/.Bg©:J. */
	$"6714 554F 3F04 3F2E 0008 303C 020D A830"            /* g.UO?.?...0<..®0 */
	$"301F 3D40 FFFE 0C43 7FFF 6706 5243 B645"            /* 0.=@ˇ˛.C.ˇg.RC∂E */
	$"6F82 4267 A938 A937 4227 4EB9 0000 A1B4"            /* oÇBg©8©7B'Nπ..°¥ */
	$"4EB9 0000 A140 4CDF 1CF8 4E5E 205F 5C4F"            /* Nπ..°@Lﬂ.¯N^ _\O */
	$"4ED0 8E44 4953 4142 4C45 4D45 4E55 4241"            /* N–éDISABLEMENUBA */
	$"5200 0000 4E56 0000 48E7 1F38 206E 0008"            /* R...NV..HÁ.8 n.. */
	$"2650 554F 4EBA FDDC 101F 1C00 594F 2EB8"            /* &PUON∫˝‹....YO.∏ */
	$"0A1C 205F 2848 2054 3250 2009 7206 4EB9"            /* .. _(H T2P .r.Nπ */
	$"0000 056A 3600 3A03 5345 7600 605A 7006"            /* ...j6.:.SEv.`Zp. */
	$"C1C3 2054 5C88 2470 0800 2052 3810 0C44"            /* ¡√ T\à$p.. R8..D */
	$"C180 6F3C 0C44 0082 660A 2052 216B 0004"            /* ¡Äo<.D.Çf. R!k.. */
	$"000A 6016 554F 2F13 3F03 4EB9 0000 D492"            /* ..`.UO/.?.Nπ..‘í */
	$"101F 6706 2F0A 4267 A939 4A06 6712 554F"            /* ..g./.Bg©9J.g.UO */
	$"3F04 3F3C FFFF 303C 020D A830 301F 3E00"            /* ?.?<ˇˇ0<..®00.>. */
	$"0C43 7FFF 6706 5243 B645 6FA2 206E 0008"            /* .C.ˇg.RC∂Eo¢ n.. */
	$"2F10 205F A01F 206E 0008 4290 A937 4CDF"            /* /. _†. n..Bê©7Lﬂ */
	$"1CF8 4E5E 2E9F 4E75 8F52 4545 4E41 424C"            /* .¯N^.üNuèREENABL */
	$"454D 454E 5542 4152 0000 4E56 FFFE 48E7"            /* EMENUBAR..NVˇ˛HÁ */
	$"1C20 246E 0014 2A2E 0008 422E 0018 554F"            /* . $n..*...B...UO */
	$"2F05 A86A 301F 3600 554F 2F05 A86B 301F"            /* /.®j0.6.UO/.®k0. */
	$"3800 0C43 0082 6600 00A4 554F 2F0A 4EB9"            /* 8..C.Çf..§UO/.Nπ */
	$"0000 B2FC 301F 3600 2F0A 3F03 486E FFFE"            /* ..≤¸0.6./.?.Hnˇ˛ */
	$"4EB9 0000 B096 302E FFFE 0280 0000 0080"            /* Nπ..∞ñ0.ˇ˛.Ä...Ä */
	$"660C 1D7C 0001 0018 206E 000C 3083 3004"            /* f..|.... n..0É0. */
	$"5740 670E 5340 6728 5340 6742 5340 6754"            /* W@g.S@g(S@gBS@gT */
	$"605A 2F0A 4EB9 0000 E8DA 594F A9FC 201F"            /* `Z/.Nπ..Ë⁄YO©¸ . */
	$"3600 554F 4EB9 0000 E95A 301F 3600 603C"            /* 6.UONπ..ÈZ0.6.`< */
	$"2F0A 4EB9 0000 E8E0 594F A9FC 201F 3600"            /* /.Nπ..Ë‡YO©¸ .6. */
	$"554F 4EB9 0000 E95A 301F 3600 601E 554F"            /* UONπ..ÈZ0.6.`.UO */
	$"4EB9 0000 E904 301F 3600 2F0A 4EB9 0000"            /* Nπ..È.0.6./.Nπ.. */
	$"E8D2 6008 2F0A 4EB9 0000 E8E6 4267 A938"            /* Ë“`./.Nπ..ËÊBg©8 */
	$"4CDF 0438 4E5E 205F 4FEF 0010 4ED0 8C44"            /* Lﬂ.8N^ _OÔ..N–åD */
	$"4F4D 454E 5543 484F 4943 4500 0000 4E56"            /* OMENUCHOICE...NV */
	$"FFF4 48E7 1030 266E 0010 246E 000C 422E"            /* ˇÙHÁ.0&n..$n..B. */
	$"0014 554F 2F2A 000A 486E FFFC A92C 301F"            /* ..UO/*..Hnˇ¸©,0. */
	$"3600 0C43 0001 6628 2F0B 4EBA FC5A 554F"            /* 6..C..f(/.N∫¸ZUO */
	$"2F0B 2F0A 2F2E 0008 594F 2F2A 000A A93D"            /* /././...YO/*..©= */
	$"201F 2F00 4EBA FEC4 101F 1D40 0014 605C"            /*  ./.N∫˛ƒ...@..`\ */
	$"554F 2F2A 000A 2F2B 0072 A8E8 101F 661A"            /* UO/*...+.r®Ë..f. */
	$"594F 2EB8 0A9C 205F 2448 200A 673E 3F3C"            /* YO.∏.ú _$H .g>?< */
	$"0001 2F0A 205F 4E90 6032 0C43 0004 662C"            /* ../. _Nê`2.C..f, */
	$"B7EE FFFC 6626 594F 2EB8 09EE 205F 2050"            /* ∑Óˇ¸f&YO.∏.Ó _ P */
	$"2D68 0002 FFF4 2D68 0006 FFF8 2F2E FFFC"            /* -h..ˇÙ-h..ˇ¯/.ˇ¸ */
	$"2F2A 000A 486E FFF4 A925 4252 4CDF 0C08"            /* /*..HnˇÙ©%BRLﬂ.. */
	$"4E5E 205F 4FEF 000C 4ED0 8F48 414E 444C"            /* N^ _OÔ..N–èHANDL */
	$"454D 4F55 5345 444F 574E 0000 4E56 FFEC"            /* EMOUSEDOWN..NVˇÏ */
	$"48E7 1038 286E 000C 266E 0008 4253 594F"            /* HÁ.8(n..&n..BSYO */
	$"A924 205F 2448 200A 6700 00F0 2F0A A873"            /* ©$ _$H .g../.®s */
	$"2F0A 4EBA FB92 554F 3F3C 817E 486E FFF0"            /* /.N∫˚íUO?<Å~Hnˇ */
	$"42A7 4878 0000 A860 101F 1600 2F0A A873"            /* BßHx..®`..../.®s */
	$"2F0A 4EBA FB72 200C 6716 554F 2F0A 486E"            /* /.N∫˚r .g.UO/.Hn */
	$"FFF0 2F0B 2F0C 205F 4E90 101F 6600 00AC"            /* ˇ/./. _Nê..f..¨ */
	$"0C6E 000F FFF0 6626 202E FFF2 E198 0280"            /* .n..ˇf& .ˇÚ·ò.Ä */
	$"0000 00FF 5380 6616 7001 C0AE FFF2 4A80"            /* ...ˇSÄf.p.¿ÆˇÚJÄ */
	$"56C0 4400 1600 1F03 4EB9 0000 CEF4 0C6E"            /* V¿D.....Nπ..ŒÙ.n */
	$"0001 FFF0 6612 554F 2F0A 486E FFF0 2F0B"            /* ..ˇf.UO/.Hnˇ/. */
	$"4EBA FE8C 101F 6662 0C6E 0003 FFF0 6638"            /* N∫˛å..fb.n..ˇf8 */
	$"302E FFFE 0280 0000 0100 672C 2F0A 4EBA"            /* 0.ˇ˛.Ä....g,/.N∫ */
	$"FAF6 554F 2F0A 486E FFF0 2F0B 594F 202E"            /* ˙ˆUO/.Hnˇ/.YO . */
	$"FFF2 0280 0000 00FF 3F00 A93E 201F 2F00"            /* ˇÚ.Ä...ˇ?.©> ./. */
	$"4EBA FD58 101F 6622 554F 486E FFF0 A97F"            /* N∫˝X..f"UOHnˇ©. */
	$"101F 6700 FF32 554F 486E FFF0 486E FFEC"            /* ..g.ˇ2UOHnˇHnˇÏ */
	$"2F0B A980 101F 6700 FF1E 4CDF 1C08 4E5E"            /* /.©Ä..g.ˇ.Lﬂ..N^ */
	$"205F 504F 4ED0 924D 4F56 4142 4C45 4D4F"            /*  _PON–íMOVABLEMO */
	$"4441 4C44 4941 4C4F 4700 0000 4E56 0000"            /* DALDIALOG...NV.. */
	$"206E 0008 2D68 0076 000C 4E5E 2E9F 4E75"            /*  n..-h.v..N^.üNu */
	$"9647 4554 5749 4E44 4F57 434F 4E54 454E"            /* ñGETWINDOWCONTEN */
	$"5452 4547 494F 4E00 0000 4E56 0000 206E"            /* TREGION...NV.. n */
	$"0008 2D68 0072 000C 4E5E 2E9F 4E75 9847"            /* ..-h.r..N^.üNuòG */
	$"4554 5749 4E44 4F57 5354 5255 4354 5552"            /* ETWINDOWSTRUCTUR */
	$"4552 4547 494F 4E00 0000 4E56 0000 206E"            /* EREGION...NV.. n */
	$"000C 226E 0008 22A8 0010 2368 0014 0004"            /* .."n.."®..#h.... */
	$"4E5E 205F 504F 4ED0 9147 4554 5749 4E44"            /* N^ _PON–ëGETWIND */
	$"4F57 504F 5254 5245 4354 0000 4E56 0000"            /* OWPORTRECT..NV.. */
	$"2F0A 246E 0008 2F2E 000C A873 2F2E 000C"            /* /.$n../...®s/... */
	$"2F0A 4EBA FFB6 2F0A A870 486A 0004 A870"            /* /.N∫ˇ∂/.®pHj..®p */
	$"245F 4E5E 205F 504F 4ED0 8D47 4554 5749"            /* $_N^ _PON–çGETWI */
	$"4E44 4F57 5245 4354 0000 4E56 0000 2F0A"            /* NDOWRECT..NV../. */
	$"246E 0008 2F2E 000C 3F2A 0002 3F12 4227"            /* $n../...?*..?.B' */
	$"A91B 2F2E 000C 302A 0006 906A 0002 3F00"            /* ©./...0*..êj..?. */
	$"302A 0004 9052 3F00 1F3C 0001 A91D 245F"            /* 0*..êR?..<..©.$_ */
	$"4E5E 205F 504F 4ED0 8D53 4554 5749 4E44"            /* N^ _PON–çSETWIND */
	$"4F57 5245 4354 0000 4E56 FFF0 48E7 1830"            /* OWRECT..NVˇHÁ.0 */
	$"206E 0008 2D50 FFF0 2D68 0004 FFF4 594F"            /*  n..-Pˇ-h..ˇÙYO */
	$"AA29 205F 2448 7800 594F AA2A 205F 2648"            /* ™) _$Hx.YO™* _&H */
	$"6056 554F 2F0A 3F3C 000D AA2C 101F 673E"            /* `VUO/.?<..™,..g> */
	$"554F 2F0A 3F3C 000F AA2C 101F 6730 554F"            /* UO/.?<..™,..g0UO */
	$"486E FFF0 2052 4868 0022 486E FFF8 A8AA"            /* Hnˇ RHh."Hnˇ¯®™ */
	$"101F 1600 302E FFFC 906E FFF8 362E FFFE"            /* ....0.ˇ¸ênˇ¯6.ˇ˛ */
	$"966E FFFA C7C0 B684 6F04 264A 2803 594F"            /* ñnˇ˙«¿∂Ño.&J(.YO */
	$"2F0A AA2B 205F 2448 200A 66A6 2D4B 000C"            /* /.™+ _$H .f¶-K.. */
	$"4CDF 0C18 4E5E 2E9F 4E75 8D47 4554 4245"            /* Lﬂ..N^.üNuçGETBE */
	$"5354 4445 5649 4345 0000 4E56 FFF8 48E7"            /* STDEVICE..NVˇ¯HÁ */
	$"0038 246E 000C 286E 0008 206E 0010 2D50"            /* .8$n..(n.. n..-P */
	$"FFF8 2D68 0004 FFFC 4A2D F864 672A 594F"            /* ˇ¯-h..ˇ¸J-¯dg*YO */
	$"486E FFF8 4EBA FF32 205F 2648 2053 24A8"            /* Hnˇ¯N∫ˇ2 _&H S$® */
	$"0022 2568 0026 0004 594F AA2A 205F B1CB"            /* ."%h.&..YO™* _±À */
	$"57C0 4400 1880 601C 594F 2015 0480 0000"            /* W¿D..Ä`.YO ..Ä.. */
	$"00CA 2E80 205F 24A8 0056 2568 005A 0004"            /* . .Ä _$®.V%h.Z.. */
	$"18BC 0001 4A14 670C 554F 3EB8 0BAA 301F"            /* .º..J.g.UO>∏.™0. */
	$"D052 3480 4CDF 1C00 4E5E 205F 4FEF 000C"            /* –R4ÄLﬂ..N^ _OÔ.. */
	$"4ED0 9147 4554 4245 5354 5343 5245 454E"            /* N–ëGETBESTSCREEN */
	$"5245 4354 0000 4E56 0000 48E7 0700 3E2E"            /* RECT..NV..HÁ..>. */
	$"0012 342E 0010 3C2E 000A 3A2E 0008 BE46"            /* ..4...<...:...æF */
	$"6C08 B445 6F04 7200 603C 302E 000E 906E"            /* l.¥Eo.r.`<0...ên */
	$"000C 6614 B446 6C08 3206 9247 5841 6026"            /* ..f.¥Fl.2.íGXA`& */
	$"3205 9242 5941 601E 302E 000C 906E 000E"            /* 2.íBYA`.0...ên.. */
	$"3202 9247 9240 4A41 6706 7004 D041 3200"            /* 2.íGí@JAg.p.–A2. */
	$"B445 6F02 4441 3D41 0014 4CDF 00E0 4E5E"            /* ¥Eo.DA=A..Lﬂ.‡N^ */
	$"205F 4FEF 000C 4ED0 9543 414C 4355 4C41"            /*  _OÔ..N–ïCALCULA */
	$"5445 4F46 4653 4554 414D 4F55 4E54 0000"            /* TEOFFSETAMOUNT.. */
	$"4E56 FFF0 2F0A 246E 0008 206E 0010 2D50"            /* NVˇ/.$n.. n..-P */
	$"FFF0 2D68 0004 FFF4 206E 000C 2D50 FFF8"            /* ˇ-h..ˇÙ n..-Pˇ¯ */
	$"2D68 0004 FFFC 302E FFF0 D06E FFF8 3480"            /* -h..ˇ¸0.ˇ–nˇ¯4Ä */
	$"302E FFF4 D06E FFFC 3540 0004 302E FFF2"            /* 0.ˇÙ–nˇ¸5@..0.ˇÚ */
	$"D06E FFFA 3540 0002 302E FFF6 D06E FFFE"            /* –nˇ˙5@..0.ˇˆ–nˇ˛ */
	$"3540 0006 245F 4E5E 205F 4FEF 000C 4ED0"            /* 5@..$_N^ _OÔ..N– */
	$"8741 4444 5245 4354 0000 4E56 FFF0 2F0A"            /* áADDRECT..NVˇ/. */
	$"246E 0008 206E 0010 2D50 FFF0 2D68 0004"            /* $n.. n..-Pˇ-h.. */
	$"FFF4 206E 000C 2D50 FFF8 2D68 0004 FFFC"            /* ˇÙ n..-Pˇ¯-h..ˇ¸ */
	$"302E FFF0 906E FFF8 3480 302E FFF4 906E"            /* 0.ˇênˇ¯4Ä0.ˇÙên */
	$"FFFC 3540 0004 302E FFF2 906E FFFA 3540"            /* ˇ¸5@..0.ˇÚênˇ˙5@ */
	$"0002 302E FFF6 906E FFFE 3540 0006 245F"            /* ..0.ˇˆênˇ˛5@..$_ */
	$"4E5E 205F 4FEF 000C 4ED0 8753 5542 5245"            /* N^ _OÔ..N–áSUBRE */
	$"4354 0000 4E56 FFB6 48E7 1838 246E 000E"            /* CT..NVˇ∂HÁ.8$n.. */
	$"2F0A A873 2F0A 486E FFC8 4EBA FCC0 594F"            /* /.®s/.Hnˇ»N∫¸¿YO */
	$"2F0A 4EBA FC28 205F 2848 594F 2F0A 4EBA"            /* /.N∫¸( _(HYO/.N∫ */
	$"FC4A 205F 2648 2F0A 486E FFB6 4EBA FC6C"            /* ¸J _&H/.Hnˇ∂N∫¸l */
	$"554F 2F0B A8E2 101F 6730 2F0A 486E FFE8"            /* UO/.®‚..g0/.HnˇË */
	$"4EBA FC8A 2D6E FFE8 FFD8 2D6E FFEC FFDC"            /* N∫¸ä-nˇËˇÿ-nˇÏˇ‹ */
	$"302E FFE8 906E 000C 3D40 FFE8 2D6E FFE8"            /* 0.ˇËên..=@ˇË-nˇË */
	$"FFE0 2D6E FFEC FFE4 601C 2054 2D68 0002"            /* ˇ‡-nˇÏˇ‰`. T-h.. */
	$"FFD8 2D68 0006 FFDC 2053 2D68 0002 FFE0"            /* ˇÿ-h..ˇ‹ S-h..ˇ‡ */
	$"2D68 0006 FFE4 302E FFE0 906E FFD8 3D40"            /* -h..ˇ‰0.ˇ‡ênˇÿ=@ */
	$"FFD0 302E FFE2 906E FFDA 3D40 FFD2 302E"            /* ˇ–0.ˇ‚ênˇ⁄=@ˇ“0. */
	$"FFE6 906E FFDE 3D40 FFD6 302E FFE4 906E"            /* ˇÊênˇﬁ=@ˇ÷0.ˇ‰ên */
	$"FFDC 3D40 FFD4 2D6E FFD8 FFC0 2D6E FFDC"            /* ˇ‹=@ˇ‘-nˇÿˇ¿-nˇ‹ */
	$"FFC4 594F A8D8 205F 2648 2F0B 486E FFC0"            /* ˇƒYO®ÿ _&H/.Hnˇ¿ */
	$"A8DF 594F 2EB8 09EE 205F 2F08 2F0B 2F0B"            /* ®ﬂYO.∏.Ó _/././. */
	$"A8E4 554F 2F0B A8E2 101F 670C 2D6E FFE0"            /* ®‰UO/.®‚..g.-nˇ‡ */
	$"FFC0 2D6E FFE4 FFC4 2F0B A8D9 486E FFC0"            /* ˇ¿-nˇ‰ˇƒ/.®ŸHnˇ¿ */
	$"486E FFF0 486E FFBF 4EBA FCF0 486E FFF8"            /* HnˇHnˇøN∫¸Hnˇ¯ */
	$"42A7 3F2E 000A 3F2E 0008 A8A7 486E FFF8"            /* Bß?...?...®ßHnˇ¯ */
	$"3F2E FFCA 3F2E FFC8 A8A8 486E FFF8 486E"            /* ?.ˇ ?.ˇ»®®Hnˇ¯Hn */
	$"FFD0 486E FFF8 4EBA FDE8 554F 486E FFF8"            /* ˇ–Hnˇ¯N∫˝ËUOHnˇ¯ */
	$"486E FFF0 486E FFE8 A8AA 101F 1600 554F"            /* HnˇHnˇË®™....UO */
	$"486E FFF8 486E FFE8 A8A6 101F 664E 554F"            /* Hnˇ¯HnˇË®¶..fNUO */
	$"3F2E FFFA 3F2E FFFE 3F2E FFEA 3F2E FFEE"            /* ?.ˇ˙?.ˇ˛?.ˇÍ?.ˇÓ */
	$"3F2E FFF2 3F2E FFF6 4EBA FD1C 301F 3800"            /* ?.ˇÚ?.ˇˆN∫˝.0.8. */
	$"554F 3F2E FFF8 3F2E FFFC 3F2E FFE8 3F2E"            /* UO?.ˇ¯?.ˇ¸?.ˇË?. */
	$"FFEC 3F2E FFF0 3F2E FFF4 4EBA FCFA 301F"            /* ˇÏ?.ˇ?.ˇÙN∫¸˙0. */
	$"3600 486E FFF8 3F04 3F03 A8A8 554F 486E"            /* 6.Hnˇ¯?.?.®®UOHn */
	$"FFF8 486E FFF0 486E FFE8 A8AA 101F 1600"            /* ˇ¯HnˇHnˇË®™.... */
	$"554F 486E FFF8 486E FFE8 A8A6 101F 6664"            /* UOHnˇ¯HnˇË®¶..fd */
	$"302E FFF6 906E FFF2 322E FFFE 926E FFFA"            /* 0.ˇˆênˇÚ2.ˇ˛ínˇ˙ */
	$"B240 6F28 7004 D06E FFF2 3D40 FFFA 4A2E"            /* ≤@o(p.–nˇÚ=@ˇ˙J. */
	$"FFBF 670E 302E FFF6 0440 0040 3D40 FFFE"            /* ˇøg.0.ˇˆ.@.@=@ˇ˛ */
	$"600A 302E FFF6 5940 3D40 FFFE 302E FFF4"            /* `.0.ˇˆY@=@ˇ˛0.ˇÙ */
	$"906E FFF0 322E FFFC 926E FFF8 B240 6F14"            /* ênˇ2.ˇ¸ínˇ¯≤@o. */
	$"7004 D06E FFF0 3D40 FFF8 302E FFF4 5940"            /* p.–nˇ=@ˇ¯0.ˇÙY@ */
	$"3D40 FFFC 486E FFF8 486E FFD0 486E FFF8"            /* =@ˇ¸Hnˇ¯Hnˇ–Hnˇ¯ */
	$"4EBA FD48 302E FFFA B06E FFCA 6628 302E"            /* N∫˝H0.ˇ˙∞nˇ f(0. */
	$"FFF8 B06E FFC8 661E 2F0A 302E FFFE 906E"            /* ˇ¯∞nˇ»f./.0.ˇ˛ên */
	$"FFFA 3F00 302E FFFC 906E FFF8 3F00 1F3C"            /* ˇ˙?.0.ˇ¸ênˇ¯?..< */
	$"0001 A91D 600A 2F0A 486E FFF8 4EBA FA8C"            /* ..©.`./.Hnˇ¯N∫˙å */
	$"4CDF 1C18 4E5E 205F 4FEF 000A 4ED0 8D5A"            /* Lﬂ..N^ _OÔ..N–çZ */
	$"4F4F 4D57 494E 444F 574F 5554 0000 4E56"            /* OOMWINDOWOUT..NV */
	$"0000 2F03 554F 2F2E 000C 4878 0004 4EB9"            /* ../.UO/...Hx..Nπ */
	$"0000 D212 301F 3600 4A43 660C 206E 000C"            /* ..“.0.6.JCf. n.. */
	$"2050 2050 20AE 0008 3D43 0010 261F 4E5E"            /*  P P Æ..=C..&.N^ */
	$"205F 504F 4ED0 9148 414E 444C 4541 5252"            /*  _PON–ëHANDLEARR */
	$"4159 4352 4541 5445 0000 4E56 0000 2F0A"            /* AYCREATE..NV../. */
	$"246E 0008 B4FC 0000 56C0 4400 1F00 4EB9"            /* $n..¥¸..V¿D...Nπ */
	$"0000 ACEA 594F 2F0A 4EB9 0000 E790 201F"            /* ..¨ÍYO/.Nπ..Áê . */
	$"5980 2052 2210 4EB9 0000 056A 2D40 000C"            /* YÄ R".Nπ...j-@.. */
	$"245F 4E5E 2E9F 4E75 9048 414E 444C 4541"            /* $_N^.üNuêHANDLEA */
	$"5252 4159 434F 554E 5400 0000 4E56 0000"            /* RRAYCOUNT...NV.. */
	$"2F0A 246E 000C B4FC 0000 56C0 4400 1F00"            /* /.$n..¥¸..V¿D... */
	$"4EB9 0000 ACEA 554F 2F2E 0008 2F0A 2052"            /* Nπ..¨ÍUO/.../. R */
	$"2F10 201F 225F 205F A9EF 3E80 301F 3D40"            /* /. ."_ _©Ô>Ä0.=@ */
	$"0010 245F 4E5E 205F 504F 4ED0 9148 414E"            /* ..$_N^ _PON–ëHAN */
	$"444C 4541 5252 4159 4150 5045 4E44 0000"            /* DLEARRAYAPPEND.. */
	$"4E56 FFFC 48E7 1020 246E 0010 262E 000C"            /* NVˇ¸HÁ. $n..&... */
	$"B4FC 0000 6712 4A83 6F0E 594F 2F0A 4EBA"            /* ¥¸..g.JÉo.YO/.N∫ */
	$"FF3A 201F B680 6F04 7000 6002 7001 1F00"            /* ˇ: .∂Äo.p.`.p... */
	$"4EB9 0000 ACEA 7004 D092 2203 5381 2052"            /* Nπ..¨Íp.–í".SÅ R */
	$"2D40 FFFC 2010 4EB9 0000 04DA D0AE FFFC"            /* -@ˇ¸ .Nπ...⁄–Æˇ¸ */
	$"2040 4850 2F2E 0008 2052 2F10 201F 225F"            /*  @HP/... R/. ."_ */
	$"205F A22E 4CDF 0408 4E5E 205F 4FEF 000C"            /*  _¢.Lﬂ..N^ _OÔ.. */
	$"4ED0 8E48 414E 444C 4541 5252 4159 4745"            /* N–éHANDLEARRAYGE */
	$"5400 0000 4E56 0000 48E7 1020 246E 000C"            /* T...NV..HÁ. $n.. */
	$"262E 0008 B4FC 0000 6712 4A83 6F0E 594F"            /* &...¥¸..g.JÉo.YO */
	$"2F0A 4EBA FEB6 201F B680 6F04 7000 6002"            /* /.N∫˛∂ .∂Äo.p.`. */
	$"7001 1F00 4EB9 0000 ACEA 2F0A 2003 5380"            /* p...Nπ..¨Í/. .SÄ */
	$"2052 2210 4EB9 0000 04DA 5880 2F00 2052"            /*  R".Nπ...⁄XÄ/. R */
	$"2F10 4EB9 0000 D284 4CDF 0408 4E5E 205F"            /* /.Nπ..“ÑLﬂ..N^ _ */
	$"504F 4ED0 9148 414E 444C 4541 5252 4159"            /* PON–ëHANDLEARRAY */
	$"4445 4C45 5445 0000 4E56 FF00 48E7 1E20"            /* DELETE..NVˇ.HÁ.  */
	$"246E 000C 3C2E 000A 1A2E 0008 206E 0010"            /* $n..<....... n.. */
	$"43EE FF00 703F 22D8 51C8 FFFC 7800 182E"            /* CÓˇ.p?"ÿQ»ˇ¸x... */
	$"FF00 7601 601E 41EE FF00 7000 1030 3000"            /* ˇ.v.`.AÓˇ.p..00. */
	$"3F00 2F0A 3F06 1F05 4EBA 00C0 0C43 7FFF"            /* ?./.?...N∫.¿.C.ˇ */
	$"6706 5243 B644 6FDE 4CDF 0478 4E5E 205F"            /* g.RC∂DoﬁLﬂ.xN^ _ */
	$"4FEF 000C 4ED0 8E44 5241 5742 4152 434F"            /* OÔ..N–éDRAWBARCO */
	$"4445 5354 5200 0000 4E56 0000 206E 0008"            /* DESTR...NV.. n.. */
	$"2068 000C 3010 D06E 000C 206E 0008 2068"            /*  h..0.–n.. n.. h */
	$"000C 3080 4E5E 205F 5C4F 4ED0 8657 6869"            /* ..0ÄN^ _\ON–ÜWhi */
	$"7465 3000 0000 4E56 0000 3F2E 000C 3F3C"            /* te0...NV..?...?< */
	$"0001 A89B 206E 0008 2068 000C 3F10 206E"            /* ..®õ n.. h..?. n */
	$"0008 3F28 000A A893 206E 0008 2068 000C"            /* ..?(..®ì n.. h.. */
	$"3F10 206E 0008 7012 D068 000A 3F00 A891"            /* ?. n..p.–h..?.®ë */
	$"206E 0008 2068 000C 3010 D06E 000C 206E"            /*  n.. h..0.–n.. n */
	$"0008 2068 000C 3080 4E5E 205F 5C4F 4ED0"            /* .. h..0ÄN^ _\ON– */
	$"8642 6C61 636B 3100 0000 4E56 0000 48E7"            /* ÜBlack1...NV..HÁ */
	$"1E20 3C2E 0010 594F 2F2D FE02 3F3C 0080"            /* . <...YO/-˛.?<.Ä */
	$"A9A0 205F 2448 0C46 0061 6D0A 0C46 007A"            /* ©† _$H.F.am..F.z */
	$"6E04 0446 0020 200A 6700 00AC 0C46 007F"            /* n..F.  .g..¨.F.. */
	$"6E00 00A4 7000 3006 E588 2052 72FF B2B0"            /* n..§p.0.Âà Rrˇ≤∞ */
	$"0800 6700 0092 7000 3006 E588 2052 2A30"            /* ..g..íp.0.Âà R*0 */
	$"0800 7608 604E 7002 C1C3 2805 E0AC 7003"            /* ..v.`Np.¡√(.‡¨p. */
	$"C880 3004 670E 5340 6716 5340 671E 5340"            /* »Ä0.g.S@g.S@g.S@ */
	$"6726 602E 3F3C 0001 2F0E 4EBA FEEC 6022"            /* g&`.?<../.N∫˛Ï`" */
	$"3F3C 0003 2F0E 4EBA FEE0 6016 3F3C 0001"            /* ?<../.N∫˛‡`.?<.. */
	$"2F0E 4EBA FF02 600A 3F3C 0003 2F0E 4EBA"            /* /.N∫ˇ.`.?<../.N∫ */
	$"FEF6 5343 4A43 6CAE 3F3C 0001 2F0E 4EBA"            /* ˛ˆSCJClÆ?<../.N∫ */
	$"FEB8 4A2E 0008 671E 206E 000C 3010 0440"            /* ˛∏J...g. n..0..@ */
	$"000C 3F00 7012 D06E 000A 0640 000B 3F00"            /* ..?.p.–n...@..?. */
	$"A893 3F06 A883 4CDF 0478 4E5E 205F 4FEF"            /* ®ì?.®ÉLﬂ.xN^ _OÔ */
	$"000A 4ED0 8F44 5241 5742 4152 434F 4445"            /* ..N–èDRAWBARCODE */
	$"4348 4152 0000 4E56 0000 2F03 486D F050"            /* CHAR..NV../.HmP */
	$"A86E A8FE A912 A930 A9CC 4878 0000 A97B"            /* ®n®˛©.©0©ÃHx..©{ */
	$"594F 2E8F 201F 0480 0000 8000 2040 4850"            /* YO.è ..Ä..Ä. @HP */
	$"205F A02D A063 7601 6004 A036 5243 0C43"            /*  _†-†cv.`.†6RC.C */
	$"0003 6FF6 261F 4E5E 4E75 8E49 4E49 5449"            /* ..oˆ&.N^NuéINITI */
	$"414C 495A 4154 494F 4E00 0000 4E56 FFFC"            /* ALIZATION...NVˇ¸ */
	$"3D7C 0028 FFFC 3D7C 0028 FFFE 2D6E FFFC"            /* =|.(ˇ¸=|.(ˇ˛-nˇ¸ */
	$"0008 4E5E 4E75 854D 4653 5054 0000 4E56"            /* ..N^NuÖMFSPT..NV */
	$"FFA8 48E7 1020 206E 0008 43EE FFA8 7015"            /* ˇ®HÁ.  n..CÓˇ®p. */
	$"22D8 51C8 FFFC 246E 000C 14AE FFA8 4A2E"            /* "ÿQ»ˇ¸$n...Æˇ®J. */
	$"FFF8 56C0 4400 1540 0001 256E FFAA 0002"            /* ˇ¯V¿D..@..%nˇ™.. */
	$"356E FFAE 0006 256E FFB0 0008 41EE FFA8"            /* 5nˇÆ..%nˇ∞..AÓˇ® */
	$"5088 5888 2608 2043 7000 1010 5240 48C0"            /* PàXà&. Cp...R@H¿ */
	$"2043 43EA 000C A22E 4CDF 0408 4E5E 205F"            /*  CCÍ..¢.Lﬂ..N^ _ */
	$"504F 4ED0 8B53 4554 5354 4452 4550 4C59"            /* PON–ãSETSTDREPLY */
	$"0000 4E56 FFB6 48E7 1020 206E 0008 43EE"            /* ..NVˇ∂HÁ.  n..CÓ */
	$"FFB6 7011 22D8 51C8 FFFC 32D8 246E 000C"            /* ˇ∂p."ÿQ»ˇ¸2ÿ$n.. */
	$"14AE FFB6 156E FFB7 0001 256E FFB8 0002"            /* .Æˇ∂.nˇ∑..%nˇ∏.. */
	$"554F 3F2E FFBC 486A 0006 486A 0008 4EB9"            /* UO?.ˇºHj..Hj..Nπ */
	$"0000 C5F2 301F 3600 41EE FFB6 5088 5488"            /* ..≈Ú0.6.AÓˇ∂PàTà */
	$"2608 2043 7000 1010 5240 48C0 2043 43EA"            /* &. Cp...R@H¿ CCÍ */
	$"000C A22E 4CDF 0408 4E5E 205F 504F 4ED0"            /* ..¢.Lﬂ..N^ _PON– */
	$"8B53 4554 4F4C 4452 4550 4C59 0000 4E56"            /* ãSETOLDREPLY..NV */
	$"FD56 2F0A 246E 0008 206E 0010 43EE FDB6"            /* ˝V/.$n.. n..CÓ˝∂ */
	$"703F 22D8 51C8 FFFC 206E 000C 43EE FEB6"            /* p?"ÿQ»ˇ¸ n..CÓ˛∂ */
	$"703F 22D8 51C8 FFFC 2D4A FD56 4A2D F866"            /* p?"ÿQ»ˇ¸-J˝VJ-¯f */
	$"671E 486E FDB6 486E FEB6 486E FD5E 3F3C"            /* g.Hn˝∂Hn˛∂Hn˝^?< */
	$"0005 A9EA 2F0A 486E FD5E 4EBA FEC2 6032"            /* ..©Í/.Hn˝^N∫˛¬`2 */
	$"594F 4EBA FE98 2D5F FD5A 2F2E FD5A 486E"            /* YON∫˛ò-_˝Z/.˝ZHn */
	$"FDB6 486E FEB6 4878 0000 486E FFB6 3F3C"            /* ˝∂Hn˛∂Hx..Hnˇ∂?< */
	$"0001 A9EA 422E FFB7 2F0A 486E FFB6 4EBA"            /* ..©ÍB.ˇ∑/.Hnˇ∂N∫ */
	$"FF02 245F 4E5E 205F 4FEF 000C 4ED0 8750"            /* ˇ.$_N^ _OÔ..N–áP */
	$"5554 4649 4C45 0000 4E56 FFFC 2F0A 594F"            /* UTFILE..NVˇ¸/.YO */
	$"2E89 205F 2448 594F 4EB9 0000 7618 205F"            /* .â _$HYONπ..v. _ */
	$"2D48 FFFC 4AAA 0016 670A 2F0A 2F2A 0016"            /* -Hˇ¸J™..g././*.. */
	$"205F 4E90 2F2E FFFC 4EB9 0000 7622 245F"            /*  _Nê/.ˇ¸Nπ..v"$_ */
	$"4E5E 4E75 8A54 494D 454D 414E 4745 5200"            /* N^NuäTIMEMANGER. */
	$"0000 4E56 0000 2F0A 246E 0008 42AA 000A"            /* ..NV../.$n..B™.. */
	$"256D F49C 0006 42AA 000E 42AA 0012 42AA"            /* %mÙú..B™..B™..B™ */
	$"0016 2F0A 205F A458 245F 4E5E 2E9F 4E75"            /* ../. _§X$_N^.üNu */
	$"8B58 494E 5345 5254 5449 4D45 0000 4E56"            /* ãXINSERTTIME..NV */
	$"0000 2F2E 0008 205F A059 4E5E 2E9F 4E75"            /* ../... _†YN^.üNu */
	$"8B58 5245 4D4F 5645 5449 4D45 0000 4E56"            /* ãXREMOVETIME..NV */
	$"0000 2F0A 246E 0010 206A 0006 B1ED F49C"            /* ../.$n.. j..±ÌÙú */
	$"57C0 4400 1F00 4EB9 0000 ACEA 4AAA 0006"            /* W¿D...Nπ..¨ÍJ™.. */
	$"56C0 4400 1F00 4EB9 0000 ACEA 256E 000C"            /* V¿D...Nπ..¨Í%n.. */
	$"0016 2F0A 2F2E 0008 201F 205F A05A 245F"            /* .././... . _†Z$_ */
	$"4E5E 205F 4FEF 000C 4ED0 8A58 5052 494D"            /* N^ _OÔ..N–äXPRIM */
	$"4554 494D 4500 0000 4E56 0000 594F 487A"            /* ETIME...NV..YOHz */
	$"FEF8 2E9F 205F 2B48 F49C 42AE 000C 4E5E"            /* ˛¯.ü _+HÙúBÆ..N^ */
	$"2E9F 4E75 9058 494E 4954 5449 4D45 4D41"            /* .üNuêXINITTIMEMA */
	$"4E41 4745 5200 0000 4E56 0000 4EB9 0000"            /* NAGER...NV..Nπ.. */
	$"75E0 487A FFC4 4878 0000 42A7 4878 0000"            /* u‡HzˇƒHx..BßHx.. */
	$"4EB9 0000 BE5E 4E5E 4E75 9253 5441 5254"            /* Nπ..æ^N^NuíSTART */
	$"5550 5449 4D45 4D41 4E41 4745 5200 0000"            /* UPTIMEMANAGER... */
	$"4E56 FFE0 48E7 1820 382E 000C 246E 0008"            /* NVˇ‡HÁ. 8...$n.. */
	$"206E 000E 2D50 FFEA 2D68 0004 FFEE 486E"            /*  n..-PˇÍ-h..ˇÓHn */
	$"FFF8 A88B 4A44 6C00 0118 3D7C 0001 FFF6"            /* ˇ¯®ãJDl...=|..ˇˆ */
	$"3D7C 0001 FFF4 594F 3F3C 009F 1F3C 0001"            /* =|..ˇÙYO?<.ü.<.. */
	$"4EB9 0000 E7B6 205F 2D48 FFE0 594F 3F3C"            /* Nπ..Á∂ _-Hˇ‡YO?< */
	$"0054 1F3C 0001 4EB9 0000 E7B6 205F B1EE"            /* .T.<..Nπ..Á∂ _±Ó */
	$"FFE0 56C0 4400 1600 4A03 6742 554F 2F2E"            /* ˇ‡V¿D...J.gBUO/. */
	$"FFF4 2F2E FFF4 7000 A854 101F 6730 554F"            /* ˇÙ/.ˇÙp.®T..g0UO */
	$"3F2E 0014 2F2E 0016 2F2E FFF4 2F2E FFF4"            /* ?.../.../.ˇÙ/.ˇÙ */
	$"486E FFF2 486E FFE8 4878 0000 4878 0000"            /* HnˇÚHnˇËHx..Hx.. */
	$"4878 0000 7008 A854 301F 3600 6002 76FF"            /* Hx..p.®T0.6.`.vˇ */
	$"4A43 6708 426E FFF2 426E FFE8 306E FFFE"            /* JCg.BnˇÚBnˇË0nˇ˛ */
	$"2D48 FFE0 594F 306E FFFA 2F08 302E FFE8"            /* -Hˇ‡YO0nˇ˙/.0.ˇË */
	$"4440 48C0 2F00 201F 2E9F B097 6F02 2E80"            /* D@H¿/. ..ü∞óo..Ä */
	$"201F 2D40 FFE4 594F 306E FFF8 2F08 306E"            /*  .-@ˇ‰YO0nˇ¯/.0n */
	$"FFF2 2F08 201F 2E9F B097 6F02 2E80 201F"            /* ˇÚ/. ..ü∞óo..Ä . */
	$"D0AE FFE4 D0AE FFE0 3600 306E FFFE 326E"            /* –Æˇ‰–Æˇ‡6.0nˇ˛2n */
	$"FFEA 2D48 FFE4 2D49 FFE0 594F 306E FFF8"            /* ˇÍ-Hˇ‰-Iˇ‡YO0nˇ¯ */
	$"2F08 306E FFF2 2F08 201F 2E9F B097 6F02"            /* /.0nˇÚ/. ..ü∞óo. */
	$"2E80 201F D0AE FFE0 D0AE FFE4 3480 602E"            /* .Ä .–Æˇ‡–Æˇ‰4Ä`. */
	$"4A44 661C 362E FFF8 D66E FFFA D66E FFFE"            /* JDf.6.ˇ¯÷nˇ˙÷nˇ˛ */
	$"302E FFEA D06E FFF8 D06E FFFE 3480 600E"            /* 0.ˇÍ–nˇ¯–nˇ˛4Ä`. */
	$"3604 302E FFEA D044 D06E FFFE 3480 3D43"            /* 6.0.ˇÍ–D–nˇ˛4Ä=C */
	$"001A 4CDF 0418 4E5E 205F 4FEF 0012 4ED0"            /* ..Lﬂ..N^ _OÔ..N– */
	$"8D4E 5442 4C49 4E45 4845 4947 4854 0000"            /* çNTBLINEHEIGHT.. */
	$"4E56 FFF8 48E7 1F20 246E 0016 2C2E 0012"            /* NVˇ¯HÁ. $n..,... */
	$"3A2E 000C 382E 000A 206E 000E 2D50 FFF8"            /* :...8... n..-Pˇ¯ */
	$"2D68 0004 FFFC 594F 2F0A 2F06 2F3C 8408"            /* -h..ˇ¸YO/././<Ñ. */
	$"0028 A8B5 201F 2600 0C45 0080 6656 554F"            /* .(®µ .&..E.ÄfVUO */
	$"2F0A 4267 3F03 A886 301F 322E 0008 9240"            /* /.Bg?.®Ü0.2...í@ */
	$"3E01 3F2E FFFA 3F04 A893 0C2E 0002 001A"            /* >.?.ˇ˙?.®ì...... */
	$"6718 594F 2F0A 2006 5380 2F00 201F D09F"            /* g.YO/. .SÄ/. .–ü */
	$"2E80 205F 0C10 000D 660C 554F 3EB8 0BAC"            /* .Ä _....f.UO>∏.¨ */
	$"301F 3A00 600E 2F0A 3F03 3F07 2F3C 8008"            /* 0.:.`./.?.?./<Ä. */
	$"001E A8B5 3005 5440 670E 5340 6714 5340"            /* ..®µ0.T@g.S@g.S@ */
	$"6706 5340 6726 6052 3F2E FFFA 3F04 A893"            /* g.S@g&`R?.ˇ˙?.®ì */
	$"6048 554F 2F0A 4267 3F03 A886 301F 322E"            /* `HUO/.Bg?.®Ü0.2. */
	$"FFFE 9240 3F01 3F04 A893 602E 554F 2F0A"            /* ˇ˛í@?.?.®ì`.UO/. */
	$"4267 3F03 A886 301F 322E 0008 9240 48C1"            /* Bg?.®Ü0.2...í@H¡ */
	$"2001 E088 E088 E088 EE88 D081 E280 306E"            /*  .‡à‡à‡àÓà–Å‚Ä0n */
	$"FFFA D088 3F00 3F04 A893 0C45 0080 6708"            /* ˇ˙–à?.?.®ì.E.Äg. */
	$"2F0A 4267 3F06 A885 4CDF 04F8 4E5E 205F"            /* /.Bg?.®ÖLﬂ.¯N^ _ */
	$"4FEF 0014 4ED0 874E 5442 4452 4157 0000"            /* OÔ..N–áNTBDRAW.. */
	$"4E56 FFE6 48E7 1F38 262E 0020 282E 001C"            /* NVˇÊHÁ.8&.. (... */
	$"3E2E 0016 266E 0008 206E 0018 2D50 FFEE"            /* >...&n.. n..-PˇÓ */
	$"2D68 0004 FFF2 594F A8D8 205F 2D48 FFEA"            /* -h..ˇÚYO®ÿ _-HˇÍ */
	$"2F2E FFEA A87A 486E FFEE A87B 3C2E FFF4"            /* /.ˇÍ®zHnˇÓ®{<.ˇÙ */
	$"9C6E FFF0 594F 3046 2F08 A83F 201F 2840"            /* únˇYO0F/.®? .(@ */
	$"4A47 660A 554F 3EB8 0BAC 301F 3E00 554F"            /* JGf.UO>∏.¨0.>.UO */
	$"2F03 2F04 486E FFEE 3F2E 0014 486E FFFA"            /* /./.HnˇÓ?...Hnˇ˙ */
	$"4EBA FCDE 301F 3A00 4253 2443 594F 2F03"            /* N∫¸ﬁ0.:.BS$CYO/. */
	$"2F04 201F D09F 2E80 205F 2D48 FFE6 2604"            /* /. .–ü.Ä _-HˇÊ&. */
	$"6068 7001 2D40 FFFC 2D4C FFF6 554F 2F0A"            /* `hp.-@ˇ¸-LˇˆUO/. */
	$"2F03 42A7 2F03 42A7 486E FFF6 486E FFFC"            /* /.Bß/.BßHnˇˆHnˇ¸ */
	$"2F3C 821C FFFE A8B5 101F 1800 1F04 2F0A"            /* /<Ç.ˇ˛®µ....../. */
	$"2F2E FFFC 486E FFEE 3F07 3F2E FFFA 3F06"            /* /.ˇ¸HnˇÓ?.?.ˇ˙?. */
	$"4EBA FE0E 302E FFFA D045 3D40 FFFA 594F"            /* N∫˛.0.ˇ˙–E=@ˇ˙YO */
	$"2F0A 2F2E FFFC 201F D09F 2E80 205F 2448"            /* /./.ˇ¸ .–ü.Ä _$H */
	$"96AE FFFC 7001 D053 3680 4A83 6E94 302E"            /* ñÆˇ¸p.–S6ÄJÉnî0. */
	$"FFFA 9045 206E 0010 3080 206E 000C 3085"            /* ˇ˙êE n..0Ä n..0Ö */
	$"2F2E FFEA A879 2F2E FFEA A8D9 4CDF 1CF8"            /* /.ˇÍ®y/.ˇÍ®ŸLﬂ.¯ */
	$"4E5E 205F 4FEF 001C 4ED0 8A4E 454F 5445"            /* N^ _OÔ..N–äNEOTE */
	$"5854 424F 5800 0000 4E56 0000 4A2D F819"            /* XTBOX...NV..J-¯. */
	$"6716 0C2D 0002 F619 6608 486D F508 A851"            /* g..-..ˆ.f.Hmı.®Q */
	$"6006 486D F4C4 A851 4E5E 4E75 8C55 5044"            /* `.HmÙƒ®QN^NuåUPD */
	$"4154 4543 5552 534F 5200 0000 4E56 0000"            /* ATECURSOR...NV.. */
	$"0C2D 0001 F619 6618 594F 2EB8 016A 201F"            /* .-..ˆ.f.YO.∏.j . */
	$"B0AD F4A2 6F0A 1B7C 0002 F619 4EBA FFAA"            /* ∞≠Ù¢o..|..ˆ.N∫ˇ™ */
	$"2F2E 0008 2F2D F4A6 4878 00C8 4EB9 0000"            /* /.../-Ù¶Hx.»Nπ.. */
	$"9BDE 4E5E 2E9F 4E75 8A43 5552 534F 5254"            /* õﬁN^.üNuäCURSORT */
	$"4153 4B00 0000 4E56 FFBC 206E 0008 43EE"            /* ASK...NVˇº n..CÓ */
	$"FFBC 7010 22D8 51C8 FFFC 41EE FFBC 43ED"            /* ˇºp."ÿQ»ˇ¸AÓˇºCÌ */
	$"F4C4 7010 22D8 51C8 FFFC 4EBA FF5C 4E5E"            /* Ùƒp."ÿQ»ˇ¸N∫ˇ\N^ */
	$"2E9F 4E75 8943 5552 534F 5253 4554 0000"            /* .üNuâCURSORSET.. */
	$"4E56 0000 594F 2015 0480 0000 00CA 2E80"            /* NV..YO ..Ä... .Ä */
	$"205F 4868 005E 4EBA FFAE 4E5E 4E75 8E43"            /*  _Hh.^N∫ˇÆN^NuéC */
	$"5552 534F 5253 4554 4152 524F 5700 0000"            /* URSORSETARROW... */
	$"4E56 0000 486D F5D4 4EBA FF8C 4E5E 4E75"            /* NV..Hmı‘N∫ˇåN^Nu */
	$"8E43 5552 534F 5253 4554 4942 4541 4D00"            /* éCURSORSETIBEAM. */
	$"0000 4E56 0000 486D F508 4EBA FF6A 4E5E"            /* ..NV..Hmı.N∫ˇjN^ */
	$"4E75 8E43 5552 534F 5253 4554 5741 5443"            /* NuéCURSORSETWATC */
	$"4800 0000 4E56 0000 2F03 162E 0008 B62D"            /* H...NV../.....∂- */
	$"F4A1 6724 4A03 6718 594F A975 201F 0680"            /* Ù°g$J.g.YO©u ..Ä */
	$"0000 0708 2B40 F4A2 1B7C 0001 F619 6004"            /* ....+@Ù¢.|..ˆ.`. */
	$"422D F619 1B43 F4A1 4EBA FE9E 261F 4E5E"            /* B-ˆ..CÙ°N∫˛û&.N^ */
	$"205F 544F 4ED0 9343 5552 534F 5253 4554"            /*  _TON–ìCURSORSET */
	$"5052 4F43 4553 5349 4E47 0000 4E56 0000"            /* PROCESSING..NV.. */
	$"594F 487A FEA8 2E9F 205F 2B48 F4A6 422D"            /* YOHz˛®.ü _+HÙ¶B- */
	$"F619 594F 3F3C 0001 A9B9 205F 2050 43ED"            /* ˆ.YO?<..©π _ PCÌ */
	$"F5D4 7010 22D8 51C8 FFFC 594F 3F3C 0002"            /* ı‘p."ÿQ»ˇ¸YO?<.. */
	$"A9B9 205F 2050 43ED F590 7010 22D8 51C8"            /* ©π _ PCÌıêp."ÿQ» */
	$"FFFC 594F 3F3C 0003 A9B9 205F 2050 43ED"            /* ˇ¸YO?<..©π _ PCÌ */
	$"F54C 7010 22D8 51C8 FFFC 594F 3F3C 0004"            /* ıLp."ÿQ»ˇ¸YO?<.. */
	$"A9B9 205F 2050 43ED F508 7010 22D8 51C8"            /* ©π _ PCÌı.p."ÿQ» */
	$"FFFC 594F 2015 0480 0000 00CA 2E80 205F"            /* ˇ¸YO ..Ä... .Ä _ */
	$"41E8 005E 43ED F4C4 7010 22D8 51C8 FFFC"            /* AË.^CÌÙƒp."ÿQ»ˇ¸ */
	$"422D F4A1 486D F4AA 4EB9 0000 9B82 486D"            /* B-Ù°HmÙ™Nπ..õÇHm */
	$"F4AA 2F2D F4A6 4878 00C8 4EB9 0000 9BDE"            /* Ù™/-Ù¶Hx.»Nπ..õﬁ */
	$"42AE 000C 4E5E 2E9F 4E75 8B49 4E49 5443"            /* BÆ..N^.üNuãINITC */
	$"5552 534F 5253 0000 4E56 0000 486D F4AA"            /* URSORS..NV..HmÙ™ */
	$"4EB9 0000 9BBE 4E5E 4E75 8D46 494E 4953"            /* Nπ..õæN^NuçFINIS */
	$"4843 5552 534F 5253 0000 4E56 0000 4EB9"            /* HCURSORS..NV..Nπ */
	$"0000 9C68 487A FF06 4878 0000 42A7 487A"            /* ..úhHzˇ.Hx..BßHz */
	$"FFC8 4EB9 0000 BE5E 4E5E 4E75 8E53 5441"            /* ˇ»Nπ..æ^N^NuéSTA */
	$"5254 5550 4355 5253 4F52 5300 0000 4E56"            /* RTUPCURSORS...NV */
	$"0000 4E5E 2E9F 4E75 8E50 4F62 6A65 6374"            /* ..N^.üNuéPObject */
	$"5F43 7265 6174 6500 0000 4E56 0000 2F2E"            /* _Create...NV../. */
	$"0008 4EB9 0000 E3FA 4E5E 2E9F 4E75 8F50"            /* ..Nπ..„˙N^.üNuèP */
	$"4F62 6A65 6374 5F44 6573 7472 6F79 0000"            /* Object_Destroy.. */
	$"4E56 FFF8 206E 000C 2D50 FFF8 2D68 0004"            /* NVˇ¯ n..-Pˇ¯-h.. */
	$"FFFC 3D7C 0001 0010 4E5E 205F 504F 4ED0"            /* ˇ¸=|....N^ _PON– */
	$"9250 4F62 6A65 6374 5F43 6F75 6E74 5061"            /* íPObject_CountPa */
	$"6765 7300 0000 4E56 0000 4E5E 2E9F 4E75"            /* ges...NV..N^.üNu */
	$"8E50 4F62 6A65 6374 5F44 6F49 646C 6500"            /* éPObject_DoIdle. */
	$"0000 4E56 FFF8 2F0A 246E 0012 206E 0016"            /* ..NVˇ¯/.$n.. n.. */
	$"2D50 FFF8 2D68 0004 FFFC 2F0A A873 45EE"            /* -Pˇ¯-h..ˇ¸/.®sEÓ */
	$"FFF8 302A 0002 D06A 0006 48C0 2200 E089"            /* ˇ¯0*..–j..H¿".‡â */
	$"E089 E089 EE89 D280 E281 7014 9280 3F01"            /* ‡â‡âÓâ“Ä‚Åp.íÄ?. */
	$"3012 D06A 0004 48C0 2200 E089 E089 E089"            /* 0.–j..H¿".‡â‡â‡â */
	$"EE89 D280 E281 3F01 A893 486D FE06 A884"            /* Óâ“Ä‚Å?.®ìHm˛.®Ñ */
	$"426E 001A 245F 4E5E 205F 4FEF 0012 4ED0"            /* Bn..$_N^ _OÔ..N– */
	$"9050 4F62 6A65 6374 5F44 7261 7750 6167"            /* êPObject_DrawPag */
	$"6500 0000 4E56 0000 4EB9 0000 A192 4E5E"            /* e...NV..Nπ..°íN^ */
	$"2E9F 4E75 8020 504F 626A 6563 745F 4F70"            /* .üNuÄ PObject_Op */
	$"656E 5072 696E 7469 6E67 5374 6174 7573"            /* enPrintingStatus */
	$"4469 616C 6F67 0000 4E56 0000 4EB9 0000"            /* Dialog..NV..Nπ.. */
	$"A140 4E5E 2E9F 4E75 8021 504F 626A 6563"            /* °@N^.üNuÄ!PObjec */
	$"745F 436C 6F73 6550 7269 6E74 696E 6753"            /* t_ClosePrintingS */
	$"7461 7475 7344 6961 6C6F 6700 0000 4E56"            /* tatusDialog...NV */
	$"0000 2F2D F61A 4878 0005 2F2D F61A 4EB9"            /* ../-ˆ.Hx../-ˆ.Nπ */
	$"0000 E35A 504F 2050 4E90 4E5E 4E75 8644"            /* ..„ZPO PNêN^NuÜD */
	$"4F49 444C 4500 0000 4E56 FFFE 2F3C C800"            /* OIDLE...NVˇ˛/<». */
	$"0000 A8FD 554F 2F3C BA00 0000 A8FD 301F"            /* ..®˝UO/<∫...®˝0. */
	$"661A 554F 2F2E 0008 2F3C 2A04 0484 A8FD"            /* f.UO/.../<*..Ñ®˝ */
	$"101F 1D40 FFFF 426E 0010 6010 554F 2F3C"            /* ...@ˇˇBn..`.UO/< */
	$"BA00 0000 A8FD 301F 3D40 0010 2F3C D000"            /* ∫...®˝0.=@../<–. */
	$"0000 A8FD 4E5E 205F 504F 4ED0 8B44 4F50"            /* ..®˝N^ _PON–ãDOP */
	$"4147 4553 4554 5550 0000 4E56 FFDE 48E7"            /* AGESETUP..NVˇﬁHÁ */
	$"1F38 266E 000C 286E 0008 486E FFF8 A874"            /* .8&n..(n..Hnˇ¯®t */
	$"2B4B F61A 2F3C C800 0000 A8FD 554F 2F3C"            /* +Kˆ./<»...®˝UO/< */
	$"BA00 0000 A8FD 301F 6600 0188 554F A994"            /* ∫...®˝0.f..àUO©î */
	$"301F 3D40 FFFC 554F 2054 4868 0008 2F0B"            /* 0.=@ˇ¸UO THh../. */
	$"4878 0002 2F0B 4EB9 0000 E35A 504F 2050"            /* Hx../.Nπ..„ZPO P */
	$"4E90 301F 3600 554F 2F0C 2F3C 3204 0488"            /* Nê0.6.UO/./<2..à */
	$"A8FD 101F 6700 0140 2054 3828 0042 2054"            /* ®˝..g..@ T8(.B T */
	$"3C28 003E 2054 3A28 0040 2054 317C 0001"            /* <(.> T:(.@ T1|.. */
	$"003E 2054 317C 270F 0040 BA43 6F02 3A03"            /* .> T1|'..@∫Co.:. */
	$"2F0B 4878 0004 2F0B 4EB9 0000 E35A 504F"            /* /.Hx../.Nπ..„ZPO */
	$"2050 4E90 3D44 FFFE 7E01 6000 00DC 41FA"            /*  PNê=Dˇ˛~.`..‹A˙ */
	$"FEBE 2254 2348 0046 3F2E FFFC A998 594F"            /* ˛æ"T#H.F?.ˇ¸©òYO */
	$"2F0C 4878 0000 4878 0000 2F3C 0400 0C00"            /* /.Hx..Hx../<.... */
	$"A8FD 205F 2448 554F 2F3C BA00 0000 A8FD"            /* ®˝ _$HUO/<∫...®˝ */
	$"301F 6600 0092 3606 606E 2F0A 4878 0000"            /* 0.f..í6.`n/.Hx.. */
	$"2F3C 1000 0808 A8FD 554F 2F3C BA00 0000"            /* /<....®˝UO/<∫... */
	$"A8FD 301F 6642 554F 2054 4868 0008 2F0A"            /* ®˝0.fBUO THh../. */
	$"3F03 BC43 57C0 4400 1F00 BA43 57C0 4400"            /* ?.ºCW¿D...∫CW¿D. */
	$"1F00 2F0B 4878 0003 2F0B 4EB9 0000 E35A"            /* ../.Hx../.Nπ..„Z */
	$"504F 2050 4E90 301F 3800 4A44 670A 3F04"            /* PO PNê0.8.JDg.?. */
	$"2F3C C000 0200 A8FD 2F0A 2F3C 1800 040C"            /* /<¿...®˝/./<.... */
	$"A8FD 7001 D043 3600 554F 2F3C BA00 0000"            /* ®˝p.–C6.UO/<∫... */
	$"A8FD 301F 4A40 57C0 4400 B645 5FC1 4401"            /* ®˝0.J@W¿D.∂E_¡D. */
	$"C200 6600 FF76 2F0A 2F3C 0800 0484 A8FD"            /* ¬.f.ˇv/./<...Ñ®˝ */
	$"0C47 7FFF 670A 5247 BE6E FFFE 6F00 FF20"            /* .G.ˇg.RGænˇ˛o.ˇ  */
	$"2F0B 4878 0006 2F0B 4EB9 0000 E35A 504F"            /* /.Hx../.Nπ..„ZPO */
	$"2050 4E90 600C 3F3C 0080 2F3C C000 0200"            /*  PNê`.?<.Ä/<¿... */
	$"A8FD 554F 2F3C BA00 0000 A8FD 301F 4A40"            /* ®˝UO/<∫...®˝0.J@ */
	$"57C0 4400 2054 0C28 0001 0044 57C1 4401"            /* W¿D. T.(...DW¡D. */
	$"C200 671A 2F0C 4878 0000 4878 0000 4878"            /* ¬.g./.Hx..Hx..Hx */
	$"0000 486E FFDE 2F3C 6005 1480 A8FD 554F"            /* ..Hnˇﬁ/<`..Ä®˝UO */
	$"2F3C BA00 0000 A8FD 301F 0C40 0080 6608"            /* /<∫...®˝0..@.Äf. */
	$"3D7C FF80 0010 6010 554F 2F3C BA00 0000"            /* =|ˇÄ..`.UO/<∫... */
	$"A8FD 301F 3D40 0010 2F3C D000 0000 A8FD"            /* ®˝0.=@../<–...®˝ */
	$"2F2E FFF8 A873 4CDF 1CF8 4E5E 205F 504F"            /* /.ˇ¯®sLﬂ.¯N^ _PO */
	$"4ED0 8A50 5249 4E54 5354 5546 4600 0000"            /* N–äPRINTSTUFF... */
	$"4E56 0000 594F 4878 0078 201F A122 2E88"            /* NV..YOHx.x .°".à */
	$"205F 2B48 F61E 2F3C C800 0000 A8FD 554F"            /*  _+Hˆ./<»...®˝UO */
	$"2F3C BA00 0000 A8FD 301F 6614 2F2D F61E"            /* /<∫...®˝0.f./-ˆ. */
	$"2F3C 2004 0480 A8FD 2F3C D000 0000 A8FD"            /* /< ..Ä®˝/<–...®˝ */
	$"42AE 000C 4E5E 2E9F 4E75 8C49 4E49 5450"            /* BÆ..N^.üNuåINITP */
	$"5249 4E54 494E 4700 0000 4E56 0000 2F2D"            /* RINTING...NV../- */
	$"F61E 205F A023 4E5E 4E75 8E46 494E 4953"            /* ˆ. _†#N^NuéFINIS */
	$"4850 5249 4E54 494E 4700 0000 4E56 0000"            /* HPRINTING...NV.. */
	$"4EB9 0000 A2FA 487A FF78 4878 0000 42A7"            /* Nπ..¢˙HzˇxHx..Bß */
	$"487A FFC8 4EB9 0000 BE5E 4E5E 4E75 8F53"            /* Hzˇ»Nπ..æ^N^NuèS */
	$"5441 5254 5550 5052 494E 5449 4E47 0000"            /* TARTUPPRINTING.. */
	$"4E56 FFF8 2F03 554F 2F2E 0008 2F2D FE4E"            /* NVˇ¯/.UO/.../-˛N */
	$"2F2D FE52 486E FFF8 4878 0000 42A7 486E"            /* /-˛RHnˇ¯Hx..BßHn */
	$"FFFC 303C 0E15 A816 301F 3600 0C43 F95B"            /* ˇ¸0<..®.0.6..C˘[ */
	$"6604 7600 6008 4A43 6604 363C F954 3D43"            /* f.v.`.JCf.6<˘T=C */
	$"000C 261F 4E5E 2E9F 4E75 9147 4F54 5245"            /* ..&.N^.üNuëGOTRE */
	$"5155 4952 4544 5041 5241 4D53 0000 4E56"            /* QUIREDPARAMS..NV */
	$"FFF6 2F03 554F 2F2E 0010 2F2E 000C 2F2D"            /* ˇˆ/.UO/.../.../- */
	$"FE56 486E FFF6 486E FFFF 4878 0001 486E"            /* ˛VHnˇˆHnˇˇHx..Hn */
	$"FFFA 303C 0E11 A816 301F 3600 4A43 6608"            /* ˇ˙0<..®.0.6.JCf. */
	$"206E 0008 10AE FFFF 3D43 0014 261F 4E5E"            /*  n...Æˇˇ=C..&.N^ */
	$"205F 4FEF 000C 4ED0 9647 4554 424F 4F4C"            /*  _OÔ..N–ñGETBOOL */
	$"4541 4E46 524F 4D41 4552 4543 4F52 4400"            /* EANFROMAERECORD. */
	$"0000 4E56 FFA4 48E7 1020 246E 0008 422D"            /* ..NVˇ§HÁ. $n..B- */
	$"F633 422D F634 554F 2F0A 2F2D FE5A 2F2D"            /* ˆ3B-ˆ4UO/./-˛Z/- */
	$"FE5E 486E FFA4 486E FFAC 4878 0008 486E"            /* ˛^Hnˇ§Hnˇ¨Hx..Hn */
	$"FFA8 303C 0E15 A816 301F 3600 4A43 6622"            /* ˇ®0<..®.0.6.JCf" */
	$"703C 2D40 FFC4 42AE FFC8 42AE FFFC 554F"            /* p<-@ˇƒBÆˇ»BÆˇ¸UO */
	$"486E FFAC 486E FFC4 3F3C 003A A88F 301F"            /* Hnˇ¨Hnˇƒ?<.:®è0. */
	$"3600 4A43 664A 0CAE 4D41 4353 FFD8 6640"            /* 6.JCfJ.ÆMACSˇÿf@ */
	$"554F 3F3C FFFF 486E FFB4 205F 301F A030"            /* UO?<ˇˇHnˇ¥ _0.†0 */
	$"5240 1E80 101F 1600 302E FFC2 0280 0000"            /* R@.Ä....0.ˇ¬.Ä.. */
	$"0800 4A80 56C0 4400 1B40 F634 302E FFC2"            /* ..JÄV¿D..@ˆ40.ˇ¬ */
	$"0280 0000 1000 4A80 56C0 4400 1B40 F633"            /* .Ä....JÄV¿D..@ˆ3 */
	$"554F 2F0A 2F2D FE62 486D F634 4EB9 0000"            /* UO/./-˛bHmˆ4Nπ.. */
	$"A88E 301F 3600 554F 2F0A 2F2D FE66 486D"            /* ®é0.6.UO/./-˛fHm */
	$"F633 4EB9 0000 A88E 301F 3600 4CDF 0408"            /* ˆ3Nπ..®é0.6.Lﬂ.. */
	$"4E5E 2E9F 4E75 8C47 4554 4D4F 4449 4649"            /* N^.üNuåGETMODIFI */
	$"4552 5300 0000 4E56 0000 2F03 2F2E 0010"            /* ERS...NV.././... */
	$"4EBA FF00 554F 2F2E 0010 4EB9 0000 A830"            /* N∫ˇ.UO/...Nπ..®0 */
	$"301F 3600 4A43 660C 554F 206E 0008 4E90"            /* 0.6.JCf.UO n..Nê */
	$"301F 3600 3D43 0014 261F 4E5E 205F 4FEF"            /* 0.6.=C..&.N^ _OÔ */
	$"000C 4ED0 8C48 414E 444C 454E 4F44 4F43"            /* ..N–åHANDLENODOC */
	$"5300 0000 4E56 FFA2 48E7 1E20 246E 0010"            /* S...NVˇ¢HÁ. $n.. */
	$"2F0A 4EBA FEAE 554F 2F0A 2F2D FE6A 2F2D"            /* /.N∫˛ÆUO/./-˛j/- */
	$"FE6E 486E FFB2 303C 0812 A816 301F 3C00"            /* ˛nHnˇ≤0<..®.0.<. */
	$"4A46 6600 008C 554F 2F0A 4EB9 0000 A830"            /* JFf..åUO/.Nπ..®0 */
	$"301F 3600 554F 486E FFB2 486E FFA2 303C"            /* 0.6.UOHnˇ≤Hnˇ¢0< */
	$"0407 A816 301F 3C00 4A46 6654 2A2E FFA2"            /* ..®.0.<.JFfT*.ˇ¢ */
	$"7601 6048 554F 486E FFB2 2F03 2F2D FE72"            /* v.`HUOHnˇ≤/./-˛r */
	$"486E FFAA 486E FFA6 486E FFBA 4878 0046"            /* Hnˇ™Hnˇ¶Hnˇ∫Hx.F */
	$"486E FFAE 303C 100A A816 301F 3800 4A44"            /* HnˇÆ0<..®.0.8.JD */
	$"6610 554F 486E FFBA 206E 0008 4E90 301F"            /* f.UOHnˇ∫ n..Nê0. */
	$"3800 0C83 7FFF FFFF 6706 5283 B685 6FB4"            /* 8..É.ˇˇˇg.RÉ∂Öo¥ */
	$"554F 486E FFB2 303C 0204 A816 301F 3600"            /* UOHnˇ≤0<..®.0.6. */
	$"3D46 0014 4CDF 0478 4E5E 205F 4FEF 000C"            /* =F..Lﬂ.xN^ _OÔ.. */
	$"4ED0 8A48 414E 444C 4544 4F43 5300 0000"            /* N–äHANDLEDOCS... */
	$"4E56 0000 554F 2F2E 0010 2F2E 000C 2F2D"            /* NV..UO/.../.../- */
	$"F62E 4EBA FEC2 301F 3D40 0014 4E5E 205F"            /* ˆ.N∫˛¬0.=@..N^ _ */
	$"4FEF 000C 4ED0 9548 414E 444C 454F 5045"            /* OÔ..N–ïHANDLEOPE */
	$"4E41 5050 4C49 4341 5449 4F4E 0000 4E56"            /* NAPPLICATION..NV */
	$"0000 554F 2F2E 0010 2F2E 000C 2F2D F62A"            /* ..UO/.../.../-ˆ* */
	$"4EBA FED2 301F 3D40 0014 4E5E 205F 4FEF"            /* N∫˛“0.=@..N^ _OÔ */
	$"000C 4ED0 9348 414E 444C 454F 5045 4E44"            /* ..N–ìHANDLEOPEND */
	$"4F43 554D 454E 5453 0000 4E56 0000 554F"            /* OCUMENTS..NV..UO */
	$"2F2E 0010 2F2E 000C 2F2D F626 4EBA FE96"            /* /.../.../-ˆ&N∫˛ñ */
	$"301F 3D40 0014 4E5E 205F 4FEF 000C 4ED0"            /* 0.=@..N^ _OÔ..N– */
	$"9448 414E 444C 4550 5249 4E54 444F 4355"            /* îHANDLEPRINTDOCU */
	$"4D45 4E54 5300 0000 4E56 0000 554F 2F2E"            /* MENTS...NV..UO/. */
	$"0010 2F2E 000C 2F2D F622 4EBA FE0A 301F"            /* ../.../-ˆ"N∫˛.0. */
	$"3D40 0014 4E5E 205F 4FEF 000C 4ED0 9548"            /* =@..N^ _OÔ..N–ïH */
	$"414E 444C 4551 5549 5441 5050 4C49 4341"            /* ANDLEQUITAPPLICA */
	$"5449 4F4E 0000 4E56 0000 2F03 2B6E 0014"            /* TION..NV../.+n.. */
	$"F62E 2B6E 0010 F62A 2B6E 000C F626 2B6E"            /* ˆ.+n..ˆ*+n..ˆ&+n */
	$"0008 F622 4AAD F62E 6724 554F 2F2D FE76"            /* ..ˆ"J≠ˆ.g$UO/-˛v */
	$"2F2D FE7A 594F 487A FED8 2E9F 205F 2F08"            /* /-˛zYOHz˛ÿ.ü _/. */
	$"42A7 4227 303C 091F A816 301F 3600 4AAD"            /* BßB'0<..®.0.6.J≠ */
	$"F62A 6724 554F 2F2D FE76 2F2D FE7E 594F"            /* ˆ*g$UO/-˛v/-˛~YO */
	$"487A FEEC 2E9F 205F 2F08 42A7 4227 303C"            /* Hz˛Ï.ü _/.BßB'0< */
	$"091F A816 301F 3600 4AAD F626 6724 554F"            /* ..®.0.6.J≠ˆ&g$UO */
	$"2F2D FE76 2F2D FE82 594F 487A FEFE 2E9F"            /* /-˛v/-˛ÇYOHz˛˛.ü */
	$"205F 2F08 42A7 4227 303C 091F A816 301F"            /*  _/.BßB'0<..®.0. */
	$"3600 4AAD F622 6724 554F 2F2D FE76 2F2D"            /* 6.J≠ˆ"g$UO/-˛v/- */
	$"FE86 594F 487A FF12 2E9F 205F 2F08 42A7"            /* ˛ÜYOHzˇ..ü _/.Bß */
	$"4227 303C 091F A816 301F 3600 261F 4E5E"            /* B'0<..®.0.6.&.N^ */
	$"205F 4FEF 0010 4ED0 8F49 4E49 5441 5050"            /*  _OÔ..N–èINITAPP */
	$"4C45 4556 454E 5453 0000 4E56 0000 4A2E"            /* LEEVENTS..NV..J. */
	$"0008 6606 486D FE8A ABFF 4E5E 205F 544F"            /* ..f.Hm˛ä´ˇN^ _TO */
	$"4ED0 8641 5353 4552 5400 0000 4E56 0000"            /* N–ÜASSERT...NV.. */
	$"4AAD F652 6616 594F 2015 0480 0000 00CA"            /* J≠ˆRf.YO ..Ä...  */
	$"2E80 205F 4868 00B2 A89D 6006 2F2D F652"            /* .Ä _Hh.≤®ù`./-ˆR */
	$"AA0A 4E5E 4E75 8A50 454E 5041 5447 5241"            /* ™.N^NuäPENPATGRA */
	$"5900 0000 4E56 FDF2 206E 0008 43EE FEFC"            /* Y...NV˝Ú n..CÓ˛¸ */
	$"703F 22D8 51C8 FFFC 2F2E 000E 3F2E 000C"            /* p?"ÿQ»ˇ¸/...?... */
	$"486E FDF2 486E FFFC 486E FDF4 A98D 2F2E"            /* Hn˝ÚHnˇ¸Hn˝Ù©ç/. */
	$"FFFC 486E FDFC A990 554F 486E FDFC 486E"            /* ˇ¸Hn˝¸©êUOHn˝¸Hn */
	$"FEFC 3F3C 0001 4EB9 0000 DD64 101F 670A"            /* ˛¸?<..Nπ..›d..g. */
	$"2F2E FFFC 486E FEFC A98F 4E5E 205F 4FEF"            /* /.ˇ¸Hn˛¸©èN^ _OÔ */
	$"000A 4ED0 8B53 4554 4954 454D 5445 5854"            /* ..N–ãSETITEMTEXT */
	$"0000 4E56 FFF2 2F2E 000E 3F2E 000C 486E"            /* ..NVˇÚ/...?...Hn */
	$"FFF2 486E FFFC 486E FFF4 A98D 2F2E FFFC"            /* ˇÚHnˇ¸HnˇÙ©ç/.ˇ¸ */
	$"2F2E 0008 A990 4E5E 205F 4FEF 000A 4ED0"            /* /...©êN^ _OÔ..N– */
	$"8B47 4554 4954 454D 5445 5854 0000 4E56"            /* ãGETITEMTEXT..NV */
	$"FFF2 4A2D F635 665E 0C6E 0001 0012 6616"            /* ˇÚJ-ˆ5f^.n....f. */
	$"594F 2015 0480 0000 00CA 2E80 205F 4868"            /* YO ..Ä... .Ä _Hh */
	$"00B2 A89D 6040 42A7 4267 486E FFF4 4EB9"            /* .≤®ù`@BßBgHnˇÙNπ */
	$"0000 D55E 4878 FFFF 3F3C FFFF 486E FFFA"            /* ..’^Hxˇˇ?<ˇˇHnˇ˙ */
	$"4EB9 0000 D55E 554F 2F2E 000C 486E FFF4"            /* Nπ..’^UO/...HnˇÙ */
	$"486E FFFA 303C 0C19 AAA2 101F 1D40 FFF3"            /* Hnˇ˙0<..™¢...@ˇÛ */
	$"486E FFFA AA14 486D F636 2F3C 0010 0010"            /* Hnˇ˙™.Hmˆ6/<.... */
	$"A8B0 594F 2015 0480 0000 00CA 2E80 205F"            /* ®∞YO ..Ä... .Ä _ */
	$"4868 00BA A89D 4878 0021 A862 4E5E 205F"            /* Hh.∫®ùHx.!®bN^ _ */
	$"4FEF 000C 4ED0 914F 5554 4C49 4E45 4445"            /* OÔ..N–ëOUTLINEDE */
	$"5649 4345 4C4F 4F50 0000 4E56 0000 2F0A"            /* VICELOOP..NV../. */
	$"246E 000C 2F0A A873 2F0A 3F2E 000A 486D"            /* $n../.®s/.?...Hm */
	$"F636 4EBA 01AE 486D F636 2F3C 0002 0002"            /* ˆ6N∫.ÆHmˆ6/<.... */
	$"A8A9 554F 2F0A 3F3C 0001 4EBA 033C 101F"            /* ®©UO/.?<..N∫.<.. */
	$"4A00 6710 594F A924 205F B1CA 6606 4A2E"            /* J.g.YO©$ _± f.J. */
	$"0008 6604 7000 6002 7001 1B40 F635 2F3C"            /* ..f.p.`.p..@ˆ5/< */
	$"0003 0003 A89B 486D F636 2F2D F63E 42A7"            /* ....®õHmˆ6/-ˆ>Bß */
	$"42A7 4EB9 0000 D5E4 A89E 245F 4E5E 205F"            /* BßNπ..’‰®û$_N^ _ */
	$"504F 4ED0 9D4F 5554 4C49 4E45 4445 4641"            /* PON–ùOUTLINEDEFA */
	$"554C 5431 464F 5245 4241 434B 4752 4F55"            /* ULT1FOREBACKGROU */
	$"4E44 0000 4E56 0000 2F2E 000A 3F2E 0008"            /* ND..NV../...?... */
	$"554F 4EB9 0000 CF18 101F 1F00 4EBA FF4C"            /* UONπ..œ.....N∫ˇL */
	$"4E5E 205F 5C4F 4ED0 8F4F 5554 4C49 4E45"            /* N^ _\ON–èOUTLINE */
	$"4445 4641 554C 5431 0000 4E56 FFF2 2F2E"            /* DEFAULT1..NVˇÚ/. */
	$"000C 3F2E 000A 486E FFF2 486E FFF4 486E"            /* ..?...HnˇÚHnˇÙHn */
	$"FFF8 A98D 486E FFF8 2F3C FFFA FFFA A8A9"            /* ˇ¯©çHnˇ¯/<ˇ˙ˇ˙®© */
	$"2F2E 000C 3F2E 0008 4267 2F2D F642 486E"            /* /...?...Bg/-ˆBHn */
	$"FFF8 A98E 4E5E 205F 504F 4ED0 9353 4554"            /* ˇ¯©éN^ _PON–ìSET */
	$"5550 4445 4641 554C 544F 5554 4C49 4E45"            /* UPDEFAULTOUTLINE */
	$"0000 4E56 FFFC 2F2E 000A 3F2E 0008 3F3C"            /* ..NVˇ¸/...?...?< */
	$"000A 4EBA 01EA 4878 0002 486E FFFC 225F"            /* ..N∫.ÍHx..Hnˇ¸"_ */
	$"205F A03B 2280 2F2E 000A 3F2E 0008 4267"            /*  _†;"Ä/...?...Bg */
	$"4EBA 01CC 4E5E 205F 5C4F 4ED0 8A46 4C41"            /* N∫.ÃN^ _\ON–äFLA */
	$"5348 4449 5445 4D00 0000 4E56 FFEA 206E"            /* SHDITEM...NVˇÍ n */
	$"0008 2D50 FFF2 2D68 0004 FFF6 2F2E 000E"            /* ..-PˇÚ-h..ˇˆ/... */
	$"3F2E 000C 486E FFFA 486E FFFC 486E FFEA"            /* ?...Hnˇ˙Hnˇ¸HnˇÍ */
	$"A98D 2F2E 000E 3F2E 000C 3F2E FFFA 2F2E"            /* ©ç/...?...?.ˇ˙/. */
	$"FFFC 486E FFF2 A98E 4E5E 205F 4FEF 000A"            /* ˇ¸HnˇÚ©éN^ _OÔ.. */
	$"4ED0 8C53 4554 4449 5445 4D52 4543 5400"            /* N–åSETDITEMRECT. */
	$"0000 4E56 FFFA 2F2E 000E 3F2E 000C 486E"            /* ..NVˇ˙/...?...Hn */
	$"FFFA 486E FFFC 2F2E 0008 A98D 4E5E 205F"            /* ˇ˙Hnˇ¸/...©çN^ _ */
	$"4FEF 000A 4ED0 8C47 4554 4449 5445 4D52"            /* OÔ..N–åGETDITEMR */
	$"4543 5400 0000 4E56 FFF4 2F2E 000E 3F2E"            /* ECT...NVˇÙ/...?. */
	$"000C 2F2E 0008 486E FFFC 486E FFF4 A98D"            /* ../...Hnˇ¸HnˇÙ©ç */
	$"4E5E 205F 4FEF 000A 4ED0 8C47 4554 4449"            /* N^ _OÔ..N–åGETDI */
	$"5445 4D4B 494E 4400 0000 4E56 0000 594F"            /* TEMKIND...NV..YO */
	$"2F2E 000A 3F2E 0008 4EBA 0024 205F 2D48"            /* /...?...N∫.$ _-H */
	$"000E 4E5E 205F 5C4F 4ED0 9147 4554 4443"            /* ..N^ _\ON–ëGETDC */
	$"4F4E 5452 4F4C 4841 4E44 4C45 0000 4E56"            /* ONTROLHANDLE..NV */
	$"FFF2 2F2E 000A 3F2E 0008 486E FFF2 486E"            /* ˇÚ/...?...HnˇÚHn */
	$"FFFC 486E FFF4 A98D 2D6E FFFC 000E 4E5E"            /* ˇ¸HnˇÙ©ç-nˇ¸..N^ */
	$"205F 5C4F 4ED0 8E47 4554 4449 5445 4D48"            /*  _\ON–éGETDITEMH */
	$"414E 444C 4500 0000 4E56 FFF2 2F2E 000E"            /* ANDLE...NVˇÚ/... */
	$"3F2E 000C 486E FFF6 486E FFF2 486E FFF8"            /* ?...HnˇˆHnˇÚHnˇ¯ */
	$"A98D 2F2E 000E 3F2E 000C 3F2E FFF6 2F2E"            /* ©ç/...?...?.ˇˆ/. */
	$"0008 486E FFF8 A98E 4E5E 205F 4FEF 000A"            /* ..Hnˇ¯©éN^ _OÔ.. */
	$"4ED0 8E53 4554 4449 5445 4D48 414E 444C"            /* N–éSETDITEMHANDL */
	$"4500 0000 4E56 0000 594F 2F2E 000A 3F2E"            /* E...NV..YO/...?. */
	$"0008 4EBA FF6A 205F 2050 1028 0011 7200"            /* ..N∫ˇj _ P.(..r. */
	$"1200 3D41 000E 4E5E 205F 5C4F 4ED0 8D47"            /* ..=A..N^ _\ON–çG */
	$"4554 4443 544C 4849 4C49 5445 0000 4E56"            /* ETDCTLHILITE..NV */
	$"0000 2F0A 594F 2F2E 000C 3F2E 000A 4EBA"            /* ../.YO/...?...N∫ */
	$"FF2E 205F 2448 2052 1028 0011 7200 1200"            /* ˇ. _$H R.(..r... */
	$"B26E 0008 6708 2F0A 3F2E 0008 A95D 245F"            /* ≤n..g./.?...©]$_ */
	$"4E5E 205F 504F 4ED0 8D53 4554 4443 544C"            /* N^ _PON–çSETDCTL */
	$"4849 4C49 5445 0000 4E56 0000 554F 2F2E"            /* HILITE..NV..UO/. */
	$"000A 3F2E 0008 4EBA FF6C 301F 0C40 00FF"            /* ..?...N∫ˇl0..@.ˇ */
	$"56C0 4400 1D40 000E 4E5E 205F 5C4F 4ED0"            /* V¿D..@..N^ _\ON– */
	$"8D47 4554 4443 544C 454E 4142 4C45 0000"            /* çGETDCTLENABLE.. */
	$"4E56 0000 554F 594F 2F2E 000A 3F2E 0008"            /* NV..UOYO/...?... */
	$"4EBA FE78 205F 2F08 A960 301F 4A40 56C0"            /* N∫˛x _/.©`0.J@V¿ */
	$"4400 1D40 000E 4E5E 205F 5C4F 4ED0 8E47"            /* D..@..N^ _\ON–éG */
	$"4554 4443 544C 424F 4F4C 4541 4E00 0000"            /* ETDCTLBOOLEAN... */
	$"4E56 0000 594F 2F2E 000C 3F2E 000A 4EBA"            /* NV..YO/...?...N∫ */
	$"FE3A 205F 2F08 7000 102E 0008 3F00 A963"            /* ˛: _/.p.....?.©c */
	$"4E5E 205F 504F 4ED0 8E53 4554 4443 544C"            /* N^ _PON–éSETDCTL */
	$"424F 4F4C 4541 4E00 0000 4E56 0000 2F2E"            /* BOOLEAN...NV../. */
	$"000A 3F2E 0008 554F 2F2E 000A 3F2E 0008"            /* ..?...UO/...?... */
	$"4EBA FF6E 101F 57C0 4400 1F00 4EBA FFA2"            /* N∫ˇn..W¿D...N∫ˇ¢ */
	$"4E5E 205F 5C4F 4ED0 9154 4F47 474C 4544"            /* N^ _\ON–ëTOGGLED */
	$"4354 4C42 4F4F 4C45 414E 0000 4E56 0000"            /* CTLBOOLEAN..NV.. */
	$"206E 0008 7001 D068 00A4 3D40 000C 4E5E"            /*  n..p.–h.§=@..N^ */
	$"2E9F 4E75 9053 454C 4543 5445 4454 4558"            /* .üNuêSELECTEDTEX */
	$"5449 5445 4D00 0000 4E56 0000 2F2E 000A"            /* TITEM...NV../... */
	$"3F2E 0008 2F3C 7FFF 0000 A97E 4E5E 205F"            /* ?.../<.ˇ..©~N^ _ */
	$"5C4F 4ED0 9053 454C 4543 5444 4941 4C4F"            /* \ON–êSELECTDIALO */
	$"4749 5445 4D00 0000 4E56 0000 48E7 1038"            /* GITEM...NV..HÁ.8 */
	$"246E 0014 262E 0010 286E 000C 266E 0008"            /* $n..&...(n..&n.. */
	$"554F 2F0A 4EBA FF86 301F 2043 3080 2043"            /* UO/.N∫ˇÜ0. C0Ä C */
	$"4A50 6F16 206A 00A0 2050 38A8 0020 206A"            /* JPo. j.† P8®.  j */
	$"00A0 2050 36A8 0022 6008 38BC FFFF 36BC"            /* .† P6®."`.8ºˇˇ6º */
	$"FFFF 4CDF 1C08 4E5E 205F 4FEF 0010 4ED0"            /* ˇˇLﬂ..N^ _OÔ..N– */
	$"9647 4554 4449 414C 4F47 5445 5854 5345"            /* ñGETDIALOGTEXTSE */
	$"4C45 4354 494F 4E00 0000 4E56 0000 206E"            /* LECTION...NV.. n */
	$"0008 2068 009C 2050 7001 D050 3D40 000C"            /* .. h.ú Pp.–P=@.. */
	$"4E5E 2E9F 4E75 8B43 4F55 4E54 4449 5445"            /* N^.üNuãCOUNTDITE */
	$"4D53 0000 4E56 0000 2F03 362E 0010 554F"            /* MS..NV../.6...UO */
	$"2F2E 0012 3F03 4EBA FE00 101F 6718 2F2E"            /* /...?.N∫˛...g./. */
	$"0012 3F03 4EBA FBAC 206E 0008 3083 1D7C"            /* ..?.N∫˚¨ n..0É.| */
	$"0001 0016 6010 3F3C 000A A9C8 206E 000C"            /* ....`.?<..©» n.. */
	$"4250 422E 0016 261F 4E5E 205F 4FEF 000E"            /* BPB...&.N^ _OÔ.. */
	$"4ED0 8B44 4F42 5554 544F 4E4B 4559 0000"            /* N–ãDOBUTTONKEY.. */
	$"4E56 0000 48E7 1020 246E 000C 422E 0014"            /* NV..HÁ. $n..B... */
	$"0C52 0005 57C0 4400 0C52 0003 57C1 4401"            /* .R..W¿D..R..W¡D. */
	$"8200 6738 262A 0002 0283 0000 00FF 0C43"            /* Ç.g8&*...É...ˇ.C */
	$"0003 57C0 4400 0C43 000D 57C1 4401 8200"            /* ..W¿D..C..W¡D.Ç. */
	$"671A 554F 2F2E 0010 3F3C 0001 2F0A 2F2E"            /* g.UO/...?<.././. */
	$"0008 4EBA FF50 101F 1D40 0014 4CDF 0408"            /* ..N∫ˇP...@..Lﬂ.. */
	$"4E5E 205F 4FEF 000C 4ED0 9353 5441 4E44"            /* N^ _OÔ..N–ìSTAND */
	$"4152 444D 4F44 414C 4649 4C54 4552 0000"            /* ARDMODALFILTER.. */
	$"4E56 FFFE 48E7 1038 286E 0010 246E 000C"            /* NVˇ˛HÁ.8(n..$n.. */
	$"266E 0008 422E 0014 554F 2F0C 2F0A 2F0B"            /* &n..B...UO/././. */
	$"4EBA FF5E 101F 6708 1D7C 0001 0014 6060"            /* N∫ˇ^..g..|....`` */
	$"0C52 0005 57C0 4400 0C52 0003 57C1 4401"            /* .R..W¿D..R..W¡D. */
	$"8200 674C 262A 0002 0283 0000 00FF 0C43"            /* Ç.gL&*...É...ˇ.C */
	$"001B 57C0 4400 1D40 FFFF 302A 000E 0280"            /* ..W¿D..@ˇˇ0*...Ä */
	$"0000 0100 4A80 56C0 4400 0C43 002E 57C1"            /* ....JÄV¿D..C..W¡ */
	$"4401 C200 822E FFFF 6716 554F 2F0C 3F3C"            /* D.¬.Ç.ˇˇg.UO/.?< */
	$"0002 2F0A 2F0B 4EBA FE9C 101F 1D40 0014"            /* .././.N∫˛ú...@.. */
	$"4CDF 1C08 4E5E 205F 4FEF 000C 4ED0 9143"            /* Lﬂ..N^ _OÔ..N–ëC */
	$"414E 4345 4C4D 4F44 414C 4649 4C54 4552"            /* ANCELMODALFILTER */
	$"0000 4E56 0000 48E7 1038 286E 0010 246E"            /* ..NV..HÁ.8(n..$n */
	$"000C 266E 0008 422E 0014 554F 2F0C 2F0A"            /* ..&n..B...UO/./. */
	$"2F0B 4EBA FF2C 101F 6708 1D7C 0001 0014"            /* /.N∫ˇ,..g..|.... */
	$"6050 0C52 0005 57C0 4400 0C52 0003 57C1"            /* `P.R..W¿D..R..W¡ */
	$"4401 8200 673C 262A 0002 0283 0000 00FF"            /* D.Ç.g<&*...É...ˇ */
	$"302A 000E 0280 0000 0100 4A80 56C0 4400"            /* 0*...Ä....JÄV¿D. */
	$"0C43 0064 57C1 4401 C200 6716 554F 2F0C"            /* .C.dW¡D.¬.g.UO/. */
	$"3F3C 0003 2F0A 2F0B 4EBA FDFA 101F 1D40"            /* ?<.././.N∫˝˙...@ */
	$"0014 4CDF 1C08 4E5E 205F 4FEF 000C 4ED0"            /* ..Lﬂ..N^ _OÔ..N– */
	$"9244 4953 4341 5244 4D4F 4441 4C46 494C"            /* íDISCARDMODALFIL */
	$"5445 5200 0000 4E56 0000 48E7 0030 266E"            /* TER...NV..HÁ.0&n */
	$"0010 246E 0008 2F0A A874 2F0B A873 254B"            /* ..$n../.®t/.®s%K */
	$"0004 356B 0044 0008 356B 004A 000A 156B"            /* ..5k.D..5k.J...k */
	$"0046 000C 1F2E 000E 4EB9 0000 D52A 7000"            /* .F......Nπ..’*p. */
	$"102E 000D 3F00 A888 4CDF 0C00 4E5E 205F"            /* ....?.®àLﬂ..N^ _ */
	$"4FEF 000C 4ED0 8B45 4E54 4552 5749 4E44"            /* OÔ..N–ãENTERWIND */
	$"4F57 0000 4E56 FFF2 206E 0008 43EE FFF2"            /* OW..NVˇÚ n..CÓˇÚ */
	$"22D8 22D8 22D8 32D8 2F2E FFF6 A873 3F2E"            /* "ÿ"ÿ"ÿ2ÿ/.ˇˆ®s?. */
	$"FFFA A887 3F2E FFFC A88A 7000 102E FFFE"            /* ˇ˙®á?.ˇ¸®äp...ˇ˛ */
	$"3F00 A888 2F2E FFF2 A873 4E5E 2E9F 4E75"            /* ?.®à/.ˇÚ®sN^.üNu */
	$"8A45 5849 5457 494E 444F 5700 0000 4E56"            /* äEXITWINDOW...NV */
	$"FFE6 48E7 1830 266E 000C 182E 000A 162E"            /* ˇÊHÁ.0&n........ */
	$"0009 2F0B 1F04 7000 1003 3F00 486E FFE6"            /* ../...p...?.HnˇÊ */
	$"4EBA FF34 486E FFF8 A88B 1F04 486E FFF4"            /* N∫ˇ4Hnˇ¯®ã..HnˇÙ */
	$"486E FFF6 4EB9 0000 D4BA 246B 00A0 2052"            /* HnˇˆNπ..‘∫$k.† R */
	$"316E FFF4 004A 2052 316E FFF6 0050 2052"            /* 1nˇÙ.J R1nˇˆ.P R */
	$"1143 004C 302E FFF8 D06E FFFA D06E FFFE"            /* .C.L0.ˇ¯–nˇ˙–nˇ˛ */
	$"2052 3140 0018 2052 316E FFF8 001A 2F0A"            /*  R1@.. R1nˇ¯../. */
	$"A9D0 486E FFE6 4EBA FF3C 4CDF 0C18 4E5E"            /* ©–HnˇÊN∫ˇ<Lﬂ..N^ */
	$"205F 504F 4ED0 9153 4554 4449 414C 4F47"            /*  _PON–ëSETDIALOG */
	$"5445 5854 464F 4E54 0000 4E56 FED8 206E"            /* TEXTFONT..NV˛ÿ n */
	$"0008 43EE FEE8 703F 22D8 51C8 FFFC 2F2E"            /* ..CÓ˛Ëp?"ÿQ»ˇ¸/. */
	$"000E 1F3C 0001 4267 486E FEDA 4EBA FE98"            /* ...<..BgHn˛⁄N∫˛ò */
	$"2F2E 000E 3F2E 000C 486E FFF8 4EBA F8C4"            /* /...?...Hnˇ¯N∫¯ƒ */
	$"486E FFE8 A88B 7014 D06E FFFA 3F00 302E"            /* HnˇË®ãp.–nˇ˙?.0. */
	$"FFF8 D06E FFE8 3F00 A893 554F 486E FEE8"            /* ˇ¯–nˇË?.®ìUOHn˛Ë */
	$"A88C 301F 3D40 FED8 3D6E FFF8 FFF0 302E"            /* ®å0.=@˛ÿ=nˇ¯ˇ0. */
	$"FFF0 D06E FFE8 D06E FFEA 3D40 FFF4 7014"            /* ˇ–nˇË–nˇÍ=@ˇÙp. */
	$"D06E FFFA 3D40 FFF2 302E FFF2 D06E FED8"            /* –nˇ˙=@ˇÚ0.ˇÚ–n˛ÿ */
	$"3D40 FFF6 486E FFF0 A8A3 486E FEE8 A884"            /* =@ˇˆHnˇ®£Hn˛Ë®Ñ */
	$"4EBA F50A 306E FFE8 2008 E088 E088 E088"            /* N∫ı.0nˇË .‡à‡à‡à */
	$"EE88 D088 E280 306E FFF8 D088 3D40 FFF8"            /* Óà–à‚Ä0nˇ¯–à=@ˇ¯ */
	$"302E FFF2 5540 3F00 3F2E FFF8 A893 3F2E"            /* 0.ˇÚU@?.?.ˇ¯®ì?. */
	$"FFFA 3F2E FFF8 A891 3F2E FFFA 3F2E FFFC"            /* ˇ˙?.ˇ¯®ë?.ˇ˙?.ˇ¸ */
	$"A891 3F2E FFFE 3F2E FFFC A891 3F2E FFFE"            /* ®ë?.ˇ˛?.ˇ¸®ë?.ˇ˛ */
	$"3F2E FFF8 A891 7002 D06E FFF6 3F00 3F2E"            /* ?.ˇ¯®ëp.–nˇˆ?.?. */
	$"FFF8 A891 A89E 486E FEDA 4EBA FE18 4E5E"            /* ˇ¯®ë®ûHn˛⁄N∫˛.N^ */
	$"205F 4FEF 000A 4ED0 8C44 5241 5747 5241"            /*  _OÔ..N–åDRAWGRA */
	$"5952 4543 5400 0000 4E56 FFF8 2F0A 4A6E"            /* YRECT...NVˇ¯/.Jn */
	$"000C 673C 206E 0008 2F28 000E 3F2E 000C"            /* ..g< n../(..?... */
	$"486E FFF8 4EBA F7BC 594F A8D8 205F 2448"            /* Hnˇ¯N∫˜ºYO®ÿ _$H */
	$"2F0A 486E FFF8 A8DF 206E 0008 2F28 FFFC"            /* /.Hnˇ¯®ﬂ n../(ˇ¸ */
	$"2F0A 206E 0008 2F28 FFFC A8E5 2F0A A8D9"            /* /. n../(ˇ¸®Â/.®Ÿ */
	$"245F 4E5E 205F 5C4F 4ED0 8841 6464 4974"            /* $_N^ _\ON–àAddIt */
	$"656D 3000 0000 4E56 FFF8 48E7 1800 594F"            /* em0...NVˇ¯HÁ..YO */
	$"A8D8 205F 2D48 FFFC 3F2E 000C 2F0E 4EBA"            /* ®ÿ _-Hˇ¸?.../.N∫ */
	$"FF88 3F2E 000A 2F0E 4EBA FF7E 3F2E 0008"            /* ˇà?.../.N∫ˇ~?... */
	$"2F0E 4EBA FF74 2F2E FFFC A8D5 7801 6022"            /* /.N∫ˇt/.ˇ¸®’x.`" */
	$"486E FFF8 A972 554F 2F2E FFF8 2F2E FFFC"            /* Hnˇ¯©rUO/.ˇ¯/.ˇ¸ */
	$"A8E8 101F 1600 B604 6708 2F2E FFFC A8D5"            /* ®Ë....∂.g./.ˇ¸®’ */
	$"1803 554F A973 101F 66D6 4A04 6706 2F2E"            /* ..UO©s..f÷J.g./. */
	$"FFFC A8D5 1D44 0012 4CDF 0018 4E5E 205F"            /* ˇ¸®’.D..Lﬂ..N^ _ */
	$"4FEF 000A 4ED0 8A54 5241 434B 4954 454D"            /* OÔ..N–äTRACKITEM */
	$"5300 0000 4E56 FDD2 48E7 1F20 246E 000E"            /* S...NV˝“HÁ. $n.. */
	$"206E 0008 43EE FF00 703F 22D8 51C8 FFFC"            /*  n..CÓˇ.p?"ÿQ»ˇ¸ */
	$"2F0A A873 3D6A 0044 FDD4 3D6A 004A FDD6"            /* /.®s=j.D˝‘=j.J˝÷ */
	$"1D6A 0046 FDD9 1F3C 0001 486E FDDA 486E"            /* .j.F˝Ÿ.<..Hn˝⁄Hn */
	$"FDD2 4EB9 0000 D4BA 2F0A 3F2E 000C 486E"            /* ˝“Nπ..‘∫/.?...Hn */
	$"FDE0 4EBA F69E 554F 486D FEA0 486E FF00"            /* ˝‡N∫ˆûUOHm˛†Hnˇ. */
	$"486E FDF4 486E FF00 4EB9 0000 CE0C 101F"            /* Hn˝ÙHnˇ.Nπ..Œ... */
	$"6700 02EC 7A00 7E00 554F 486E FDF4 486D"            /* g..Ïz.~.UOHn˝ÙHm */
	$"FE9E 4267 4EB9 0000 DD64 101F 6708 3D6E"            /* ˛ûBgNπ..›d..g.=n */
	$"FDDA FDDC 6018 486E FDF4 486E FDDC A900"            /* ˝⁄˝‹`.Hn˝ÙHn˝‹©. */
	$"4A6E FDDC 6608 7E01 3D6E FDDA FDDC 554F"            /* Jn˝‹f.~.=n˝⁄˝‹UO */
	$"486D FEA0 486E FF00 486E FDF4 486E FF00"            /* Hm˛†Hnˇ.Hn˝ÙHnˇ. */
	$"4EB9 0000 CE0C 101F 6700 0294 554F 486E"            /* Nπ..Œ...g..îUOHn */
	$"FDF4 486D FE9E 4267 4EB9 0000 DD64 101F"            /* ˝ÙHm˛ûBgNπ..›d.. */
	$"6706 362E FDD2 6010 594F 486E FDF4 4EB9"            /* g.6.˝“`.YOHn˝ÙNπ */
	$"0000 D72E 201F 3600 554F 486D FEA0 486E"            /* ..◊. .6.UOHm˛†Hn */
	$"FF00 486E FDF4 486E FF00 4EB9 0000 CE0C"            /* ˇ.Hn˝ÙHnˇ.Nπ..Œ. */
	$"101F 6700 024A 422E FDF3 7C00 1C2E FDF4"            /* ..g..JB.˝Û|...˝Ù */
	$"7801 607C 41EE FDF4 7000 1030 4000 0440"            /* x.`|AÓ˝Ùp..0@..@ */
	$"0030 0C40 0038 6260 5140 6D10 0440 0010"            /* .0.@.8b`Q@m..@.. */
	$"6D56 6752 0440 0020 6D4E 604A 594F 486E"            /* mVgR.@. mN`JYOHn */
	$"FDF3 4878 0001 486E FDE9 41EE FDF4 7000"            /* ˝ÛHx..Hn˝ÈAÓ˝Ùp. */
	$"1030 4000 0440 0030 7200 1200 2F01 4878"            /* .0@..@.0r.../.Hx */
	$"0001 4EB9 0000 DD24 486E FDE9 4878 0001"            /* ..Nπ..›$Hn˝ÈHx.. */
	$"486E FDDF 4878 0001 4EB9 0000 DB4C 205F"            /* Hn˝ﬂHx..Nπ..€L _ */
	$"1D50 FDF3 6002 7A01 0C44 7FFF 6706 5244"            /* .P˝Û`.z..D.ˇg.RD */
	$"B846 6F80 554F 486D FEA0 486E FF00 486E"            /* ∏FoÄUOHm˛†Hnˇ.Hn */
	$"FDF4 486E FF00 4EB9 0000 CE0C 101F 6700"            /* ˝ÙHnˇ.Nπ..Œ...g. */
	$"019E 554F 486E FDF4 486D FE9E 4267 4EB9"            /* .ûUOHn˝ÙHm˛ûBgNπ */
	$"0000 DD64 101F 6704 7800 6010 594F 486E"            /* ..›d..g.x.`.YOHn */
	$"FDF4 4EB9 0000 D72E 201F 3800 3F2E FDDC"            /* ˝ÙNπ..◊. .8.?.˝‹ */
	$"A887 3F03 A88A 7000 102E FDF3 3F00 A888"            /* ®á?.®äp...˝Û?.®à */
	$"4A07 6774 486E FDEA A88B 6058 0C43 0030"            /* J.gtHn˝Í®ã`X.C.0 */
	$"6F04 7630 6044 0C43 0024 6F04 7624 603A"            /* o.v0`D.C.$o.v$`: */
	$"0C43 001B 6F04 761B 6030 0C43 0018 6F04"            /* .C..o.v.`0.C..o. */
	$"7618 6026 0C43 0012 6F04 7612 601C 0C43"            /* v.`&.C..o.v.`..C */
	$"000E 6F04 760E 6012 0C43 000C 6F04 760C"            /* ..o.v.`..C..o.v. */
	$"6008 7609 3F03 A88A 601E 3F03 A88A 486E"            /* `.v.?.®ä`.?.®äHn */
	$"FDEA A88B 302E FDE4 906E FDE0 322E FDEA"            /* ˝Í®ã0.˝‰ên˝‡2.˝Í */
	$"D26E FDEC B240 6E94 594F 486E FDE0 486E"            /* “n˝Ï≤@nîYOHn˝‡Hn */
	$"FDE0 A83E 205F 2448 200A 6700 00D2 486E"            /* ˝‡®> _$H .g..“Hn */
	$"FF01 7000 102E FF00 48C0 2F00 2F0A A9CF"            /* ˇ.p...ˇ.H¿/./.©œ */
	$"3F04 2F0A A9DF 4A05 6700 00A8 7A00 1A2E"            /* ?./.©ﬂJ.g..®z... */
	$"FF00 7801 6000 0096 41EE FF00 7000 1030"            /* ˇ.x.`..ñAÓˇ.p..0 */
	$"4000 0C40 003C 667C 7601 D644 6006 7001"            /* @..@.<f|v.÷D`.p. */
	$"D043 3600 7000 102E FF00 B640 6E10 41EE"            /* –C6.p...ˇ.∂@n.AÓ */
	$"FF00 7000 1030 3000 0C40 003E 66E0 3044"            /* ˇ.p..00..@.>f‡0D */
	$"2F08 3003 5340 48C0 2F00 2F0A A9D1 594F"            /* /.0.S@H¿/./.©—YO */
	$"486E FDF3 4878 0001 486D FEA3 4878 0001"            /* Hn˝ÛHx..Hm˛£Hx.. */
	$"486E FDE9 4878 0001 4EB9 0000 DB4C 205F"            /* Hn˝ÈHx..Nπ..€L _ */
	$"1D50 FEF6 426E FEFA 426E FEFC 3D7C FFFF"            /* .P˛ˆBn˛˙Bn˛¸=|ˇˇ */
	$"FEFE 3F3C 000A 486E FEF4 4227 2F0A 3F3C"            /* ˛˛?<..Hn˛ÙB'/.?< */
	$"0001 A83D 0C44 7FFF 6708 5244 B845 6F00"            /* ..®=.D.ˇg.RD∏Eo. */
	$"FF68 486E FDE0 2F0A A9D3 2F0A A9CD 3F2E"            /* ˇhHn˝‡/.©”/.©Õ?. */
	$"FDD4 A887 3F2E FDD6 A88A 7000 102E FDD9"            /* ˝‘®á?.˝÷®äp...˝Ÿ */
	$"3F00 A888 4CDF 04F8 4E5E 205F 4FEF 000A"            /* ?.®àLﬂ.¯N^ _OÔ.. */
	$"4ED0 9344 4953 504C 4159 5354 594C 4544"            /* N–ìDISPLAYSTYLED */
	$"5354 5249 4E47 0000 4E56 FFFA 48E7 1820"            /* STRING..NVˇ˙HÁ.  */
	$"594F A924 205F 2448 7800 200A 673C 0C6A"            /* YO©$ _$Hx. .g<.j */
	$"0002 006C 6634 2F0A A873 486E FFFA A972"            /* ...lf4/.®sHnˇ˙©r */
	$"554F 2F0A 2F2E FFFA A984 301F 5240 3600"            /* UO/./.ˇ˙©Ñ0.R@6. */
	$"4A43 6F16 2F0A 3F03 486E FFFE 4EBA F348"            /* JCo./.?.Hnˇ˛N∫ÛH */
	$"0C6E 0010 FFFE 6602 7801 1D44 0008 4CDF"            /* .n..ˇ˛f.x..D..Lﬂ */
	$"0418 4E5E 205F 4ED0 904F 5645 5245 4449"            /* ..N^ _N–êOVEREDI */
	$"5454 4558 5449 5445 4D00 0000 4E56 FFEA"            /* TTEXTITEM...NVˇÍ */
	$"594F 487A F6CC 2E9F 205F 2B48 F64E 594F"            /* YOHzˆÃ.ü _+HˆNYO */
	$"487A F73E 2E9F 205F 2B48 F64A 594F 487A"            /* Hz˜>.ü _+HˆJYOHz */
	$"F7E2 2E9F 205F 2B48 F646 594F 487A F186"            /* ˜‚.ü _+HˆFYOHzÒÜ */
	$"2E9F 205F 2B48 F642 594F 487A F032 2E9F"            /* .ü _+HˆBYOHz2.ü */
	$"205F 2B48 F63E 554F 3F3C 0001 486E FFF0"            /*  _+Hˆ>UO?<..Hnˇ */
	$"205F 301F A090 3E80 301F 6612 4A2E FFF9"            /*  _0.†ê>Ä0.f.J.ˇ˘ */
	$"670C 594F AA07 205F 2B48 F652 6004 42AD"            /* g.YO™. _+HˆR`.B≠ */
	$"F652 4AAD F652 671E 2F3C 8000 8000 3F3C"            /* ˆRJ≠ˆRg./<Ä.Ä.?< */
	$"8000 486E FFEA 4EB9 0000 D55E 2F2D F652"            /* Ä.HnˇÍNπ..’^/-ˆR */
	$"486E FFEA AA0D 42AE 000C 4E5E 2E9F 4E75"            /* HnˇÍ™.BÆ..N^.üNu */
	$"8D49 4E49 544D 5944 4941 4C4F 4753 0000"            /* çINITMYDIALOGS.. */
	$"4E56 0000 487A FF46 4878 0000 42A7 4878"            /* NV..HzˇFHx..BßHx */
	$"0000 4EB9 0000 BE5E 4E5E 4E75 8E53 5441"            /* ..Nπ..æ^N^NuéSTA */
	$"5254 5550 4449 414C 4F47 5300 0000 4E56"            /* RTUPDIALOGS...NV */
	$"FFEC 48E7 1E00 2C2E 000C 4AAD F65E 661C"            /* ˇÏHÁ..,...J≠ˆ^f. */
	$"4AAD F65A 6616 554F 486D F65A 42A7 4EB9"            /* J≠ˆZf.UOHmˆZBßNπ */
	$"0000 D212 301F 48C0 2B40 F65E 4AAD F65E"            /* ..“.0.H¿+@ˆ^J≠ˆ^ */
	$"6600 00D8 7800 2A2D F656 7601 607A 206D"            /* f..ÿx.*-ˆVv.`z m */
	$"F65A 2003 5380 7214 4EB9 0000 04DA 2250"            /* ˆZ .SÄr.Nπ...⁄"P */
	$"2271 0800 B3EE 0014 6654 206D F65A 2003"            /* "q..≥Ó..fT mˆZ . */
	$"5380 7214 4EB9 0000 04DA 2250 2271 0804"            /* SÄr.Nπ...⁄"P"q.. */
	$"B3EE 0010 6638 206D F65A 2003 5380 7214"            /* ≥Ó..f8 mˆZ .SÄr. */
	$"4EB9 0000 04DA 2250 BCB1 0808 6620 206D"            /* Nπ...⁄"Pº±..f  m */
	$"F65A 2003 5380 7214 4EB9 0000 04DA 2250"            /* ˆZ .SÄr.Nπ...⁄"P */
	$"2271 0810 B3EE 0008 6604 7801 600E 0C83"            /* "q..≥Ó..f.x.`..É */
	$"7FFF FFFF 6706 5283 B685 6F82 4A04 664A"            /* .ˇˇˇg.RÉ∂ÖoÇJ.fJ */
	$"2D6E 0014 FFEC 2D6E 0010 FFF0 2D46 FFF4"            /* -n..ˇÏ-n..ˇ-FˇÙ */
	$"594F A975 201F 2D40 FFF8 2D6E 0008 FFFC"            /* YO©u .-@ˇ¯-n..ˇ¸ */
	$"554F 486E FFEC 2F2D F65A 4878 0014 201F"            /* UOHnˇÏ/-ˆZHx.. . */
	$"225F 205F A9EF 3E80 301F 48C0 2B40 F65E"            /* "_ _©Ô>Ä0.H¿+@ˆ^ */
	$"4AAD F65E 6604 52AD F656 4CDF 0078 4E5E"            /* J≠ˆ^f.R≠ˆVLﬂ.xN^ */
	$"205F 4FEF 0010 4ED0 8A53 4554 5354 4152"            /*  _OÔ..N–äSETSTAR */
	$"5455 5000 0000 4E56 FFF8 48E7 1800 594F"            /* TUP...NVˇ¯HÁ..YO */
	$"A975 201F 2B40 F7F6 282D F656 7601 6000"            /* ©u .+@˜ˆ(-ˆVv.`. */
	$"0082 206D F65A 2003 5380 7214 4EB9 0000"            /* .Ç mˆZ .SÄr.Nπ.. */
	$"04DA 2250 2D71 0804 FFFC 4AAE FFFC 6758"            /* .⁄"P-q..ˇ¸JÆˇ¸gX */
	$"206D F65A 2003 5380 7214 4EB9 0000 04DA"            /*  mˆZ .SÄr.Nπ...⁄ */
	$"2250 222D F7F6 B2B1 080C 6D3C 206D F65A"            /* "P"-˜ˆ≤±..m< mˆZ */
	$"2003 5380 7214 4EB9 0000 04DA 2250 222D"            /*  .SÄr.Nπ...⁄"P"- */
	$"F7F6 D2B1 0808 206D F65A 2003 5380 2D41"            /* ˜ˆ“±.. mˆZ .SÄ-A */
	$"FFF8 7214 4EB9 0000 04DA 2250 23AE FFF8"            /* ˇ¯r.Nπ...⁄"P#Æˇ¯ */
	$"080C 206E FFFC 4E90 0C83 7FFF FFFF 6708"            /* .. nˇ¸Nê.É.ˇˇˇg. */
	$"5283 B684 6F00 FF7C 282D F662 7601 6034"            /* RÉ∂Ño.ˇ|(-ˆbv.`4 */
	$"2003 5380 E588 41ED F666 2D70 0800 FFFC"            /*  .SÄÂàAÌˆf-p..ˇ¸ */
	$"4AAE FFFC 6714 206E FFFC 4E90 2003 5380"            /* JÆˇ¸g. nˇ¸Nê .SÄ */
	$"E588 41ED F666 42B0 0800 0C83 7FFF FFFF"            /* ÂàAÌˆfB∞...É.ˇˇˇ */
	$"6706 5283 B684 6FC8 4CDF 0018 4E5E 4E75"            /* g.RÉ∂Ño»Lﬂ..N^Nu */
	$"8B49 444C 4553 5441 5254 5550 0000 4E56"            /* ãIDLESTARTUP..NV */
	$"0000 42AD F65A 42AD F656 42AD F65E 42AD"            /* ..B≠ˆZB≠ˆVB≠ˆ^B≠ */
	$"F662 7201 6010 2001 5380 E588 41ED F666"            /* ˆbr.`. .SÄÂàAÌˆf */
	$"42B0 0800 5281 7064 B280 6FEA 4E5E 4E75"            /* B∞..RÅpd≤ÄoÍN^Nu */
	$"8B49 4E49 5453 5441 5254 5550 0000 4E56"            /* ãINITSTARTUP..NV */
	$"FFF8 48E7 1020 246E 0008 34BC 0001 7600"            /* ˇ¯HÁ. $n..4º..v. */
	$"6038 7001 D083 2600 206D F65A 2003 5380"            /* `8p.–É&. mˆZ .SÄ */
	$"7214 4EB9 0000 04DA 2250 2D71 0800 FFFC"            /* r.Nπ...⁄"P-q..ˇ¸ */
	$"4AAE FFFC 6714 34BC 0002 594F 2F0A 206E"            /* JÆˇ¸g.4º..YO/. n */
	$"FFFC 4E90 201F 2B40 F65E 4AAD F65E 6606"            /* ˇ¸Nê .+@ˆ^J≠ˆ^f. */
	$"B6AD F656 6DBC 4AAD F65E 673C 5383 6026"            /* ∂≠ˆVmºJ≠ˆ^g<SÉ`& */
	$"206D F65A 2003 5380 7214 4EB9 0000 04DA"            /*  mˆZ .SÄr.Nπ...⁄ */
	$"2250 2D71 0810 FFF8 4AAE FFF8 6706 206E"            /* "P-q..ˇ¯JÆˇ¯g. n */
	$"FFF8 4E90 5383 4A83 6ED6 486D F65A 4EB9"            /* ˇ¯NêSÉJÉn÷HmˆZNπ */
	$"0000 D254 42AD F656 4AAD F65E 6602 4252"            /* ..“TB≠ˆVJ≠ˆ^f.BR */
	$"2D6D F65E 000C 4CDF 0408 4E5E 2E9F 4E75"            /* -mˆ^..Lﬂ..N^.üNu */
	$"8753 5441 5254 5550 0000 4E56 FFFC 2F03"            /* áSTARTUP..NVˇ¸/. */
	$"4AAD F65A 673E 262D F656 6026 206D F65A"            /* J≠ˆZg>&-ˆV`& mˆZ */
	$"2003 5380 7214 4EB9 0000 04DA 2250 2D71"            /*  .SÄr.Nπ...⁄"P-q */
	$"0810 FFFC 4AAE FFFC 6706 206E FFFC 4E90"            /* ..ˇ¸JÆˇ¸g. nˇ¸Nê */
	$"5383 4A83 6ED6 486D F65A 4EB9 0000 D254"            /* SÉJÉn÷HmˆZNπ..“T */
	$"42AD F656 261F 4E5E 4E75 8D46 494E 4953"            /* B≠ˆV&.N^NuçFINIS */
	$"4853 5441 5254 5550 0000 4E56 0000 2F03"            /* HSTARTUP..NV../. */
	$"262E 0008 0C83 0000 7FFF 5EC0 4400 0C83"            /* &....É...ˇ^¿D..É */
	$"FFFF 8000 5DC1 4401 8200 6706 263C FFFF"            /* ˇˇÄ.]¡D.Ç.g.&<ˇˇ */
	$"FD63 3D43 000C 261F 4E5E 2E9F 4E75 8849"            /* ˝c=C..&.N^.üNuàI */
	$"434D 4150 4552 5200 0000 4E56 FDF8 206E"            /* CMAPERR...NV˝¯ n */
	$"000C 43EE FDF8 703F 22D8 51C8 FFFC 206E"            /* ..CÓ˝¯p?"ÿQ»ˇ¸ n */
	$"0008 43EE FF00 703F 22D8 51C8 FFFC 3D7C"            /* ..CÓˇ.p?"ÿQ»ˇ¸=| */
	$"FFFF 0010 4A2D F818 6746 42AE FEF8 7000"            /* ˇˇ..J-¯.gFBÆ˛¯p. */
	$"102E FF00 48C0 2D40 FEFC 554F 594F 2F2D"            /* ..ˇ.H¿-@˛¸UOYO/- */
	$"F814 486E FDF8 486E FF01 7000 102E FF00"            /* ¯.Hn˝¯Hnˇ.p...ˇ. */
	$"48C0 2F00 486E FEF8 486E FEFC 4EB9 0001"            /* H¿/.Hn˛¯Hn˛¸Nπ.. */
	$"0CAE 201F 2F00 4EBA FF52 301F 3D40 0010"            /* .Æ ./.N∫ˇR0.=@.. */
	$"4E5E 205F 504F 4ED0 8B4D 594C 4155 4E43"            /* N^ _PON–ãMYLAUNC */
	$"4855 524C 0000 4E56 FEF8 48E7 1820 246E"            /* HURL..NV˛¯HÁ. $n */
	$"0008 206E 000C 43EE FEFC 703F 22D8 51C8"            /* .. n..CÓ˛¸p?"ÿQ» */
	$"FFFC 4A2D F818 6732 2D7C 0000 0100 FFFC"            /* ˇ¸J-¯.g2-|....ˇ¸ */
	$"554F 594F 2F2D F814 486E FEFC 486E FEF8"            /* UOYO/-¯.Hn˛¸Hn˛¯ */
	$"2F0A 486E FFFC 4EB9 0001 0B7E 201F 2F00"            /* /.Hnˇ¸Nπ...~ ./. */
	$"4EBA FEE8 301F 3600 6002 76FF 4A43 6716"            /* N∫˛Ë0.6.`.vˇJCg. */
	$"41ED FEA4 2808 2044 7000 1010 5240 48C0"            /* AÌ˛§(. Dp...R@H¿ */
	$"2044 224A A22E 3D43 0010 4CDF 0418 4E5E"            /*  D"J¢.=C..Lﬂ..N^ */
	$"205F 504F 4ED0 8B47 4554 4943 5354 5249"            /*  _PON–ãGETICSTRI */
	$"4E47 0000 4E56 FE00 2F03 206E 0008 43EE"            /* NG..NV˛./. n..CÓ */
	$"FE00 703F 22D8 51C8 FFFC 554F 486E FE00"            /* ˛.p?"ÿQ»ˇ¸UOHn˛. */
	$"486E FF00 4EBA FF50 301F 3600 41EE FF00"            /* Hnˇ.N∫ˇP0.6.AÓˇ. */
	$"2608 2043 7000 1010 5240 48C0 2043 226E"            /* &. Cp...R@H¿ C"n */
	$"000C A22E 261F 4E5E 2E9F 4E75 8847 4554"            /* ..¢.&.N^.üNuàGET */
	$"4943 5354 5200 0000 4E56 FE00 206E 000C"            /* ICSTR...NV˛. n.. */
	$"43EE FE00 703F 22D8 51C8 FFFC 206E 0008"            /* CÓ˛.p?"ÿQ»ˇ¸ n.. */
	$"43EE FF00 703F 22D8 51C8 FFFC 554F 594F"            /* CÓˇ.p?"ÿQ»ˇ¸UOYO */
	$"2F2D F814 486E FE00 4878 FFFF 486E FF00"            /* /-¯.Hn˛.HxˇˇHnˇ. */
	$"7000 102E FF00 5240 48C0 2F00 4EB9 0001"            /* p...ˇ.R@H¿/.Nπ.. */
	$"0BF6 201F 2F00 4EBA FE02 301F 3D40 0010"            /* .ˆ ./.N∫˛.0.=@.. */
	$"4E5E 205F 504F 4ED0 8B53 4554 4943 5354"            /* N^ _PON–ãSETICST */
	$"5249 4E47 0000 4E56 0000 554F 594F 2F2D"            /* RING..NV..UOYO/- */
	$"F814 1F2E 0008 4EB9 0001 0B32 201F 2F00"            /* ¯.....Nπ...2 ./. */
	$"4EBA FDC8 301F 3D40 000A 4E5E 205F 544F"            /* N∫˝»0.=@..N^ _TO */
	$"4ED0 894D 5949 4342 4547 494E 0000 4E56"            /* N–âMYICBEGIN..NV */
	$"0000 594F 2F2D F814 4EB9 0001 0C6E 201F"            /* ..YO/-¯.Nπ...n . */
	$"3D40 0008 4E5E 4E75 874D 5949 4345 4E44"            /* =@..N^NuáMYICEND */
	$"0000 4E56 FFF6 2F03 594F A975 201F 2B40"            /* ..NVˇˆ/.YO©u .+@ */
	$"F800 42AD F810 42AD F80C 2B6D FEA6 F808"            /* ¯.B≠¯.B≠¯.+m˛¶¯. */
	$"2B6D FEA6 F804 594F 486D F814 2F2D F7FC"            /* +m˛¶¯.YOHm¯./-˜¸ */
	$"4EB9 0001 0A1E 201F 2600 4A83 57C0 4400"            /* Nπ.... .&.JÉW¿D. */
	$"1B40 F818 4A2D F818 6726 3D6D F81A FFFA"            /* .@¯.J-¯.g&=m¯.ˇ˙ */
	$"2D6D F81C FFFC 594F 2F2D F814 3F3C 0001"            /* -m¯.ˇ¸YO/-¯.?<.. */
	$"486E FFFA 4EB9 0001 0AD2 201F 2D40 FFF6"            /* Hnˇ˙Nπ...“ .-@ˇˆ */
	$"4A2D F7FB 6602 7600 2D43 000C 261F 4E5E"            /* J-˜˚f.v.-C..&.N^ */
	$"2E9F 4E75 9449 4E49 544D 5949 4E54 4552"            /* .üNuîINITMYINTER */
	$"4E45 5443 4F4E 4649 4700 0000 4E56 FFFC"            /* NETCONFIG...NVˇ¸ */
	$"486D F810 4EB9 0000 D254 4A2D F818 6712"            /* Hm¯.Nπ..“TJ-¯.g. */
	$"594F 2F2D F814 4EB9 0001 0A8E 201F 2D40"            /* YO/-¯.Nπ...é .-@ */
	$"FFFC 4E5E 4E75 9646 494E 4953 484D 5949"            /* ˇ¸N^NuñFINISHMYI */
	$"4E54 4552 4E45 5443 4F4E 4649 4700 0000"            /* NTERNETCONFIG... */
	$"4E56 0000 4EBA 0030 2B6E 000A F7FC 1B6E"            /* NV..N∫.0+n..˜¸.n */
	$"0008 F7FB 4E5E 205F 5C4F 4ED0 9743 4F4E"            /* ..˜˚N^ _\ON–óCON */
	$"4649 4755 5245 494E 5445 524E 4554 434F"            /* FIGUREINTERNETCO */
	$"4E46 4947 0000 4E56 0000 487A FEE6 4878"            /* NFIG..NV..Hz˛ÊHx */
	$"0000 42A7 487A FF76 4EB9 0000 BE5E 4E5E"            /* ..BßHzˇvNπ..æ^N^ */
	$"4E75 9553 5441 5254 5550 494E 5445 524E"            /* NuïSTARTUPINTERN */
	$"4554 434F 4E46 4947 0000 4E56 0000 48E7"            /* ETCONFIG..NV..HÁ */
	$"0030 266E 000E 246E 0008 3553 0016 256B"            /* .0&n..$n..5S..%k */
	$"0002 0030 204B 5C88 2548 0012 356E 000C"            /* ...0 K\à%H..5n.. */
	$"001C 554F 2F0A 205F 7009 A260 3E80 301F"            /* ..UO/. _p.¢`>Ä0. */
	$"3D40 0012 4CDF 0C00 4E5E 205F 4FEF 000A"            /* =@..Lﬂ..N^ _OÔ.. */
	$"4ED0 8D46 5350 4745 5443 4154 494E 464F"            /* N–çFSPGETCATINFO */
	$"0000 4E56 FFFC 48E7 1830 382E 0010 266E"            /* ..NVˇ¸HÁ.08...&n */
	$"000C 246E 0008 554F 3F04 2F0B 2F0A 486E"            /* ..$n..UO?././.Hn */
	$"FFFC 4EB9 0000 EB9A 301F 3600 4A43 6704"            /* ˇ¸Nπ..Îö0.6.JCg. */
	$"3684 4292 3D43 0012 4CDF 0C18 4E5E 205F"            /* 6ÑBí=C..Lﬂ..N^ _ */
	$"4FEF 000A 4ED0 8847 4554 4449 5249 4400"            /* OÔ..N–àGETDIRID. */
	$"0000 4E56 FF00 2F0A 246E 000C 206E 0008"            /* ..NVˇ./.$n.. n.. */
	$"43EE FF00 703F 22D8 51C8 FFFC 2F0A 486D"            /* CÓˇ.p?"ÿQ»ˇ¸/.Hm */
	$"FEAA A933 2F0A 554F 2F0A A950 301F 3F00"            /* ˛™©3/.UO/.©P0.?. */
	$"486E FF00 A947 245F 4E5E 205F 504F 4ED0"            /* Hnˇ.©G$_N^ _PON– */
	$"8E53 4146 4541 5050 454E 444D 454E 5500"            /* éSAFEAPPENDMENU. */
	$"0000 4E56 0000 4A2E 0008 670C 2F2E 000C"            /* ..NV..J...g./... */
	$"3F2E 000A A939 600A 2F2E 000C 3F2E 000A"            /* ?...©9`./...?... */
	$"A93A 4E5E 205F 504F 4ED0 8D53 4554 4954"            /* ©:N^ _PON–çSETIT */
	$"454D 454E 4142 4C45 0000 4E56 0000 594F"            /* EMENABLE..NV..YO */
	$"3F2E 000C A949 205F 2F08 3F2E 000A 1F2E"            /* ?...©I _/.?..... */
	$"0008 4EBA FFAE 4E5E 205F 5C4F 4ED0 8F53"            /* ..N∫ˇÆN^ _\ON–èS */
	$"4554 4944 4954 454D 454E 4142 4C45 0000"            /* ETIDITEMENABLE.. */
	$"4E56 0000 594F 4878 0002 201F A322 2E88"            /* NV..YOHx.. .£".à */
	$"205F 2D48 0008 4E5E 4E75 874E 4557 5354"            /*  _-H..N^NuáNEWST */
	$"5248 0000 4E56 0000 486E 0008 4EB9 0000"            /* RH..NV..Hn..Nπ.. */
	$"D254 4E5E 2E9F 4E75 8B44 4953 504F 5345"            /* “TN^.üNuãDISPOSE */
	$"5354 5248 0000 4E56 FF00 2F03 362E 0008"            /* STRH..NVˇ./.6... */
	$"486E FF00 3F2E 000A 3F03 4EB9 0000 E980"            /* Hnˇ.?...?.Nπ..ÈÄ */
	$"41EE FF00 2608 2043 7000 1010 5240 48C0"            /* AÓˇ.&. Cp...R@H¿ */
	$"2043 226E 000C A22E 261F 4E5E 2E9F 4E75"            /*  C"n..¢.&.N^.üNu */
	$"8947 4554 494E 4453 5452 0000 4E56 0000"            /* âGETINDSTR..NV.. */
	$"48E7 1C20 246E 000A 382E 0008 2052 3610"            /* HÁ. $n..8... R6. */
	$"B843 5FC0 4400 0C44 0001 5CC1 4401 C200"            /* ∏C_¿D..D..\¡D.¬. */
	$"672E 7602 3A04 5345 7801 601E 2012 D083"            /* g.v.:.SEx.`. .–É */
	$"2040 1010 4880 0280 0000 00FF D083 5280"            /*  @..HÄ.Ä...ˇ–ÉRÄ */
	$"2600 0C44 7FFF 6716 5244 B845 6FDE 600E"            /* &..D.ˇg.RD∏Eoﬁ`. */
	$"594F 2F0A 4EB9 0000 E790 201F 2600 2D43"            /* YO/.Nπ..Áê .&.-C */
	$"000E 4CDF 0438 4E5E 205F 5C4F 4ED0 9153"            /* ..Lﬂ.8N^ _\ON–ëS */
	$"5452 4849 4E44 4558 544F 4F46 4653 4554"            /* TRHINDEXTOOFFSET */
	$"0000 4E56 FF00 48E7 1020 246E 000A 594F"            /* ..NVˇ.HÁ. $n..YO */
	$"2F0A 3F2E 0008 4EBA FF64 201F 2600 594F"            /* /.?...N∫ˇd .&.YO */
	$"2F0A 4EB9 0000 E790 201F B680 6C2A 2012"            /* /.Nπ..Áê .∂Äl* . */
	$"D083 2040 4850 486E FF00 2012 D083 2040"            /* –É @HPHnˇ. .–É @ */
	$"1010 4880 0280 0000 00FF 5280 2F00 201F"            /* ..HÄ.Ä...ˇRÄ/. . */
	$"225F 205F A22E 6018 41ED FEB0 2608 2043"            /* "_ _¢.`.AÌ˛∞&. C */
	$"7000 1010 5240 48C0 2043 43EE FF00 A22E"            /* p...R@H¿ CCÓˇ.¢. */
	$"41EE FF00 2608 2043 7000 1010 5240 48C0"            /* AÓˇ.&. Cp...R@H¿ */
	$"2043 226E 000E A22E 4CDF 0408 4E5E 205F"            /*  C"n..¢.Lﬂ..N^ _ */
	$"5C4F 4ED0 8A47 4554 494E 4453 5452 4800"            /* \ON–äGETINDSTRH. */
	$"0000 4E56 FF00 48E7 1F20 246E 000E 3A2E"            /* ..NVˇ.HÁ. $n..:. */
	$"000C 206E 0008 43EE FF00 703F 22D8 51C8"            /* .. n..CÓˇ.p?"ÿQ» */
	$"FFFC 2052 3610 594F 2F0A 4EB9 0000 E790"            /* ˇ¸ R6.YO/.Nπ..Áê */
	$"201F 2C00 B645 6C4C 2F0A 3045 2006 D088"            /*  .,.∂ElL/.0E .–à */
	$"3043 9088 2F00 201F 205F A024 554F 3EB8"            /* 0Cêà/. . _†$UO>∏ */
	$"0220 301F 6670 2E12 DE86 3043 3245 2812"            /* . 0.fp..ﬁÜ0C2E(. */
	$"D886 D889 9888 5384 2607 600E 2043 4210"            /* ÿÜÿâòàSÑ&.`. CB. */
	$"0C83 7FFF FFFF 6706 5283 B684 6FEE 2052"            /* .É.ˇˇˇg.RÉ∂ÑoÓ R */
	$"3085 3605 594F 2F0A 3F05 4EBA FE50 201F"            /* 0Ö6.YO/.?.N∫˛P . */
	$"2600 594F 2F0A 2F03 4878 0000 2012 D083"            /* &.YO/./.Hx.. .–É */
	$"2040 1010 4880 0280 0000 00FF 5280 2F00"            /*  @..HÄ.Ä...ˇRÄ/. */
	$"486E FF00 7000 102E FF00 5240 48C0 2F00"            /* Hnˇ.p...ˇ.R@H¿/. */
	$"A9E0 201F 2800 4CDF 04F8 4E5E 205F 4FEF"            /* ©‡ .(.Lﬂ.¯N^ _OÔ */
	$"000A 4ED0 8A53 4554 494E 4453 5452 4800"            /* ..N–äSETINDSTRH. */
	$"0000 4E56 FF00 48E7 1800 382E 000A 362E"            /* ..NVˇ.HÁ..8...6. */
	$"0008 206E 000C 43EE FF00 703F 22D8 51C8"            /* .. n..CÓˇ.p?"ÿQ» */
	$"FFFC 0C44 0001 6C0C 7001 9044 3203 9240"            /* ˇ¸.D..l.p.êD2.í@ */
	$"3601 7801 7000 102E FF00 3204 D243 B240"            /* 6.x.p...ˇ.2.“C≤@ */
	$"6F0A 7600 162E FF00 9644 5243 4A43 6C02"            /* o.v...ˇ.ñDRCJCl. */
	$"7600 7000 3003 1D40 FF00 41EE FF00 4870"            /* v.p.0..@ˇ.AÓˇ.Hp */
	$"4000 486E FF01 3043 2F08 201F 225F 205F"            /* @.Hnˇ.0C/. ."_ _ */
	$"A22E 41EE FF00 2608 2043 7000 1010 5240"            /* ¢.AÓˇ.&. Cp...R@ */
	$"48C0 2043 226E 0010 A22E 4CDF 0018 4E5E"            /* H¿ C"n..¢.Lﬂ..N^ */
	$"205F 504F 4ED0 8654 5043 4F50 5900 0000"            /*  _PON–ÜTPCOPY... */
	$"4E56 FE00 48E7 1C00 206E 000C 43EE FF00"            /* NV˛.HÁ.. n..CÓˇ. */
	$"703F 22D8 51C8 FFFC 206E 0008 43EE FE00"            /* p?"ÿQ»ˇ¸ n..CÓ˛. */
	$"703F 22D8 51C8 FFFC 7801 7A01 7000 102E"            /* p?"ÿQ»ˇ¸x.z.p... */
	$"FF00 4A40 6F66 7A00 604E 41EE FE00 1030"            /* ˇ.J@ofz.`NAÓ˛..0 */
	$"4000 B02E FF01 663A 7602 601E 41EE FF00"            /* @.∞.ˇ.f:v.`.AÓˇ. */
	$"3004 D043 5340 43EE FE00 1031 0000 B030"            /* 0.–CS@CÓ˛..1..∞0 */
	$"3000 6610 7001 D043 3600 7000 102E FF00"            /* 0.f.p.–C6.p...ˇ. */
	$"B640 6FD8 7000 102E FF00 B640 6F04 3A04"            /* ∂@oÿp...ˇ.∂@o.:. */
	$"601A 7001 D044 3800 7000 102E FF00 7200"            /* `.p.–D8.p...ˇ.r. */
	$"122E FE00 9240 5241 B841 6F9E 3D45 0010"            /* ..˛.í@RA∏Aoû=E.. */
	$"4CDF 0038 4E5E 205F 504F 4ED0 8554 5050"            /* Lﬂ.8N^ _PON–ÖTPP */
	$"4F53 0000 4E56 FEFE 48E7 1020 246E 000E"            /* OS..NV˛˛HÁ. $n.. */
	$"554F 7030 D06E 000C 48C0 7200 1200 0041"            /* UOp0–n..H¿r....A */
	$"0100 3D41 FEFE 486E FEFE 486D FEB2 486E"            /* ..=A˛˛Hn˛˛Hm˛≤Hn */
	$"FF00 3F3C 0002 4EB9 0000 DE7E 4FEF 000E"            /* ˇ.?<..Nπ..ﬁ~OÔ.. */
	$"486E FF00 2F0A 4EBA FF08 301F 3600 4A43"            /* Hnˇ./.N∫ˇ.0.6.JC */
	$"6F1C 2F0A 3F03 3F3C 0002 4EB9 0000 DEF4"            /* o./.?.?<..Nπ..ﬁÙ */
	$"2F2E 0008 2F0A 3F03 4EB9 0000 DFAC 4CDF"            /* /.../.?.Nπ..ﬂ¨Lﬂ */
	$"0408 4E5E 205F 4FEF 000A 4ED0 8544 4F53"            /* ..N^ _OÔ..N–ÖDOS */
	$"5542 0000 4E56 0000 48E7 1020 246E 0020"            /* UB..NV..HÁ. $n.  */
	$"262E 001C 2043 7000 1010 5240 48C0 2043"            /* &... Cp...R@H¿ C */
	$"224A A22E 2F0A 3F3C 0005 2F2E 0008 4EBA"            /* "J¢./.?<../...N∫ */
	$"FF54 2F0A 3F3C 0004 2F2E 000C 4EBA FF46"            /* ˇT/.?<../...N∫ˇF */
	$"2F0A 3F3C 0003 2F2E 0010 4EBA FF38 2F0A"            /* /.?<../...N∫ˇ8/. */
	$"3F3C 0002 2F2E 0014 4EBA FF2A 2F0A 3F3C"            /* ?<../...N∫ˇ*..?< */
	$"0001 2F2E 0018 4EBA FF1C 4CDF 0408 4E5E"            /* ../...N∫ˇ.Lﬂ..N^ */
	$"205F 4FEF 001C 4ED0 8953 5052 494E 5453"            /*  _OÔ..N–âSPRINTS */
	$"3556 0000 4E56 FA00 206E 001C 43EE FA00"            /* 5V..NV˙. n..CÓ˙. */
	$"703F 22D8 51C8 FFFC 206E 0018 43EE FB00"            /* p?"ÿQ»ˇ¸ n..CÓ˚. */
	$"703F 22D8 51C8 FFFC 206E 0014 43EE FC00"            /* p?"ÿQ»ˇ¸ n..CÓ¸. */
	$"703F 22D8 51C8 FFFC 206E 0010 43EE FD00"            /* p?"ÿQ»ˇ¸ n..CÓ˝. */
	$"703F 22D8 51C8 FFFC 206E 000C 43EE FE00"            /* p?"ÿQ»ˇ¸ n..CÓ˛. */
	$"703F 22D8 51C8 FFFC 206E 0008 43EE FF00"            /* p?"ÿQ»ˇ¸ n..CÓˇ. */
	$"703F 22D8 51C8 FFFC 2F2E 0020 486E FA00"            /* p?"ÿQ»ˇ¸/.. Hn˙. */
	$"486E FB00 486E FC00 486E FD00 486E FE00"            /* Hn˚.Hn¸.Hn˝.Hn˛. */
	$"486E FF00 4EBA FEFE 4E5E 205F 4FEF 001C"            /* Hnˇ.N∫˛˛N^ _OÔ.. */
	$"4ED0 8853 5052 494E 5453 3500 0000 4E56"            /* N–àSPRINTS5...NV */
	$"FC00 48E7 1020 246E 0018 206E 0014 43EE"            /* ¸.HÁ. $n.. n..CÓ */
	$"FC00 703F 22D8 51C8 FFFC 206E 0010 43EE"            /* ¸.p?"ÿQ»ˇ¸ n..CÓ */
	$"FD00 703F 22D8 51C8 FFFC 206E 000C 43EE"            /* ˝.p?"ÿQ»ˇ¸ n..CÓ */
	$"FE00 703F 22D8 51C8 FFFC 206E 0008 43EE"            /* ˛.p?"ÿQ»ˇ¸ n..CÓ */
	$"FF00 703F 22D8 51C8 FFFC 41EE FC00 2608"            /* ˇ.p?"ÿQ»ˇ¸AÓ¸.&. */
	$"2043 7000 1010 5240 48C0 2043 224A A22E"            /*  Cp...R@H¿ C"J¢. */
	$"2F0A 3F3C 0003 486E FF00 4EBA FDF8 2F0A"            /* /.?<..Hnˇ.N∫˝¯/. */
	$"3F3C 0002 486E FE00 4EBA FDEA 2F0A 3F3C"            /* ?<..Hn˛.N∫˝Í/.?< */
	$"0001 486E FD00 4EBA FDDC 4CDF 0408 4E5E"            /* ..Hn˝.N∫˝‹Lﬂ..N^ */
	$"205F 4FEF 0014 4ED0 8853 5052 494E 5453"            /*  _OÔ..N–àSPRINTS */
	$"3300 0000 4E56 FDFE 48E7 1830 266E 000C"            /* 3...NV˝˛HÁ.0&n.. */
	$"246E 0008 206E 0012 43EE FF00 703F 22D8"            /* $n.. n..CÓˇ.p?"ÿ */
	$"51C8 FFFC 554F 7000 302E 0010 7200 1200"            /* Q»ˇ¸UOp.0...r... */
	$"0041 0100 3D41 FDFE 486E FDFE 486E FF00"            /* .A..=A˝˛Hn˝˛Hnˇ. */
	$"4EBA FCCE 301F 3800 4A44 6E2E 41EE FF00"            /* N∫¸Œ0.8.JDn.AÓˇ. */
	$"2608 2043 7000 1010 5240 48C0 2043 224B"            /* &. Cp...R@H¿ C"K */
	$"A22E 41ED FEB4 2608 2043 7000 1010 5240"            /* ¢.AÌ˛¥&. Cp...R@ */
	$"48C0 2043 224A A22E 605A 486E FE00 486E"            /* H¿ C"J¢.`ZHn˛.Hn */
	$"FF00 3F3C 0001 3004 5340 3F00 4EBA FBE4"            /* ˇ.?<..0.S@?.N∫˚‰ */
	$"41EE FE00 2608 2043 7000 1010 5240 48C0"            /* AÓ˛.&. Cp...R@H¿ */
	$"2043 224B A22E 486E FE00 486E FF00 7001"            /*  C"K¢.Hn˛.Hnˇ.p. */
	$"D044 3F00 3F3C 00FF 4EBA FBB8 41EE FE00"            /* –D?.?<.ˇN∫˚∏AÓ˛. */
	$"2608 2043 7000 1010 5240 48C0 2043 224A"            /* &. Cp...R@H¿ C"J */
	$"A22E 504F 4CDF 0C18 4E5E 205F 4FEF 000E"            /* ¢.POLﬂ..N^ _OÔ.. */
	$"4ED0 8753 504C 4954 4259 0000 4E56 FD00"            /* N–áSPLITBY..NV˝. */
	$"48E7 1800 206E 0014 43EE FE00 703F 22D8"            /* HÁ.. n..CÓ˛.p?"ÿ */
	$"51C8 FFFC 206E 0010 43EE FF00 703F 22D8"            /* Q»ˇ¸ n..CÓˇ.p?"ÿ */
	$"51C8 FFFC 554F 486E FE00 486E FF00 4EBA"            /* Q»ˇ¸UOHn˛.Hnˇ.N∫ */
	$"FBF0 301F 3800 4A44 6F62 486E FD00 486E"            /* ˚0.8.JDobHn˝.Hn */
	$"FF00 3F3C 0001 3004 5340 3F00 4EBA FB34"            /* ˇ.?<..0.S@?.N∫˚4 */
	$"41EE FD00 2608 2043 7000 1010 5240 48C0"            /* AÓ˝.&. Cp...R@H¿ */
	$"2043 226E 000C A22E 486E FD00 486E FF00"            /*  C"n..¢.Hn˝.Hnˇ. */
	$"7000 102E FE00 D044 3F00 3F3C 00FF 4EBA"            /* p...˛.–D?.?<.ˇN∫ */
	$"FB02 41EE FD00 2608 2043 7000 1010 5240"            /* ˚.AÓ˝.&. Cp...R@ */
	$"48C0 2043 226E 0008 A22E 504F 4A44 5EC0"            /* H¿ C"n..¢.POJD^¿ */
	$"4400 1D40 0018 4CDF 0018 4E5E 205F 4FEF"            /* D..@..Lﬂ..N^ _OÔ */
	$"0010 4ED0 8553 504C 4954 0000 4E56 0000"            /* ..N–ÖSPLIT..NV.. */
	$"202E 000A 322E 0008 0300 56C0 4400 1D40"            /*  ...2.....V¿D..@ */
	$"000E 4E5E 205F 5C4F 4ED0 8654 5042 5453"            /* ..N^ _\ON–ÜTPBTS */
	$"5400 0000 4E56 0000 1B6E 0008 F819 4E5E"            /* T...NV...n..¯.N^ */
	$"205F 544F 4ED0 8F53 4554 494E 464F 5245"            /*  _TON–èSETINFORE */
	$"4752 4F55 4E44 0000 4E56 FFEA 554F 2F2D"            /* GROUND..NVˇÍUO/- */
	$"FEB6 486E FFEA 225F 201F A1AD 2288 3E80"            /* ˛∂HnˇÍ"_ .°≠"à>Ä */
	$"301F 6654 554F 2F2E FFEA 3F3C 0003 4EBA"            /* 0.fTUO/.ˇÍ?<..N∫ */
	$"FF8C 101F 6742 554F 486E FFEE 3F3C 0037"            /* ˇå..gBUOHnˇÓ?<.7 */
	$"A88F 301F 6632 554F 486E FFF6 70FF 2F00"            /* ®è0.f2UOHnˇˆpˇ/. */
	$"3F3C 0039 A88F 301F 661E 554F 486E FFEE"            /* ?<.9®è0.f.UOHnˇÓ */
	$"486E FFF6 486E FFFF 3F3C 003D A88F 301F"            /* HnˇˆHnˇˇ?<.=®è0. */
	$"6606 1B6E FFFF F819 1D6D F819 0008 4E5E"            /* f..nˇˇ¯..m¯...N^ */
	$"205F 4ED0 8C49 4E46 4F52 4547 524F 554E"            /*  _N–åINFOREGROUN */
	$"4400 0000 4E56 FFC2 2F0A 246E 0008 204A"            /* D...NVˇ¬/.$n.. J */
	$"5C88 2D48 FFD4 426E FFD8 3D6E 000C FFDA"            /* \à-Hˇ‘Bnˇÿ=n..ˇ⁄ */
	$"426E FFDE 554F 486E FFC2 205F 7008 A260"            /* BnˇﬁUOHnˇ¬ _p.¢` */
	$"3E80 301F 3D40 000E 34AE FFF6 256E FFFC"            /* >Ä0.=@..4Æˇˆ%nˇ¸ */
	$"0002 245F 4E5E 205F 5C4F 4ED0 8E52 4546"            /* ..$_N^ _\ON–éREF */
	$"4E55 4D54 4F46 5353 5045 4300 0000 4E56"            /* NUMTOFSSPEC...NV */
	$"FFEA 554F 3F3C 0001 486E FFEC 205F 301F"            /* ˇÍUO?<..HnˇÏ _0. */
	$"A090 3E80 301F 4A40 6606 4A2E FFF5 6604"            /* †ê>Ä0.J@f.J.ˇıf. */
	$"7000 6002 7001 1B40 F864 554F 2F2D FEBA"            /* p.`.p..@¯dUO/-˛∫ */
	$"486D F86A 225F 201F A1AD 2288 3E80 301F"            /* Hm¯j"_ .°≠"à>Ä0. */
	$"6708 2B7C 0000 0600 F86A 0CAD 0000 0700"            /* g.+|....¯j.≠.... */
	$"F86A 5CC0 4400 1B40 F86F 554F A994 301F"            /* ¯j\¿D..@¯oUO©î0. */
	$"3B40 F860 554F 3F2D F860 486D F81A 4EBA"            /* ;@¯`UO?-¯`Hm¯.N∫ */
	$"FF34 301F 3D40 FFEA 554F 2F2D FEBE 486E"            /* ˇ40.=@ˇÍUO/-˛æHn */
	$"FFFC 225F 201F A1AD 2288 3E80 301F 4A40"            /* ˇ¸"_ .°≠"à>Ä0.J@ */
	$"6612 554F 2F2E FFFC 4267 4EBA FE30 101F"            /* f.UO/.ˇ¸BgN∫˛0.. */
	$"4A00 6604 7000 6002 7001 1B40 F869 554F"            /* J.f.p.`.p..@¯iUO */
	$"2F2D FEC2 486E FFFC 225F 201F A1AD 2288"            /* /-˛¬Hnˇ¸"_ .°≠"à */
	$"3E80 301F 4A40 6612 554F 2F2E FFFC 4267"            /* >Ä0.J@f.UO/.ˇ¸Bg */
	$"4EBA FDFA 101F 4A00 6604 7000 6002 7001"            /* N∫˝˙..J.f.p.`.p. */
	$"1B40 F868 554F 2F2D FEC6 486E FFFC 225F"            /* .@¯hUO/-˛∆Hnˇ¸"_ */
	$"201F A1AD 2288 3E80 301F 4A40 6612 554F"            /*  .°≠"à>Ä0.J@f.UO */
	$"2F2E FFFC 4267 4EBA FDC4 101F 4A00 6604"            /* /.ˇ¸BgN∫˝ƒ..J.f. */
	$"7000 6002 7001 1B40 F866 554F 2F2D FECA"            /* p.`.p..@¯fUO/-˛  */
	$"486E FFFC 225F 201F A1AD 2288 3E80 301F"            /* Hnˇ¸"_ .°≠"à>Ä0. */
	$"4A40 6612 554F 2F2E FFFC 4267 4EBA FD8E"            /* J@f.UO/.ˇ¸BgN∫˝é */
	$"101F 4A00 6604 7000 6002 7001 1B40 F865"            /* ..J.f.p.`.p..@¯e */
	$"554F 2F2D FECE 486E FFFC 225F 201F A1AD"            /* UO/-˛ŒHnˇ¸"_ .°≠ */
	$"2288 3E80 301F 4A40 6612 554F 2F2E FFFC"            /* "à>Ä0.J@f.UO/.ˇ¸ */
	$"4267 4EBA FD58 101F 4A00 6604 7000 6002"            /* BgN∫˝X..J.f.p.`. */
	$"7001 1B40 F867 554F 2F2D FEB6 486E FFFC"            /* p..@¯gUO/-˛∂Hnˇ¸ */
	$"225F 201F A1AD 2288 3E80 301F 4A40 6614"            /* "_ .°≠"à>Ä0.J@f. */
	$"554F 2F2E FFFC 3F3C 0003 4EBA FD20 101F"            /* UO/.ˇ¸?<..N∫˝ .. */
	$"4A00 6604 7000 6002 7001 1B40 F863 554F"            /* J.f.p.`.p..@¯cUO */
	$"2F2D FED2 486E FFFC 225F 201F A1AD 2288"            /* /-˛“Hnˇ¸"_ .°≠"à */
	$"3E80 301F 4A40 6612 554F 2F2E FFFC 4267"            /* >Ä0.J@f.UO/.ˇ¸Bg */
	$"4EBA FCEA 101F 4A00 6604 7000 6002 7001"            /* N∫¸Í..J.f.p.`.p. */
	$"1B40 F862 1B7C 0001 F819 4E5E 4E75 9149"            /* .@¯b.|..¯.N^NuëI */
	$"4E49 5453 5953 5445 4D47 4C4F 4241 4C53"            /* NITSYSTEMGLOBALS */
	$"0000 4E56 0000 2F03 262E 0008 594F 2F03"            /* ..NV../.&...YO/. */
	$"201F A122 2E88 205F 226E 000C 2288 554F"            /*  .°".à _"n.."àUO */
	$"3EB8 0220 301F 3600 3D43 0010 261F 4E5E"            /* >∏. 0.6.=C..&.N^ */
	$"205F 504F 4ED0 8A4D 4E45 5748 414E 444C"            /*  _PON–äMNEWHANDL */
	$"4500 0000 4E56 0000 2F0A 246E 0008 4A92"            /* E...NV../.$n..Jí */
	$"6708 2F12 205F A023 4292 245F 4E5E 2E9F"            /* g./. _†#Bí$_N^.ü */
	$"4E75 8E4D 4449 5350 4F53 4548 414E 444C"            /* NuéMDISPOSEHANDL */
	$"4500 0000 4E56 FFFC 594F 2F2E 0010 2F2E"            /* E...NVˇ¸YO/.../. */
	$"000C 4878 0000 2F2E 0008 486E FFFC 42A7"            /* ..Hx../...Hnˇ¸Bß */
	$"A9E0 201F 2D40 FFFC 4E5E 205F 4FEF 000C"            /* ©‡ .-@ˇ¸N^ _OÔ.. */
	$"4ED0 8D4D 4D55 4E47 4552 4445 4C45 5445"            /* N–çMMUNGERDELETE */
	$"0000 4E56 0000 594F 4EB9 0000 C700 205F"            /* ..NV..YONπ..«. _ */
	$"226E 0008 2288 206E 0008 2F10 2F2E 000C"            /* "n.."à n.././... */
	$"4EBA 00A0 4E5E 205F 504F 4ED0 9454 5241"            /* N∫.†N^ _PON–îTRA */
	$"434B 5445 5854 4954 454D 5343 5245 4154"            /* CKTEXTITEMSCREAT */
	$"4500 0000 4E56 FFFE 48E7 1830 266E 000E"            /* E...NVˇ˛HÁ.0&n.. */
	$"382E 000C 246E 0008 41ED FED6 2608 2043"            /* 8...$n..AÌ˛÷&. C */
	$"7000 1010 5240 48C0 2043 224A A22E 2F0B"            /* p...R@H¿ C"J¢./. */
	$"3F04 486E FFFE 4EB9 0000 B096 554F 306E"            /* ?.Hnˇ˛Nπ..∞ñUO0n */
	$"FFFE 2F08 486D FED8 4878 0100 4EB9 0000"            /* ˇ˛/.Hm˛ÿHx..Nπ.. */
	$"DCD0 101F 670C 2F0B 3F04 2F0A 4EB9 0000"            /* ‹–..g./.?./.Nπ.. */
	$"ADB2 4CDF 0C18 4E5E 205F 4FEF 000A 4ED0"            /* ≠≤Lﬂ..N^ _OÔ..N– */
	$"8F53 4146 4547 4554 4954 454D 5445 5854"            /* èSAFEGETITEMTEXT */
	$"0000 4E56 FF00 48E7 1830 266E 000C 246E"            /* ..NVˇ.HÁ.0&n..$n */
	$"0008 554F 2F0A 4EB9 0000 B3CA 301F 3800"            /* ..UO/.Nπ..≥ 0.8. */
	$"7601 6022 2F0A 3F03 486E FF00 4EBA FF56"            /* v.`"/.?.Hnˇ.N∫ˇV */
	$"2F0B 3F03 486E FF00 4EB9 0000 C8B2 0C43"            /* /.?.Hnˇ.Nπ..»≤.C */
	$"7FFF 6706 5243 B644 6FDA 4CDF 0C18 4E5E"            /* .ˇg.RC∂Do⁄Lﬂ..N^ */
	$"205F 504F 4ED0 8E54 5241 434B 5445 5854"            /*  _PON–éTRACKTEXT */
	$"4954 454D 5300 0000 4E56 FF00 2F03 486E"            /* ITEMS...NVˇ./.Hn */
	$"FF00 2F2E 000A 3F2E 0008 4EB9 0000 C812"            /* ˇ./...?...Nπ..». */
	$"41EE FF00 2608 2043 7000 1010 5240 48C0"            /* AÓˇ.&. Cp...R@H¿ */
	$"2043 226E 000E A22E 584F 261F 4E5E 205F"            /*  C"n..¢.XO&.N^ _ */
	$"5C4F 4ED0 8B54 4558 5449 5445 4D57 4153"            /* \ON–ãTEXTITEMWAS */
	$"0000 4E56 FE00 2F2E 000A 3F2E 0008 486E"            /* ..NV˛./...?...Hn */
	$"FF00 4EBA FEC0 554F 486E FF00 486E FE00"            /* ˇ.N∫˛¿UOHnˇ.Hn˛. */
	$"2F2E 000E 3F2E 0008 4EBA FF8E 584F 486E"            /* /...?...N∫ˇéXOHn */
	$"FE00 3F3C 0001 4EB9 0000 DD64 101F 1D40"            /* ˛.?<..Nπ..›d...@ */
	$"0012 4E5E 205F 4FEF 000A 4ED0 9254 4558"            /* ..N^ _OÔ..N–íTEX */
	$"5449 5445 4D48 4153 4348 414E 4745 4400"            /* TITEMHASCHANGED. */
	$"0000 4E56 0000 202E 000A 322E 0008 0300"            /* ..NV.. ...2..... */
	$"56C0 4400 1D40 000E 4E5E 205F 5C4F 4ED0"            /* V¿D..@..N^ _\ON– */
	$"8654 5042 5453 5400 0000 4E56 FEFC 486E"            /* ÜTPBTST...NV˛¸Hn */
	$"FF00 3F3C 076C 7000 102E 0010 D040 5240"            /* ˇ.?<.lp.....–@R@ */
	$"3F00 4EB9 0000 E980 486E FF00 2F2E 000C"            /* ?.Nπ..ÈÄHnˇ./... */
	$"A900 486E FF00 3F3C 076C 7000 102E 0010"            /* ©.Hnˇ.?<.lp..... */
	$"D040 5440 3F00 4EB9 0000 E980 486E FF00"            /* –@T@?.Nπ..ÈÄHnˇ. */
	$"486E FEFC 4EB9 0000 E89A 206E 0008 30AE"            /* Hn˛¸Nπ..Ëö n..0Æ */
	$"FEFE 4E5E 205F 4FEF 000A 4ED0 8A47 4554"            /* ˛˛N^ _OÔ..N–äGET */
	$"4D59 464F 4E54 5300 0000 4E56 FFFC 1F2E"            /* MYFONTS...NVˇ¸.. */
	$"0008 486E FFFC 486E FFFE 4EBA FF7E 3F2E"            /* ..Hnˇ¸Hnˇ˛N∫ˇ~?. */
	$"FFFC A887 3F2E FFFE A88A 4E5E 205F 544F"            /* ˇ¸®á?.ˇ˛®äN^ _TO */
	$"4ED0 8953 4554 4D59 464F 4E54 0000 4E56"            /* N–âSETMYFONT..NV */
	$"0000 206E 0008 30AE 0010 316E 000E 0002"            /* .. n..0Æ..1n.... */
	$"316E 000C 0004 4E5E 205F 4FEF 000A 4ED0"            /* 1n....N^ _OÔ..N– */
	$"8C4D 414B 4552 4742 434F 4C4F 5200 0000"            /* åMAKERGBCOLOR... */
	$"4E56 0000 554F 3F3C ABCA 4EBA 00A4 101F"            /* NV..UO?<´ N∫.§.. */
	$"6714 2F2E 0014 2F2E 0010 2F2E 000C 2F2E"            /* g./.../.../.../. */
	$"0008 ABCA 6012 4878 0001 42A7 2F2E 000C"            /* ..´ `.Hx..Bß/... */
	$"2F2E 0010 205F 4E90 4E5E 205F 4FEF 0010"            /* /... _NêN^ _OÔ.. */
	$"4ED0 8E53 4146 4544 4556 4943 454C 4F4F"            /* N–éSAFEDEVICELOO */
	$"5000 0000 4E56 FFF8 2F0A 206E 0014 2D50"            /* P...NVˇ¯/. n..-P */
	$"FFF8 2D68 0004 FFFC 594F A8D8 205F 2448"            /* ˇ¯-h..ˇ¸YO®ÿ _$H */
	$"2F0A 486E FFF8 A8DF 2F0A 2F2E 0010 2F2E"            /* /.Hnˇ¯®ﬂ/./.../. */
	$"000C 2F2E 0008 4EBA FF78 2F0A A8D9 245F"            /* ../...N∫ˇx/.®Ÿ$_ */
	$"4E5E 205F 4FEF 0010 4ED0 9253 4146 4544"            /* N^ _OÔ..N–íSAFED */
	$"4556 4943 454C 4F4F 5052 4543 5400 0000"            /* EVICELOOPRECT... */
	$"4E56 FFFC 48E7 1800 362E 0008 554F 3043"            /* NVˇ¸HÁ..6...UO0C */
	$"2F08 3F3C 000B 4EBA FE3A 101F 1800 0C04"            /* /.?<..N∫˛:...... */
	$"0001 664A 594F 3F3C AA6E 1F3C 0001 4EB9"            /* ..fJYO?<™n.<..Nπ */
	$"0000 E7B6 205F 2D48 FFFC 594F 3F3C A86E"            /* ..Á∂ _-Hˇ¸YO?<®n */
	$"1F3C 0001 4EB9 0000 E7B6 205F B1EE FFFC"            /* .<..Nπ..Á∂ _±Óˇ¸ */
	$"6606 383C 0200 6004 383C 0400 3044 3003"            /* f.8<..`.8<..0D0. */
	$"0280 0000 07FF B088 6D04 363C A89F 594F"            /* .Ä...ˇ∞àm.6<®üYO */
	$"3F3C A89F 4EBA 00B2 205F 2D48 FFFC 594F"            /* ?<®üN∫.≤ _-Hˇ¸YO */
	$"3F03 4EBA 00A4 205F B1EE FFFC 56C0 4400"            /* ?.N∫.§ _±Óˇ¸V¿D. */
	$"1D40 000A 4CDF 0018 4E5E 205F 544F 4ED0"            /* .@..Lﬂ..N^ _TON– */
	$"8F4D 5954 5241 5041 5641 494C 4142 4C45"            /* èMYTRAPAVAILABLE */
	$"0000 4E56 FF00 2F03 262E 0008 2F03 486E"            /* ..NVˇ./.&.../.Hn */
	$"FF00 4EB9 0000 E8AE 41EE FF00 2608 2043"            /* ˇ.Nπ..ËÆAÓˇ.&. C */
	$"226E 000C 7010 4EBA 0946 261F 4E5E 2E9F"            /* "n..p.N∫.F&.N^.ü */
	$"4E75 884E 554D 544F 5354 5200 0000 4E56"            /* NuàNUMTOSTR...NV */
	$"FEFC 206E 0008 43EE FEFC 703F 22D8 51C8"            /* ˛¸ n..CÓ˛¸p?"ÿQ» */
	$"FFFC 486E FEFC 486E FFFC 4EB9 0000 E89A"            /* ˇ¸Hn˛¸Hnˇ¸Nπ..Ëö */
	$"2D6E FFFC 000C 4E5E 2E9F 4E75 8853 5452"            /* -nˇ¸..N^.üNuàSTR */
	$"544F 4E55 4D00 0000 4E56 0000 594F 3F2E"            /* TONUM...NV..YO?. */
	$"0008 554F 306E 0008 2F08 3F3C 000B 4EBA"            /* ..UO0n../.?<..N∫ */
	$"FD12 101F 1F00 4EB9 0000 E7B6 205F 2D48"            /* ˝.....Nπ..Á∂ _-H */
	$"000A 4E5E 205F 544F 4ED0 904D 5947 4554"            /* ..N^ _TON–êMYGET */
	$"5452 4150 4144 4452 4553 5300 0000 4E56"            /* TRAPADDRESS...NV */
	$"0000 594F 2F2D FFD8 3F3C 0080 A81F 205F"            /* ..YO/-ˇÿ?<.Ä®. _ */
	$"2008 6608 3F3C 0001 A9C8 A9F4 4E5E 4E75"            /*  .f.?<..©»©ÙN^Nu */
	$"8D48 4156 4552 4553 4F55 5243 4553 0000"            /* çHAVERESOURCES.. */
	$"4E56 FF00 48E7 1838 266E 0008 244B 594F"            /* NVˇ.HÁ.8&n..$KYO */
	$"2F2D FFDC 3F3C 0001 A9A0 205F 2848 200C"            /* /-ˇ‹?<..©† _(H . */
	$"6654 24BC 0000 2000 426A 0004 41ED FFE0"            /* fT$º.. .Bj..AÌˇ‡ */
	$"2808 2044 7000 1010 5240 48C0 2044 43EA"            /* (. Dp...R@H¿ DCÍ */
	$"0006 A22E 41ED FFE6 2808 2044 7000 1010"            /* ..¢.AÌˇÊ(. Dp... */
	$"5240 48C0 2044 43EA 0016 A22E 41ED FFF6"            /* R@H¿ DCÍ..¢.AÌˇˆ */
	$"2808 2044 7000 1010 5240 48C0 2044 43EA"            /* (. Dp...R@H¿ DCÍ */
	$"0116 A22E 6052 2F14 2F0B 4878 0156 201F"            /* ..¢.`R/./.Hx.V . */
	$"225F 205F A22E 7000 102A 0006 48C0 204A"            /* "_ _¢.p..*..H¿ J */
	$"5C88 2208 928B D294 D280 5281 2041 4850"            /* \à".íã“î“ÄRÅ AHP */
	$"486A 0016 4878 0100 201F 225F 205F A22E"            /* Hj..Hx.. ."_ _¢. */
	$"7000 102A 0006 48C0 7210 B081 6D06 157C"            /* p..*..H¿r.∞Åm..| */
	$"000F 0006 2F0C A9A3 554F 486A 0006 486A"            /* ..../.©£UOHj..Hj */
	$"0016 4EB9 0000 CA30 301F 3600 6002 5343"            /* ..Nπ.. 00.6.`.SC */
	$"4A43 6F12 204B 41E8 0016 7000 1030 3000"            /* JCo. KAË..p..00. */
	$"0C40 0020 66E8 5343 0C43 0001 6C04 363C"            /* .@. fËSC.C..l.6< */
	$"00FF 486E FF00 486B 0016 3F3C 0001 3F03"            /* .ˇHnˇ.Hk..?<..?. */
	$"4EB9 0000 C992 41EE FF00 2808 2044 43EA"            /* Nπ..…íAÓˇ.(. DCÍ */
	$"0116 7040 4EBA 0758 584F 4CDF 1C18 4E5E"            /* ..p@N∫.XXOLﬂ..N^ */
	$"2E9F 4E75 8A47 4554 5645 5253 494F 4E00"            /* .üNuäGETVERSION. */
	$"0000 23FC 0000 C350 0000 0048 42B9 0000"            /* ..#¸..√P...HBπ.. */
	$"004C 4239 0000 0050 13FC 0001 0000 0051"            /* .LB9...P.¸.....Q */
	$"4279 0000 0052 42B9 0000 0054 42B9 0000"            /* By...RBπ...TBπ.. */
	$"0058 13FC 0001 0000 005C 42B9 0000 005E"            /* .X.¸.....\Bπ...^ */
	$"42B9 0000 0062 4E75 4FEF FFF6 2EAF 000E"            /* Bπ...bNuOÔˇˆ.Ø.. */
	$"2F6F 0012 0004 3F6F 0016 0008 4857 3F3C"            /* /o....?o....HW?< */
	$"0016 A9EB 4857 486F 0004 3F3C 2810 A9EB"            /* ..©ÎHWHo..?<(.©Î */
	$"2017 4FEF 000A 4E75 2F03 262F 0008 4A83"            /*  .OÔ..Nu/.&/..JÉ */
	$"6D04 2003 6004 2003 4480 2F40 000C 261F"            /* m. .`. .DÄ/@..&. */
	$"2E9F 4E75 48E7 071A 266F 001C 226F 0024"            /* .üNuHÁ..&o.."o.$ */
	$"2A2F 002C 2C6F 0030 286F 0034 2C13 2E11"            /* *..,,o.0(o.4,... */
	$"206F 0020 2210 206F 0028 2410 7002 B280"            /*  o. ". o.($.p.≤Ä */
	$"6706 7004 B280 6658 7002 B480 6706 7004"            /* g.p.≤ÄfXp.¥Äg.p. */
	$"B480 664C 7002 BA80 661A 7002 B280 660A"            /* ¥ÄfLp.∫Äf.p.≤Äf. */
	$"2047 38A8 0002 228C 6026 2046 38A8 0002"            /*  G8®.."å`& F8®.. */
	$"268C 601C 7004 B280 660C 2047 7000 3010"            /* &å`.p.≤Äf. Gp.0. */
	$"2C80 228E 600A 2046 7000 3010 2C80 268E"            /* ,Ä"é`. Fp.0.,Ä&é */
	$"206F 0028 2085 206F 0020 2085 6000 0108"            /*  o.( Ö o.  Ö`... */
	$"7002 B280 6706 7004 B280 660C 7002 B480"            /* p.≤Äg.p.≤Äf.p.¥Ä */
	$"6706 7004 B480 661E 7002 B480 6708 7004"            /* g.p.¥Äf.p.¥Äg.p. */
	$"B480 6600 00E2 7002 B280 6700 00DA 7004"            /* ¥Äf..‚p.≤Äg..⁄p. */
	$"B280 6700 00D2 7002 BA80 6648 7002 B280"            /* ≤Äg..“p.∫ÄfHp.≤Ä */
	$"661A 7001 B480 660C 2047 1010 4880 3880"            /* f.p.¥Äf. G..HÄ8Ä */
	$"228C 6020 2002 5580 D191 6018 7001 B280"            /* "å`  .UÄ—ë`.p.≤Ä */
	$"660C 2046 1010 4880 3880 268C 6006 2001"            /* f. F..HÄ8Ä&å`. . */
	$"5580 D193 206F 0028 2085 206F 0020 2085"            /* UÄ—ì o.( Ö o.  Ö */
	$"6000 0084 7004 BA80 664A 7004 B280 661C"            /* `..Ñp.∫ÄfJp.≤Äf. */
	$"7001 B480 660E 2047 1010 4880 48C0 2C80"            /* p.¥Äf. G..HÄH¿,Ä */
	$"228E 6022 2002 5980 D191 601A 7001 B280"            /* "é`" .YÄ—ë`.p.≤Ä */
	$"660E 2046 1010 4880 48C0 2C80 268E 6006"            /* f. F..HÄH¿,Ä&é`. */
	$"2001 5980 D193 206F 0028 2085 206F 0020"            /*  .YÄ—ì o.( Ö o.  */
	$"2085 6032 7001 BA80 662C 7002 B280 6604"            /*  Ö`2p.∫Äf,p.≤Äf. */
	$"5293 6016 7004 B280 6604 5693 600C 7002"            /* Rì`.p.≤Äf.Vì`.p. */
	$"B480 6604 5291 6002 5691 206F 0028 2085"            /* ¥Äf.Rë`.Vë o.( Ö */
	$"206F 0020 2085 4CDF 58E0 4E75 48E7 1C20"            /*  o.  ÖLﬂX‡NuHÁ.  */
	$"4FEF FFF6 246F 0022 262F 001E 202F 002E"            /* OÔˇˆ$o."&/.. /.. */
	$"B0AF 0026 6724 486F 0008 486F 0008 2F03"            /* ∞Ø.&g$Ho..Ho../. */
	$"486F 0032 486F 003A 486F 0042 486F 004A"            /* Ho.2Ho.:Ho.BHo.J */
	$"4EB9 0000 D9B4 4FEF 001C 2803 5384 262F"            /* Nπ..Ÿ¥OÔ..(.SÑ&/ */
	$"002E 5383 2A2F 0026 5385 6020 206F 002A"            /* ..SÉ*..&SÖ`  o.* */
	$"1030 5800 4880 206F 0032 1230 3800 4881"            /* .0X.HÄ o.2.08.HÅ */
	$"8240 1581 4800 5383 5385 5384 4A83 6D36"            /* Ç@.ÅH.SÉSÖSÑJÉm6 */
	$"4A85 6D32 4A83 6CD4 602C 4A83 6D10 2003"            /* JÖm2JÉl‘`,JÉm. . */
	$"5383 206F 0032 1EB0 0800 1017 6012 2005"            /* SÉ o.2.∞....`. . */
	$"5385 206F 002A 1F70 0800 0002 102F 0002"            /* SÖ o.*.p...../.. */
	$"1580 4800 5384 4A84 6CD0 2F4A 0036 4FEF"            /* .ÄH.SÑJÑl–/J.6OÔ */
	$"000A 4CDF 0438 205F 4FEF 0018 4ED0 48E7"            /* ..Lﬂ.8 _OÔ..N–HÁ */
	$"1E20 5D4F 246F 0022 2C2F 001E 202F 002E"            /* . ]O$o.",/.. /.. */
	$"B0AF 0026 6724 486F 0004 486F 0004 2F06"            /* ∞Ø.&g$Ho..Ho../. */
	$"486F 0032 486F 003A 486F 0042 486F 004A"            /* Ho.2Ho.:Ho.BHo.J */
	$"4EB9 0000 D9B4 4FEF 001C 2806 5384 262F"            /* Nπ..Ÿ¥OÔ..(.SÑ&/ */
	$"002E 5383 2A2F 0026 5385 6028 206F 002A"            /* ..SÉ*..&SÖ`( o.* */
	$"1030 5800 4880 206F 0032 1230 3800 4881"            /* .0X.HÄ o.2.08.HÅ */
	$"C240 1030 3800 4880 B340 1580 4800 5383"            /* ¬@.08.HÄ≥@.ÄH.SÉ */
	$"5385 5384 4A83 6D08 4A85 6D04 4A83 6CCC"            /* SÖSÑJÉm.JÖm.JÉlÃ */
	$"BCAF 0026 5EC0 4400 4880 1A00 601C 4A05"            /* ºØ.&^¿D.HÄ..`.J. */
	$"6604 7000 600E 2003 5383 206F 0032 1030"            /* f.p.`. .SÉ o.2.0 */
	$"0800 4880 1580 4800 5384 4A84 6CE0 2F4A"            /* ..HÄ.ÄH.SÑJÑl‡/J */
	$"0036 5C4F 4CDF 0478 205F 4FEF 0018 4ED0"            /* .6\OLﬂ.x _OÔ..N– */
	$"48E7 1C00 262F 0018 2A2F 0010 2803 E684"            /* HÁ..&/..*...(.ÊÑ */
	$"4A83 6D08 2005 E788 B680 6F06 422F 001C"            /* JÉm. .Áà∂Äo.B/.. */
	$"6026 2005 5380 9084 206F 0014 1030 0800"            /* `& .SÄêÑ o...0.. */
	$"4880 7207 C283 7401 E36A C440 4A42 56C2"            /* HÄr.¬Ét.„jƒ@JBV¬ */
	$"4402 4882 1F42 001C 4CDF 0038 205F 4FEF"            /* D.HÇ.B..Lﬂ.8 _OÔ */
	$"000C 4ED0 48E7 1C00 206F 0018 2A2F 0014"            /* ..N–HÁ.. o..*... */
	$"282F 0010 7600 6006 4230 3800 5283 B684"            /* (/..v.`.B08.RÉ∂Ñ */
	$"6DF6 7007 C085 7201 E169 2005 E680 2404"            /* mˆp.¿Ör.·i .ÊÄ$. */
	$"5382 9480 1181 2800 4CDF 0038 205F 4FEF"            /* SÇîÄ.Å(.Lﬂ.8 _OÔ */
	$"000C 4ED0 48E7 1E30 266F 0022 246F 001E"            /* ..N–HÁ.0&o."$o.. */
	$"3C2F 001C 7800 181B 7A00 1A1A 4A46 660C"            /* </..x...z...JFf. */
	$"B845 6708 422F 0026 6000 00E8 0C46 0001"            /* ∏Eg.B/.&`..Ë.F.. */
	$"660E B845 670A 1F7C 0001 0026 6000 00D4"            /* f.∏Eg..|...&`..‘ */
	$"B845 6E04 3004 6002 3005 3600 6006 528B"            /* ∏En.0.`.0.6.`.Rã */
	$"528A 5343 4A43 6F06 1013 B012 67F0 3006"            /* RäSCJCo...∞.g0. */
	$"0C40 0005 6200 009C D040 303B 0006 4EFB"            /* .@..b..ú–@0;..N˚ */
	$"0002 000C 001C 0028 0042 005C 0076 4A43"            /* .......(.B.\.vJC */
	$"6600 008C 1F7C 0001 0026 6000 0086 4A43"            /* f..å.|...&`..ÜJC */
	$"677C 1F7C 0001 0026 6078 4A43 6604 B845"            /* g|.|...&`xJCf.∏E */
	$"6D0A 4A43 6768 1013 B012 6462 1F7C 0001"            /* m.JCgh..∞.db.|.. */
	$"0026 605E 4A43 6604 B845 6F0A 4A43 674E"            /* .&`^JCf.∏Eo.JCgN */
	$"1013 B012 6448 1F7C 0001 0026 6044 4A43"            /* ..∞.dH.|...&`DJC */
	$"6604 B845 6E0A 4A43 6734 1013 B012 632E"            /* f.∏En.JCg4..∞.c. */
	$"1F7C 0001 0026 602A 4A43 6604 B845 6C0A"            /* .|...&`*JCf.∏El. */
	$"4A43 671A 1013 B012 6314 1F7C 0001 0026"            /* JCg...∞.c..|...& */
	$"6010 3F3C 0004 4EB9 0000 E074 544F 422F"            /* `.?<..Nπ..‡tTOB/ */
	$"0026 4CDF 0C78 205F 4FEF 000A 4ED0 48E7"            /* .&Lﬂ.x _OÔ..N–HÁ */
	$"183A 7600 49EF 001C 548C 588C 266C FFFC"            /* .:v.IÔ..TåXå&lˇ¸ */
	$"0C6F 0001 001C 6C04 4213 6052 6048 588C"            /* .o....l.B.`R`HXå */
	$"246C FFFC 2C4A 528E 3003 5240 204B D0C0"            /* $lˇ¸,JRé0.R@ K–¿ */
	$"2808 7000 1012 D043 0C40 00FF 6F14 204E"            /* (.p...–C.@.ˇo. N */
	$"2244 303C 00FF 9043 48C0 A22E 363C 00FF"            /* "D0<.ˇêCH¿¢.6<.ˇ */
	$"601A 204E 2244 7000 1012 A22E 7000 1012"            /* `. N"Dp...¢.p... */
	$"D640 536F 001C 4A6F 001C 66B2 1683 4CDF"            /* ÷@So..Jo..f≤.ÉLﬂ */
	$"5C18 4E75 48E7 1E38 246F 0024 362F 0022"            /* \.NuHÁ.8$o.$6/." */
	$"382F 0020 4A44 6F0C 4A43 6F08 7000 1012"            /* 8/. JDo.JCo.p... */
	$"B640 6F04 6000 008C 7A00 1A12 B645 6E10"            /* ∂@o.`..åz...∂En. */
	$"0C43 0001 6C0C 3003 D044 0C40 0001 6E02"            /* .C..l.0.–D.@..n. */
	$"6070 0C43 0001 6C34 3005 9043 5240 B840"            /* `p.C..l40.êCR@∏@ */
	$"6D04 4212 605C 3005 9043 9044 5240 1480"            /* m.B.`\0.êCêDR@.Ä */
	$"3003 D044 264A D6C0 284A 528C 7C00 1C12"            /* 0.–D&J÷¿(JRå|... */
	$"3046 2008 204B 224C A22E 6036 3005 9043"            /* 0F . K"L¢.`60.êC */
	$"5240 B840 6D08 3003 5340 1480 6024 3005"            /* R@∏@m.0.S@.Ä`$0. */
	$"9044 1480 3003 D044 264A D6C0 284A D8C3"            /* êD.Ä0.–D&J÷¿(Jÿ√ */
	$"3C05 9C44 9C43 5246 3046 2008 204B 224C"            /* <.úDúCRF0F . K"L */
	$"A22E 4CDF 1C78 205F 504F 4ED0 48E7 1E3A"            /* ¢.Lﬂ.x _PON–HÁ.: */
	$"2C6F 002A 246F 0026 362F 0024 7C00 1C12"            /* ,o.*$o.&6/.$|... */
	$"7800 1816 4A44 6700 008A 0C43 0001 6D04"            /* x...JDg..ä.C..m. */
	$"4A46 6602 7601 3006 5240 B640 6F04 3606"            /* JFf.v.0.R@∂@o.6. */
	$"5243 264A D6C3 3003 D044 284A D8C0 3004"            /* RC&J÷√0.–D(Jÿ¿0. */
	$"D046 0C40 00FF 6E10 3003 5340 3A06 9A40"            /* –F.@.ˇn.0.S@:.ö@ */
	$"3006 D044 1480 6010 3003 D044 5340 3A3C"            /* 0.–D.Ä`.0.–DS@:< */
	$"00FF 9A40 14BC 00FF 4A45 6F0A 3045 2008"            /* .ˇö@.º.ˇJEo.0E . */
	$"204B 224C A22E 264E 528B 284A D8C3 3003"            /*  K"L¢.&NRã(Jÿ√0. */
	$"D044 5340 0C40 00FF 6E04 3A04 6006 3A3C"            /* –DS@.@.ˇn.:.`.:< */
	$"0100 9A43 4A45 6F0A 3045 2008 204B 224C"            /* ..öCJEo.0E . K"L */
	$"A22E 4CDF 5C78 205F 4FEF 000A 4ED0 5380"            /* ¢.Lﬂ\x _OÔ..N–SÄ */
	$"B010 6406 12C0 5288 6004 1010 12D8 51C8"            /* ∞.d..¿Rà`....ÿQ» */
	$"FFFC 4E75 4FEF FF60 302F 00A4 0C40 0004"            /* ˇ¸NuOÔˇ`0/.§.@.. */
	$"6200 02CA D040 303B 0006 4EFB 0002 000A"            /* b.. –@0;..N˚.... */
	$"0070 00D6 013C 01FA 2EBC 2048 6561 2F7C"            /* .p.÷.<.˙.º Hea/| */
	$"7020 4368 0004 2F7C 6563 6B20 0008 2F7C"            /* p Ch../|eck ../| */
	$"6661 696C 000C 2F7C 6564 2E20 0010 2F7C"            /* fail../|ed. ../| */
	$"5468 6520 0014 2F7C 5061 7363 0018 2F7C"            /* The ../|Pasc../| */
	$"616C 2068 001C 2F7C 6561 7020 0020 2F7C"            /* al h../|eap . /| */
	$"6973 2063 0024 2F7C 6F72 7275 0028 2F7C"            /* is c.$/|orru.(/| */
	$"7074 2E20 002C 1EBC 002F 6000 0254 2EBC"            /* pt. .,.º./`..T.º */
	$"2044 6572 2F7C 6566 6572 0004 2F7C 656E"            /*  Der/|efer../|en */
	$"6365 0008 2F7C 6420 6120 000C 2F7C 4E49"            /* ce../|d a ../|NI */
	$"4C20 0010 2F7C 506F 696E 0014 2F7C 7465"            /* L ../|Poin../|te */
	$"722E 0018 2F7C 2056 616C 001C 2F7C 6964"            /* r.../| Val../|id */
	$"6174 0020 2F7C 6520 6661 0024 2F7C 696C"            /* at. /|e fa.$/|il */
	$"6564 0028 2F7C 2E20 2020 002C 1EBC 002D"            /* ed.(/|.   .,.º.- */
	$"6000 01EE 2EBC 2044 6572 2F7C 6566 6572"            /* `..Ó.º Der/|efer */
	$"0004 2F7C 656E 6365 0008 2F7C 6420 6120"            /* ../|ence../|d a  */
	$"000C 2F7C 6261 6420 0010 2F7C 506F 696E"            /* ../|bad ../|Poin */
	$"0014 2F7C 7465 722E 0018 2F7C 2056 616C"            /* ../|ter.../| Val */
	$"001C 2F7C 6964 6174 0020 2F7C 6520 6661"            /* ../|idat. /|e fa */
	$"0024 2F7C 696C 6564 0028 2F7C 2E20 2020"            /* .$/|iled.(/|.    */
	$"002C 1EBC 002D 6000 0188 2EBC 2053 6574"            /* .,.º.-`..à.º Set */
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
	$"1EBC 0059 6000 00CA 2EBC 2053 7472 2F7C"            /* .º.Y`.. .º Str/| */
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
	$"2E20 2020 005C 1EBC 005D 6004 A9FF 6004"            /* .   .\.º.]`.©ˇ`. */
	$"4857 ABFF 4FEF 00A0 4E75 48E7 0610 266F"            /* HW´ˇOÔ.†NuHÁ..&o */
	$"0010 242F 0014 200B 676A 2053 2250 6060"            /* ..$/.. .gj S"P`` */
	$"7000 3029 000C 2200 B480 6D14 7000 3029"            /* p.0)..".¥Äm.p.0) */
	$"000A 9082 E588 2049 D1C0 5088 5088 6046"            /* ..êÇÂà I—¿PàPà`F */
	$"7A00 3A29 000E 6736 3669 000A 200B 9081"            /* z.:)..g66i.. .êÅ */
	$"5280 E588 2649 D7C0 508B 508B 7C00 3C29"            /* RÄÂà&I◊¿PãPã|.<) */
	$"000E 7A00 6014 2213 B481 6606 204B 5888"            /* ..z.`.".¥Åf. KXà */
	$"6014 B282 6D08 5285 508B BA86 6DE8 2251"            /* `.≤Çm.RÖPã∫ÜmË"Q */
	$"2009 669C 91C8 4CDF 0860 4E75 202F 0008"            /*  .fúë»Lﬂ.`Nu /.. */
	$"A322 226F 000C 2288 2049 2050 2050 20AF"            /* £""o.."à I P P Ø */
	$"0004 205F 4FEF 000C 4ED0 206F 0004 A023"            /* .. _OÔ..N– o..†# */
	$"2E9F 4E75 4A78 028E 6B22 303C 0090 A346"            /* .üNuJx.ék"0<.ê£F */
	$"2248 303C 009F A746 B3C8 6710 225F 205F"            /* "H0<.üßF≥»g."_ _ */
	$"301F 2F09 A090 3F40 0004 4E75 206F 0004"            /* 0./.†ê?@..Nu o.. */
	$"303C 0001 2248 6006 0313 0B02 0100 303C"            /* 0<.."H`.......0< */
	$"0010 E240 5340 4258 51C8 FFFC 32BC 0002"            /* ..‚@S@BXQ»ˇ¸2º.. */
	$"2078 02AE 337C FFFE 0002 0C28 00FF 0009"            /*  x.Æ3|ˇ˛...(.ˇ.. */
	$"6742 4A28 0008 6E20 337C FFFF 0002 4A78"            /* gBJ(..n 3|ˇˇ..Jx */
	$"028E 6B30 337C 0001 0002 4A78 0B22 6A24"            /* .ék03|....Jx."j$ */
	$"337C 0002 0002 601C 4269 0002 0C28 0002"            /* 3|....`.Bi...(.. */
	$"0008 6E10 6708 337C 0004 0002 6006 337C"            /* ..n.g.3|....`.3| */
	$"0003 0002 4269 0004 0C38 0002 012F 6E0A"            /* ....Bi...8.../n. */
	$"1038 012F 5240 1340 0007 4A78 028E 6B0E"            /* .8./R@.@..Jx.ék. */
	$"0838 0004 0B22 6706 137C 0001 0008 0C78"            /* .8..."g..|.....x */
	$"3FFF 028E 6206 137C 0001 0009 1038 021E"            /* ?ˇ.éb..|.....8.. */
	$"41FA FF5B 323C 0004 B020 57C9 FFFC 5241"            /* A˙ˇ[2<..∞ W…ˇ¸RA */
	$"3341 000A 4A38 0291 6B18 1238 01FB 0201"            /* 3A..J8.ëk..8.˚.. */
	$"000F 0C01 0001 660A 2078 02DC 1368 0007"            /* ......f. x.‹.h.. */
	$"000D 3378 0210 000E 4A78 03F6 6D44 4269"            /* ..3x....Jx.ˆmDBi */
	$"000E 323C 003C 4267 51C9 FFFC 204F 3178"            /* ..2<.<BgQ…ˇ¸ O1x */
	$"0A58 0018 7008 A260 6624 3168 0034 0016"            /* .X..p.¢`f$1h.4.. */
	$"A207 661A 2168 005A 0030 217C 4552 494B"            /* ¢.f.!h.Z.0!|ERIK */
	$"001C 7001 A260 6606 3368 0016 000E 4FEF"            /* ..p.¢`f.3h....OÔ */
	$"007A 2049 225F 5C4F 3EBC EA84 4ED1 4E56"            /* .z I"_\O>ºÍÑN—NV */
	$"0000 203C 0000 A89F A746 2F08 203C 0000"            /* .. <..®üßF/. <.. */
	$"A0AD A346 B1DF 670E 202E 000C A1AD 226E"            /* †≠£F±ﬂg. ...°≠"n */
	$"0008 2288 6026 41FA 0036 303C EA51 222E"            /* .."à`&A˙.60<ÍQ". */
	$"000C B298 6706 4A98 6712 60F6 43FA 0020"            /* ..≤òg.Jòg.`ˆC˙.  */
	$"D3D0 4ED1 226E 0008 2280 4240 3D40 0010"            /* ”–N—"n.."ÄB@=@.. */
	$"4E5E 205F 508F 4ED0 303C EA52 60EE 7665"            /* N^ _PèN–0<ÍR`Óve */
	$"7273 0000 0060 6D61 6368 0000 0064 7379"            /* rs...`mach...dsy */
	$"7376 0000 0088 7072 6F63 0000 0092 6670"            /* sv...àproc...ífp */
	$"7520 0000 009E 7164 2020 0000 00E8 6B62"            /* u ...ûqd  ...Ëkb */
	$"6420 0000 011A 6174 6C6B 0000 0142 6D6D"            /* d ....atlk...Bmm */
	$"7520 0000 0164 7261 6D20 0000 0188 6C72"            /* u ...dram ...àlr */
	$"616D 0000 0188 0000 0000 0000 0000 7001"            /* am...à........p. */
	$"6082 2278 02AE 7004 0C69 0075 0008 6712"            /* `Ç"x.Æp..i.u..g. */
	$"0C69 0276 0008 6604 5240 6006 1038 0CB3"            /* .i.v..f.R@`..8.≥ */
	$"5C80 6000 FF60 7000 3038 015A 6000 FF56"            /* \Ä`.ˇ`p.08.Z`.ˇV */
	$"7000 1038 012F 5240 6000 FF4A 0C38 0004"            /* p..8./R@`.ˇJ.8.. */
	$"012F 6738 0838 0004 0B22 6734 204F F280"            /* ./g8.8..."g4 OÚÄ */
	$"0000 F327 3017 2E48 0C40 1F18 6716 0C40"            /* ..Û'0..H.@..g..@ */
	$"3F18 6710 0C40 3F38 670E 0C40 1F38 6708"            /* ?.g..@?8g..@.8g. */
	$"7000 600E 7001 600A 7002 6006 7003 6002"            /* p.`.p.`.p.`.p.`. */
	$"7000 6000 FF00 0C78 3FFF 028E 6E1C 303C"            /* p.`.ˇ..x?ˇ.én.0< */
	$"A89F A746 2408 203C 0000 AB03 A746 203C"            /* ®üßF$. <..´.ßF < */
	$"0000 0100 B488 6606 600A 7000 6006 203C"            /* ....¥àf.`.p.`. < */
	$"0000 0200 6000 FECE 1038 021E 41FA 0016"            /* ....`.˛Œ.8..A˙.. */
	$"2248 1218 6700 FED2 B200 66F6 91C9 2008"            /* "H..g.˛“≤.fˆë… . */
	$"6000 FEB2 0313 0B02 0106 0704 0508 0900"            /* `.˛≤............ */
	$"7000 4A38 0291 6B16 1238 01FB 0201 000F"            /* p.J8.ëk..8.˚.... */
	$"0C01 0001 6608 2078 02DC 1028 0007 6000"            /* ....f. x.‹.(..`. */
	$"FE84 0C38 0002 012F 6D16 7000 1038 0CB1"            /* ˛Ñ.8.../m.p..8.± */
	$"0C00 0001 670C 0C00 0003 6D04 5340 6002"            /* ....g.....m.S@`. */
	$"7000 6000 FE60 303C A89F A746 2408 203C"            /* p.`.˛`0<®üßF$. < */
	$"0000 A88F A746 2038 0108 B488 670A 598F"            /* ..®èßF 8..¥àg.Yè */
	$"3F3C 0016 A88F 201F 6000 FE3A 225F 201F"            /* ?<..®è .`.˛:"_ . */
	$"A11E 2E88 4ED1 225F 201F A122 2E88 4ED1"            /* °..àN—"_ .°".àN— */
	$"225F 205F A025 2E80 6A02 4297 4ED1 225F"            /* "_ _†%.Äj.BóN—"_ */
	$"201F 205F A024 4ED1 221F 201F 225F 205F"            /*  . _†$N—". ."_ _ */
	$"A02E 2241 4ED1 225F 121F 301F 4A01 6704"            /* †."AN—"_..0.J.g. */
	$"A746 6002 A346 2E88 4ED1 225F 101F 205F"            /* ßF`.£F.àN—"_.. _ */
	$"6604 A007 6002 A407 3E80 4ED1 4E56 FFCE"            /* f.†.`.§.>ÄN—NVˇŒ */
	$"204F 316E 0008 0018 A001 3D40 000A 4E5E"            /*  O1n....†.=@..N^ */
	$"205F 548F 4ED0 51C1 6002 50C1 4E56 FFCE"            /*  _TèN–Q¡`.P¡NVˇŒ */
	$"204F 216E 0008 0020 316E 0010 0018 226E"            /*  O!n... 1n...."n */
	$"000C 2151 0024 4268 002C 42A8 002E 4A01"            /* ..!Q.$Bh.,B®..J. */
	$"6604 A002 6002 A003 3D40 0012 226E 000C"            /* f.†.`.†.=@.."n.. */
	$"22A8 0028 4E5E 225F 4FEF 000A 4ED1 4E56"            /* "®.(N^"_OÔ..N—NV */
	$"FFC0 204F 216E 000A 0012 316E 0008 0016"            /* ˇ¿ O!n....1n.... */
	$"A015 3D40 000E 4E5E 225F 5C8F 4ED1 225F"            /* †.=@..N^"_\èN—"_ */
	$"205F A069 1E80 4ED1 225F 101F 205F A06A"            /*  _†i.ÄN—"_.. _†j */
	$"4ED1 343C 000C 226F 0004 206F 0008 4240"            /* N—4<.."o.. o..B@ */
	$"4241 1018 1219 2F48 0008 2F49 0004 205F"            /* BA..../H../I.. _ */
	$"3F00 3F01 3F02 2F08 ADED 206F 0008 3F3C"            /* ?.?.?./.≠Ì o..?< */
	$"0001 A9EE 206F 0004 2080 4EFA 000E 206F"            /* ..©Ó o.. ÄN˙.. o */
	$"0004 202F 0008 4267 A9EE 205F 504F 4ED0"            /* .. /..Bg©Ó _PON– */
	$"221F 201F 225F 205F 2F01 A9E2 3F40 0004"            /* ". ."_ _/.©‚?@.. */
	$"4E75 6118 A9DB 2E9F 4E75 6110 A9D6 60F6"            /* Nua.©€.üNua.©÷`ˆ */
	$"610A A9D5 60F0 6104 A9D7 60EA 206F 0008"            /* a.©’`a.©◊`Í o.. */
	$"4A68 00A4 6B08 225F 2F28 00A0 4ED1 4CDF"            /* Jh.§k."_/(.†N—Lﬂ */
	$"0301 4ED0 42A7 594F 42A7 2F3C 5445 5854"            /* ..N–BßYOBß/<TEXT */
	$"486F 000C A9FD 201F 584F 6B28 0C80 0000"            /* Ho..©˝ .XOk(.Ä.. */
	$"7D01 6506 303C FE0B 601A 42A7 594F 2F38"            /* }.e.0<˛.`.BßYO/8 */
	$"0AB4 2F3C 5445 5854 486F 000C A9FD 201F"            /* .¥/<TEXTHo..©˝ . */
	$"584F 6A06 4278 0AB0 600A 426F 0004 31C0"            /* XOj.Bx.∞`.Bo..1¿ */
	$"0AB0 7000 3F40 0004 4E75 2078 0AB4 A029"            /* .∞p.?@..Nu x.¥†) */
	$"594F 3F38 0AB0 4267 2F3C 5445 5854 2F10"            /* YO?8.∞Bg/<TEXT/. */
	$"A9FE 544F 3F5F 0004 2078 0AB4 A02A 4E75"            /* ©˛TO?_.. x.¥†*Nu */
	$"4E56 0000 594F 2F3C 5354 5223 3F2E 000A"            /* NV..YO/<STR#?... */
	$"A9A0 226E 000C 4211 201F 6722 2040 2050"            /* ©†"n..B. .g" @ P */
	$"3018 322E 0008 6716 B240 6212 7000 5341"            /* 0.2...g.≤@b.p.SA */
	$"6706 1018 D1C0 60F6 1010 5240 A02E 4E5E"            /* g...—¿`ˆ..R@†.N^ */
	$"205F 508F 4ED0 4E56 FFCC 2F03 2D6E 0010"            /*  _PèN–NVˇÃ/.-n.. */
	$"FFDE 41EE FFCC A214 3600 206E 000C 30AE"            /* ˇﬁAÓˇÃ¢.6. n..0Æ */
	$"FFE2 206E 0008 20AE FFFC 3003 3D40 0014"            /* ˇ‚ n.. Æˇ¸0.=@.. */
	$"261F 4E5E 205F 4FEF 000C 4ED0 4E56 FFCC"            /* &.N^ _OÔ..N–NVˇÃ */
	$"2D6E 000E FFDE 3D6E 000C FFE2 2D6E 0008"            /* -n..ˇﬁ=n..ˇ‚-n.. */
	$"FFFC 41EE FFCC A215 3D40 0012 4E5E 205F"            /* ˇ¸AÓˇÃ¢.=@..N^ _ */
	$"4FEF 000A 4ED0 4E56 FF84 2F03 3D6E 0016"            /* OÔ..N–NVˇÑ/.=n.. */
	$"FF9A 2D6E 0012 FFB4 2D6E 000E FF96 422E"            /* ˇö-n..ˇ¥-n..ˇñB. */
	$"FF9E 1D6E 000C FF9F 7000 2D40 FFA0 41EE"            /* ˇû.n..ˇüp.-@ˇ†AÓ */
	$"FF84 A200 3600 206E 0008 30AE FF9C 3003"            /* ˇÑ¢.6. n..0Æˇú0. */
	$"3D40 0018 261F 4E5E 205F 4FEF 0010 4ED0"            /* =@..&.N^ _OÔ..N– */
	$"4E56 FF84 2F03 3D6E 0016 FF9A 2D6E 0012"            /* NVˇÑ/.=n..ˇö-n.. */
	$"FFB4 2D6E 000E FF96 422E FF9E 1D6E 000C"            /* ˇ¥-n..ˇñB.ˇû.n.. */
	$"FF9F 7000 2D40 FFA0 41EE FF84 A20A 3600"            /* ˇüp.-@ˇ†AÓˇÑ¢.6. */
	$"206E 0008 30AE FF9C 3003 3D40 0018 261F"            /*  n..0Æˇú0.=@..&. */
	$"4E5E 205F 4FEF 0010 4ED0 4E56 FF84 48E7"            /* N^ _OÔ..N–NVˇÑHÁ */
	$"1800 3D6E 0018 FF9A 262E 0014 2D43 FFB4"            /* ..=n..ˇö&...-Cˇ¥ */
	$"2D6E 0010 FF96 422E FF9E 41EE FF84 A208"            /* -n..ˇñB.ˇûAÓˇÑ¢. */
	$"3800 6628 4240 3D40 FFA0 41EE FF84 A20C"            /* 8.f(B@=@ˇ†AÓˇÑ¢. */
	$"3800 6618 2D6E 000C FFA8 2D6E 0008 FFA4"            /* 8.f.-n..ˇ®-n..ˇ§ */
	$"2D43 FFB4 41EE FF84 A20D 3800 3004 3D40"            /* -Cˇ¥AÓˇÑ¢.8.0.=@ */
	$"001A 4CDF 0018 4E5E 205F 4FEF 0012 4ED0"            /* ..Lﬂ..N^ _OÔ..N– */
	$"4E56 FF84 3D6E 0010 FF9A 2D6E 000C FFB4"            /* NVˇÑ=n..ˇö-n..ˇ¥ */
	$"2D6E 0008 FF96 422E FF9E 41EE FF84 A209"            /* -n..ˇñB.ˇûAÓˇÑ¢. */
	$"3D40 0012 4E5E 205F 4FEF 000A 4ED0 4E56"            /* =@..N^ _OÔ..N–NV */
	$"FF84 2F03 3D6E 0014 FF9A 2D6E 0010 FFB4"            /* ˇÑ/.=n..ˇö-n..ˇ¥ */
	$"2D6E 000C FF96 422E FF9E 4240 3D40 FFA0"            /* -n..ˇñB.ˇûB@=@ˇ† */
	$"41EE FF84 A20C 3600 41EE FFA4 226E 0008"            /* AÓˇÑ¢.6.AÓˇ§"n.. */
	$"22D8 22D8 22D8 22D8 3003 3D40 0016 261F"            /* "ÿ"ÿ"ÿ"ÿ0.=@..&. */
	$"4E5E 205F 4FEF 000E 4ED0 4E56 FFCC 2F03"            /* N^ _OÔ..N–NVˇÃ/. */
	$"3D6E 0014 FFE2 4240 3D40 FFE6 7000 2D40"            /* =n..ˇ‚B@=@ˇÊp.-@ */
	$"FFDE 41EE FFCC 7007 A260 3600 206E 0010"            /* ˇﬁAÓˇÃp.¢`6. n.. */
	$"30AE FFEC 206E 000C 20AE FFFC 206E 0008"            /* 0ÆˇÏ n.. Æˇ¸ n.. */
	$"20AE FFE8 3003 3D40 0016 261F 4E5E 205F"            /*  ÆˇË0.=@..&.N^ _ */
	$"4FEF 000E 4ED0 4E56 FFEC 48E7 1E30 266E"            /* OÔ..N–NVˇÏHÁ.0&n */
	$"000A 282E 000E 3A2E 0012 207C 0000 015A"            /* ..(...:... |...Z */
	$"3010 0C40 0600 6D36 303C A89F A146 2448"            /* 0..@..m60<®ü°F$H */
	$"594F 3F3C A81A 7001 1F00 4EBA FB9A 225F"            /* YO?<®.p...N∫˚ö"_ */
	$"204A B1C9 6718 554F 3F05 2F04 2F0B 1F2E"            /*  J±…g.UO?././... */
	$"0008 A81A 301F 3D40 0014 4EFA 00C8 7CFF"            /* ..®.0.=@..N˙.»|ˇ */
	$"554F 3F05 2F04 2F0B 1F2E 0008 486E FFEC"            /* UO?././.....HnˇÏ */
	$"4EBA FE1E 361F 660C 554F 3F2E FFEC 4EBA"            /* N∫˛.6.f.UO?.ˇÏN∫ */
	$"FB7C 361F 4A43 6708 0C43 FFCF 6600 008A"            /* ˚|6.JCg..Cˇœf..ä */
	$"554F 42A7 486E FFEE 486E FFF0 4EBA FD48"            /* UOBßHnˇÓHnˇN∫˝H */
	$"361F 6674 554F 3F2E FFEE 486E FFF4 486E"            /* 6.ftUO?.ˇÓHnˇÙHn */
	$"FFF8 486E FFFC 4EBA FF02 361F 665A 554F"            /* ˇ¯Hnˇ¸N∫ˇ.6.fZUO */
	$"42A7 3F05 2F04 4EBA FD54 361F 6618 554F"            /* Bß?./.N∫˝T6.f.UO */
	$"200B A055 2F00 4267 1F2E 0008 A9C4 3C1F"            /*  .†U/.Bg....©ƒ<. */
	$"554F A9AF 361F 0CAE 0000 0002 FFF8 6614"            /* UO©Ø6..Æ....ˇ¯f. */
	$"554F 42A7 3F2E FFEE 2F2E FFF0 4EBA FD1E"            /* UOBß?.ˇÓ/.ˇN∫˝. */
	$"381F 600E 554F 42A7 3F2E FFEE 4EBA FB50"            /* 8.`.UOBß?.ˇÓN∫˚P */
	$"381F 4A43 6602 3604 3F03 31DF 0A60 3006"            /* 8.JCf.6.?.1ﬂ.`0. */
	$"3D40 0014 4CDF 0C78 4E5E 205F 4FEF 000C"            /* =@..Lﬂ.xN^ _OÔ.. */
	$"4ED0 4E56 FFEC 48E7 1C30 266E 0008 282E"            /* N–NVˇÏHÁ.0&n..(. */
	$"000C 3A2E 0010 207C 0000 015A 3010 0C40"            /* ..:... |...Z0..@ */
	$"0600 6D2A 303C A89F A146 2448 594F 3F3C"            /* ..m*0<®ü°F$HYO?< */
	$"A81B 7001 1F00 4EBA FA6E 225F 204A B1C9"            /* ®.p...N∫˙n"_ J±… */
	$"670C 3F05 2F04 2F0B A81B 6000 00C0 554F"            /* g.?././.®.`..¿UO */
	$"3F05 2F04 2F0B 4227 486E FFEC 4EBA FD02"            /* ?././.B'HnˇÏN∫˝. */
	$"361F 660C 554F 3F2E FFEC 4EBA FA60 361F"            /* 6.f.UO?.ˇÏN∫˙`6. */
	$"0C43 FFD5 6612 554F 3F05 2F04 2F0B 42A7"            /* .Cˇ’f.UO?././.Bß */
	$"42A7 4EBA FD26 361F 4A43 667A 554F 42A7"            /* BßN∫˝&6.JCfzUOBß */
	$"486E FFEE 486E FFF0 4EBA FC1C 361F 6666"            /* HnˇÓHnˇN∫¸.6.ff */
	$"554F 3F2E FFEE 486E FFF4 486E FFF8 486E"            /* UO?.ˇÓHnˇÙHnˇ¯Hn */
	$"FFFC 4EBA FDD6 361F 664C 554F 42A7 3F05"            /* ˇ¸N∫˝÷6.fLUOBß?. */
	$"2F04 4EBA FC28 361F 660A 2F0B A9B1 554F"            /* /.N∫¸(6.f./.©±UO */
	$"A9AF 361F 0CAE 0000 0002 FFF8 6614 554F"            /* ©Ø6..Æ....ˇ¯f.UO */
	$"42A7 3F2E FFEE 2F2E FFF0 4EBA FC00 381F"            /* Bß?.ˇÓ/.ˇN∫¸.8. */
	$"600E 554F 42A7 3F2E FFEE 4EBA FA32 381F"            /* `.UOBß?.ˇÓN∫˙28. */
	$"4A43 6602 3604 3F03 31DF 0A60 4CDF 0C38"            /* JCf.6.?.1ﬂ.`Lﬂ.8 */
	$"4E5E 205F 4FEF 000A 4ED0 48E7 F8E0 41EF"            /* N^ _OÔ..N–HÁ¯‡AÔ */
	$"0024 3010 4250 3200 E849 3401 5242 3602"            /* .$0.BP2.ËI4.RB6. */
	$"E34B 224F 9EC3 244F 383C 0012 34D9 5344"            /* „K"Oû√$O8<..4ŸSD */
	$"66FA 204A 425A 5342 66FA 30C3 4242 0240"            /* f˙ JBZSBf˙0√BB.@ */
	$"000F 01C2 3082 4CDF 071F 4E75 42A7 48E7"            /* ...¬0ÇLﬂ..NuBßHÁ */
	$"F0C0 41EF 0020 3018 D0C0 2248 3219 D2C1"            /* ¿AÔ. 0.–¿"H2.“¡ */
	$"3600 B240 6C02 3601 E24B 6004 3420 8561"            /* 6.≤@l.6.‚K`.4 Öa */
	$"5343 6AF8 9041 6710 6D0C D240 E248 3320"            /* SCj¯êAg.m.“@‚H3  */
	$"5340 6EFA 6002 D2C0 3301 206F 001C 2308"            /* S@n˙`.“¿3. o..#. */
	$"2F49 0018 4CDF 030F 2E5F 4E75 48E7 E0E0"            /* /I..Lﬂ..._NuHÁ‡‡ */
	$"43EF 001C 3019 2059 3400 D442 D442 D2C2"            /* CÔ..0. Y4.‘B‘B“¬ */
	$"4241 5248 6020 2461 4242 141A D242 0C41"            /* BARH` $aBB..“B.A */
	$"00FF 6F0E 0441 00FF 9441 323C 00FF 6002"            /* .ˇo..A.ˇîA2<.ˇ`. */
	$"10DA 51CA FFFC 51C8 FFDE 2061 1081 3021"            /* .⁄Q ˇ¸Q»ˇﬁ a.Å0! */
	$"2049 D040 D040 D0C0 5448 20A1 2288 4CDF"            /*  I–@–@–¿TH °"àLﬂ */
	$"0707 2E5F 4E75 4E56 FFFC 4267 2F3C 6F73"            /* ..._NuNVˇ¸Bg/<os */
	$"2020 486E FFFC 4EBA F646 4A5F 57C0 4A00"            /*   Hnˇ¸N∫ˆFJ_W¿J. */
	$"6714 082E 0003 FFFF 56C1 C001 6708 7000"            /* g.....ˇˇV¡¿.g.p. */
	$"2D40 0008 6006 70FC 2D40 0008 4E5E 4E75"            /* -@..`.p¸-@..N^Nu */
	$"9549 4355 4841 5645 5052 4F43 4553 534D"            /* ïICUHAVEPROCESSM */
	$"414E 4147 4552 0000 4E56 FFBE 422E 0018"            /* ANAGER..NVˇæB... */
	$"42A7 4EBA FFA2 4A9F 666E 206E 000C 7000"            /* BßN∫ˇ¢Jüfn n..p. */
	$"2080 206E 000C 7000 2140 0004 703C 2D40"            /*  Ä n..p.!@..p<-@ */
	$"FFC4 7000 2D40 FFC8 2D6E 0008 FFFC 4267"            /* ˇƒp.-@ˇ»-n..ˇ¸Bg */
	$"2F2E 000C 3F3C 0038 A88F 4A5F 663A 4267"            /* /...?<.8®èJ_f:Bg */
	$"2F2E 000C 486E FFC4 3F3C 003A A88F 4A5F"            /* /...Hnˇƒ?<.:®èJ_ */
	$"57C0 4A00 67D8 222E FFD4 B2AE 0010 57C1"            /* W¿J.gÿ".ˇ‘≤Æ..W¡ */
	$"C001 67CA 222E 0014 B2AE FFD8 57C1 C001"            /* ¿.g "...≤ÆˇÿW¡¿. */
	$"67BC 1D7C 0001 0018 4E5E 205F DEFC 0010"            /* gº.|....N^ _ﬁ¸.. */
	$"4ED0 8E49 4355 4649 4E44 5052 4F43 4553"            /* N–éICUFINDPROCES */
	$"5300 0000 4E56 FF6C 2F07 206E 000E 4A10"            /* S...NVˇl/. n..J. */
	$"56C0 4A00 673E 2248 4241 1211 4242 1430"            /* V¿J.g>"HBA..BB.0 */
	$"1000 723A B242 56C1 C001 6728 206E 000E"            /* ..r:≤BV¡¿.g( n.. */
	$"2F08 2F2E 000E 487A 0066 486E FF6C 3F3C"            /* /./...Hz.fHnˇl?< */
	$"0002 4EBA FE78 205F 43EE FF6C 700F 20D9"            /* ..N∫˛x _CÓˇlp. Ÿ */
	$"51C8 FFFC 2D6E 000E FFC2 206E 000A 3D50"            /* Q»ˇ¸-n..ˇ¬ n..=P */
	$"FFC6 3D6E 0008 FFCC 4267 486E FFB0 4267"            /* ˇ∆=n..ˇÃBgHnˇ∞Bg */
	$"4EBA F758 3E1F 6608 206E 000A 30AE FFC6"            /* N∫˜X>.f. n..0Æˇ∆ */
	$"3D47 0012 2E1F 4E5E 205F DEFC 000A 4ED0"            /* =G....N^ _ﬁ¸..N– */
	$"8A47 4554 564F 4C49 4E46 4F00 0002 013A"            /* äGETVOLINFO....: */
	$"4E56 FFEE 48E7 0108 286E 0008 4267 3F14"            /* NVˇÓHÁ..(n..Bg?. */
	$"2F2C 0002 486C 0006 486E FFEE 4EBA FA90"            /* /,..Hl..HnˇÓN∫˙ê */
	$"3E1F 661E 203C 4150 504C B0AE FFEE 56C0"            /* >.f. <APPL∞ÆˇÓV¿ */
	$"222E 000C B2AE FFF2 56C1 8001 6704 3E3C"            /* "...≤ÆˇÚV¡Ä.g.>< */
	$"EC6C 3D47 0010 4CDF 1080 4E5E 205F 504F"            /* Ïl=G..Lﬂ.ÄN^ _PO */
	$"4ED0 8B43 4F4E 4649 524D 4150 504C 0000"            /* N–ãCONFIRMAPPL.. */
	$"4E56 FF92 48E7 0700 206E 0008 4228 0006"            /* NVˇíHÁ.. n..B(.. */
	$"206E 0008 5C88 2D48 FFA6 3D6E 000C FFAA"            /*  n..\à-Hˇ¶=n..ˇ™ */
	$"4267 486E FF94 205F 7020 A260 3E80 3E1F"            /* BgHnˇî _p ¢`>Ä>. */
	$"6656 7C01 4205 3D46 FFAE 2D6E 000E FFC8"            /* fV|.B.=FˇÆ-n..ˇ» */
	$"4267 486E FF94 205F 7027 A260 3E80 3E1F"            /* BgHnˇî _p'¢`>Ä>. */
	$"6626 206E 0008 30AE 000C 206E 0008 216E"            /* f& n..0Æ.. n..!n */
	$"FFF8 0002 4267 2F2E 000E 2F2E 0008 4EBA"            /* ˇ¯..Bg/.../...N∫ */
	$"FF30 4A5F 57C5 4405 5246 4A47 56C0 2205"            /* ˇ0J_W≈D.RFJGV¿". */
	$"8200 0241 0001 67AE 3D47 0012 4CDF 00E0"            /* Ç..A..gÆ=G..Lﬂ.‡ */
	$"4E5E 205F DEFC 000A 4ED0 8A53 4341 4E56"            /* N^ _ﬁ¸..N–äSCANV */
	$"4F4C 554D 4500 0000 4E56 FFF8 48E7 0700"            /* OLUME...NVˇ¯HÁ.. */
	$"4206 7A01 426E FFFA 4267 206E 0008 4868"            /* B.z.Bnˇ˙Bg n..Hh */
	$"0006 486E FFFA 3F05 4EBA FE3A 3E1F 661C"            /* ..Hnˇ˙?.N∫˛:>.f. */
	$"4267 2F2E 000C 3F2E FFFA 2F2E 0008 4EBA"            /* Bg/...?.ˇ˙/...N∫ */
	$"FF20 3E1F 6604 7C01 6002 4247 5245 4A47"            /* ˇ >.f.|.`.BGREJG */
	$"56C0 2206 8200 0241 0001 67B8 1006 661C"            /* V¿".Ç..A..g∏..f. */
	$"3E3C EC6C 206E 0008 4250 206E 0008 7002"            /* ><Ïl n..BP n..p. */
	$"2140 0002 206E 0008 4228 0006 3D47 0010"            /* !@.. n..B(..=G.. */
	$"4CDF 00E0 4E5E 205F 504F 4ED0 9249 4355"            /* Lﬂ.‡N^ _PON–íICU */
	$"4649 4E44 4150 504C 4943 4154 494F 4E00"            /* FINDAPPLICATION. */
	$"0000 4E56 FFF8 2F0C 286E 0008 4267 2F2E"            /* ..NVˇ¯/.(n..Bg/. */
	$"000E 2F3C 6170 7061 486E FFF8 303C 0603"            /* ../<appaHnˇ¯0<.. */
	$"A816 301F 48C0 2D40 0012 2F2E FFFC 205F"            /* ®.0.H¿-@../.ˇ¸ _ */
	$"A029 206E FFFC 2950 0028 397C 4C43 0006"            /* †) nˇ¸)P.(9|LC.. */
	$"7020 2940 0008 297C 0000 4800 000C 102E"            /* p )@..)|..H..... */
	$"000C 6606 066C 0200 000E 285F 4E5E 205F"            /* ..f..l....(_N^ _ */
	$"DEFC 000A 4ED0 8F50 5245 5041 5245 544F"            /* ﬁ¸..N–èPREPARETO */
	$"4C41 554E 4348 0000 4E56 FFEA 48E7 0F08"            /* LAUNCH..NVˇÍHÁ.. */
	$"286E 000C 4267 2F3C 7369 676E 486E 0010"            /* (n..Bg/<signHn.. */
	$"7004 2F00 486E FFF8 303C 0825 A816 301F"            /* p./.Hnˇ¯0<.%®.0. */
	$"48C0 2E00 4267 2F3C 4755 524C 2F3C 4755"            /* H¿..Bg/<GURL/<GU */
	$"524C 486E FFF8 3F3C FFFF 42A7 2F2E 0008"            /* RLHnˇ¯?<ˇˇBß/... */
	$"303C 0B14 A816 301F 48C0 2C00 4A87 6602"            /* 0<..®.0.H¿,.Jáf. */
	$"2E06 4267 2F0C 4EBA F546 1A1F 2F0C 205F"            /* ..Bg/.N∫ıF../. _ */
	$"A029 4267 2F2E 0008 2F3C 2D2D 2D2D 2F3C"            /* †)Bg/.../<----/< */
	$"5445 5854 2F14 42A7 2F0C 4EBA F454 303C"            /* TEXT/.Bß/.N∫ÙT0< */
	$"0A0F A816 301F 48C0 2C00 2F0C 1F05 4EBA"            /* ..®.0.H¿,./...N∫ */
	$"F518 4A87 6602 2E06 4A87 6712 4267 2F2E"            /* ı.Jáf...Jág.Bg/. */
	$"0008 303C 0204 A816 301F 48C0 2800 4267"            /* ..0<..®.0.H¿(.Bg */
	$"486E FFF8 303C 0204 A816 301F 48C0 2800"            /* Hnˇ¯0<..®.0.H¿(. */
	$"2D47 0014 4CDF 10F0 4E5E 205F DEFC 000C"            /* -G..Lﬂ.N^ _ﬁ¸.. */
	$"4ED0 8F43 5245 4154 4547 5552 4C45 5645"            /* N–èCREATEGURLEVE */
	$"4E54 0000 4E56 FFC0 2F07 206E 0008 43EE"            /* NT..NVˇ¿/. n..CÓ */
	$"FFF8 22D8 22D8 2D6E 000C FFDC 42A7 486E"            /* ˇ¯"ÿ"ÿ-n..ˇ‹BßHn */
	$"FFF8 1F3C 0001 486E FFCC 4EBA FE76 2E1F"            /* ˇ¯.<..HnˇÃN∫˛v.. */
	$"6612 4267 486E FFCC 205F A9F2 3E80 301F"            /* f.BgHnˇÃ _©Ú>Ä0. */
	$"48C0 2E00 7094 B087 6622 7000 302E FFDA"            /* H¿..pî∞áf"p.0.ˇ⁄ */
	$"80BC 0000 0400 3D40 FFDA 4267 486E FFCC"            /* Äº....=@ˇ⁄BgHnˇÃ */
	$"205F A9F2 3E80 301F 48C0 2E00 2D47 0010"            /*  _©Ú>Ä0.H¿..-G.. */
	$"2E1F 4E5E 205F 504F 4ED0 8C4C 4155 4E43"            /* ..N^ _PON–åLAUNC */
	$"4846 5353 5045 4300 0000 4E56 FF9A 48E7"            /* HFSSPEC...NVˇöHÁ */
	$"0300 206E 000C 43EE FFF8 22D8 22D8 4267"            /* .. n..CÓˇ¯"ÿ"ÿBg */
	$"2F2E 0008 2F3C 4150 504C 486E FFEC 486E"            /* /.../<APPLHnˇÏHn */
	$"FFA6 4EBA FB14 101F 673A 4267 486E FFEC"            /* ˇ¶N∫˚...g:BgHnˇÏ */
	$"3F3C 003B A88F 301F 48C0 2C00 4267 486E"            /* ?<.;®è0.H¿,.BgHn */
	$"FFF8 486E FF9A 7001 2F00 3F3C 0001 70FE"            /* ˇ¯Hnˇöp./.?<..p˛ */
	$"2F00 42A7 42A7 303C 0D17 A816 301F 48C0"            /* /.BßBß0<..®.0.H¿ */
	$"2E00 6026 4267 2F2E 0008 486E FFA6 4EBA"            /* ..`&Bg/...Hnˇ¶N∫ */
	$"FD08 301F 48C0 2E00 6610 42A7 486E FFA6"            /* ˝.0.H¿..f.BßHnˇ¶ */
	$"486E FFF8 4EBA FEEE 2E1F 2D47 0010 4CDF"            /* Hnˇ¯N∫˛Ó..-G..Lﬂ */
	$"00C0 4E5E 205F 504F 4ED0 8953 454E 4445"            /* .¿N^ _PON–âSENDE */
	$"5645 4E54 0000 4E56 FFE8 48E7 0300 7C00"            /* VENT..NVˇËHÁ..|. */
	$"3D7C 013A FFEC 42A7 2F2E 000C 42A7 486E"            /* =|.:ˇÏBß/...BßHn */
	$"FFED 4240 102E FFEC 48C0 2F00 42A7 42A7"            /* ˇÌB@..ˇÏH¿/.BßBß */
	$"A9E0 2E1F 5DC0 0C87 0000 00FF 5EC1 8001"            /* ©‡..]¿.á...ˇ^¡Ä. */
	$"6706 2C3C FFFF FD5F 4A86 661A 206E 0008"            /* g.,<ˇˇ˝_JÜf. n.. */
	$"1087 206E 000C 2F10 206E 0008 4868 0001"            /* .á n../. n..Hh.. */
	$"2F07 4EBA F274 2D46 0010 4CDF 00C0 4E5E"            /* /.N∫Út-F..Lﬂ.¿N^ */
	$"205F 504F 4ED0 8D49 4355 4649 4E44 5343"            /*  _PON–çICUFINDSC */
	$"4845 4D45 0000 4E56 FFF0 48E7 0300 42A7"            /* HEME..NVˇHÁ..Bß */
	$"4EBA F9B4 2E1F 6638 42A7 2F2E 000C 2F2E"            /* N∫˘¥..f8Bß/.../. */
	$"0008 486E FFF0 4EBA FD40 2E1F 6610 42A7"            /* ..HnˇN∫˝@..f.Bß */
	$"486E FFF0 2F2E 000C 4EBA FEA0 2E1F 4267"            /* Hnˇ/...N∫˛†..Bg */
	$"486E FFF0 303C 0204 A816 301F 48C0 2C00"            /* Hnˇ0<..®.0.H¿,. */
	$"2D47 0010 4CDF 00C0 4E5E 205F 504F 4ED0"            /* -G..Lﬂ.¿N^ _PON– */
	$"8C49 4355 4C41 554E 4348 5552 4C00 0000"            /* åICULAUNCHURL... */
	$"4E56 FFFC 206E 000C 4228 0004 206E 000C"            /* NVˇ¸ n..B(.. n.. */
	$"4268 0006 206E 000C 7000 2140 0008 206E"            /* Bh.. n..p.!@.. n */
	$"000C 4228 000C 206E 000C 4268 004C 206E"            /* ..B(.. n..Bh.L n */
	$"000C 4228 004E 206E 000C 41E8 0090 43FA"            /* ..B(.N n..AË.êC˙ */
	$"003C 7005 20D9 51C8 FFFC 3091 42A7 2F2E"            /* .<p. ŸQ»ˇ¸0ëBß/. */
	$"000C 206E 000C 4868 0050 4EBA 0AEC 2D5F"            /* .. n..Hh.PN∫.Ï-_ */
	$"FFFC 7000 2D40 0010 4E5E 205F 504F 4ED0"            /* ˇ¸p.-@..N^ _PON– */
	$"8849 4352 5354 4152 5400 001A 1843 7265"            /* àICRSTART....Cre */
	$"6174 6520 636F 6E66 6967 7572 6174 696F"            /* ate configuratio */
	$"6E20 6173 3A00 4E56 0000 2F0C 286E 0008"            /* n as:.NV../.(n.. */
	$"4A2C 004E 56C0 4400 1D40 000C 4A6C 004C"            /* J,.NV¿D..@..Jl.L */
	$"670A 3F2C 004C A99A 426C 004C 422C 004E"            /* g.?,.L©öBl.LB,.N */
	$"285F 4E5E 2E9F 4E75 8E49 4352 434C 4F53"            /* (_N^.üNuéICRCLOS */
	$"4549 464F 5045 4E00 0000 4E56 FFFE 2F07"            /* EIFOPEN...NVˇ˛/. */
	$"4267 2F2E 0008 4EBA FFAE 101F 6704 7ECE"            /* Bg/...N∫ˇÆ..g.~Œ */
	$"6002 4247 3007 48C0 2D40 000C 2E1F 4E5E"            /* `.BG0.H¿-@....N^ */
	$"2E9F 4E75 8749 4352 5354 4F50 0000 4E56"            /* .üNuáICRSTOP..NV */
	$"FF8E 206E 0008 43EE FFFA 22D8 3290 3D6E"            /* ˇé n..CÓˇ˙"ÿ2ê=n */
	$"FFFA FFA4 2D6E FFFC FFBE 7000 2D40 FFA0"            /* ˇ˙ˇ§-nˇ¸ˇæp.-@ˇ† */
	$"3D7C FFFF FFAA 4267 486E FF8E 205F 7009"            /* =|ˇˇˇ™BgHnˇé _p. */
	$"A260 3E80 301F 48C0 2D40 000C 4E5E 2E9F"            /* ¢`>Ä0.H¿-@..N^.ü */
	$"4E75 8C56 414C 4944 4449 5253 5045 4300"            /* NuåVALIDDIRSPEC. */
	$"0000 4E56 FF86 2F07 206E 000E 43EE FFFA"            /* ..NVˇÜ/. n..CÓˇ˙ */
	$"22D8 3290 3D6E FFFA FFA2 2D6E FFFC FFBC"            /* "ÿ2ê=nˇ˙ˇ¢-nˇ¸ˇº */
	$"206E 0008 5C88 2D48 FF9E 3D6E 000C FFA8"            /*  n..\à-Hˇû=n..ˇ® */
	$"4267 486E FF8C 205F 7009 A260 3E80 3E1F"            /* BgHnˇå _p.¢`>Ä>. */
	$"666E 206E 0008 30AE FFA2 206E 0008 216E"            /* fn n..0Æˇ¢ n..!n */
	$"FFF0 0002 082E 0004 FFAA 56C0 223C 4943"            /* ˇ......ˇ™V¿"<IC */
	$"4170 B2AE FFAC 56C1 8001 6704 7E01 6040"            /* Ap≤Æˇ¨V¡Ä.g.~.`@ */
	$"4267 2F3C 616C 6973 486E FF86 4EBA EDD0"            /* Bg/<alisHnˇÜN∫Ì– */
	$"4A5F 57C0 4A00 6728 082E 0000 FF89 56C1"            /* J_W¿J.g(....ˇâV¡ */
	$"C001 671C 4267 2F2E 0008 1F3C 0001 486E"            /* ¿.g.Bg/....<..Hn */
	$"FF8B 486E FF8A 700C A823 3E1F 6702 7E01"            /* ˇãHnˇäp.®#>.g.~. */
	$"3D47 0012 2E1F 4E5E 205F DEFC 000A 4ED0"            /* =G....N^ _ﬁ¸..N– */
	$"8946 4F55 4E44 4649 4C45 0000 4E56 FFF2"            /* âFOUNDFILE..NVˇÚ */
	$"48E7 0700 206E 000C 43EE FFFA 22D8 3290"            /* HÁ.. n..CÓˇ˙"ÿ2ê */
	$"206E 0008 226E 0010 5C88 43E9 0050 700F"            /*  n.."n..\àCÈ.Pp. */
	$"20D9 51C8 FFFC 4267 486E FFFA 4267 2F2E"            /*  ŸQ»ˇ¸BgHnˇ˙Bg/. */
	$"0008 4EBA FEFE 4A5F 57C7 4407 1007 662E"            /* ..N∫˛˛J_W«D...f. */
	$"7C01 206E 0008 4228 0006 4267 486E FFFA"            /* |. n..B(..BgHnˇ˙ */
	$"3F06 2F2E 0008 4EBA FEDA 301F 48C0 2A00"            /* ?./...N∫˛⁄0.H¿*. */
	$"5246 7001 B085 67DA 4A85 57C7 4407 1D47"            /* RFp.∞Ög⁄JÖW«D..G */
	$"0014 4CDF 00E0 4E5E 205F DEFC 000C 4ED0"            /* ..Lﬂ.‡N^ _ﬁ¸..N– */
	$"8A53 4341 4E46 4F4C 4445 5200 0000 4E56"            /* äSCANFOLDER...NV */
	$"0000 42A7 2F2E 000E 1F3C 0001 1F3C 0001"            /* ..Bß/....<...<.. */
	$"3F2E 000C 2F2E 0008 4EBA 00BC 2D5F 0012"            /* ?.../...N∫.º-_.. */
	$"4E5E 205F DEFC 000A 4ED0 9149 4352 4649"            /* N^ _ﬁ¸..N–ëICRFI */
	$"4E44 434F 4E46 4947 4649 4C45 0000 4E56"            /* NDCONFIGFILE..NV */
	$"FFE6 48E7 0108 286E 0008 4267 2F3C 666F"            /* ˇÊHÁ..(n..Bg/<fo */
	$"6C64 486E FFE6 4EBA EC96 4A5F 57C0 4A00"            /* ldHnˇÊN∫ÏñJ_W¿J. */
	$"672A 082E 0000 FFE9 56C1 C001 671E 2F3C"            /* g*....ˇÈV¡¿.g./< */
	$"8000 0000 2F3C 7072 6566 1F3C 0001 2F0C"            /* Ä.../<pref.<../. */
	$"486C 0002 7000 A823 3E1F 6028 2F3C 0002"            /* Hl..p.®#>.`(/<.. */
	$"0000 486E FFEE 4EBA EAEC 3E1F 6616 4267"            /* ..HnˇÓN∫ÍÏ>.f.Bg */
	$"3F2E FFFC 2F0C 486C 0002 486E FFEA 4EBA"            /* ?.ˇ¸/.Hl..HnˇÍN∫ */
	$"F26A 3E1F 3D47 000C 4CDF 1080 4E5E 205F"            /* Új>.=G..Lﬂ.ÄN^ _ */
	$"584F 4ED0 8E46 494E 4450 5245 4646 4F4C"            /* XON–éFINDPREFFOL */
	$"4445 5200 0000 4E56 FFA6 48E7 0F08 286E"            /* DER...NVˇ¶HÁ..(n */
	$"0008 382E 000C 7E00 57C0 4A00 6710 206E"            /* ..8...~.W¿J.g. n */
	$"0012 4A28 004E 56C1 C001 6702 7ECE 4A87"            /* ..J(.NV¡¿.g.~ŒJá */
	$"57C0 4A00 6708 4A44 5DC1 C001 6612 4A44"            /* W¿J.g.JD]¡¿.f.JD */
	$"56C1 4A01 670C 240C 57C2 C202 8001 6702"            /* V¡J.g.$.W¬¬.Ä.g. */
	$"7ECE 4A87 57C0 4A00 671E 4A44 57C1 C001"            /* ~ŒJáW¿J.g.JDW¡¿. */
	$"6716 122E 0010 0A01 0001 C001 4A00 6708"            /* g.........¿.J.g. */
	$"C02E 000E 6702 7ECE 4246 4A87 57C0 4A00"            /* ¿...g.~ŒBFJáW¿J. */
	$"671E B846 5EC1 C001 6716 42A7 3006 C1FC"            /* g.∏F^¡¿.g.Bß0.¡¸ */
	$"0006 4874 0000 4EBA FCE6 2E1F 5246 60DA"            /* ..Ht..N∫¸Ê..RF`⁄ */
	$"4A87 6600 00BE 4246 4205 B846 5EC0 1205"            /* Jáf..æBFB.∏F^¿.. */
	$"0A01 0001 C001 6730 4267 2F2E 0012 3006"            /* ....¿.g0Bg/...0. */
	$"C1FC 0006 4874 0000 486E FFA6 4EBA FDCE"            /* ¡¸..Ht..Hnˇ¶N∫˝Œ */
	$"1A1F 3006 C1FC 0006 41EE FFEC 43F4 0000"            /* ..0.¡¸..AÓˇÏCÙ.. */
	$"20D9 3091 5246 60C2 1005 0A00 0001 4A00"            /*  Ÿ0ëRF`¬......J. */
	$"6738 C02E 0010 6732 4267 486E FFF2 4EBA"            /* g8¿...g2BgHnˇÚN∫ */
	$"FE6E 301F 48C0 2E00 6620 4267 2F2E 0012"            /* ˛n0.H¿..f Bg/... */
	$"486E FFF2 486E FFA6 4EBA FD82 1A1F 41EE"            /* HnˇÚHnˇ¶N∫˝Ç..AÓ */
	$"FFEC 43EE FFF2 20D9 3091 1005 0A00 0001"            /* ˇÏCÓˇÚ Ÿ0ë...... */
	$"C02E 000E 6722 3D6E FFEC FFA6 2D6E FFEE"            /* ¿...g"=nˇÏˇ¶-nˇÓ */
	$"FFA8 206E 0012 43EE FFAC 41E8 0050 700F"            /* ˇ® n..CÓˇ¨AË.Pp. */
	$"22D8 51C8 FFFC 7A01 1005 6606 2E3C FFFF"            /* "ÿQ»ˇ¸z...f..<ˇˇ */
	$"FD5E 4A87 6614 206E 0012 5C88 43EE FFA6"            /* ˝^Jáf. n..\àCÓˇ¶ */
	$"7010 20D9 51C8 FFFC 3091 206E 0012 4A87"            /* p. ŸQ»ˇ¸0ë n..Já */
	$"57C0 4400 1140 0004 2D47 0016 4CDF 10F0"            /* W¿D..@..-G..Lﬂ. */
	$"4E5E 205F DEFC 000E 4ED0 9849 4352 4745"            /* N^ _ﬁ¸..N–òICRGE */
	$"4E45 5241 4C46 494E 4443 4F4E 4649 4746"            /* NERALFINDCONFIGF */
	$"494C 4500 0000 4E56 0000 102E 0008 4880"            /* ILE...NV......HÄ */
	$"5340 6706 5340 670A 6010 3D7C 0001 000A"            /* S@g.S@g.`.=|.... */
	$"600C 3D7C 0003 000A 6004 426E 000A 4E5E"            /* `.=|....`.Bn..N^ */
	$"205F 544F 4ED0 8F49 4352 5045 524D 544F"            /*  _TON–èICRPERMTO */
	$"4653 5045 524D 0000 4E56 FFF8 48E7 0F08"            /* FSPERM..NVˇ¯HÁ.. */
	$"286E 000A 1A2E 0008 7E00 4A2C 004E 56C0"            /* (n......~.J,.NV¿ */
	$"4A05 57C1 8001 6702 7ECE 4A87 6608 102C"            /* J.W¡Ä.g.~ŒJáf.., */
	$"0004 6602 7EDB 4A87 6600 00AA 4267 3F2C"            /* ..f.~€Jáf..™Bg?, */
	$"0006 2F2C 0008 486C 000C 4267 1F05 4EBA"            /* ../,..Hl..Bg..N∫ */
	$"FF76 301F 1F00 4EBA F04E 3C1F 4267 A9AF"            /* ˇv0...N∫N<.Bg©Ø */
	$"301F 48C0 2E00 70D5 B087 57C0 72D9 B287"            /* 0.H¿..p’∞áW¿rŸ≤á */
	$"57C1 8001 676E 1005 4880 5340 6706 5340"            /* W¡Ä.gn..HÄS@g.S@ */
	$"6708 6060 4246 7E00 605A 4267 3F2C 0006"            /* g.``BF~.`ZBg?,.. */
	$"2F2C 0008 486C 000C 2F3C 4943 4170 2F3C"            /* /,..Hl../<ICAp/< */
	$"4943 4170 4EBA EED4 381F 3F2C 0006 2F2C"            /* ICApN∫Ó‘8.?,../, */
	$"0008 486C 000C 4EBA F11A 4267 3F2C 0006"            /* ..Hl..N∫Ò.Bg?,.. */
	$"2F2C 0008 486C 000C 4267 1F05 4EBA FEF8"            /* /,..Hl..Bg..N∫˛¯ */
	$"301F 1F00 4EBA EFD0 3C1F 4267 A9AF 301F"            /* 0...N∫Ô–<.Bg©Ø0. */
	$"48C0 2E00 4A87 6608 3946 004C 1945 004E"            /* H¿..Jáf.9F.L.E.N */
	$"3007 0440 FFCA 6706 5B40 6702 6006 2E3C"            /* 0..@ˇ g.[@g.`..< */
	$"FFFF FD61 2D47 000E 4CDF 10F0 4E5E 205F"            /* ˇˇ˝a-G..Lﬂ.N^ _ */
	$"5C4F 4ED0 8849 4352 4245 4749 4E00 0000"            /* \ON–àICRBEGIN... */
	$"4E56 0000 206E 0008 4A28 004E 6608 70CE"            /* NV.. n..J(.Nf.pŒ */
	$"2D40 000C 6006 7000 2D40 000C 4E5E 2E9F"            /* -@..`.p.-@..N^.ü */
	$"4E75 8E49 4352 4348 4543 4B49 4E53 4944"            /* NuéICRCHECKINSID */
	$"4500 0000 4E56 FFFC 48E7 0300 1C2E 000C"            /* E...NVˇ¸HÁ...... */
	$"206E 0008 4210 206E 000E BC28 004E 57C0"            /*  n..B. n..º(.NW¿ */
	$"7202 B228 004E 57C1 7401 B406 57C2 C202"            /* r.≤(.NW¡t.¥.W¬¬. */
	$"8001 6704 7E00 602C 206E 000E 4A28 004E"            /* Ä.g.~.`, n..J(.N */
	$"661C 42A7 2F2E 000E 1F06 4EBA FE6C 2E1F"            /* f.Bß/.....N∫˛l.. */
	$"206E 0008 4A87 57C0 4400 1080 6006 2E3C"            /*  n..JáW¿D..Ä`..< */
	$"FFFF FD65 2D47 0012 4CDF 00C0 4E5E 205F"            /* ˇˇ˝e-G..Lﬂ.¿N^ _ */
	$"DEFC 000A 4ED0 8E49 4352 464F 5243 4549"            /* ﬁ¸..N–éICRFORCEI */
	$"4E53 4944 4500 0000 4E56 0000 102E 0008"            /* NSIDE...NV...... */
	$"6710 42A7 2F2E 000A 4EBA 03A8 2D5F 000E"            /* g.Bß/...N∫.®-_.. */
	$"6006 7000 2D40 000E 4E5E 205F 5C4F 4ED0"            /* `.p.-@..N^ _\ON– */
	$"9049 4352 5245 4C45 4153 4549 4E53 4944"            /* êICRRELEASEINSID */
	$"4500 0000 4E56 FEE8 48E7 1F18 206E 0014"            /* E...NV˛ËHÁ.. n.. */
	$"43EE FF00 703F 22D8 51C8 FFFC 266E 0008"            /* CÓˇ.p?"ÿQ»ˇ¸&n.. */
	$"2C13 7000 2680 206E 0010 70FF 2080 7000"            /* ,.p.&Ä n..pˇ Äp. */
	$"2840 42A7 2F2E 0018 1F3C 0001 486E FEE9"            /* (@Bß/....<..Hn˛È */
	$"4EBA FF02 2E1F 57C0 206E 0018 4A68 004C"            /* N∫ˇ...W¿ n..Jh.L */
	$"57C1 C001 6706 2E3C FFFF FD66 4A87 57C0"            /* W¡¿.g..<ˇˇ˝fJáW¿ */
	$"4A2E FF00 57C1 4A86 5DC2 4AAE 000C 56C3"            /* J.ˇ.W¡JÜ]¬JÆ..V√ */
	$"C403 8202 C001 6702 7ECE 4A87 6600 00A0"            /* ƒ.Ç.¿.g.~ŒJáf..† */
	$"4267 A994 381F 206E 0018 3F28 004C A998"            /* Bg©î8. n..?(.L©ò */
	$"4267 A9AF 301F 48C0 2E00 6600 0082 42A7"            /* Bg©Ø0.H¿..f..ÇBß */
	$"2F3C 4943 5250 486E FF00 A820 285F 4267"            /* /<ICRPHnˇ.® (_Bg */
	$"A9AF 301F 48C0 2E00 200C 6606 2E3C FFFF"            /* ©Ø0.H¿.. .f..<ˇˇ */
	$"FD66 4A87 6616 42A7 2F0C 4EBA E974 2A1F"            /* ˝fJáf.Bß/.N∫Èt*. */
	$"7004 B085 6F06 2E3C FFFF FD64 4A87 663A"            /* p.∞Öo..<ˇˇ˝dJáf: */
	$"2005 5980 2680 2054 226E 0010 2290 4AAE"            /*  .YÄ&Ä T"n.."êJÆ */
	$"000C 56C0 4A93 56C1 C001 671E BC93 6C08"            /* ..V¿JìV¡¿.g.ºìl. */
	$"2E3C FFFF FD62 6002 2C13 2014 5880 2F00"            /* .<ˇˇ˝b`.,. .XÄ/. */
	$"2F2E 000C 2F06 4EBA E940 3F04 A998 200C"            /* /.../.N∫È@?.©ò . */
	$"6704 2F0C A9A3 42A7 2F2E 0018 1F2E FEE9"            /* g./.©£Bß/.....˛È */
	$"4EBA FE96 2D5F FEF8 4A87 6604 2E2E FEF8"            /* N∫˛ñ-_˛¯Jáf...˛¯ */
	$"2D47 001C 4CDF 18F8 4E5E 205F DEFC 0014"            /* -G..Lﬂ.¯N^ _ﬁ¸.. */
	$"4ED0 8A49 4352 4745 5450 5245 4600 0000"            /* N–äICRGETPREF... */
	$"4E56 FEEA 48E7 0F18 206E 0014 43EE FF00"            /* NV˛ÍHÁ.. n..CÓˇ. */
	$"703F 22D8 51C8 FFFC 266E 000C 2C2E 0008"            /* p?"ÿQ»ˇ¸&n..,... */
	$"7000 2840 200B 6602 7C00 42A7 2F2E 0018"            /* p.(@ .f.|.Bß/... */
	$"1F3C 0002 486E FEEB 4EBA FDAA 2E1F 57C0"            /* .<..Hn˛ÎN∫˝™..W¿ */
	$"206E 0018 7202 B228 004E 56C1 C001 6706"            /*  n..r.≤(.NV¡¿.g. */
	$"2E3C FFFF FD65 4A87 57C0 206E 0018 4A68"            /* .<ˇˇ˝eJáW¿ n..Jh */
	$"004C 57C1 C001 6706 2E3C FFFF FD63 4A87"            /* .LW¡¿.g..<ˇˇ˝cJá */
	$"57C0 4A2E FF00 57C1 4A86 5DC2 8202 C001"            /* W¿J.ˇ.W¡JÜ]¬Ç.¿. */
	$"6702 7ECE 4A87 6600 0158 4267 A994 3D5F"            /* g.~ŒJáf..XBg©î=_ */
	$"FEF2 206E 0018 3F28 004C A998 4267 A9AF"            /* ˛Ú n..?(.L©òBg©Ø */
	$"301F 48C0 2E00 6600 0138 42A7 2F3C 4943"            /* 0.H¿..f..8Bß/<IC */
	$"5250 486E FF00 A820 285F 200C 56C0 4A00"            /* RPHnˇ.® (_ .V¿J. */
	$"6726 2F00 42A7 2F0C 4EBA E816 221F 201F"            /* g&/.Bß/.N∫Ë.". . */
	$"7404 B481 5EC1 C001 670E 2F0C A9AD 2F0C"            /* t.¥Å^¡¿.g./.©≠/. */
	$"205F A023 7000 2840 200C 6604 7A00 6004"            /*  _†#p.(@ .f.z.`. */
	$"2054 2A10 70FF B0AE 0010 6604 2D45 0010"            /*  T*.pˇ∞Æ..f.-E.. */
	$"2005 0800 0000 56C0 082E 0000 0013 56C1"            /*  .....V¿......V¡ */
	$"C001 220B 56C1 C001 6706 2E3C FFFF FD65"            /* ¿.".V¡¿.g..<ˇˇ˝e */
	$"200C 6654 42A7 2006 5880 2F00 4EBA E7A8"            /*  .fTBß .XÄ/.N∫Á® */
	$"285F 4267 3EB8 0220 301F 48C0 2E00 6638"            /* (_Bg>∏. 0.H¿..f8 */
	$"4267 2F3C 4943 5250 A810 381F 707F B044"            /* Bg/<ICRP®.8.p.∞D */
	$"6CEE 2F0C 2F3C 4943 5250 3F04 486E FF00"            /* lÓ/./<ICRP?.Hnˇ. */
	$"A9AB 4267 A9AF 301F 48C0 2E00 670A 2F0C"            /* ©´Bg©Ø0.H¿..g./. */
	$"205F A023 7000 2840 4A87 57C0 4A00 6720"            /*  _†#p.(@JáW¿J.g  */
	$"220B 56C1 C001 6718 2F0C 2006 5880 2F00"            /* ".V¡¿.g./. .XÄ/. */
	$"4EBA E75C 4267 3EB8 0220 301F 48C0 2E00"            /* N∫Á\Bg>∏. 0.H¿.. */
	$"4A87 57C0 4A00 6716 4A86 5EC1 C001 670E"            /* JáW¿J.g.JÜ^¡¿.g. */
	$"2F0B 2014 5880 2F00 2F06 4EBA E73C 4A87"            /* /. .XÄ/./.N∫Á<Já */
	$"6618 2054 20AE 0010 2F0C A9AA 2F0C A9B0"            /* f. T Æ../.©™/.©∞ */
	$"4267 A9AF 301F 48C0 2E00 3F2E FEF2 A998"            /* Bg©Ø0.H¿..?.˛Ú©ò */
	$"200C 6704 2F0C A9A3 42A7 2F2E 0018 1F2E"            /*  .g./.©£Bß/..... */
	$"FEEB 4EBA FC74 2D5F FEF8 4A87 6604 2E2E"            /* ˛ÎN∫¸t-_˛¯Jáf... */
	$"FEF8 2D47 001C 4CDF 18F0 4E5E 205F DEFC"            /* ˛¯-G..Lﬂ.N^ _ﬁ¸ */
	$"0014 4ED0 8A49 4352 5345 5450 5245 4600"            /* ..N–äICRSETPREF. */
	$"0000 4E56 FFFA 42A7 2F2E 0008 4EBA FB82"            /* ..NVˇ˙Bß/...N∫˚Ç */
	$"2D5F FFFC 4267 2F2E 0008 4EBA F56A 1D5F"            /* -_ˇ¸Bg/...N∫ıj._ */
	$"FFFB 2D6E FFFC 000C 4E5E 2E9F 4E75 8649"            /* ˇ˚-nˇ¸..N^.üNuÜI */
	$"4352 454E 4400 0000 4E56 0000 206E 0008"            /* CREND...NV.. n.. */
	$"43FA 0030 7004 20D9 51C8 FFFC 3091 7000"            /* C˙.0p. ŸQ»ˇ¸0ëp. */
	$"2D40 0010 4E5E 205F 504F 4ED0 9249 4352"            /* -@..N^ _PON–íICR */
	$"4445 4641 554C 5446 494C 454E 414D 4500"            /* DEFAULTFILENAME. */
	$"0016 1449 6E74 6572 6E65 7420 5072 6566"            /* ...Internet Pref */
	$"6572 656E 6365 7300 4E56 FFFA 48E7 0F18"            /* erences.NVˇ˙HÁ.. */
	$"266E 0008 286E 000C 282E 0010 2C2E 0014"            /* &n..(n..(...,... */
	$"7A00 4A94 5EC0 4A00 675A 2046 2214 5381"            /* z.Jî^¿J.gZ F".SÅ */
	$"4242 1430 1800 4A42 6B40 3F3C 0009 4EBA"            /* BB.0..JBk@?<..N∫ */
	$"EC9A 3F3C 000D 4EBA EC92 4EBA ECD0 41FA"            /* Ïö?<..N∫ÏíN∫Ï–A˙ */
	$"01BA 2F20 2F20 3F3C 0008 4EBA ECC0 3217"            /* .∫/ / ?<..N∫Ï¿2. */
	$"E749 5341 B441 6E10 3202 E649 4441 D257"            /* ÁISA¥An.2.ÊIDA“W */
	$"0537 1001 0A3C 0004 DEDF 56C1 C001 6704"            /* .7...<..ﬁﬂV¡¿.g. */
	$"5394 609E 4A94 5EC0 4A00 6718 2046 2214"            /* Sî`ûJî^¿J.g. F". */
	$"5381 4242 1430 1800 723C B242 57C1 C001"            /* SÅBB.0..r<≤BW¡¿. */
	$"6702 5394 B893 5EC0 4A00 6758 2046 2213"            /* g.Sî∏ì^¿J.gX F". */
	$"4242 1430 1800 4A42 6B40 3F3C 0009 4EBA"            /* BB.0..JBk@?<..N∫ */
	$"EC1A 3F3C 000D 4EBA EC12 4EBA EC50 41FA"            /* Ï.?<..N∫Ï.N∫ÏPA˙ */
	$"0132 2F20 2F20 3F3C 0008 4EBA EC40 3217"            /* .2/ / ?<..N∫Ï@2. */
	$"E749 5341 B441 6E10 3202 E649 4441 D257"            /* ÁISA¥An.2.ÊIDA“W */
	$"0537 1001 0A3C 0004 DEDF 56C1 C001 6704"            /* .7...<..ﬁﬂV¡¿.g. */
	$"5293 60A0 B893 5EC0 4A00 6716 2046 2213"            /* Rì`†∏ì^¿J.g. F". */
	$"4242 1430 1800 723E B242 57C1 C001 6702"            /* BB.0..r>≤BW¡¿.g. */
	$"5293 2046 2014 4241 1230 0800 703C B041"            /* Rì F .BA.0..p<∞A */
	$"663A 4207 1007 0A00 0001 2213 5381 B881"            /* f:B.......".SÅ∏Å */
	$"5EC1 C001 671C 2046 2013 5380 4241 1230"            /* ^¡¿.g. F .SÄBA.0 */
	$"0800 703E B041 57C7 4407 1007 66D6 5293"            /* ..p>∞AW«D...f÷Rì */
	$"60D2 1007 6606 2A3C FFFF FD5F 4A85 57C0"            /* `“..f.*<ˇˇ˝_JÖW¿ */
	$"4A00 6762 4A93 5EC1 C001 675A 2046 2213"            /* J.gbJì^¡¿.gZ F". */
	$"5381 4242 1430 1800 723E B242 57C1 C001"            /* SÅBB.0..r>≤BW¡¿. */
	$"6744 2046 2014 4241 1230 0800 703C B041"            /* gD F .BA.0..p<∞A */
	$"57C7 4407 1007 0A00 0001 4A94 5CC1 C001"            /* W«D.......Jî\¡¿. */
	$"671A 2046 2014 4241 1230 0800 703C B041"            /* g. F .BA.0..p<∞A */
	$"57C7 4407 1007 66DC 5394 60D8 1007 6606"            /* W«D...f‹Sî`ÿ..f. */
	$"2A3C FFFF FD5F 2D45 0018 4CDF 18F0 4E5E"            /* *<ˇˇ˝_-E..Lﬂ.N^ */
	$"205F DEFC 0010 4ED0 8F45 5850 414E 4453"            /*  _ﬁ¸..N–èEXPANDS */
	$"454C 4543 5449 4F4E 0010 4000 0001 0000"            /* ELECTION..@..... */
	$"0000 1000 0001 0000 0000 4E56 0000 206E"            /* ..........NV.. n */
	$"000C 2010 B0AE 0010 5DC0 4A00 6756 206E"            /* .. .∞Æ..]¿J.gV n */
	$"0014 226E 000C 2211 4242 1430 1800 4A42"            /* .."n..".BB.0..JB */
	$"6B34 3F3C 0009 4EBA EAA2 41FA 00C4 2F20"            /* k4?<..N∫Í¢A˙.ƒ/  */
	$"3F20 3F3C 0006 4EBA EAD4 3217 E749 5341"            /* ? ?<..N∫Í‘2.ÁISA */
	$"B441 6E10 3202 E649 4441 D257 0537 1001"            /* ¥An.2.ÊIDA“W.7.. */
	$"0A3C 0004 DEDF 57C1 C001 6708 206E 000C"            /* .<..ﬁﬂW¡¿.g. n.. */
	$"5290 609A 206E 0008 4A90 5EC0 4A00 6758"            /* Rê`ö n..Jê^¿J.gX */
	$"206E 0014 226E 0008 2211 5381 4242 1430"            /*  n.."n..".SÅBB.0 */
	$"1800 4A42 6B34 3F3C 0009 4EBA EA3E 41FA"            /* ..JBk4?<..N∫Í>A˙ */
	$"0060 2F20 3F20 3F3C 0006 4EBA EA70 3217"            /* .`/ ? ?<..N∫Íp2. */
	$"E749 5341 B441 6E10 3202 E649 4441 D257"            /* ÁISA¥An.2.ÊIDA“W */
	$"0537 1001 0A3C 0004 DEDF 57C1 C001 6708"            /* .7...<..ﬁﬂW¡¿.g. */
	$"206E 0008 5390 609C 7000 2D40 0018 4E5E"            /*  n..Sê`úp.-@..N^ */
	$"205F DEFC 0010 4ED0 8F53 4852 494E 4B53"            /*  _ﬁ¸..N–èSHRINKS */
	$"454C 4543 5449 4F4E 0006 0001 0000 0000"            /* ELECTION........ */
	$"4E56 FFF0 48E7 0F08 286E 0008 42A7 2F0C"            /* NVˇHÁ..(n..Bß/. */
	$"4EBA E32E 2A1F 7E00 7C00 BA87 6F00 00E2"            /* N∫„.*.~.|.∫áo..‚ */
	$"2054 4240 1030 7800 720D B240 6600 00B6"            /*  TB@.0x.r.≤@f..∂ */
	$"4A86 5EC0 4A00 674E 2054 2206 5381 4242"            /* JÜ^¿J.gN T".SÅBB */
	$"1430 1800 4A42 6B34 3F3C 0009 4EBA E98C"            /* .0..JBk4?<..N∫Èå */
	$"41FA 0108 2F20 3F20 3F3C 0006 4EBA E9BE"            /* A˙../ ? ?<..N∫Èæ */
	$"3217 E749 5341 B441 6E10 3202 E649 4441"            /* 2.ÁISA¥An.2.ÊIDA */
	$"D257 0537 1001 0A3C 0004 DEDF 57C1 C001"            /* “W.7...<..ﬁﬂW¡¿. */
	$"6704 5386 60AA BA87 5EC0 4A00 6756 2054"            /* g.SÜ`™∫á^¿J.gV T */
	$"4241 1230 7800 4A41 6B40 3F3C 0009 4EBA"            /* BA.0x.JAk@?<..N∫ */
	$"E93A 3F3C 000D 4EBA E932 4EBA E970 41FA"            /* È:?<..N∫È2N∫ÈpA˙ */
	$"00AA 2F20 3F20 3F3C 0006 4EBA E960 3417"            /* .™/ ? ?<..N∫È`4. */
	$"E74A 5342 B242 6E10 3401 E64A 4442 D457"            /* ÁJSB≤Bn.4.ÊJDB‘W */
	$"0337 2001 0A3C 0004 DEDF 57C1 C001 6704"            /* .7 ..<..ﬁﬂW¡¿.g. */
	$"5287 60A2 BA87 6F00 FF32 2054 2248 4240"            /* Rá`¢∫áo.ˇ2 T"HB@ */
	$"1031 7800 1180 6800 5287 5286 6000 FF1C"            /* .1x..Äh.RáRÜ`.ˇ. */
	$"2F0C 2F06 4EBA E248 4267 3EB8 0220 301F"            /* /./.N∫‚HBg>∏. 0. */
	$"48C0 2800 57C0 4A00 671C 2F00 42A7 2F0C"            /* H¿(.W¿J.g./.Bß/. */
	$"4EBA E21E 221F 201F 4A81 57C1 C001 6706"            /* N∫‚.". .JÅW¡¿.g. */
	$"283C FFFF FD5F 2D44 000C 4CDF 10F0 4E5E"            /* (<ˇˇ˝_-D..Lﬂ.N^ */
	$"2E9F 4E75 8C53 5452 4950 5245 5455 524E"            /* .üNuåSTRIPRETURN */
	$"5300 0006 0001 0000 0000 4E56 FDDC 48E7"            /* S.........NV˝‹HÁ */
	$"0F18 206E 001C 43EE FF00 703F 22D8 51C8"            /* .. n..CÓˇ.p?"ÿQ» */
	$"FFFC 2C2E 0014 266E 0018 286E 0008 7E00"            /* ˇ¸,...&n..(n..~. */
	$"4AAE 0018 57C0 4A00 6660 4AAE 0008 57C1"            /* JÆ..W¿J.f`JÆ..W¡ */
	$"8001 6656 206E 0008 4A90 57C1 8001 664A"            /* Ä.fV n..JêW¡Ä.fJ */
	$"4A86 5FC1 8001 6642 206E 0010 4A90 5DC1"            /* JÜ_¡Ä.fB n..Jê]¡ */
	$"8001 6636 206E 000C 4A90 5DC1 8001 662A"            /* Ä.f6 n..Jê]¡Ä.f* */
	$"206E 0010 BC90 5DC1 8001 661E 206E 000C"            /*  n..ºê]¡Ä.f. n.. */
	$"BC90 5DC1 8001 6612 206E 0010 226E 000C"            /* ºê]¡Ä.f. n.."n.. */
	$"2210 B291 5EC1 8001 6702 7ECE 4A87 57C0"            /* ".≤ë^¡Ä.g.~ŒJáW¿ */
	$"206E 0010 226E 000C 2210 B291 57C1 C001"            /*  n.."n..".≤ëW¡¿. */
	$"6714 42A7 2F0B 2F06 2F2E 0010 2F2E 000C"            /* g.Bß/././.../... */
	$"4EBA FAF6 2E1F 4A87 6614 42A7 2F0B 2F06"            /* N∫˙ˆ..Jáf.Bß/./. */
	$"2F2E 0010 2F2E 000C 4EBA FCE0 2E1F 4A87"            /* /.../...N∫¸‡..Já */
	$"57C0 206E 0010 226E 000C 2210 B291 5CC1"            /* W¿ n.."n..".≤ë\¡ */
	$"C001 6706 2E3C FFFF FD5F 4A87 6628 4267"            /* ¿.g..<ˇˇ˝_Jáf(Bg */
	$"206E 0010 2010 4873 0800 2F2E 0008 206E"            /*  n.. .Hs../... n */
	$"000C 226E 0010 2010 9091 2F00 4EBA E202"            /* .."n.. .êë/.N∫‚. */
	$"301F 48C0 2E00 4A87 660A 42A7 2F0C 4EBA"            /* 0.H¿..Jáf.Bß/.N∫ */
	$"FD80 2E1F 4A87 6600 016A 2054 7000 4241"            /* ˝Ä..Jáf..j Tp.BA */
	$"1230 0800 703C B041 57C0 2054 48E7 8080"            /* .0..p<∞AW¿ THÁÄÄ */
	$"42A7 2F0C 4EBA E09A 221F 4CDF 0101 5381"            /* Bß/.N∫‡ö".Lﬂ..SÅ */
	$"4242 1430 1800 723E B242 57C1 C001 672A"            /* BB.0..r>≤BW¡¿.g* */
	$"2F0C 42A7 2F0C 4EBA E078 201F 5380 2F00"            /* /.Bß/.N∫‡x .SÄ/. */
	$"4EBA E07C 42A7 2F0C 42A7 42A7 7001 2F00"            /* N∫‡|Bß/.BßBßp./. */
	$"70FF 2F00 42A7 A9E0 2A1F 41EE FEE8 43FA"            /* pˇ/.Bß©‡*.AÓ˛ËC˙ */
	$"0124 20D9 3091 2F0C 205F A029 42A7 2F0C"            /* .$ Ÿ0ë/. _†)Bß/. */
	$"4EBA E03E 4240 102E FEE8 48C0 B09F 5FC0"            /* N∫‡>B@..˛ËH¿∞ü_¿ */
	$"4A00 674E 2F00 4267 2F14 486E FEE9 4241"            /* J.gN/.Bg/.Hn˛ÈBA */
	$"122E FEE8 3F01 4241 122E FEE8 3F01 3F3C"            /* ..˛Ë?.BA..˛Ë?.?< */
	$"000C A9ED 321F 201F 4A41 57C1 C001 6722"            /* ..©Ì2. .JAW¡¿.g" */
	$"2F0C 205F A02A 42A7 2F0C 42A7 42A7 4240"            /* /. _†*Bß/.BßBßB@ */
	$"102E FEE8 48C0 2F00 70FF 2F00 42A7 A9E0"            /* ..˛ËH¿/.pˇ/.Bß©‡ */
	$"2A1F 2F0C 205F A02A 3D7C 013A FEE8 42A7"            /* *... _†*=|.:˛ËBß */
	$"2F0C 42A7 486E FEE9 4240 102E FEE8 48C0"            /* /.BßHn˛ÈB@..˛ËH¿ */
	$"2F00 42A7 42A7 A9E0 281F 5DC0 0C84 0000"            /* /.BßBß©‡(.]¿.Ñ.. */
	$"00FF 5EC1 8001 675A 4A2E FF00 6608 2E3C"            /* .ˇ^¡Ä.gZJ.ˇ.f..< */
	$"FFFF FD5F 604C 486E FF00 487A 0066 486E"            /* ˇˇ˝_`LHnˇ.Hz.fHn */
	$"FDDC 3F3C 0002 4EBA E6B4 41EE FF00 43EE"            /* ˝‹?<..N∫Ê¥AÓˇ.CÓ */
	$"FDDC 703F 20D9 51C8 FFFC 42A7 2F0C 42A7"            /* ˝‹p? ŸQ»ˇ¸Bß/.Bß */
	$"42A7 42A7 486E FF01 4240 102E FF00 48C0"            /* BßBßHnˇ.B@..ˇ.H¿ */
	$"2F00 A9E0 2A1F 4267 3EB8 0220 301F 48C0"            /* /.©‡*.Bg>∏. 0.H¿ */
	$"2E00 2D47 0024 4CDF 18F0 4E5E 205F DEFC"            /* ..-G.$Lﬂ.N^ _ﬁ¸ */
	$"001C 4ED0 8B49 4352 5041 5253 4555 524C"            /* ..N–ãICRPARSEURL */
	$"0008 013A 0455 524C 3A00 4E56 FCAC 48E7"            /* ...:.URL:.NV¸¨HÁ */
	$"0108 206E 0018 43EE FF00 703F 22D8 51C8"            /* .. n..CÓˇ.p?"ÿQ» */
	$"FFFC 42A7 42A7 4EBA DEFE 285F 4267 3EB8"            /* ˇ¸BßBßN∫ﬁ˛(_Bg>∏ */
	$"0220 301F 48C0 2E00 6622 42A7 2F2E 001C"            /* . 0.H¿..f"Bß/... */
	$"486E FF00 2F2E 0014 2F2E 0010 2F2E 000C"            /* Hnˇ./.../.../... */
	$"2F2E 0008 2F0C 4EBA FCF2 2E1F 4A87 660E"            /* /.../.N∫¸Ú..Jáf. */
	$"42A7 2F0C 486E FDB4 4EBA EC0C 2E1F 4A87"            /* Bß/.Hn˝¥N∫Ï...Já */
	$"6636 7044 2D40 FDAC 42A7 2F2E 001C 487A"            /* f6pD-@˝¨Bß/...Hz */
	$"0066 486E FDB4 486E FCAC 3F3C 0002 4EBA"            /* .fHn˝¥Hn¸¨?<..N∫ */
	$"E5CC 486E FCAC 486E FDB0 486E FEB4 486E"            /* ÂÃHn¸¨Hn˝∞Hn˛¥Hn */
	$"FDAC 4EBA F450 2E1F 4A87 660E 42A7 2F2E"            /* ˝¨N∫ÙP..Jáf.Bß/. */
	$"FEB4 2F0C 4EBA EC40 2E1F 200C 6706 2F0C"            /* ˛¥/.N∫Ï@.. .g./. */
	$"205F A023 2D47 0020 4CDF 1080 4E5E 205F"            /*  _†#-G. Lﬂ.ÄN^ _ */
	$"DEFC 0018 4ED0 8C49 4352 4C41 554E 4348"            /* ﬁ¸..N–åICRLAUNCH */
	$"5552 4C00 0008 0748 656C 7065 72A5 4E56"            /* URL....Helper•NV */
	$"FFF4 48E7 0308 286E 000C 7000 2880 4267"            /* ˇÙHÁ..(n..p.(ÄBg */
	$"2F3C 6370 6E74 486E FFF4 4EBA DC02 4A5F"            /* /<cpntHnˇÙN∫‹.J_ */
	$"6614 42A7 2F3C 5052 4546 2F3C 4943 4170"            /* f.Bß/<PREF/<ICAp */
	$"7021 A82A 289F 4A94 6608 2E3C 8000 8001"            /* p!®*(üJîf..<Ä.Ä. */
	$"6028 42A7 2F14 2F2E 0008 2F3C 0004 0000"            /* `(Bß/./.../<.... */
	$"7000 A82A 2E1F 6712 4267 2F14 7008 A82A"            /* p.®*..g.Bg/.p.®* */
	$"301F 48C0 2C00 7000 2880 2D47 0010 4CDF"            /* 0.H¿,.p.(Ä-G..Lﬂ */
	$"10C0 4E5E 205F 504F 4ED0 8849 4343 5354"            /* .¿N^ _PON–àICCST */
	$"4152 5400 0000 4E56 FFF8 48E7 0300 42A7"            /* ART...NVˇ¯HÁ..Bß */
	$"2F2E 0008 2F3C 0000 0001 7000 A82A 2E1F"            /* /.../<....p.®*.. */
	$"4267 2F2E 0008 7008 A82A 301F 48C0 2C00"            /* Bg/...p.®*0.H¿,. */
	$"4A87 6602 2E06 2D47 000C 4CDF 00C0 4E5E"            /* Jáf...-G..Lﬂ.¿N^ */
	$"2E9F 4E75 8749 4343 5354 4F50 0000 4E56"            /* .üNuáICCSTOP..NV */
	$"FFFC 48E7 0108 286E 000C 42A7 2F3C 0000"            /* ˇ¸HÁ..(n..Bß/<.. */
	$"0190 4EBA DD48 289F 4267 3EB8 0220 301F"            /* .êN∫›H(üBg>∏. 0. */
	$"48C0 2E00 662E 42A7 2054 2F08 2F2E 0008"            /* H¿..f.Bß T/./... */
	$"4EBA FEFC 2E1F 670E 42A7 2F14 2F2E 0008"            /* N∫˛¸..g.Bß/./... */
	$"4EBA EB5E 2E1F 4A87 670A 2F14 205F A01F"            /* N∫Î^..Jág./. _†. */
	$"7000 2880 2D47 0010 4CDF 1080 4E5E 205F"            /* p.(Ä-G..Lﬂ.ÄN^ _ */
	$"504F 4ED0 8749 4353 5441 5254 0000 4E56"            /* PON–áICSTART..NV */
	$"FFF8 48E7 0108 286E 0008 4A94 670C 42A7"            /* ˇ¯HÁ..(n..Jîg.Bß */
	$"2F14 4EBA FF32 2E1F 600A 42A7 2F0C 4EBA"            /* /.N∫ˇ2..`.Bß/.N∫ */
	$"EBEA 2E1F 2F0C 205F A01F 2D47 000C 4CDF"            /* ÎÍ../. _†.-G..Lﬂ */
	$"1080 4E5E 2E9F 4E75 8649 4353 544F 5000"            /* .ÄN^.üNuÜICSTOP. */
	$"0000 4E56 0000 206E 000E 4A90 6720 42A7"            /* ..NV.. n..Jêg Bß */
	$"206E 000E 2F10 3F2E 000C 2F2E 0008 2F3C"            /*  n../.?.../.../< */
	$"0006 0002 7000 A82A 2D5F 0012 6016 42A7"            /* ....p.®*-_..`.Bß */
	$"2F2E 000E 3F2E 000C 2F2E 0008 4EBA ED70"            /* /...?.../...N∫Ìp */
	$"2D5F 0012 4E5E 205F DEFC 000A 4ED0 9049"            /* -_..N^ _ﬁ¸..N–êI */
	$"4346 494E 4443 4F4E 4649 4746 494C 4500"            /* CFINDCONFIGFILE. */
	$"0000 4E56 0000 206E 000A 4A90 671C 42A7"            /* ..NV.. n..Jêg.Bß */
	$"206E 000A 2F10 1F2E 0008 2F3C 0002 0005"            /*  n../...../<.... */
	$"7000 A82A 2D5F 000E 6012 42A7 2F2E 000A"            /* p.®*-_..`.Bß/... */
	$"1F2E 0008 4EBA EFE2 2D5F 000E 4E5E 205F"            /* ....N∫Ô‚-_..N^ _ */
	$"5C4F 4ED0 8749 4342 4547 494E 0000 4E56"            /* \ON–áICBEGIN..NV */
	$"FF00 206E 0014 43EE FF00 703F 22D8 51C8"            /* ˇ. n..CÓˇ.p?"ÿQ» */
	$"FFFC 206E 0018 4A90 6728 42A7 206E 0018"            /* ˇ¸ n..Jêg(Bß n.. */
	$"2F10 486E FF00 2F2E 0010 2F2E 000C 2F2E"            /* /.Hnˇ./.../.../. */
	$"0008 2F3C 0010 0006 7000 A82A 2D5F 001C"            /* ../<....p.®*-_.. */
	$"601E 42A7 2F2E 0018 486E FF00 2F2E 0010"            /* `.Bß/...Hnˇ./... */
	$"2F2E 000C 2F2E 0008 4EBA F17A 2D5F 001C"            /* /.../...N∫Òz-_.. */
	$"4E5E 205F DEFC 0014 4ED0 8949 4347 4554"            /* N^ _ﬁ¸..N–âICGET */
	$"5052 4546 0000 4E56 FF00 206E 0014 43EE"            /* PREF..NVˇ. n..CÓ */
	$"FF00 703F 22D8 51C8 FFFC 206E 0018 4A90"            /* ˇ.p?"ÿQ»ˇ¸ n..Jê */
	$"6728 42A7 206E 0018 2F10 486E FF00 2F2E"            /* g(Bß n../.Hnˇ./. */
	$"0010 2F2E 000C 2F2E 0008 2F3C 0010 0007"            /* ../.../.../<.... */
	$"7000 A82A 2D5F 001C 601E 42A7 2F2E 0018"            /* p.®*-_..`.Bß/... */
	$"486E FF00 2F2E 0010 2F2E 000C 2F2E 0008"            /* Hnˇ./.../.../... */
	$"4EBA F25E 2D5F 001C 4E5E 205F DEFC 0014"            /* N∫Ú^-_..N^ _ﬁ¸.. */
	$"4ED0 8949 4353 4554 5052 4546 0000 4E56"            /* N–âICSETPREF..NV */
	$"0000 206E 0008 4A90 6718 42A7 206E 0008"            /* .. n..Jêg.Bß n.. */
	$"2F10 2F3C 0000 000A 7000 A82A 2D5F 000C"            /* /./<....p.®*-_.. */
	$"600E 42A7 2F2E 0008 4EBA F438 2D5F 000C"            /* `.Bß/...N∫Ù8-_.. */
	$"4E5E 2E9F 4E75 8549 4345 4E44 0000 4E56"            /* N^.üNuÖICEND..NV */
	$"FF00 206E 0018 43EE FF00 703F 22D8 51C8"            /* ˇ. n..CÓˇ.p?"ÿQ» */
	$"FFFC 206E 001C 4A90 672C 42A7 206E 001C"            /* ˇ¸ n..Jêg,Bß n.. */
	$"2F10 486E FF00 2F2E 0014 2F2E 0010 2F2E"            /* /.Hnˇ./.../.../. */
	$"000C 2F2E 0008 2F3C 0014 0011 7000 A82A"            /* ../.../<....p.®* */
	$"2D5F 0020 6022 42A7 2F2E 001C 486E FF00"            /* -_. `"Bß/...Hnˇ. */
	$"2F2E 0014 2F2E 0010 2F2E 000C 2F2E 0008"            /* /.../.../.../... */
	$"4EBA FB58 2D5F 0020 4E5E 205F DEFC 0018"            /* N∫˚X-_. N^ _ﬁ¸.. */
	$"4ED0 8B49 434C 4155 4E43 4855 524C 0000"            /* N–ãICLAUNCHURL.. */
};

data 'CODE' (0, purgeable, protected) {
	$"0000 0068 0000 10A8 0000 0008 0000 0020"            /* ...h...®.......  */
	$"0000 3F3C 0001 A9F0"                                /* ..?<..© */
};

data 'DATA' (0, purgeable, protected) {
	$"0000 02A4 FFFF F870 8003 2120 7F7F 7F7E"            /* ...§ˇˇ¯pÄ.! ...~ */
	$"8270 032E 2030 8D0B 5374 7261 6E67 6520"            /* Çp.. 0ç.Strange  */
	$"526F 7701 2041 8501 4001 210C 0A57 8103"            /* Row. AÖ.@.!..WÅ. */
	$"FF45 8010 2E30 4095 012F 0130 5445 5854"            /* ˇEÄ..0@ï./.0TEXT */
	$"010D 0255 5300 072B 5E31 2C5E 322A 4F80"            /* ...US..+^1,^2*OÄ */
	$"0711 80FE 4B8B 0E57 6861 7420 4D65 7468"            /* ..Ä˛Kã.What Meth */
	$"6F64 213F 409A 0852 6561 6C4E 616D 6563"            /* od!?@ö.RealNamec */
	$"0545 6D61 696C 1035 3236 3536 3736 39A5"            /* .Email.52656769• */
	$"4120 6481 7265 2073 4083 013A 000E 2074"            /* A dÅre s@É.:.. t */
	$"8078 2174 8772 6F01 CA50 4943 5441 870F"            /* Äx!táro. PICTAá. */
	$"FFFC 0003 5553 441F 1781 FC00 1557 01DF"            /* ˇ¸..USD..Å¸..W.ﬂ */
	$"FF1F 8080 4980 011F 1B83 FC00 DFFE 1F1B"            /* ˇ.ÄÄIÄ...É¸.ﬂ˛.. */
	$"82FC 007F 1457 01FF FF5B 99F0 0003 0043"            /* Ç¸...W.ˇˇ[ô...C */
	$"5452 5903 5553 4102 2028 0001 2953 4352"            /* TRY.USA. (..)SCR */
	$"4C50 524F 477F 7F7F 7E94 1852 6567 6944"            /* LPROG...~î.RegiD */
	$"5256 5213 3532 3635 3637 3639 A542 6920"            /* RVR.52656769•Bi  */
	$"6C82 5374 7220 658C 7410 3532 3635 3637"            /* lÇStr eåt.526567 */
	$"3639 A542 6920 6C82 5A69 7041 8016 7F7F"            /* 69•Bi lÇZipAÄ... */
	$"7F7F 4480 0651 8007 1180 FE4B 8101 2A11"            /* ..DÄ.QÄ..Ä˛KÅ.*. */
	$"81FE 1A42 880E 0024 0007 0007 0002 4181"            /* Å˛.Bà..$......AÅ */
	$"7076 4280 0341 8172 AE42 8002 4186 71AE"            /* pvBÄ.AÅrÆBÄ.AÜqÆ */
	$"0F50 5249 4E20 5488 4558 544F 424A 4543"            /* .PRIN TàEXTOBJEC */
	$"5458 800F 4789 0120 5445 5854 7374 796C"            /* TXÄ.Gâ. TEXTstyl */
	$"41A3 7379 7376 5349 434E 6865 6C70 4241"            /* A£sysvSICNhelpBA */
	$"5243 134E 6F74 2059 6574 2049 6D70 6C65"            /* RC.Not Yet Imple */
	$"6D65 6E74 6564 4684 0400 2C00 0645 81A4"            /* mentedFÑ..,..EÅ§ */
	$"7841 81A3 A641 81A4 4441 81A3 C241 81A3"            /* xAÅ£¶AÅ§DAÅ£¬AÅ£ */
	$"7041 81A3 4A41 8BA3 2E07 504F 424A 4543"            /* pAÅ£JAã£..POBJEC */
	$"546D 6920 7322 2A80 6220 6F81 6C61 2064"            /* Tmi s"*Äb oÅla d */
	$"8C72 7073 6E20 6175 746F 6175 7443 222D"            /* årpsn autoautC"- */
	$"846C 6973 7466 2073 8620 6165 7674 6F61"            /* Ñlistf sÜ aevtoa */
	$"2070 8D6F 646F 6370 646F 6371 7569 7413"            /*  pçodocpdocquit. */
	$"4120 738F 6572 7420 4661 696C 6564 3B73"            /* A sèert Failed;s */
	$"633B 6863 4183 013A 0004 4584 0466 7265"            /* c;hcAÉ.:..EÑ.fre */
	$"6442 8101 5E41 816F 7320 2099 7379 7376"            /* dBÅ.^AÅos  ôsysv */
	$"6576 6E74 666F 6C64 7374 6466 6865 6C70"            /* evntfoldstdfhelp */
	$"616C 6973 766D 2020 7F7F 7F7E 2001 40A5"            /* alisvm  ...~ .@• */
	$"424E 444C 7665 7273 0530 2E30 2E30 0E55"            /* BNDLvers.0.0.0.U */
	$"6E6B 6E6F 776E 2076 302E 302E 3000 0755"            /* nknown v0.0.0..U */
	$"6E6B 6E6F 776E 4100 0000 0028 0000 0000"            /* nknownA....(.... */
	$"2844 8201 0D30 5700 0000 0001 7ECA 0000"            /* (DÇ..0W.....~ .. */
	$"000B 7F15 8282 8282 8282 7FB1 8484 413A"            /* ....ÇÇÇÇÇÇ.±ÑÑA: */
	$"0000 0000 0000 000B 418E 0000 6C94 8383"            /* ........Aé..lîÉÉ */
	$"8483 8383 8483 8300 0002 5B40 6E83 8A85"            /* ÑÉÉÉÑÉÉ...[@nÉäÖ */
	$"428E 4054 BC9B 4051 AD40 97A1 4054 9D87"            /* Bé@Tºõ@Q≠@ó°@Tùá */
	$"8D94 F640 A4B3 8AB5 8D40 43A7 404E F4F4"            /* çîˆ@§≥äµç@Cß@NÙÙ */
	$"F240 51AD 4080 B5F2 4088 D3F2 ED40 53EF"            /* Ú@Q≠@ÄµÚ@à”ÚÌ@SÔ */
	$"E3F2 EE40 AF9D 8EA2 A9AF 8C8B 86AD 8C8B"            /* „ÚÓ@Øùé¢©ØåãÜ≠åã */
	$"86A4 F541 157F 9140 AF7F A87F B740 A77F"            /* Ü§ıA..ë@Ø.®.∑@ß. */
	$"A87F B78F A540 7C40 47AA 98A9 8E86 9BAA"            /* ®.∑è•@|@G™ò©éÜõ™ */
	$"409E 7FB9 DCB9 9D40 61AE BE40 BDD5 93AB"            /* @û.π‹πù@aÆæ@Ω’ì´ */
	$"40DE C1D7 C140 9B7F 9840 7E7F 9741 29A3"            /* @ﬁ¡◊¡@õ.ò@~.óA)£ */
	$"B399 A290 989C 9198 9CB7 A3B9 DC93 A4A3"            /* ≥ô¢êòúëòú∑£π‹ì§£ */
	$"A3A3 A3A7 8A97 9C91 4047 EDED F040 5040"            /* £££ßäóúë@GÌÌ@P@ */
	$"DFDB DBD8 CDE0 4100 898C 889B A0A7 8A8B"            /* ﬂ€€ÿÕ‡A.âåàõ†ßäã */
	$"85BD 8E40 E58A 97AA 4120 7EEE B8DB B691"            /* ÖΩé@Âäó™A ~Ó∏€∂ë */
	$"4075 7F99 99AA AD40 9BDE 404C BC40 BEE8"            /* @u.ôô™≠@õﬁ@Lº@æË */
	$"88AB 4168 7EAD 89AF 8E40 6092 BEED 41E3"            /* à´Ah~≠âØé@`íæÌA„ */
	$"7F80 7FBF C741 04CB 7FB5 7FBF C740 A540"            /* .Ä.ø«A.À.µ.ø«@•@ */
	$"7940 5090 4056 95F7 9F40 927F BC40 BCD2"            /* y@Pê@Vï˜ü@í.º@º“ */
	$"4051 EFE3 EF40 598D 404D 4094 BAF4 F4F4"            /* @QÔ„Ô@Yç@M@î∫ÙÙÙ */
	$"4098 EF41 158D 406C A540 9AF2 9640 5F41"            /* @òÔA.ç@l•@öÚñ@_A */
	$"7F7F 9DD3 D340 C4E2 7FBB D3D3 4066 D6D3"            /* ..ù””@ƒ‚.ª””@f÷” */
	$"4084 94A5 B740 57B8 90AD 8BA8 9140 41EE"            /* @Ñî•∑@W∏ê≠ã®ë@AÓ */
	$"4043 4046 405F 422A 7F45 409B E0F4 F2F2"            /* @C@F@_B*.E@õ‡ÙÚÚ */
	$"F2CB 4079 9D87 404C 9D8B AD94 8C98 40A7"            /* ÚÀ@yùá@Lùã≠îåò@ß */
	$"9BF7 F79B 4052 86A2 8A90 A741 B17E ED40"            /* õ˜˜õ@RÜ¢äêßA±~Ì@ */
	$"5640 C440 42F9 F9F9 F940 53B4 A285 B740"            /* V@ƒ@B˘˘˘˘@S¥¢Ö∑@ */
	$"B840 ACBB 9490 9991 8383 8583 9E8F 8683"            /* ∏@¨ªîêôëÉÉÖÉûèÜÉ */
	$"8383 8686 8386 B7F0 8785 8792 9C8A 8585"            /* ÉÉÜÜÉÜ∑áÖáíúäÖÖ */
	$"A09A F096 F096 8987 8DA5 EE9A EEAB 4041"            /* †öññâáç•ÓöÓ´@A */
	$"EE40 558D 89A2 8E86 8D8A 8592 9A8A 8A8C"            /* Ó@Uçâ¢éÜçäÖíöääå */
	$"8A87 B6B7 888F 878B 8E85 406B 8B9D 40B0"            /* äá∂∑àèáãéÖ@kãù@∞ */
	$"E3B0 E340 6E40 4540 6740 B07F 8B40 7A9B"            /* „∞„@n@E@g@∞.ã@zõ */
	$"8540 4DA7 9597 404C EF9F 4043 B48D 404D"            /* Ö@Mßïó@LÔü@C¥ç@M */
	$"EF95 EF40 5240 40F0 8440 77D7 40AA 405C"            /* ÔïÔ@R@@Ñ@w◊@™@\ */
	$"A892 838A B140 4DAA F7F7 F740 51A5 4069"            /* ®íÉä±@M™˜˜˜@Q•@i */
	$"4105 A640 40AD EDA3 B940 9640 4942 1C7F"            /* A.¶@@≠Ì£π@ñ@IB.. */
	$"7F7F 0497 4051 A9F4 4054 9BAB 898B 8F86"            /* ...ó@Q©Ù@Tõ´âãèÜ */
	$"97AC 8489 8895 AD96 9791 968C 878F 869B"            /* ó¨Ñâàï≠ñóëñåáèÜõ */
	$"B192 8383 8B40 6FF6 4081 AB40 7F40 749F"            /* ±íÉÉã@oˆ@Å´@.@tü */
	$"A1A4 B2F3 F8F3 4043 93B6 A183 A79E 404A"            /* °§≤Û¯Û@Cì∂°Éßû@J */
	$"899A 97F1 878F 8685 40C1 438B A885 879D"            /* âöóÒáèÜÖ@¡Cã®Öáù */
	$"B88B B788 8741 A640 7590 404F F8BB 8ABB"            /* ∏ã∑àáA¶@uê@O¯ªäª */
	$"F542 0640 DE89 938F 8AA0 407B 9AA1 410D"            /* ıB.@ﬁâìèä†@{ö°A. */
	$"C97F B7D7 413D 8A40 D7F5 A7B8 418E 4055"            /* ….∑◊A=ä@◊ıß∏Aé@U */
	$"F740 72A0 438B 4056 4157 40BA 7FAA DBD4"            /* ˜@r†Cã@VAW@∫.™€‘ */
	$"8EAA 4085 7F86 4042 40D3 7F38 A341 649E"            /* é™@Ö.Ü@B@”.8£Adû */
	$"9EBD F4F2 F240 AEF1 F2F1 40BF DCB6 A492"            /* ûΩÙÚÚ@ÆÒÚÒ@ø‹∂§í */
	$"4061 B540 739D 99A4 9AA0 89B9 404D 408D"            /* @aµ@sùô§ö†âπ@M@ç */
	$"9740 45A7 4054 411E 9287 43C0 B78B 889D"            /* ó@Eß@TA.íáC¿∑ãàù */
	$"91A1 B640 48EE 9940 C0F5 404A A49E 4096"            /* ë°∂@HÓô@¿ı@J§û@ñ */
	$"9F41 4840 6041 1300 0000 00"                        /* üAH@`A..... */
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

data 'PROG' (128) {
	$"0001 1144 6573 6967 6E65 7227 7320 5374"            /* ...Designer's St */
	$"7564 696F 0D41 6B61 6D61 6920 4465 7369"            /* udio.Akamai Desi */
	$"676E 0433 5239 4100 0000 0000 0001 0014"            /* gn.3R9A......... */
	$"0000 00C8 0320 0000 0000 0000"                      /* ...». ...... */
};

