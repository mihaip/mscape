/* Resource fork of software/clip2icns/clip2icns.Âµ.rsrc */
resource 'ALRT' (300) {
	{40, 40, 155, 402},
	300,
	{	/* array: 4 elements */
		/* [1] */
		OK, visible, sound1,
		/* [2] */
		OK, visible, sound1,
		/* [3] */
		OK, visible, sound1,
		/* [4] */
		OK, visible, sound1
	},
	alertPositionMainScreen
};

resource 'BNDL' (128) {
	'c2ic',
	0,
	{	/* array TypeArray: 2 elements */
		/* [1] */
		'ICN#',
		{	/* array IDArray: 3 elements */
			/* [1] */
			0, 128,
			/* [2] */
			1, 0,
			/* [3] */
			2, 0
		},
		/* [2] */
		'FREF',
		{	/* array IDArray: 3 elements */
			/* [1] */
			0, 128,
			/* [2] */
			1, 129,
			/* [3] */
			2, 130
		}
	}
};

resource 'CNTL' (200) {
	{0, 0, 20, 230},
	0,
	visible,
	50,
	200,
	401,
	0,
	"Type:"
};

resource 'CNTL' (201) {
	{0, 0, 20, 230},
	0,
	visible,
	50,
	201,
	401,
	0,
	"Icon:"
};

resource 'DITL' (128, "About Box") {
	{	/* array DITLarray: 8 elements */
		/* [1] */
		{181, 212, 201, 270},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{10, 10, 125, 270},
		UserItem {
			enabled
		},
		/* [3] */
		{76, 144, 89, 226},
		StaticText {
			disabled,
			"Registered to:"
		},
		/* [4] */
		{90, 152, 104, 269},
		StaticText {
			disabled,
			"Not registered"
		},
		/* [5] */
		{104, 152, 118, 269},
		StaticText {
			disabled,
			""
		},
		/* [6] */
		{125, 10, 143, 270},
		StaticText {
			disabled,
			"by Mihai Parparita"
		},
		/* [7] */
		{159, 10, 177, 270},
		StaticText {
			enabled,
			"http://www.mscape.com/"
		},
		/* [8] */
		{142, 10, 160, 270},
		StaticText {
			enabled,
			"mihai@mscape.com"
		}
	}
};

resource 'DITL' (129, "Editing") {
	{	/* array DITLarray: 11 elements */
		/* [1] */
		{159, 181, 179, 239},
		Button {
			enabled,
			"Insert"
		},
		/* [2] */
		{159, 25, 179, 83},
		Button {
			enabled,
			"Close"
		},
		/* [3] */
		{74, 9, 94, 239},
		Control {
			enabled,
			200
		},
		/* [4] */
		{100, 9, 120, 239},
		Control {
			enabled,
			201
		},
		/* [5] */
		{131, 186, 147, 236},
		EditText {
			enabled,
			"-16455"
		},
		/* [6] */
		{130, 31, 145, 51},
		StaticText {
			disabled,
			"ID:"
		},
		/* [7] */
		{8, 25, 56, 121},
		UserItem {
			enabled
		},
		/* [8] */
		{9, 133, 57, 229},
		UserItem {
			enabled
		},
		/* [9] */
		{58, 52, 70, 95},
		StaticText {
			disabled,
			"clipboard"
		},
		/* [10] */
		{59, 143, 71, 220},
		StaticText {
			disabled,
			"current contents"
		},
		/* [11] */
		{159, 117, 179, 175},
		Button {
			enabled,
			"Extract"
		}
	}
};

resource 'DITL' (130, "Registration") {
	{	/* array DITLarray: 9 elements */
		/* [1] */
		{102, 270, 122, 338},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{102, 190, 122, 254},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{102, 7, 122, 158},
		Button {
			enabled,
			"Launch Register App"
		},
		/* [4] */
		{12, 136, 28, 336},
		EditText {
			enabled,
			""
		},
		/* [5] */
		{40, 136, 56, 336},
		EditText {
			enabled,
			""
		},
		/* [6] */
		{68, 136, 84, 336},
		EditText {
			enabled,
			""
		},
		/* [7] */
		{12, 8, 28, 51},
		StaticText {
			disabled,
			"Name:"
		},
		/* [8] */
		{40, 8, 56, 98},
		StaticText {
			disabled,
			"Organization:"
		},
		/* [9] */
		{68, 8, 84, 131},
		StaticText {
			disabled,
			"Registration Code:"
		}
	}
};

resource 'DITL' (131, "Preferences") {
	{	/* array DITLarray: 8 elements */
		/* [1] */
		{108, 212, 128, 280},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{108, 132, 128, 196},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{8, 8, 24, 263},
		CheckBox {
			enabled,
			"Include old style resources (if any)"
		},
		/* [4] */
		{40, 8, 56, 213},
		CheckBox {
			enabled,
			"Set bits Kaleidoscope-style"
		},
		/* [5] */
		{24, 8, 40, 263},
		CheckBox {
			enabled,
			"Generate old style resources"
		},
		/* [6] */
		{56, 8, 72, 213},
		CheckBox {
			enabled,
			"Name resources"
		},
		/* [7] */
		{72, 8, 88, 213},
		CheckBox {
			enabled,
			"Dither when making lower bit-depths"
		},
		/* [8] */
		{88, 8, 104, 213},
		CheckBox {
			enabled,
			"Remember last ID selection"
		}
	}
};

resource 'DITL' (300, "Reminder") {
	{	/* array DITLarray: 3 elements */
		/* [1] */
		{82, 272, 102, 352},
		Button {
			enabled,
			"Register"
		},
		/* [2] */
		{8, 60, 74, 352},
		StaticText {
			disabled,
			"YouÕve used clip2icns to create ^0 icons"
			". If you continue to use it, please pay "
			"the $10 shareware fee. This can be done "
			"online, or by using the enclosed Registe"
			"r application."
		},
		/* [3] */
		{82, 179, 102, 259},
		Button {
			enabled,
			"Not Yet"
		}
	}
};

data 'DLGX' (128) {
	$"0743 6869 6361 676F 0000 0000 0000 0000"            /* .Chicago........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0008 0000 0000 0000 0000 0000 0000 000A"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'DLGX' (129) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"000B 0002 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0007 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 000A 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0002 0000 0000"            /* ................ */
	$"0000 0000 0000"                                     /* ...... */
};

data 'DLGX' (130) {
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

data 'DLGX' (131) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0006 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
};

resource 'DLOG' (128) {
	{88, 131, 296, 411},
	dBoxProc,
	invisible,
	noGoAway,
	0x0,
	128,
	"",
	centerMainScreen
};

resource 'DLOG' (129) {
	{54, 42, 244, 295},
	1043,
	invisible,
	goAway,
	0x0,
	129,
	"Edit Icons",
	alertPositionMainScreen
};

resource 'DLOG' (130) {
	{259, 337, 395, 687},
	dBoxProc,
	visible,
	goAway,
	0x0,
	130,
	"",
	alertPositionParentWindowScreen
};

resource 'DLOG' (131) {
	{259, 339, 394, 627},
	dBoxProc,
	visible,
	goAway,
	0x0,
	131,
	"DITL 131 from clip2icns.µ.rsrc",
	alertPositionMainScreen
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

resource 'ICN#' (128) {
	{	/* array: 2 elements */
		/* [1] */
		$"0000 0000 0000 0000 0010 2000 0008 4000"
		$"0004 8000 0003 0000 0700 0000 0A80 0000"
		$"7070 0000 9FC8 0FFF 8488 0FF7 8848 0FEE"
		$"9028 0FFC A048 8FD0 908B CF68 890B EEC0"
		$"860B EB00 8008 8D80 8008 0800 8008 0800"
		$"8008 0000 7FF0 0008 0060 0010 0020 0020"
		$"0010 0040 0008 0080 0004 0100 0002 0200"
		$"0001 0400 0000 8800 0000 5000 0000 20",
		/* [2] */
		$"0000 0000 001F F000 003F F800 007F FC00"
		$"00FF FE00 01FF FF00 0FFF FF80 0FFF FFC0"
		$"FFFF FFE0 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF 7FFF FFFE 00FF FFFE 007F FFFF"
		$"003F FFFF 001F FFFE 000F FFF8 0007 FFF8"
		$"0003 FFF0 0001 FFC0 0000 FF00 0000 7F"
	}
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

resource 'MENU' (128) {
	128,
	textMenuProc,
	0x7FFFFFFB,
	enabled,
	apple,
	{	/* array: 3 elements */
		/* [1] */
		"About clip2icnsÉ", noIcon, noKey, noMark, plain,
		/* [2] */
		"RegisterÉ", noIcon, noKey, noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (129) {
	129,
	textMenuProc,
	0x7FFFFFFB,
	enabled,
	"File",
	{	/* array: 4 elements */
		/* [1] */
		"New Icon FileÉ", noIcon, "N", noMark, plain,
		/* [2] */
		"Open Icon FileÉ", noIcon, "O", noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Quit", noIcon, "Q", noMark, plain
	}
};

resource 'MENU' (130) {
	130,
	textMenuProc,
	0x7FFFFF80,
	enabled,
	"Edit",
	{	/* array: 9 elements */
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
		"Select All", noIcon, "A", noMark, plain,
		/* [8] */
		"-", noIcon, noKey, noMark, plain,
		/* [9] */
		"PreferencesÉ", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (200) {
	200,
	textMenuProc,
	allEnabled,
	enabled,
	"icns list",
	{	/* array: 7 elements */
		/* [1] */
		"Item Icon", noIcon, noKey, noMark, plain,
		/* [2] */
		"System Folders", noIcon, noKey, noMark, plain,
		/* [3] */
		"Generic Icons", noIcon, noKey, noMark, plain,
		/* [4] */
		"Internet Icons", noIcon, noKey, noMark, plain,
		/* [5] */
		"Battery Status", noIcon, noKey, noMark, plain,
		/* [6] */
		"Badges", noIcon, noKey, noMark, plain,
		/* [7] */
		"Others", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (201) {
	201,
	textMenuProc,
	allEnabled,
	enabled,
	"Item Icon",
	{	/* array: 1 elements */
		/* [1] */
		"Ð16455 Item Icon", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (202) {
	202,
	textMenuProc,
	allEnabled,
	enabled,
	"System Folders",
	{	/* array: 56 elements */
		/* [1] */
		"Ð20803 Language & Region Support", noIcon, noKey, noMark, plain,
		/* [2] */
		"Ð20801 Internet Search Sites", noIcon, noKey, noMark, plain,
		/* [3] */
		"Ð20797 Scripts", noIcon, noKey, noMark, plain,
		/* [4] */
		"Ð20792 ColorSync Profiles", noIcon, noKey, noMark, plain,
		/* [5] */
		"Ð20744 Internet", noIcon, noKey, noMark, plain,
		/* [6] */
		"Ð20729 Favorites", noIcon, noKey, noMark, plain,
		/* [7] */
		"Ð20724 Speakable Items", noIcon, noKey, noMark, plain,
		/* [8] */
		"Ð20723 Appearance", noIcon, noKey, noMark, plain,
		/* [9] */
		"Ð3999 Generic Folder", noIcon, noKey, noMark, plain,
		/* [10] */
		"Ð3997 Open Folder", noIcon, noKey, noMark, plain,
		/* [11] */
		"Ð3994 Private Folder", noIcon, noKey, noMark, plain,
		/* [12] */
		"Ð3993 Trash Empty", noIcon, noKey, noMark, plain,
		/* [13] */
		"Ð3992 Desktop", noIcon, noKey, noMark, plain,
		/* [14] */
		"Ð3984 Trash Full", noIcon, noKey, noMark, plain,
		/* [15] */
		"Ð3983 System Folder", noIcon, noKey, noMark, plain,
		/* [16] */
		"Ð3982 Apple Menu Items", noIcon, noKey, noMark, plain,
		/* [17] */
		"Ð3981 Startup Items", noIcon, noKey, noMark, plain,
		/* [18] */
		"Ð3980 Shared Folder", noIcon, noKey, noMark, plain,
		/* [19] */
		"Ð3979 Drop Folder", noIcon, noKey, noMark, plain,
		/* [20] */
		"Ð3978 Share Point", noIcon, noKey, noMark, plain,
		/* [21] */
		"Ð3977 Mounted Folder", noIcon, noKey, noMark, plain,
		/* [22] */
		"Ð3976 Control Panels", noIcon, noKey, noMark, plain,
		/* [23] */
		"Ð3975 Print Spool", noIcon, noKey, noMark, plain,
		/* [24] */
		"Ð3974 Preferences", noIcon, noKey, noMark, plain,
		/* [25] */
		"Ð3973 Extensions", noIcon, noKey, noMark, plain,
		/* [26] */
		"Ð3972 File Server", noIcon, noKey, noMark, plain,
		/* [27] */
		"Ð3968 Fonts", noIcon, noKey, noMark, plain,
		/* [28] */
		"Ð3966 Recent Documents", noIcon, noKey, noMark, plain,
		/* [29] */
		"Ð3965 Recent Applications", noIcon, noKey, noMark, plain,
		/* [30] */
		"Ð3964 Recent Servers", noIcon, noKey, noMark, plain,
		/* [31] */
		"Ð3963 MacOS Read Me Files", noIcon, noKey, noMark, plain,
		/* [32] */
		"Ð3962 Control Strip Modules", noIcon, noKey, noMark, plain,
		/* [33] */
		"Ð3961 Sounds", noIcon, noKey, noMark, plain,
		/* [34] */
		"Ð3960 Help", noIcon, noKey, noMark, plain,
		/* [35] */
		"Ð3959 Scripting Additions", noIcon, noKey, noMark, plain,
		/* [36] */
		"Ð3958 Internet Plug-ins", noIcon, noKey, noMark, plain,
		/* [37] */
		"Ð3957 Language Support", noIcon, noKey, noMark, plain,
		/* [38] */
		"Ð3956 Shared Libraries", noIcon, noKey, noMark, plain,
		/* [39] */
		"Ð3955 Text Encodings", noIcon, noKey, noMark, plain,
		/* [40] */
		"Ð3954 Printer Drivers", noIcon, noKey, noMark, plain,
		/* [41] */
		"Ð3953 Printer Descriptions", noIcon, noKey, noMark, plain,
		/* [42] */
		"Ð3952 Voices", noIcon, noKey, noMark, plain,
		/* [43] */
		"Ð3951 Control Panels (Disabled)", noIcon, noKey, noMark, plain,
		/* [44] */
		"Ð3950 Extensions (Disabled)", noIcon, noKey, noMark, plain,
		/* [45] */
		"Ð3949 Startup Items (Disabled)", noIcon, noKey, noMark, plain,
		/* [46] */
		"Ð3948 Shutdown Items (Disabled)", noIcon, noKey, noMark, plain,
		/* [47] */
		"Ð3947 System Extensions (Disabled)", noIcon, noKey, noMark, plain,
		/* [48] */
		"Ð3946 Assistants", noIcon, noKey, noMark, plain,
		/* [49] */
		"Ð3945 Utilities", noIcon, noKey, noMark, plain,
		/* [50] */
		"Ð3944 Application Support", noIcon, noKey, noMark, plain,
		/* [51] */
		"Ð3943 Apple Extras", noIcon, noKey, noMark, plain,
		/* [52] */
		"Ð3942 Contextual Menu Items", noIcon, noKey, noMark, plain,
		/* [53] */
		"Ð3812 Workgroup", noIcon, noKey, noMark, plain,
		/* [54] */
		"Ð3811 User", noIcon, noKey, noMark, plain,
		/* [55] */
		"Ð3774 System Folder (protected)", noIcon, noKey, noMark, plain,
		/* [56] */
		"Ð3773 Applications Folder (protected)", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (203) {
	203,
	textMenuProc,
	allEnabled,
	enabled,
	"Generic Icons",
	{	/* array: 37 elements */
		/* [1] */
		"Ð20800 Disk Image", noIcon, noKey, noMark, plain,
		/* [2] */
		"Ð20799 Generic PC Card", noIcon, noKey, noMark, plain,
		/* [3] */
		"Ð20794 TrueType Multi Flat Font", noIcon, noKey, noMark, plain,
		/* [4] */
		"Ð20752 Generic Font Scaler", noIcon, noKey, noMark, plain,
		/* [5] */
		"Ð20743 LaserWriter", noIcon, noKey, noMark, plain,
		/* [6] */
		"Ð20732 TrueType Flat Font", noIcon, noKey, noMark, plain,
		/* [7] */
		"Ð16415 Generic Extension", noIcon, noKey, noMark, plain,
		/* [8] */
		"Ð4000 Generic Document", noIcon, noKey, noMark, plain,
		/* [9] */
		"Ð3998 Floppy", noIcon, noKey, noMark, plain,
		/* [10] */
		"Ð3996 Generic App", noIcon, noKey, noMark, plain,
		/* [11] */
		"Ð3995 Apple HD", noIcon, noKey, noMark, plain,
		/* [12] */
		"Ð3991 Generic DA", noIcon, noKey, noMark, plain,
		/* [13] */
		"Ð3989 Edition File", noIcon, noKey, noMark, plain,
		/* [14] */
		"Ð3988 RAM Disk", noIcon, noKey, noMark, plain,
		/* [15] */
		"Ð3987 CD", noIcon, noKey, noMark, plain,
		/* [16] */
		"Ð3985 Stationery", noIcon, noKey, noMark, plain,
		/* [17] */
		"Ð3971 Generic Preferences", noIcon, noKey, noMark, plain,
		/* [18] */
		"Ð3970 Generic Suitcase", noIcon, noKey, noMark, plain,
		/* [19] */
		"Ð3969 Generic DA Document", noIcon, noKey, noMark, plain,
		/* [20] */
		"Ð3967 Shared Library", noIcon, noKey, noMark, plain,
		/* [21] */
		"Ð3851 Generic Control Strip Module", noIcon, noKey, noMark, plain,
		/* [22] */
		"Ð3850 Generic Codec", noIcon, noKey, noMark, plain,
		/* [23] */
		"Ð3832 PC Disk", noIcon, noKey, noMark, plain,
		/* [24] */
		"Ð3831 Apple II Disk", noIcon, noKey, noMark, plain,
		/* [25] */
		"Ð3824 Generic Control Panel", noIcon, noKey, noMark, plain,
		/* [26] */
		"Ð3817 Removable Disk", noIcon, noKey, noMark, plain,
		/* [27] */
		"Ð3810 Sound", noIcon, noKey, noMark, plain,
		/* [28] */
		"Ð3809 International Script", noIcon, noKey, noMark, plain,
		/* [29] */
		"Ð3808 TrueType Font", noIcon, noKey, noMark, plain,
		/* [30] */
		"Ð3807 Bitmap Font", noIcon, noKey, noMark, plain,
		/* [31] */
		"Ð3806 Keyboard Layout", noIcon, noKey, noMark, plain,
		/* [32] */
		"Ð3805 DA Suitcase", noIcon, noKey, noMark, plain,
		/* [33] */
		"Ð3804 Font Suitcase", noIcon, noKey, noMark, plain,
		/* [34] */
		"Ð3803 Sound Clipping", noIcon, noKey, noMark, plain,
		/* [35] */
		"Ð3802 Text Clipping", noIcon, noKey, noMark, plain,
		/* [36] */
		"Ð3801 Picture Clipping", noIcon, noKey, noMark, plain,
		/* [37] */
		"Ð3800 Generic Clipping", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (204) {
	204,
	textMenuProc,
	allEnabled,
	enabled,
	"Internet Icons",
	{	/* array: 12 elements */
		/* [1] */
		"Ð20796 AppleTalk Zone", noIcon, noKey, noMark, plain,
		/* [2] */
		"Ð20795 FTP Server", noIcon, noKey, noMark, plain,
		/* [3] */
		"Ð20793 AppleShare Server", noIcon, noKey, noMark, plain,
		/* [4] */
		"Ð20739 Generic Location", noIcon, noKey, noMark, plain,
		/* [5] */
		"Ð20738 Newsgroup Location", noIcon, noKey, noMark, plain,
		/* [6] */
		"Ð20737 E-mail Location", noIcon, noKey, noMark, plain,
		/* [7] */
		"Ð20736 File Location", noIcon, noKey, noMark, plain,
		/* [8] */
		"Ð20735 AppleShare Location", noIcon, noKey, noMark, plain,
		/* [9] */
		"Ð20734 FTP Location", noIcon, noKey, noMark, plain,
		/* [10] */
		"Ð20733 HTTP Location", noIcon, noKey, noMark, plain,
		/* [11] */
		"Ð20731 IP File Server", noIcon, noKey, noMark, plain,
		/* [12] */
		"Ð20726 AppleTalk", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (205) {
	205,
	textMenuProc,
	0x7FFFFEFF,
	enabled,
	"Battery Status",
	{	/* array: 19 elements */
		/* [1] */
		"Ð20290 Battery Charging Full", noIcon, noKey, noMark, plain,
		/* [2] */
		"Ð20289 Battery Charging 90%", noIcon, noKey, noMark, plain,
		/* [3] */
		"Ð20288 Battery Charging 75%", noIcon, noKey, noMark, plain,
		/* [4] */
		"Ð20287 Battery Charging 60%", noIcon, noKey, noMark, plain,
		/* [5] */
		"Ð20286 Battery Charging 45%", noIcon, noKey, noMark, plain,
		/* [6] */
		"Ð20285 Battery Charging 30%", noIcon, noKey, noMark, plain,
		/* [7] */
		"Ð20284 Battery Charging 15%", noIcon, noKey, noMark, plain,
		/* [8] */
		"Ð20283 Battery Charging Empty", noIcon, noKey, noMark, plain,
		/* [9] */
		"-", noIcon, noKey, noMark, plain,
		/* [10] */
		"Ð20282 Battery In-use Full", noIcon, noKey, noMark, plain,
		/* [11] */
		"Ð20281 Battery In-Use 90%", noIcon, noKey, noMark, plain,
		/* [12] */
		"Ð20280 Battery In-Use 75%", noIcon, noKey, noMark, plain,
		/* [13] */
		"Ð20279 Battery In-Use 60%", noIcon, noKey, noMark, plain,
		/* [14] */
		"Ð20278 Battery In-Use 45%", noIcon, noKey, noMark, plain,
		/* [15] */
		"Ð20277 Battery In-Use 30%", noIcon, noKey, noMark, plain,
		/* [16] */
		"Ð20276 Battery In-Use 15%", noIcon, noKey, noMark, plain,
		/* [17] */
		"Ð20275 Battery In-Use Empty", noIcon, noKey, noMark, plain,
		/* [18] */
		"Ð20274 No Battery", noIcon, noKey, noMark, plain,
		/* [19] */
		"Ð4001 Plugged in (?)", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (206) {
	206,
	textMenuProc,
	allEnabled,
	enabled,
	"Badges",
	{	/* array: 5 elements */
		/* [1] */
		"Ð20789 Alias Badge", noIcon, noKey, noMark, plain,
		/* [2] */
		"Ð20788 Mounted Badge", noIcon, noKey, noMark, plain,
		/* [3] */
		"Ð20787 Shared Badge", noIcon, noKey, noMark, plain,
		/* [4] */
		"Ð20786 Locked Badge", noIcon, noKey, noMark, plain,
		/* [5] */
		"Ð20740 Script Badge", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (207) {
	207,
	textMenuProc,
	0x75F6FF6D,
	enabled,
	"Others",
	{	/* array: 43 elements */
		/* [1] */
		"Ð16386 Apple Menu Icon", noIcon, noKey, noMark, plain,
		/* [2] */
		"-", noIcon, noKey, noMark, plain,
		/* [3] */
		"Ð20798 Unlocked", noIcon, noKey, noMark, plain,
		/* [4] */
		"Ð3823 Locked", noIcon, noKey, noMark, plain,
		/* [5] */
		"-", noIcon, noKey, noMark, plain,
		/* [6] */
		"Ð20791 Descending Sort Order", noIcon, noKey, noMark, plain,
		/* [7] */
		"Ð20790 Ascending Sort Order", noIcon, noKey, noMark, plain,
		/* [8] */
		"-", noIcon, noKey, noMark, plain,
		/* [9] */
		"Ð20751 Privileges: Writable", noIcon, noKey, noMark, plain,
		/* [10] */
		"Ð20750 Privileges: Uknown", noIcon, noKey, noMark, plain,
		/* [11] */
		"Ð20749 Privileges: N/A", noIcon, noKey, noMark, plain,
		/* [12] */
		"Ð20748 Privileges: Read", noIcon, noKey, noMark, plain,
		/* [13] */
		"Ð20747 Privileges: Read/Write", noIcon, noKey, noMark, plain,
		/* [14] */
		"Ð3784 Privileges: No Folders", noIcon, noKey, noMark, plain,
		/* [15] */
		"Ð3783 Privileges: No Write", noIcon, noKey, noMark, plain,
		/* [16] */
		"Ð3782 Privileges: No Files", noIcon, noKey, noMark, plain,
		/* [17] */
		"-", noIcon, noKey, noMark, plain,
		/* [18] */
		"Ð20746 Snap to Grid", noIcon, noKey, noMark, plain,
		/* [19] */
		"Ð20745 Keep Arranged", noIcon, noKey, noMark, plain,
		/* [20] */
		"-", noIcon, noKey, noMark, plain,
		/* [21] */
		"Ð20741 Backwards Arrow", noIcon, noKey, noMark, plain,
		/* [22] */
		"Ð20742 Forward Arrow Icon", noIcon, noKey, noMark, plain,
		/* [23] */
		"Ð20730 Recent Items Icon", noIcon, noKey, noMark, plain,
		/* [24] */
		"Ð20729 Favorite Items", noIcon, noKey, noMark, plain,
		/* [25] */
		"Ð20728 Shortcut Icon", noIcon, noKey, noMark, plain,
		/* [26] */
		"-", noIcon, noKey, noMark, plain,
		/* [27] */
		"Ð20271 Help Icon", noIcon, noKey, noMark, plain,
		/* [28] */
		"-", noIcon, noKey, noMark, plain,
		/* [29] */
		"Ð16509 Clipboard", noIcon, noKey, noMark, plain,
		/* [30] */
		"Ð16494 System Suitcase", noIcon, noKey, noMark, plain,
		/* [31] */
		"Ð16482 Finder", noIcon, noKey, noMark, plain,
		/* [32] */
		"Ð3828 MacOS Logo", noIcon, noKey, noMark, plain,
		/* [33] */
		"-", noIcon, noKey, noMark, plain,
		/* [34] */
		"Ð3822 Stop Icon", noIcon, noKey, noMark, plain,
		/* [35] */
		"Ð3821 Caution Icon", noIcon, noKey, noMark, plain,
		/* [36] */
		"Ð3820 Note Icon", noIcon, noKey, noMark, plain,
		/* [37] */
		"-", noIcon, noKey, noMark, plain,
		/* [38] */
		"Ð3816 Group", noIcon, noKey, noMark, plain,
		/* [39] */
		"Ð3815 Owner", noIcon, noKey, noMark, plain,
		/* [40] */
		"Ð3813 Guest User", noIcon, noKey, noMark, plain,
		/* [41] */
		"Ð3814 User", noIcon, noKey, noMark, plain,
		/* [42] */
		"-", noIcon, noKey, noMark, plain,
		/* [43] */
		"Custom ID", noIcon, noKey, noMark, 2
	}
};

data 'Mcmd' (129) {
	$"0004 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'Mcmd' (207) {
	$"0000"                                               /* .. */
};

resource 'PICT' (128) {
	6362,
	{0, 0, 115, 260},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0073 0104 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0073"
	$"0104 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0073 0104 0098 8104 0000 0000 0073"
	$"0104 0000 0000 0000 0000 0048 0000 0048"
	$"0000 0000 0008 0001 0008 0000 0000 0000"
	$"0000 0000 0000 0048 1717 0000 00FF 0000"
	$"FFFF FFFF FFFF 0001 D7D7 2222 2626 0002"
	$"D8D8 2323 2626 0003 A5A5 1B1B 1D1D 0004"
	$"D7D7 2020 2626 0005 D6D6 1A1A 2727 0006"
	$"6F6F 0E0E 1414 0007 D7D7 1D1D 2727 0008"
	$"D6D6 1818 2828 0009 D5D5 1515 2828 000A"
	$"D4D4 0E0E 2929 000B D5D5 1212 2929 000C"
	$"BEBE 0909 2626 000D D4D4 0B0B 2A2A 000E"
	$"D3D3 0808 2B2B 000F D3D3 0404 2B2B 0010"
	$"1F1F 1F1F 2020 0011 4747 4747 4848 0012"
	$"7777 7777 7878 0013 5757 5757 5858 0014"
	$"D7D7 D7D7 D8D8 0015 0C0C 0D0D 1010 0016"
	$"2F2F 3030 3131 0017 3434 3535 3636 0018"
	$"1111 1313 1414 0019 0303 0404 0404 001A"
	$"6666 6767 6767 001B DFDF E0E0 E0E0 001C"
	$"8F8F 9090 9090 001D 0303 0303 0202 001E"
	$"0505 0505 0404 001F 0606 0606 0505 0020"
	$"D0D0 C1C1 0000 0021 F5F5 E1E1 0101 0022"
	$"F4F4 DDDD 0202 0023 E9E9 D3D3 0202 0024"
	$"E3E3 CCCC 0202 0025 ABAB 9696 0202 0026"
	$"F4F4 D7D7 0303 0027 F4F4 D9D9 0303 0028"
	$"F3F3 D5D5 0303 0029 F3F3 D4D4 0404 002A"
	$"8585 7272 0202 002B F3F3 D1D1 0404 002C"
	$"F2F2 CECE 0505 002D 5555 4949 0202 002E"
	$"F2F2 CBCB 0505 002F F2F2 CACA 0606 0030"
	$"F1F1 C8C8 0606 0031 E0E0 BDBD 0606 0032"
	$"F1F1 C6C6 0606 0033 F1F1 C4C4 0707 0034"
	$"F0F0 C2C2 0707 0035 F0F0 C0C0 0808 0036"
	$"F0F0 BEBE 0808 0037 EFEF BCBC 0808 0038"
	$"CBCB A0A0 0707 0039 EFEF BABA 0808 003A"
	$"EFEF B6B6 0909 003B EFEF B8B8 0909 003C"
	$"EEEE B5B5 0909 003D EEEE B6B6 0A0A 003E"
	$"2A2A 2222 0909 003F 0E0E 0D0D 0A0A 0040"
	$"2929 2828 2525 0041 EEEE B4B4 0A0A 0042"
	$"EEEE B1B1 0A0A 0043 EEEE B3B3 0A0A 0044"
	$"EEEE B0B0 0B0B 0045 E2E2 A8A8 0A0A 0046"
	$"4141 3E3E 3636 0047 EDED ABAB 0B0B 0048"
	$"EDED ADAD 0B0B 0049 EDED AEAE 0B0B 004A"
	$"EDED ACAC 0C0C 004B 1818 1414 0A0A 004C"
	$"EDED AAAA 0C0C 004D ECEC A7A7 0C0C 004E"
	$"ECEC A8A8 0C0C 004F 5454 4F4F 4444 0050"
	$"ECEC A3A3 0D0D 0051 ECEC A4A4 0D0D 0052"
	$"EBEB A2A2 0D0D 0053 EBEB A1A1 0D0D 0054"
	$"EBEB A1A1 0E0E 0055 CDCD C0C0 A7A7 0056"
	$"CCCC BFBF A6A6 0057 CBCB BEBE A5A5 0058"
	$"ADAD A2A2 8D8D 0059 D3D3 C6C6 ADAD 005A"
	$"D0D0 C3C3 AAAA 005B CFCF C2C2 A9A9 005C"
	$"C5C5 B9B9 A1A1 005D C0C0 B4B4 9D9D 005E"
	$"B0B0 A5A5 9090 005F 9A9A 9191 7E7E 0060"
	$"C3C3 B7B7 A0A0 0061 1B1B 1A1A 1818 0062"
	$"EBEB 9E9E 0E0E 0063 EAEA 9D9D 0E0E 0064"
	$"E9E9 9B9B 0E0E 0065 D8D8 8F8F 0D0D 0066"
	$"EAEA 9B9B 0F0F 0067 3232 2E2E 2727 0068"
	$"3838 3434 2D2D 0069 D5D5 C7C7 ADAD 006A"
	$"D3D3 C5C5 ABAB 006B D0D0 C2C2 A9A9 006C"
	$"A5A5 9A9A 8686 006D 9F9F 9494 8181 006E"
	$"4A4A 4545 3C3C 006F C9C9 BCBC A4A4 0070"
	$"C7C7 BABA A2A2 0071 C6C6 B9B9 A1A1 0072"
	$"C4C4 B7B7 A0A0 0073 C3C3 B6B6 9F9F 0074"
	$"8686 7D7D 6D6D 0075 7676 6E6E 6060 0076"
	$"5B5B 5555 4A4A 0077 DADA CCCC B2B2 0078"
	$"D6D6 C8C8 AFAF 0079 CDCD C0C0 A8A8 007A"
	$"CACA BDBD A5A5 007B BCBC B0B0 9A9A 007C"
	$"B7B7 ABAB 9696 007D 8E8E 8585 7474 007E"
	$"C0C0 B4B4 9E9E 007F EAEA 9797 0F0F 0080"
	$"EAEA 9898 0F0F 0081 EAEA 9696 1010 0082"
	$"E9E9 9595 1010 0083 7676 4D4D 0808 0084"
	$"2323 2020 1B1B 0085 7D7D 7474 6565 0086"
	$"C8C8 BABA A2A2 0087 6F6F 6767 5A5A 0088"
	$"6464 5D5D 5151 0089 C7C7 B9B9 A2A2 008A"
	$"C2C2 B4B4 9E9E 008B CFCF C1C1 A9A9 008C"
	$"C0C0 B3B3 9D9D 008D E9E9 9393 1010 008E"
	$"E9E9 9191 1010 008F E8E8 8F8F 1111 0090"
	$"D0D0 C1C1 AAAA 0091 E8E8 8B8B 1111 0092"
	$"E8E8 8D8D 1111 0093 A5A5 6565 0C0C 0094"
	$"E8E8 8989 1212 0095 E8E8 8A8A 1212 0096"
	$"E7E7 8888 1212 0097 E7E7 8686 1212 0098"
	$"4C4C 2C2C 0606 0099 E7E7 8585 1313 009A"
	$"E6E6 8181 1313 009B E6E6 8282 1313 009C"
	$"E1E1 8181 1313 009D E6E6 8282 1414 009E"
	$"E6E6 7D7D 1414 009F E6E6 8080 1414 00A0"
	$"E6E6 7E7E 1414 00A1 E5E5 7C7C 1414 00A2"
	$"D5D5 7373 1313 00A3 1616 0C0C 0202 00A4"
	$"0303 0202 0101 00A5 0C0C 0909 0606 00A6"
	$"E5E5 7777 1515 00A7 E5E5 7878 1515 00A8"
	$"E5E5 7B7B 1515 00A9 E4E4 7676 1616 00AA"
	$"E4E4 7373 1616 00AB E4E4 7575 1616 00AC"
	$"E4E4 6F6F 1717 00AD E4E4 7070 1717 00AE"
	$"E3E3 7070 1717 00AF E3E3 6E6E 1717 00B0"
	$"E3E3 6D6D 1717 00B1 E3E3 6C6C 1818 00B2"
	$"E3E3 6A6A 1818 00B3 BBBB 5858 1414 00B4"
	$"0606 0303 0101 00B5 E2E2 6868 1818 00B6"
	$"E2E2 6666 1919 00B7 E2E2 6565 1919 00B8"
	$"E2E2 6363 1919 00B9 E1E1 6262 1919 00BA"
	$"E1E1 6161 1919 00BB E1E1 6262 1A1A 00BC"
	$"E1E1 6161 1A1A 00BD DCDC 5E5E 1919 00BE"
	$"0303 0101 0000 00BF E1E1 5F5F 1A1A 00C0"
	$"E0E0 5D5D 1A1A 00C1 7878 3131 0E0E 00C2"
	$"E0E0 5959 1B1B 00C3 E0E0 5A5A 1B1B 00C4"
	$"E0E0 5858 1C1C 00C5 DCDC 5656 1B1B 00C6"
	$"E0E0 5757 1C1C 00C7 DFDF 5656 1C1C 00C8"
	$"DFDF 5454 1C1C 00C9 DFDF 5252 1C1C 00CA"
	$"DFDF 5050 1D1D 00CB DEDE 4F4F 1D1D 00CC"
	$"0909 0303 0101 00CD DEDE 4D4D 1D1D 00CE"
	$"DEDE 4C4C 1E1E 00CF DEDE 4949 1E1E 00D0"
	$"DEDE 4A4A 1E1E 00D1 DDDD 4848 1E1E 00D2"
	$"C0C0 4040 1A1A 00D3 DDDD 4747 1F1F 00D4"
	$"DDDD 4545 1F1F 00D5 DCDC 4343 1F1F 00D6"
	$"DADA 4646 1F1F 00D7 DCDC 3F3F 2020 00D8"
	$"DCDC 4141 2020 00D9 D6D6 3E3E 1F1F 00DA"
	$"DCDC 3D3D 2020 00DB DBDB 3C3C 2121 00DC"
	$"DCDC 3B3B 2121 00DD DBDB 3737 2121 00DE"
	$"DBDB 3939 2121 00DF DBDB 3A3A 2121 00E0"
	$"DBDB 3838 2222 00E1 DBDB 3636 2222 00E2"
	$"DADA 3535 2222 00E3 2D2D 0B0B 0707 00E4"
	$"DADA 3232 2323 00E5 DADA 3030 2323 00E6"
	$"4B4B 0F0F 0C0C 00E7 D9D9 2F2F 2323 00E8"
	$"D9D9 2D2D 2424 00E9 D9D9 2B2B 2424 00EA"
	$"D8D8 2929 2424 00EB D8D8 2626 2525 00EC"
	$"D8D8 2525 2525 00ED C6C6 2222 2222 00EE"
	$"0808 0707 0707 00EF C0C0 BFBF BFBF 00F0"
	$"FDFD FDFD FDFD 00F1 F8F8 F8F8 F8F8 00F2"
	$"F2F2 F2F2 F2F2 00F3 EAEA EAEA EAEA 00F4"
	$"E5E5 E5E5 E5E5 00F5 E0E0 E0E0 E0E0 00F6"
	$"DEDE DEDE DEDE 00F7 DADA DADA DADA 00F8"
	$"D8D8 D8D8 D8D8 00F9 D4D4 D4D4 D4D4 00FA"
	$"C7C7 C7C7 C7C7 00FB B6B6 B6B6 B6B6 00FC"
	$"A8A8 A8A8 A8A8 00FD 9898 9898 9898 00FE"
	$"8585 8585 8585 00FF 0000 0000 0000 0000"
	$"0000 0073 0104 0000 0000 0073 0104 0000"
	$"0006 81FF 81FF FDFF 0006 81FF 81FF FDFF"
	$"0006 81FF 81FF FDFF 000A 97FF 00A3 ECFF"
	$"81FF FDFF 000B 98FF 01B3 A2EC FF81 FFFD"
	$"FF00 0E9A FF04 C1B0 ADAA 98ED FF81 FFFD"
	$"FF00 119C FF07 98B6 B2AF ADAB A2B4 EEFF"
	$"81FF FDFF 0013 9EFF 09A3 BDB7 B5B2 AFAA"
	$"A9A8 83EE FF81 FFFD FF00 159F FF0B D2C0"
	$"BCB7 B5B1 ADAA A6A8 9FA3 EFFF 81FF FDFF"
	$"0017 A1FF 0DC1 C7C3 BFBB B6B5 B0AD AAA7"
	$"A19F 93EF FF81 FFFD FF00 1AA3 FF10 E3CB"
	$"C8C4 C3BF B9B6 B2AC AAAB A79E 9F99 98F0"
	$"FF81 FFFD FF00 1CA5 FF12 CCD9 CDCA C8C2"
	$"C0BF B8B5 B1AC AAA6 A79E 9A99 A2F0 FF81"
	$"FFFD FF00 1EA6 FF14 03D4 D1CD CAC7 C3C0"
	$"BCB7 B5B0 ADAA A6A8 A09B 9795 2DF1 FF81"
	$"FFFD FF00 21A8 FF17 06D7 D8D3 D0CD C9C7"
	$"C3BF B8B6 B2B0 ADAA A7A1 9F9B 9691 9CA3"
	$"F2FF 81FF FDFF 0023 AAFF 19E3 DDDB D7D5"
	$"D3CE CBC8 C6C3 BFB8 B6B2 AFAA ABA7 9E9A"
	$"9996 918E 93F2 FF81 FFFD FF00 25AB FF1B"
	$"EDE2 DDDB D7D4 D1CD CAC8 C2C0 BCB7 B5B1"
	$"ACAA A6A8 A09A 9995 8F8E 82A3 F3FF 81FF"
	$"FDFF 0027 ADFF 1D03 E8E4 E2DE DBD8 D4CF"
	$"CBC9 C7C2 C0BC B7B2 B0AD AAA6 A19F 9B97"
	$"958F 8D7F 93F3 FF81 FFFD FF00 2AAF FF20"
	$"E6EB E9E7 E4DD DFDA D8D3 D0CB C9C7 C3BF"
	$"BAB6 B2AF ADAA A7A1 9F99 9691 8F8D 7F64"
	$"98F4 FF81 FFFD FF00 2CB1 FF22 E301 ECEA"
	$"E9E7 E4DD DBD7 D5D3 CECA C8C2 C3BF B8B5"
	$"B1AF AAAB A79E 9A99 9491 8E82 8063 65F4"
	$"FF81 FFFD FF00 2EB2 FF24 0307 01EC EAE8"
	$"E5E4 DDDB D7D4 D1CE CAC8 C2C0 BCB7 B5B1"
	$"AEAA A6A8 9E9A 9794 928E 8266 6252 83F5"
	$"FF81 FFFD FF00 31B4 FF27 0608 0504 01EB"
	$"E9E8 E5E2 DED7 D8D4 CFCD C9C7 C3BF BCB7"
	$"B5B0 ADAA A7A8 9F9B 9791 8F8D 7F66 6250"
	$"52A3 F6FF 81FF FDFF 0033 B6FF 29E6 0B09"
	$"0807 0402 EBE9 E5E4 E1DF D7D5 D3CE CBC9"
	$"C6C3 BFBB B6B2 AFAA ABA7 A19F 9996 918F"
	$"827F 6353 514E 93F6 FF81 FFFD FF00 36B8"
	$"FF2C A30E 0A09 0905 0704 ECEA E9E7 E4DD"
	$"DBD7 D5D1 CECA C8C6 C3BF B7B5 B2AF AAA6"
	$"A7A0 9D99 9492 8E82 8062 5351 4C49 3EF7"
	$"FF81 FFFD FF00 37B9 FF2D 030D 0A0B 0908"
	$"0507 01EC EAE8 E4E2 DDDB D7D4 CFCD CAC7"
	$"C2C0 BCB7 B5B0 ACAA A9A8 A09B 9795 928E"
	$"8166 6253 4D4C 4938 F7FF 81FF FDFF 003A"
	$"BBFF 3006 0E0E 0D0A 0B09 0805 0401 ECE9"
	$"E8E4 E1DF D7D8 D3D0 CBC9 C7C2 C0BA B7B2"
	$"B0AD AAA7 A89F 9B97 918F 8D7F 6662 524D"
	$"4749 412D F8FF 81FF FDFF 003D BDFF 33E3"
	$"0F0F 0E0D 0A0A 0B09 0507 0402 EBE9 E7E4"
	$"DDDB D7D8 D3D0 CBC8 C4C3 BFB8 B6B2 ACAA"
	$"AAA7 9E9F 9994 918F 8280 6354 514E 4742"
	$"3C45 BEF9 FF81 FFFD FF00 3EBE FF00 E3FE"
	$"0F30 0E0D 0A0B 0B09 0507 01EC EAE9 E5E2"
	$"DDDC D7D5 D1CE CAC7 C2C0 BFB7 B5B1 ACAA"
	$"A9A8 9E9A 9795 928E 8280 6253 4D4C 4942"
	$"3D39 83F9 FF81 FFFD FF00 3EBD FF34 0C0F"
	$"0E0E 0D0A 0B09 0805 0701 ECEA E8E5 E2DD"
	$"DBD8 D4CF CDC9 C7C2 C0BC B7B5 B0AD AAA9"
	$"A8A0 9B97 958F 8D7F 6662 504D 4749 423A"
	$"3936 A3FA FF81 FFFD FF00 3EBD FF34 E30F"
	$"0E0E 0D0A 0B09 0805 0402 EBE9 E8E4 E1DF"
	$"DAD5 D3D0 CBC9 C7C3 BFBB B6B2 B0AD AAA7"
	$"9E9F 9B96 918F 8D7F 6662 514E 4A49 433B"
	$"3735 25FA FF81 FFFD FF00 3EBC FF34 030E"
	$"0D0A 0A0B 0908 0704 ECEB E9E5 E4E1 DFD7"
	$"D5D3 CECB C8C4 C0BF B8B6 B2B0 AAAB A79E"
	$"9F99 9491 8E82 8063 5451 4E48 423C 3B37"
	$"3533 3EFB FF81 FFFD FF00 3DBB FF33 0E0D"
	$"0A0B 0B09 0507 01EC EAE8 E5E2 DDDB D7D4"
	$"D1CD CAC8 C2C0 BCB7 B5B1 AEAA A9A8 9E9A"
	$"9794 928E 8280 6252 4D4C 4942 3A3B 3734"
	$"3331 FBFF 81FF FDFF 003E BBFF 3406 0D0A"
	$"0B09 0805 0701 ECEA E8E4 E2DE DAD8 D4CF"
	$"CBC9 C7C2 BFBC B7B2 B0AC AAA6 A89F 9B97"
	$"958F 8D7F 6662 524D 4749 433A 3936 3432"
	$"2F2D FCFF 81FF FDFF 003F BBFF 35BE 0C0A"
	$"0B09 0807 0401 EBE9 E7E4 E1DF DAD8 D3D0"
	$"CBC8 C6C3 BFB8 B6B2 AFAD ABA7 A19F 9996"
	$"918F 8D7F 6354 504E 4A44 413B 3735 3332"
	$"2E31 CCFD FF81 FFFD FF00 3EBA FF34 E30A"
	$"0B09 0507 04EC EBE9 E7E4 DDDB D7D5 D1CE"
	$"CAC8 C2C3 BFB8 B5B1 ACAA ABA7 9E9A 9794"
	$"918E 8280 6253 514E 4842 3C3B 3635 3330"
	$"2E2C 25FD FF81 FFFD FF00 3EB9 FF34 030B"
	$"0805 0701 ECEA E8E5 E2DE DAD7 D4D1 CDCA"
	$"C8C2 C0BC B7B5 B0AC AAA6 A8A0 9B97 958F"
	$"8E82 6662 504D 4E48 423A 3936 3433 302E"
	$"2B29 4BFE FF81 FFFD FF00 3EB9 FF34 E309"
	$"0805 0401 EBE9 E8E5 E2DE D7D8 D4CF CDC9"
	$"C7C2 C0BC B7B5 B0AD AAA7 A89F 9B97 918F"
	$"8D7F 6462 504D 4A49 433A 3735 3432 302C"
	$"2B29 25FE FF81 FFFD FF00 3EB8 FF36 0608"
	$"0704 01EB E9E7 E4DD DFD7 D5D3 D0CB C9C6"
	$"C3BF B8B6 B2AF AAAB A7A1 9F99 9691 8F82"
	$"8066 5351 4E47 4241 3B37 3533 302F 2C2B"
	$"2826 2DFF FF81 FFFD FF00 3EB8 FF36 CC05"
	$"0704 ECEA E9E5 E4DD DBD7 D5D1 CECB C8C4"
	$"C0BC B7B5 B1AC AAA9 A89E 9A99 9492 8E82"
	$"8063 5351 4C49 423C 3B37 3433 302E 2C2B"
	$"2826 24A4 FF81 FFFD FF00 3DB7 FF35 0607"
	$"01EC EAE8 E4E2 E0DB D7D4 CFCD CAC8 C2C0"
	$"BAB7 B5B1 AEAA A6A8 A09B 9795 928D 7F66"
	$"6252 4D4C 4943 3A3B 3634 3230 2E2B 2B28"
	$"2722 2DFF 81FF FDFF 003C B6FF 3403 01EB"
	$"EAE8 E4E1 DFDA D8D4 CFCB C9C7 C3BF BBB6"
	$"B2AF ADAA A79E 9F9B 9795 8F8D 8066 6250"
	$"4D47 4943 3B37 3534 3230 2C2B 2926 2722"
	$"23A3 81FF FDFF 003C B6FF 34E3 02EB E9E7"
	$"E4E1 DFD7 D5D3 D0CB C8C4 C3BF B8B6 B2AF"
	$"ADAB A7A1 9A99 9691 8E82 8063 5350 4E48"
	$"423C 3B37 3533 302E 2C2B 2926 2722 2125"
	$"81FF FDFF 003D B5FF 3303 EBE9 E5E2 DDDB"
	$"D7D5 D1CE CAC7 C2C0 BCB7 B5B1 AEAA ABA8"
	$"A09A 9794 928E 8280 6253 4D4E 4942 3C3B"
	$"3634 3330 2E2C 2B28 2622 2221 2100 4B82"
	$"FFFD FF00 3DB5 FF33 A3E9 E8E4 E2DE DAD8"
	$"D4CF CDCA C7C3 C0BC B7B5 B0AD AAA6 A8A0"
	$"9B96 918F 8D81 6662 504D 4C49 423A 3936"
	$"3432 302C 2C29 2627 2222 2121 0020 82FF"
	$"FDFF 003A B4FF 3206 E8E4 E1DF DAD8 D3D0"
	$"CBC9 C6C3 BFBB B6B2 B0AD ABA7 A19F 9B96"
	$"918E 8D7F 6462 504E 4749 433B 3735 3332"
	$"2F2C 2B28 2627 2221 212A 81FF FDFF 003A"
	$"B4FF 32CC E7E4 E1DB D7D5 D1CE CBC8 C6C0"
	$"BFB8 B6B2 AFAD ABA7 9E9A 9994 918E 8280"
	$"6354 514E 4842 3C3B 3735 3330 2E2C 2B28"
	$"2622 2225 FFFF 81FF FDFF 0038 B3FF 2EE6"
	$"E2E0 DCD7 D4D1 CECA C8C2 C0BC B7B5 B1AC"
	$"AAA6 A8A0 9A99 948F 8D81 8062 534D 4C49"
	$"423C 3936 3433 302E 2C2B 2826 23A3 FEFF"
	$"81FF FDFF 0035 B2FF 2BED DEDA D8D4 CFCB"
	$"C9C7 C3BF BCB7 B5B0 ADAA A7A8 9F9B 9795"
	$"8F8D 7F66 6252 4D47 4943 3A39 3634 322E"
	$"2C2B 2928 2DFC FF81 FFFD FF00 33B2 FF29"
	$"E3DE D7D5 D3D0 CBC8 C7C3 BFB9 B5B1 AFAD"
	$"ABA7 A19F 9996 918F 8280 6354 514E 4842"
	$"413B 3735 3432 2F2C 2B2A FAFF 81FF FDFF"
	$"0030 B1FF 26D2 D7D4 D1CE CAC8 C4C3 BFB8"
	$"B5B1 ACAA ABA7 9E9A 9996 918E 8280 6253"
	$"514E 4842 3C39 3735 3330 2E38 F8FF 81FF"
	$"FDFF 002F B1FF 25A3 D9D4 D1CD CAC8 C2C0"
	$"BCB7 B5B1 AEAA A6A8 A09B 9795 8F8D 8280"
	$"6252 4D4C 4842 3A39 3634 3230 4BF7 FF81"
	$"FFFD FF00 2CB0 FF22 C1D4 CFCD C9C6 C3C0"
	$"BCB6 B2B0 ADAA A7A1 9F9B 9791 8F8D 7F66"
	$"6250 4D47 4943 3A37 3534 2DF5 FF81 FFFD"
	$"FF00 2AB0 FF20 BED6 D0CB C8C6 C3BF B8B7"
	$"B2AF AAAB A7A8 9F99 9691 8E8D 7F63 5351"
	$"4E47 4441 3B37 2AF3 FF81 FFFD FF00 27AF"
	$"FF1D E6CE CAC8 C6C0 BCB7 B5B1 ACAA A9A8"
	$"9E9A 9994 928E 8280 6353 514C 4942 3C38"
	$"F1FF 81FF FDFF 0025 AEFF 1BD2 CAC7 C2C0"
	$"BCB7 B5B1 ADAA A6A8 A09B 9795 8F8D 7F66"
	$"6252 4D4C 4942 3EF0 FF81 FFFD FF00 23AE"
	$"FF19 E3C9 C7C2 BFBB B6B2 B0AD AAA7 A19F"
	$"9997 958F 8D80 6662 504D 4783 EEFF 81FF"
	$"FDFF 0020 ADFF 16C1 C6C3 BFB8 B6B2 AFAA"
	$"ABA7 9E9A 9996 918E 8280 6354 5193 ECFF"
	$"81FF FDFF 0026 E6FF 0368 747D 46CC FF15"
	$"CCC5 C3BC B7B5 B1AD AAA6 A89E 9A99 9492"
	$"8E82 6662 65A5 EBFF 81FF FDFF 002E F3FF"
	$"0446 FE1C 1AA5 FBFF 0684 8573 5A59 7C40"
	$"CCFF 12C1 C0BC B7B5 B0AD AAA9 A8A0 9B96"
	$"918F 8D7F 6498 E9FF 81FF FDFF 002F F4FF"
	$"0616 F7F3 F9F6 FD1D FEFF 084B 886D 7C71"
	$"5672 6B74 CBFF 0FB3 B9B6 B2AF ADAB A7A8"
	$"9F9B 9691 8F8D 83E7 FF81 FFFD FF00 2EF4"
	$"FF13 FDF1 FE13 1AEF 12FF FFA4 4F88 841F"
	$"677D 7986 7146 CCFF 0DE3 B8B6 B1AF AAAB"
	$"A79E 9A99 9492 93E5 FF81 FFFD FF00 2DF4"
	$"FF14 EFFC 11F8 EF1A F91A 401E FF15 1113"
	$"614B 5857 8B5F 1FCC FF0B B3B5 B1AC AAA6"
	$"A89E 9A97 9CA3 E4FF 81FF FDFF 002B F4FF"
	$"14FC FDFE 0000 13FA F9FB 1C1C FCEF FA1C"
	$"1987 697A 564F CCFF 09E3 B5B0 ADAA A6A1"
	$"9F9B 98E2 FF81 FFFD FF00 29F4 FF15 13F9"
	$"13FC FD13 F3F3 1B1B F5F7 F7F8 EF10 406C"
	$"7378 7C4B CCFF 06C1 B0AD AAA7 9E83 E0FF"
	$"81FF FDFF 0026 F3FF 05FA EF1A FEF5 F3FE"
	$"F50B F614 F8F9 FEFF 1018 4088 6C87 CCFF"
	$"04B4 ACAA A9B3 DEFF 81FF FDFF 0025 F3FF"
	$"15FC 00F2 F2F3 F61B 1BF7 F9F9 FB13 FF11"
	$"F7FA 1C18 4F5D 40CC FF02 C1AA E3DD FF81"
	$"FFFD FF00 22F6 FF18 3F4B 1EEF F2F4 F61B"
	$"F51B F7F9 EF12 15EE 12F3 0000 F116 7577"
	$"74A5 FF81 FFFD FF00 23F7 FF10 4F85 A511"
	$"F3F4 F6F5 1BF7 F8FA 1C40 FF13 F9FD 0005"
	$"FA3F 6C6B 5C46 A6FF 81FF FDFF 0024 F9FF"
	$"1040 7D7D 6140 FAF2 1BF5 F6F8 F9FC 11FF"
	$"46FB FB00 061C 848A 5C8B 5F1E A7FF 81FF"
	$"FDFF 0025 FBFF 11A5 878C 6CA4 11F9 F1F4"
	$"F5F7 F8FB 1AFF 61FD F2FA 0006 134F 5A73"
	$"7157 4FA7 FF81 FFFD FF00 25FB FF0F 8559"
	$"5976 61F7 F0F4 F6F6 FAFE 61FF 121B F900"
	$"08F4 617D 7972 7356 5861 A8FF 81FF FDFF"
	$"0024 FCFF 0E1F 5879 6F46 16F2 F1F4 F9FD"
	$"17FF 11FA F700 03EF 1F5E 6FFE 7201 8B75"
	$"A8FF 81FF FDFF 0024 FCFF 0D1D 7D5A 5B85"
	$"FFFD F3EF 1AEE 40FC F1F6 0009 1267 5C5C"
	$"7272 737A 7B40 A9FF 81FF FDFF 0020 FBFF"
	$"0A68 7B79 726E FF16 15FF FFFA F500 03F1"
	$"1176 8BFC 7201 5A74 A9FF 81FF FDFF 0021"
	$"FAFF 0975 8B57 7B85 6E88 4F40 F2F5 0003"
	$"1B18 7D55 FD72 0360 865C 46AA FF81 FFFD"
	$"FF00 20FA FF08 845E 5686 567A 6A6E 13F4"
	$"0003 FB1E 7C89 FC72 0360 795F 1EAB FF81"
	$"FFFD FF00 1EF9 FF07 8855 5C72 867B 1FFD"
	$"F400 0312 686F 5CFB 7202 7156 4FAB FF81"
	$"FFFD FF00 1FF9 FF07 3F6D 8B73 565F 1DF8"
	$"F500 03F1 1787 79FA 7203 7355 5861 ACFF"
	$"81FF FDFF 001C F8FF 066E 8670 7988 17F1"
	$"F500 0314 186D 79F8 7201 6B87 ACFF 81FF"
	$"FDFF 001D F8FF 0519 7D5A 6F67 12F4 0003"
	$"FC4B 7B70 F972 0373 7A7B 40AD FF81 FFFD"
	$"FF00 19F7 FF04 688C 7CEE FCF4 0002 1A46"
	$"5BF6 7201 5A74 ADFF 81FF FDFF 0020 F6FF"
	$"0785 6DFF 171A FC14 F1F9 0004 F240 8579"
	$"60F8 7203 7386 7246 AEFF 81FF FDFF 0023"
	$"F6FF 0B84 6C6D 8867 A5EE 1112 FBF7 F0FD"
	$"0003 FA1F 6C57 F672 0373 795F 1EAF FF81"
	$"FFFD FF00 22F5 FF12 8878 6A72 5874 4F84"
	$"1F10 131C EFF4 001C 848C 71F5 7202 5C56"
	$"76AF FF81 FFFD FF00 22F5 FF11 A56D 8B5C"
	$"568B 5A8C 6C75 464B 1D16 1A16 4F79 F472"
	$"0373 555E 4BB0 FF81 FFFD FF00 1FF4 FF10"
	$"6E71 7073 6072 7055 8B7A 7C5F 8867 3F74"
	$"79F2 7201 5B87 B0FF 81FF FDFF 001F F4FF"
	$"031D 745A 73FC 7207 5C7A 555A 5C5E 8C5C"
	$"F372 0373 7A7B 67B1 FF81 FFFD FF00 1CF3"
	$"FF03 677B 7A73 FC72 FF60 0372 7057 71F1"
	$"7202 605A 75B1 FF81 FFFD FF00 12F2 FF01"
	$"755A E672 0360 7169 87B1 FF81 FFFD FF00"
	$"14F2 FF03 845E 5573 E872 0356 8B7D 4BB1"
	$"FF81 FFFD FF00 13F1 FF02 7679 5CEA 7203"
	$"865A 5876 AFFF 81FF FDFF 0016 F1FF 033F"
	$"6D8B 60EE 7205 6071 5A7E 754B AEFF 81FF"
	$"FDFF 0014 F0FF 026E 5C70 EF72 045C 797A"
	$"7D67 ACFF 81FF FDFF 0014 F0FF 031D 745A"
	$"73F1 7203 7A8B 6C6E AAFF 81FF FDFF 0016"
	$"EFFF 0367 7B57 73F5 7205 6086 5A7C 881E"
	$"A9FF 81FF FDFF 0014 EEFF 0175 90F6 7205"
	$"605C 8B71 7484 A7FF 81FF FDFF 0014 EEFF"
	$"0384 5855 73F8 72FF 5601 5F68 A5FF 81FF"
	$"FDFF 0013 EDFF 0276 565C FA72 036F 5A58"
	$"4FA3 FF81 FFFD FF00 16ED FF03 A55F 8B60"
	$"FE72 0560 895A 7B87 3FA2 FF81 FFFD FF00"
	$"13EC FF09 6E72 8672 725C 796F 7D40 A0FF"
	$"81FF FDFF 0011 ECFF 071D 7469 8957 796C"
	$"469E FF81 FFFD FF00 0FEB FF05 6758 7A7C"
	$"881E 9DFF 81FF FDFF 000C EAFF 0261 4684"
	$"9BFF 81FF FDFF 0006 81FF 81FF FDFF 0006"
	$"81FF 81FF FDFF 0006 81FF 81FF FDFF 0006"
	$"81FF 81FF FDFF 0006 81FF 81FF FDFF 0006"
	$"81FF 81FF FDFF 0006 81FF 81FF FDFF 0006"
	$"81FF 81FF FDFF 0006 81FF 81FF FDFF 0006"
	$"81FF 81FF FDFF 0006 81FF 81FF FDFF 0006"
	$"81FF 81FF FDFF 0006 81FF 81FF FDFF 00FF"
};

resource 'PICT' (129) {
	11250,
	{0, 0, 115, 260},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0073 0104 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0073"
	$"0104 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0073 0104 0098 8104 0000 0000 0073"
	$"0104 0000 0000 0000 0000 0048 0000 0048"
	$"0000 0000 0008 0001 0008 0000 0000 0000"
	$"0000 0000 0000 0000 0028 0000 00FF 0000"
	$"FFFF FFFF FFFF 0001 FEFE FEFE FEFE 0002"
	$"FDFD FDFD FDFD 0003 FCFC FCFC FCFC 0004"
	$"FBFB FBFB FBFB 0005 FAFA FAFA FAFA 0006"
	$"F9F9 F9F9 F9F9 0007 F8F8 F8F8 F8F8 0008"
	$"F7F7 F7F7 F7F7 0009 F6F6 F6F6 F6F6 000A"
	$"F5F5 F5F5 F5F5 000B F4F4 F4F4 F4F4 000C"
	$"F3F3 F3F3 F3F3 000D F2F2 F2F2 F2F2 000E"
	$"F1F1 F1F1 F1F1 000F F0F0 F0F0 F0F0 0010"
	$"EFEF EFEF EFEF 0011 EEEE EEEE EEEE 0012"
	$"EDED EDED EDED 0013 ECEC ECEC ECEC 0014"
	$"EBEB EBEB EBEB 0015 EAEA EAEA EAEA 0016"
	$"E9E9 E9E9 E9E9 0017 E8E8 E8E8 E8E8 0018"
	$"E7E7 E7E7 E7E7 0019 E6E6 E6E6 E6E6 001A"
	$"E5E5 E5E5 E5E5 001B E4E4 E4E4 E4E4 001C"
	$"E3E3 E3E3 E3E3 001D E2E2 E2E2 E2E2 001E"
	$"E1E1 E1E1 E1E1 001F E0E0 E0E0 E0E0 0020"
	$"DFDF DFDF DFDF 0021 DEDE DEDE DEDE 0022"
	$"DDDD DDDD DDDD 0023 DCDC DCDC DCDC 0024"
	$"DBDB DBDB DBDB 0025 DADA DADA DADA 0026"
	$"D9D9 D9D9 D9D9 0027 D8D8 D8D8 D8D8 0028"
	$"D7D7 D7D7 D7D7 0029 D6D6 D6D6 D6D6 002A"
	$"D5D5 D5D5 D5D5 002B D4D4 D4D4 D4D4 002C"
	$"D3D3 D3D3 D3D3 002D D2D2 D2D2 D2D2 002E"
	$"D1D1 D1D1 D1D1 002F D0D0 D0D0 D0D0 0030"
	$"CFCF CFCF CFCF 0031 CECE CECE CECE 0032"
	$"CDCD CDCD CDCD 0033 CCCC CCCC CCCC 0034"
	$"CBCB CBCB CBCB 0035 CACA CACA CACA 0036"
	$"C9C9 C9C9 C9C9 0037 C8C8 C8C8 C8C8 0038"
	$"C7C7 C7C7 C7C7 0039 C6C6 C6C6 C6C6 003A"
	$"C5C5 C5C5 C5C5 003B C4C4 C4C4 C4C4 003C"
	$"C3C3 C3C3 C3C3 003D C2C2 C2C2 C2C2 003E"
	$"C1C1 C1C1 C1C1 003F C0C0 C0C0 C0C0 0040"
	$"BFBF BFBF BFBF 0041 BEBE BEBE BEBE 0042"
	$"BDBD BDBD BDBD 0043 BCBC BCBC BCBC 0044"
	$"BBBB BBBB BBBB 0045 BABA BABA BABA 0046"
	$"B9B9 B9B9 B9B9 0047 B8B8 B8B8 B8B8 0048"
	$"B7B7 B7B7 B7B7 0049 B6B6 B6B6 B6B6 004A"
	$"B5B5 B5B5 B5B5 004B B4B4 B4B4 B4B4 004C"
	$"B3B3 B3B3 B3B3 004D B2B2 B2B2 B2B2 004E"
	$"B1B1 B1B1 B1B1 004F B0B0 B0B0 B0B0 0050"
	$"AFAF AFAF AFAF 0051 AEAE AEAE AEAE 0052"
	$"ADAD ADAD ADAD 0053 ACAC ACAC ACAC 0054"
	$"ABAB ABAB ABAB 0055 AAAA AAAA AAAA 0056"
	$"A9A9 A9A9 A9A9 0057 A8A8 A8A8 A8A8 0058"
	$"A7A7 A7A7 A7A7 0059 A6A6 A6A6 A6A6 005A"
	$"A5A5 A5A5 A5A5 005B A4A4 A4A4 A4A4 005C"
	$"A3A3 A3A3 A3A3 005D A2A2 A2A2 A2A2 005E"
	$"A1A1 A1A1 A1A1 005F A0A0 A0A0 A0A0 0060"
	$"9F9F 9F9F 9F9F 0061 9E9E 9E9E 9E9E 0062"
	$"9D9D 9D9D 9D9D 0063 9C9C 9C9C 9C9C 0064"
	$"9B9B 9B9B 9B9B 0065 9A9A 9A9A 9A9A 0066"
	$"9999 9999 9999 0067 9898 9898 9898 0068"
	$"9797 9797 9797 0069 9696 9696 9696 006A"
	$"9595 9595 9595 006B 9494 9494 9494 006C"
	$"9393 9393 9393 006D 9292 9292 9292 006E"
	$"9191 9191 9191 006F 9090 9090 9090 0070"
	$"8F8F 8F8F 8F8F 0071 8E8E 8E8E 8E8E 0072"
	$"8D8D 8D8D 8D8D 0073 8C8C 8C8C 8C8C 0074"
	$"8B8B 8B8B 8B8B 0075 8A8A 8A8A 8A8A 0076"
	$"8989 8989 8989 0077 8888 8888 8888 0078"
	$"8787 8787 8787 0079 8686 8686 8686 007A"
	$"8585 8585 8585 007B 8484 8484 8484 007C"
	$"8383 8383 8383 007D 8282 8282 8282 007E"
	$"8181 8181 8181 007F 8080 8080 8080 0080"
	$"7F7F 7F7F 7F7F 0081 7E7E 7E7E 7E7E 0082"
	$"7D7D 7D7D 7D7D 0083 7C7C 7C7C 7C7C 0084"
	$"7B7B 7B7B 7B7B 0085 7A7A 7A7A 7A7A 0086"
	$"7979 7979 7979 0087 7878 7878 7878 0088"
	$"7777 7777 7777 0089 7676 7676 7676 008A"
	$"7575 7575 7575 008B 7474 7474 7474 008C"
	$"7373 7373 7373 008D 7272 7272 7272 008E"
	$"7171 7171 7171 008F 7070 7070 7070 0090"
	$"6F6F 6F6F 6F6F 0091 6E6E 6E6E 6E6E 0092"
	$"6D6D 6D6D 6D6D 0093 6C6C 6C6C 6C6C 0094"
	$"6B6B 6B6B 6B6B 0095 6A6A 6A6A 6A6A 0096"
	$"6969 6969 6969 0097 6868 6868 6868 0098"
	$"6767 6767 6767 0099 6666 6666 6666 009A"
	$"6565 6565 6565 009B 6464 6464 6464 009C"
	$"6363 6363 6363 009D 6262 6262 6262 009E"
	$"6161 6161 6161 009F 6060 6060 6060 00A0"
	$"5F5F 5F5F 5F5F 00A1 5E5E 5E5E 5E5E 00A2"
	$"5D5D 5D5D 5D5D 00A3 5C5C 5C5C 5C5C 00A4"
	$"5B5B 5B5B 5B5B 00A5 5A5A 5A5A 5A5A 00A6"
	$"5959 5959 5959 00A7 5858 5858 5858 00A8"
	$"5757 5757 5757 00A9 5656 5656 5656 00AA"
	$"5555 5555 5555 00AB 5454 5454 5454 00AC"
	$"5353 5353 5353 00AD 5252 5252 5252 00AE"
	$"5151 5151 5151 00AF 5050 5050 5050 00B0"
	$"4F4F 4F4F 4F4F 00B1 4E4E 4E4E 4E4E 00B2"
	$"4D4D 4D4D 4D4D 00B3 4C4C 4C4C 4C4C 00B4"
	$"4B4B 4B4B 4B4B 00B5 4A4A 4A4A 4A4A 00B6"
	$"4949 4949 4949 00B7 4848 4848 4848 00B8"
	$"4747 4747 4747 00B9 4646 4646 4646 00BA"
	$"4545 4545 4545 00BB 4444 4444 4444 00BC"
	$"4343 4343 4343 00BD 4242 4242 4242 00BE"
	$"4141 4141 4141 00BF 4040 4040 4040 00C0"
	$"3F3F 3F3F 3F3F 00C1 3E3E 3E3E 3E3E 00C2"
	$"3D3D 3D3D 3D3D 00C3 3C3C 3C3C 3C3C 00C4"
	$"3B3B 3B3B 3B3B 00C5 3A3A 3A3A 3A3A 00C6"
	$"3939 3939 3939 00C7 3838 3838 3838 00C8"
	$"3737 3737 3737 00C9 3636 3636 3636 00CA"
	$"3535 3535 3535 00CB 3434 3434 3434 00CC"
	$"3333 3333 3333 00CD 3232 3232 3232 00CE"
	$"3131 3131 3131 00CF 3030 3030 3030 00D0"
	$"2F2F 2F2F 2F2F 00D1 2E2E 2E2E 2E2E 00D2"
	$"2D2D 2D2D 2D2D 00D3 2C2C 2C2C 2C2C 00D4"
	$"2B2B 2B2B 2B2B 00D5 2A2A 2A2A 2A2A 00D6"
	$"2929 2929 2929 00D7 2828 2828 2828 00D8"
	$"2727 2727 2727 00D9 2626 2626 2626 00DA"
	$"2525 2525 2525 00DB 2424 2424 2424 00DC"
	$"2323 2323 2323 00DD 2222 2222 2222 00DE"
	$"2121 2121 2121 00DF 2020 2020 2020 00E0"
	$"1F1F 1F1F 1F1F 00E1 1E1E 1E1E 1E1E 00E2"
	$"1D1D 1D1D 1D1D 00E3 1C1C 1C1C 1C1C 00E4"
	$"1B1B 1B1B 1B1B 00E5 1A1A 1A1A 1A1A 00E6"
	$"1919 1919 1919 00E7 1818 1818 1818 00E8"
	$"1717 1717 1717 00E9 1616 1616 1616 00EA"
	$"1515 1515 1515 00EB 1414 1414 1414 00EC"
	$"1313 1313 1313 00ED 1212 1212 1212 00EE"
	$"1111 1111 1111 00EF 1010 1010 1010 00F0"
	$"0F0F 0F0F 0F0F 00F1 0E0E 0E0E 0E0E 00F2"
	$"0D0D 0D0D 0D0D 00F3 0C0C 0C0C 0C0C 00F4"
	$"0B0B 0B0B 0B0B 00F5 0A0A 0A0A 0A0A 00F6"
	$"0909 0909 0909 00F7 0808 0808 0808 00F8"
	$"0707 0707 0707 00F9 0606 0606 0606 00FA"
	$"0505 0505 0505 00FB 0404 0404 0404 00FC"
	$"0303 0303 0303 00FD 0202 0202 0202 00FE"
	$"0101 0101 0101 00FF 0000 0000 0000 0000"
	$"0000 0073 0104 0000 0000 0073 0104 0000"
	$"001E A000 FE01 FF02 FF03 0004 FE05 FD06"
	$"FF05 FF04 0403 0202 0101 FA00 8100 FD00"
	$"0021 A200 FE01 FF02 0603 0405 0606 0708"
	$"FC09 FF08 0507 0605 0403 02FE 01FC 0081"
	$"00FD 0000 26A3 00FF 01FF 0209 0304 0506"
	$"0709 0A0B 0C0D FE0E FF0D 090B 0A08 0706"
	$"0403 0201 01FC 0081 00FD 0000 28A5 00FE"
	$"010C 0203 0405 0608 090B 0D0F 112A 13FE"
	$"140C 1312 100E 0C0A 0806 0503 0201 01FD"
	$"0081 00FD 0000 2BA7 00FE 01FF 021D 0305"
	$"0608 090C 0E10 1316 D2EC 1B1C 1D1C 1B19"
	$"1714 110E 0B09 0605 0302 0101 FE00 8100"
	$"FD00 002E A900 FE01 FF02 0A03 0406 0709"
	$"0B0E 1114 179D FEFF 1474 2727 2624 221F"
	$"1B17 130F 0C09 0604 0302 0101 0000 8100"
	$"FD00 002E AA00 FF01 FF02 0A03 0405 0709"
	$"0B0D 1014 1866 FCFF 14F4 3933 312F 2C28"
	$"231E 1914 100C 0906 0403 0201 0000 8100"
	$"FD00 002D AC00 FE01 0C02 0304 0506 080A"
	$"0D10 1317 33FA FAFF 13B3 403F 3C38 332D"
	$"2620 1A14 100B 0805 0402 0101 0081 00FD"
	$"0000 2DAE 00FE 01FF 020A 0304 0608 0A0C"
	$"0F12 161A C5F8 FF13 FE60 4D4A 453E 3730"
	$"2821 1A14 0F0A 0705 0302 0100 8100 FD00"
	$"002C AF00 FF01 FF02 0A03 0405 0709 0B0E"
	$"1115 198F F5FF 12D2 5D59 534B 433A 3128"
	$"2019 120D 0906 0402 0101 8100 FD00 002C"
	$"B100 FE01 0B02 0304 0507 080B 0D10 1418"
	$"57F2 FF11 9968 6159 4F45 3A30 271E 1711"
	$"0C08 0503 0201 0001 8200 FD00 002D B300"
	$"FE01 0C02 0304 0506 080A 0C0F 1317 27EE"
	$"F1FF 11F5 7870 675C 5045 392E 241C 150F"
	$"0A07 0403 0200 0182 00FD 0000 2CB5 00FE"
	$"01FF 020A 0304 0607 090C 0E12 161A BDEE"
	$"FF10 B780 7569 5C4F 4236 2B21 1912 0D09"
	$"0604 02FF 0183 00FD 0000 2DB6 00FF 01FF"
	$"020A 0304 0507 090B 0E11 1419 86EC FF10"
	$"F898 8376 685A 4C3F 3228 1E16 100B 0705"
	$"0301 0201 8300 FD00 002C B800 FE01 0B02"
	$"0304 0506 080A 0D10 1318 49E9 FF0F DC90"
	$"8374 6556 483A 2E24 1B14 0E09 0604 0202"
	$"0101 8400 FD00 002C BA00 FE01 FF02 0A03"
	$"0506 080A 0C0F 1216 1BE1 E7FF 0EA7 8F80"
	$"7061 5143 362A 2018 110C 0805 0203 0201"
	$"8400 FD00 002D BB00 FF01 FF02 0A03 0406"
	$"0709 0B0E 1115 1AAE E5FF 0EE9 9B8C 7C6B"
	$"5B4C 3D31 261C 150F 0A07 0304 0201 0185"
	$"00FD 0000 2CBC 00FF 010B 0203 0405 0709"
	$"0B0E 1114 1877 E2FF 0DC4 9786 7665 5546"
	$"382C 2219 120D 0804 0503 0201 0186 00FD"
	$"0000 2CBE 00FF 01FF 0209 0304 0608 0A0C"
	$"1013 1741 E0FF 0DFA A191 806F 5E4F 4033"
	$"271E 1610 0B04 0705 0302 0186 00FD 0000"
	$"2CBF 00FF 010B 0203 0405 0709 0B0E 1216"
	$"1AD3 DEFF 0CD1 9B8B 7968 5848 3A2E 231A"
	$"130D 0509 0604 0201 0187 00FD 0000 37C0"
	$"00FF 010A 0203 0406 070A 0D10 1418 9EDC"
	$"FF0C FDAD 9584 7261 5142 3529 1F17 1005"
	$"0B08 0503 0201 E500 0265 7520 D900 0265"
	$"7520 D100 FD00 004B C000 0A01 0203 0406"
	$"080A 0E11 1665 D9FF 0BE6 9F8E 7C6B 5A4B"
	$"3C30 251B 1406 0E0A 0604 0201 01EF 00FD"
	$"BA00 30FE 0004 89FF FFEE 20EA 0002 4499"
	$"CEFE FF02 BA75 10FB 0004 89FF FFEE 20D2"
	$"00FD 0000 44C1 00FF 0108 0204 0608 0B0E"
	$"1230 F3D7 FF0A B698 8675 6454 4437 2B20"
	$"1806 110C 0805 0302 01EF 00FD FF00 44FE"
	$"00FD FF00 75EC 0001 10BA F9FF 01DE 30FC"
	$"00FD FF00 75D2 00FD 0000 47C2 00FF 0107"
	$"0203 0507 0A0E 12C3 D5FF 0AF5 A190 7F6E"
	$"5D4D 3E31 261D 0715 0F0A 0704 0201 01F0"
	$"00FD FF00 44FE 0000 DEFE FF00 65EC 0000"
	$"CEF7 FF01 DE10 FD00 00DE FEFF 0065 D200"
	$"FD00 004A C200 0701 0203 0407 0A0D 89D2"
	$"FF09 CA9A 8978 6756 4739 2C22 0819 120D"
	$"0906 0302 0101 F100 FDFF 0044 FE00 0330"
	$"DEFF 89EC 0000 65FE FF04 EE65 4455 CEFD"
	$"FF00 75FD 0003 30DE FF89 D100 FD00 005C"
	$"C300 FF01 0402 0406 084B D0FF 09FA A593"
	$"8270 5F4F 4133 2808 1E16 100B 0705 0302"
	$"01FC 0000 20FE 44FA 00FD FF00 44EF 0002"
	$"1044 44FA 0000 CEFE FF00 65FE 0001 10EE"
	$"FEFF 00CE EF00 0020 FE44 F300 FF44 0020"
	$"F700 0020 FE44 0210 0000 FD00 0076 C300"
	$"FF01 0303 0407 39CE FF08 D49D 8C7A 6959"
	$"493B 2E0D 241B 130E 0906 0402 0101 0020"
	$"99EE FCFF 01AA 30FD 00FD FF00 44FE 00FD"
	$"BA00 30FE 00FD BA02 0030 BAFD FF01 8910"
	$"FD00 FD44 FC00 0099 FDFF FD00 FDBA 0030"
	$"FB00 0220 99EE FCFF 01AA 30FE 00FD BA02"
	$"0020 99FD FF01 BA10 FB00 0175 DEFC FF01"
	$"DE55 FD00 0067 C300 0601 0203 0508 0CD5"
	$"CEFF 07AE 9684 7362 5243 350B 2A20 1711"
	$"0B08 0503 0201 65EE F9FF 0075 FD00 FDFF"
	$"0044 FE00 FDFF 0044 FE00 FDFF 0165 EEFB"
	$"FF00 CEF4 0000 75FD FFFD 00FD FF00 44FC"
	$"0001 65EE F9FF 0075 FE00 FDFF 0165 EEFB"
	$"FF00 BAFC 0000 99F9 FF00 75FD 0000 79C3"
	$"0006 0102 0406 090D 43CE FF07 E99F 8E7D"
	$"6C5B 4B3D 0930 251C 140E 0A06 0402 56FD"
	$"FF06 DE65 4444 75BA 75FD 00FD FF00 44FE"
	$"00FD FF00 44FE 00FD FF03 EEFF CEBA FCFF"
	$"0075 F500 0099 FEFF 00CE FD00 FDFF 0044"
	$"FD00 0055 FDFF 06DE 6544 4475 BA75 FE00"
	$"FDFF 00EE F9FF 0030 FE00 0065 FEFF 0699"
	$"5544 4475 9975 FD00 007B C400 FF01 0602"
	$"0406 0A0E 15B9 CEFF 06B8 9887 7665 5445"
	$"0937 2B21 1811 0C08 0513 EEFE FF01 BA10"
	$"FC00 0010 FD00 FDFF 0044 FE00 FDFF 0044"
	$"FE00 FDFF 05EE 5500 0030 EEFE FF00 DEF6"
	$"0001 10EE FEFF 0075 FD00 FDFF 0044 FE00"
	$"0110 EEFE FF01 BA10 FC00 0010 FE00 FDFF"
	$"04EE 7510 0075 FDFF 0075 FE00 03AA FFFF"
	$"89FA 00FD 0000 6FC4 00FF 0107 0204 070A"
	$"0F16 1FFC CFFF 06FA A291 806F 5E4E 083F"
	$"3227 1D15 0F0A 0777 FDFF 0020 F600 FDFF"
	$"0044 FE00 FDFF 0044 FE00 FDFF 0065 FD00"
	$"0089 FDFF 0010 F700 0089 FEFF 01EE 10FD"
	$"00FD FF00 44FE 0000 75FD FF00 20F7 00FD"
	$"FF00 55FD 0000 CEFE FF00 75FE 0003 BAFF"
	$"FFAA FA00 FD00 0070 C400 FF01 0702 0407"
	$"0B10 171F 97CE FF05 CC9B 8A78 6757 0847"
	$"392D 2219 120D 09BC FEFF 00BA F500 FDFF"
	$"0044 FE00 FDFF 0044 FE00 FDFF 0044 FD00"
	$"0055 FDFF 0044 F800 0065 FDFF 0065 FC00"
	$"FDFF 0044 FE00 00BA FEFF 00BA F600 FDFF"
	$"0044 FD00 00BA FEFF 0075 FE00 00AA FEFF"
	$"02CE 7530 FD00 FD00 006D C400 FF01 0802"
	$"0407 0B10 171F 2EF0 CFFF 05F9 A794 8271"
	$"6007 5041 3428 1E16 100B FDFF 0089 F500"
	$"FDFF 0044 FE00 FDFF 0044 FE00 FDFF 0044"
	$"FD00 0044 FDFF 0044 F900 0030 FDFF 0099"
	$"FB00 FDFF 0044 FE00 FDFF 0089 F600 FDFF"
	$"0044 FD00 00BA FEFF 0075 FE00 0065 FBFF"
	$"03DE 7510 00FD 0000 6CC4 00FF 0108 0204"
	$"070A 1016 1F2A 65CE FF04 E39D 8C7B 6A07"
	$"594A 3B2F 241B 130E FDFF 0176 01F6 00FD"
	$"FF00 44FE 00FD FF00 44FE 00FD FF00 44FD"
	$"0000 44FD FF00 44FA 0001 30EE FEFF 0099"
	$"FA00 FDFF 0044 FE00 FDFF 0075 F600 FDFF"
	$"0044 FD00 00BA FEFF 0075 FD00 00CE FAFF"
	$"01DE 30FD 0000 6BC4 00FF 0109 0204 060A"
	$"0F15 1E28 34DB CEFF 03B2 9685 7407 6352"
	$"4336 2A20 1711 FDFF 0176 01F6 00FD FF00"
	$"44FE 00FD FF00 44FE 00FD FF00 44FD 0000"
	$"44FD FF00 44FB 0000 65FD FF00 99F9 00FD"
	$"FF00 44FE 00FD FF00 75F6 00FD FF00 44FD"
	$"0000 BAFE FF00 75FD 0001 1099 FAFF 00DE"
	$"FD00 006C C300 0A01 0204 0609 0E14 1C26"
	$"3266 CEFF 03E9 A08F 7E07 6C5B 4C3D 3025"
	$"1C14 FDFF 0276 0101 F700 FDFF 0044 FE00"
	$"FDFF 0044 FE00 FDFF 0044 FD00 0044 FDFF"
	$"0044 FC00 0065 FDFF 0089 F800 FDFF 0044"
	$"FE00 FDFF 0075 F600 FDFF 0044 FD00 00BA"
	$"FEFF 0075 FB00 0210 65AA FCFF 0055 FE00"
	$"0070 C400 FF01 0A02 0306 090D 131A 242F"
	$"3CAC CEFF 02C5 9887 0876 6454 4537 2B20"
	$"18BF FEFF 02BB 0201 F700 FDFF 0044 FE00"
	$"FDFF 0044 FE00 FDFF 0044 FD00 0065 FDFF"
	$"0020 FD00 0075 FEFF 01EE 65F7 00FD FF00"
	$"44FE 0000 BAFE FF00 BAF6 00FD FF00 44FD"
	$"0000 BAFE FF00 75F8 0001 30EE FEFF 0075"
	$"FE00 0070 C400 FF01 0B02 0305 080C 1118"
	$"212B 384D FACF FF02 FAA3 9008 7F6D 5C4C"
	$"3E31 251C 92FD FF02 1201 01F8 00FD FF00"
	$"44FE 00FD FF00 44FE 00FD FF00 44FD 0000"
	$"89FE FF00 EEFD 0000 99FE FF01 CE30 F600"
	$"FDFF 0044 FE00 0089 FDFF 0010 F700 FDFF"
	$"0044 FD00 00BA FEFF 0075 F700 0075 FEFF"
	$"0075 FE00 007D C400 FF01 0B02 0405 080B"
	$"1016 1E28 3340 A9CE FF01 CA99 0888 7664"
	$"5444 362A 2034 FDFF 02CF 2101 FE00 FF55"
	$"FD00 FDFF 0044 FE00 FDFF 0044 FE00 FDFF"
	$"0065 FE00 0110 EEFE FF00 99FE 0000 89FE"
	$"FF01 8910 F500 FDFF 0044 FE00 0020 FDFF"
	$"01CE 20FD 00FF 55FE 00FD FF00 44FD 0000"
	$"BAFE FF00 75FE 0000 10FB 0000 BAFE FF00"
	$"55FE 0000 80C5 00FF 010D 0203 0406 080B"
	$"0F15 1C25 2F3B 49E6 CFFF 01FC A809 8F7E"
	$"6C5B 4B3C 2F24 1A7F FCFF FFBA 03CE FFFF"
	$"75FD 00FD FF00 44FE 00FD FF00 44FE 00FD"
	$"FF04 EE89 4465 DEFE FF01 EE20 FE00 00BA"
	$"F4FF 0044 FE00 FDFF 0044 FD00 0075 FCFF"
	$"FFBA 03CE FFFF 75FE 00FD FF00 44FD 0000"
	$"BAFE FF00 75FE 0006 FFAA 7544 4465 BAFE"
	$"FF00 DEFD 0000 67C7 00FE 010E 0203 0405"
	$"0709 0C10 151B 232C 3744 78CE FF00 E30A"
	$"9684 7261 5041 3327 1D15 7DF8 FF00 75FD"
	$"00FD FF00 44FE 00FD FF00 44FE 00F5 FF00"
	$"65FD 0000 BAF4 FF00 44FE 00FD FF00 44FC"
	$"0000 75F8 FF00 75FE 00FD FF00 44FD 0000"
	$"BAFE FF00 75FE 00F8 FF01 EE30 FD00 007B"
	$"C800 FF01 FF02 0F03 0405 0709 0B0E 1116"
	$"1B22 2A34 404D DFCE FF0D A68A 7866 5545"
	$"372A 2017 102A 9CEE FDFF 02EE 9930 FD00"
	$"FDFF 0044 FE00 FDFF 0044 FE00 FDFF 0199"
	$"DEFD FF01 AA30 FC00 00BA F4FF 0044 FE00"
	$"FDFF 0044 FB00 0220 99EE FDFF 02EE 9930"
	$"FE00 FDFF 0044 FD00 00BA FEFF 0075 FE00"
	$"00AA FBFF 03EE 9920 00FD 0000 4BC9 00FF"
	$"01FF 0210 031A 0607 090B 0E11 1418 1D23"
	$"2A33 3E49 6ACE FF11 F08D 7B6A 5848 3A2D"
	$"2218 110C 0705 2345 4530 EA00 FDFF 0544"
	$"0030 4444 10DA 0003 2044 4430 E800 0020"
	$"FE44 0020 FD00 FD00 003A CA00 FF01 1402"
	$"0304 0568 8C13 0D0F 1215 181C 2026 2C34"
	$"3D48 54B4 D0FF 00D8 10A0 8F7D 6B5A 4A3B"
	$"2E23 1912 0C08 0503 0101 E900 FDFF 0044"
	$"AF00 FD00 003E CB00 FF01 1602 0304 0507"
	$"23D3 B941 1518 1B1E 2226 2B30 373F 4853"
	$"65FE D3FF 02F1 BCAE 109E 8E7C 6B5A 4A3B"
	$"2E23 1A12 0C08 0503 0101 E900 FDFF 0044"
	$"AF00 FD00 0041 CC00 FF01 1702 0304 0608"
	$"0A0D 5FFF E69C 4F23 272A 2E32 373C 434A"
	$"535E 9FD5 FF04 FDD4 C5B8 AA10 9B8A 7A69"
	$"5849 3A2E 2319 120C 0805 0301 01E9 00FD"
	$"FF00 44AF 00FD 0000 44CE 00FE 0119 0203"
	$"0406 080B 0E12 16AA FFFF F6C0 9261 4C43"
	$"4044 494F 5962 69E6 D7FF 05E5 D2C9 BEB1"
	$"A310 9485 7564 5546 382C 2119 110C 0805"
	$"0301 01E9 00FD BA00 30AF 00FD 0000 44EC"
	$"00F0 01F5 00FF 01FF 0209 0305 0609 0C0F"
	$"1318 3BB8 FCFF 0AF8 E1D1 C3BA B7C3 B569"
	$"6A91 D9FF 07F1 D9D2 C9BF B4A8 9A10 8C7D"
	$"6E5E 4F41 3529 1F17 100B 0704 0301 0192"
	$"00FD 0000 44F1 00F4 01FA 02FC 01FA 00FE"
	$"010B 0203 0405 0709 0C10 1427 87E7 F4FF"
	$"04A1 676C 74E6 DCFF 09F9 DDD6 CFC7 BEB4"
	$"A99C 8F10 8173 6556 493C 3026 1D15 0F0A"
	$"0704 0201 0192 00FD 0000 49F4 00FC 01FC"
	$"02F3 03FE 02FD 01FE 00FE 010A 0203 0406"
	$"070A 0D10 1663 D0F3 FF06 CE6C 6D70 7586"
	$"FCDE FF0A E3D9 D2CB C3BA B1A6 9B8F 820F"
	$"7568 5B4D 4135 2B21 1913 0D09 0604 0201"
	$"9100 FD00 005C F600 FD01 FF02 FE03 FE04"
	$"FA05 FD06 FE05 FF04 0203 0202 FB01 FF02"
	$"0903 0406 080A 0D13 4BB3 FDF3 FF07 FA8F"
	$"7473 7477 7BC3 E0FF 0CEB DBD4 CEC6 BEB5"
	$"ACA2 978C 8174 0F68 5C50 4439 2E25 1D16"
	$"100B 0805 0302 01ED 0003 043B 201C A900"
	$"FD00 0070 F700 FE01 0702 0303 0404 0506"
	$"06FE 07FD 08FA 0907 0807 0706 0504 0303"
	$"FC02 0903 0405 0608 0B0E 1F33 E9F1 FF08"
	$"D480 7D7A 7979 7A80 FEE3 FF0E F4DC D6D0"
	$"C9C1 B9B0 A69C 9287 7C71 6610 5A4F 443A"
	$"3027 1F18 12BF DD2E 0000 33DD 33EE 0002"
	$"6EFF 6EEB 0002 0459 19FA 0003 2173 8040"
	$"CC00 FD00 0079 F800 FF01 FF02 0B03 0405"
	$"0607 0809 0A0B 0B0C 0CFE 0DFB 0E08 0D0C"
	$"0B0A 0908 0605 04FC 0309 0405 0709 0C1B"
	$"76D4 599E F2FF 09FE AD8A 8681 7D7B 7A7B"
	$"A5E5 FF10 FBDE D8D2 CBC3 BBB2 A9A0 968C"
	$"8177 6C62 570F 4D42 3930 2820 1914 0F91"
	$"FF7F 0000 83E6 ED00 0233 BA33 EC00 0351"
	$"C8FF 3BFB 0004 54FB FFFF A2CC 00FD 0000"
	$"A3F9 00FF 0112 0203 0405 0608 090B 0C0E"
	$"0F10 1112 1213 1314 14FD 15FF 1408 1211"
	$"0F0D 0B09 0806 05FE 040B 0506 0709 0C1A"
	$"BAFF FFC1 48E5 F3FF 0AEE 9E94 8D86 807C"
	$"7978 7AE7 E7FF 11E5 DAD3 CDC5 BDB5 ACA3"
	$"998F 857B 7066 5C52 4935 3F37 2E27 2019"
	$"140F 0B40 FFCB 0000 D99D 0000 44BF DDC3"
	$"5100 00BA 9D7B D990 007B D4D9 7A00 5DBA"
	$"4800 0065 C7DD BF55 0000 BA9D 61CB CB3C"
	$"FB00 038B DDFF 3BFC 0005 19F3 CC19 081D"
	$"CC00 FD00 00A6 FA00 FF01 2202 0304 0507"
	$"090B 0E10 1214 1517 1819 1A1B 1B20 3E3A"
	$"211E 1D1D 1B1A 1815 1310 0D0B 0907 FE06"
	$"0B07 080A 3F66 19A7 FFFF FE76 87F3 FF0A"
	$"DDA2 9B93 8B83 7C77 7474 93E9 FF13 EEDB"
	$"D5CF C7BF B7AE A59C 9288 7E74 6A60 564D"
	$"443B 3533 2C25 1E19 140F 0C09 04EA FF1D"
	$"2EFF 4400 37FB D044 9EFF 3B00 FFFB 99DD"
	$"FF61 FF5E 4455 0080 FF5D 0073 FFAF 40C3"
	$"FF55 00FF FBAE 9DFF C7FA 0002 80FF 3BFC"
	$"0005 6EFF 96B2 B25D CC00 FD00 00AB FA00"
	$"FF01 3202 0405 070A 1148 573E 201B 1E20"
	$"2123 2425 5EBA EAE6 B55D 2827 2523 201D"
	$"1916 120F 0D0B 0908 0909 0B52 F4F4 4438"
	$"E4FF FFDB 5CD9 F4FF 0BCD A9A1 978D 837B"
	$"7470 6E70 CCEC FF15 F6DD D7D0 C9C2 B9B1"
	$"A89E 948B 8177 6D63 5950 473E 362F 3528"
	$"221C 1713 0F0B 0806 009D FF66 7FEE 0400"
	$"A1FF 4C00 11FF A100 FFDD 0025 3B59 FF91"
	$"2E00 0080 FF5D 00DD FF21 0038 FFBF 00FF"
	$"E200 00FF DDFA 0002 80FF 3BFC 0006 AEFF"
	$"EEAA EAFF 6ACD 00FD 0000 AEFB 00FF 0112"
	$"0203 0507 0A4A C3F5 FCEC BA4F 282A 2D2F"
	$"4FA9 F5FD FF17 E957 3331 2E2A 2622 1D19"
	$"1511 0E0C 0B15 110E 42EA FFB4 2488 FEFF"
	$"02A1 87FE F6FF 0DFE C2AD A398 8D82 7870"
	$"6A67 6872 FCEF FF17 FCE0 D8D2 CBC4 BCB3"
	$"AAA1 978D 8379 6F65 5C52 4A41 3932 2B24"
	$"111F 1915 110D 0A08 0604 0048 FFB7 D0A5"
	$"0000 BAFC FF03 BA00 FFDD FE00 1711 D4FF"
	$"FFAA 0080 FF5D 00FF FF00 0022 FFDD 00FF"
	$"DD00 00FF DDFA 0002 80FF 3BFC 0006 BAFF"
	$"4800 48FF CBCD 00FD 0000 ABFC 00FF 0106"
	$"0203 0507 0A55 F5FC FF05 D74D 3748 93E5"
	$"FAFF 1CBE 423F 3B36 312B 2620 1B16 1311"
	$"1DBC 8012 158A FFFA 6A39 D5FF FFF0 7CCC"
	$"F6FF 0DF9 BFAE A397 8B7F 746B 6460 5F62"
	$"B4F0 FF18 E7DA D4CD C6BE B5AD A39A 9086"
	$"7C72 685E 554C 433B 342D 2621 1B13 1713"
	$"0F0C 0907 0504 0300 08F3 F7FF 5100 00B2"
	$"FF5E FE22 0319 00FF DDFC 0015 40C7 FF33"
	$"80FF 5D00 F3FF 0C00 2EFF D000 FFDD 0000"
	$"FFDD FA00 0280 FF3B FC00 06B6 FF22 0022"
	$"FFDD CD00 FD00 00B1 FC00 FF01 0503 0406"
	$"0916 D4FA FF02 BC83 D2F8 FF1D FA81 4E49"
	$"433D 362F 2822 1D19 1521 C5F0 331A 35D4"
	$"FFCC 3E80 FBFF FFC2 91F9 F9FF 10FE FFF4"
	$"B9AB A094 877A 6E64 5D58 5759 60EC F3FF"
	$"1AEF DAD5 CEC8 C0B8 AFA6 9C93 897F 756B"
	$"6157 4E46 3D36 2F28 221D 1814 1A10 0D0B"
	$"0806 0504 0302 0000 A5FF F708 0000 66FF"
	$"B315 083C 1D00 FFDD FE00 172F 1D04 8CFF"
	$"2980 FF5D 0099 FF72 0495 FF7F 00FF DD00"
	$"00FF DDFA 000E 80FF 3B00 0048 5D0C 83FF"
	$"5900 59FF B3CD 00FD 0000 B2FD 00FF 0106"
	$"0203 0508 0C48 FAF9 FF00 FDF6 FF1C D964"
	$"5852 4A42 3A32 2B7E 521B 1951 F9A6 1E23"
	$"76FD FE90 49C8 FFFF FB9C C6FB FF12 FCE0"
	$"D8FF F3B3 A69B 8E81 7468 5D55 504E 5055"
	$"82F5 FF1C F5D7 D4CF C9C2 BAB1 A89F 958B"
	$"8177 6D63 5A51 4840 3830 2A24 1E19 1511"
	$"0E0D 0B09 0705 0403 0202 0100 0051 FFAE"
	$"FD00 0884 F3FF FFE1 2900 FFDD FE00 176A"
	$"FFFF F783 0080 FF5D 000C A6FB FFF7 9504"
	$"00FF DD00 00FF DDFA 000E 80FF 3B00 00BA"
	$"FF22 19E6 F7BA F7F3 33CD 00FD 0000 96FE"
	$"00FF 0106 0203 0507 0A0F 61EB FF1C A969"
	$"6159 4F46 3C33 B8CF 251E 1E9F FD55 2835"
	$"C2FF E561 7AF5 FFFF DD9B F2FD FF14 E9C9"
	$"BAB9 E8F4 AD9E 9286 796C 6055 4D47 4546"
	$"4B53 E0F8 FF1E FCD4 CECC C7C2 BBB3 AAA1"
	$"988E 847A 7066 5C53 4A42 3A32 2C25 201B"
	$"1612 0F0C 0A05 0806 0503 0202 FE01 F700"
	$"0204 2219 F800 0211 2208 F900 020C 2208"
	$"F100 0D40 801D 0000 5D80 1100 197F A287"
	$"21CC 00FD 0000 75FE 00FF 0107 0304 0609"
	$"0D12 4DFB ECFF 17ED 8571 675D 5247 3D51"
	$"F176 2422 43EC C62F 336E F7FF B05D BFFE"
	$"FF1B B3BF FFFF F0CB B2B3 B2B0 C1F0 A994"
	$"887C 6F63 574D 443F 3D3D 4249 73FD FAFF"
	$"1FD3 C1C2 C1BE B9B3 ABA3 9A90 877D 7369"
	$"5F56 4D44 3C34 2D27 211C 1713 100D 0A08"
	$"0603 0504 0302 FE01 8800 FD00 0076 FF00"
	$"FF01 0802 0305 080C 1016 21BD EBFF 35C7"
	$"8076 6A5E 5347 3E9C E437 2828 8BFF 7637"
	$"40B6 FFF2 7F7C EDFF FFEC A6DF D1AB A7A9"
	$"A9A8 A5A1 CDA7 877C 7165 594E 443C 3734"
	$"3539 4049 B0FC FF21 D7AA B0B3 B4B2 AFAA"
	$"A39B 9289 7F75 6B62 584F 463E 362F 2923"
	$"1D18 1411 0E0B 0907 0504 0403 0202 0101"
	$"8600 FD00 0076 0C00 0101 0203 0507 0A0E"
	$"141B 238F EBFF 17F8 A384 786B 5E52 474B"
	$"E79C 2E2D 3ED6 E147 4269 ECFF CB6A AFFE"
	$"FF1A B199 989B 9D9E 9D9B 9792 9387 7A6F"
	$"6459 4E44 3B34 2F2D 2D31 373F 4FFE FF23"
	$"E689 939B A1A4 A4A2 9E99 9289 8177 6E64"
	$"5B51 4940 3831 2A24 1F1A 1512 0E0C 0907"
	$"0604 0302 0002 FE01 8500 FD00 0073 0C00"
	$"0101 0304 0609 0D12 1830 87E4 EAFF 5BDC"
	$"9285 776A 5D51 4787 F351 3233 79FF 9A44"
	$"4BA6 FFFA 9677 E1E4 A789 8C8F 9192 918F"
	$"8C88 837C 746B 6258 4E44 3A32 2C27 2526"
	$"292E 3640 9FFF 7E70 7B84 8C91 9393 918D"
	$"8780 786F 665D 544B 423A 332C 2620 1B16"
	$"130F 0C0A 0806 0504 0302 01FF 0183 00FD"
	$"0000 6EFF 0108 0203 0508 0C10 1963 CBE8"
	$"FF58 FDB9 9184 7568 5B50 4AD2 B937 373E"
	$"C7F3 5C4C 63E0 FFE0 7788 827C 8083 8485"
	$"8483 807D 7873 6C65 5D54 4B42 3931 2A25"
	$"211F 1F22 272E 3742 4C57 626C 757B 8082"
	$"827F 7B75 6E66 5E55 4D44 3C35 2E28 221C"
	$"1814 100D 0A08 0605 0403 02FE 0181 00FD"
	$"0000 6D09 0102 0305 070A 0E44 AFF9 E6FF"
	$"5AEB A28F 8172 6559 4E72 F76D 3B3B 6BF8"
	$"B94B 5196 F0BB 706C 7073 7677 7878 7674"
	$"716D 6862 5C55 4E47 3F37 2F29 231E 1B19"
	$"191C 2026 2E37 414B 555E 656B 6F70 706D"
	$"6964 5D56 4E46 3E37 3029 231E 1915 110E"
	$"0B09 0705 0403 0202 0101 0000 8100 FD00"
	$"0068 0701 0204 0609 148A EBE3 FF17 CC9A"
	$"8C7D 6F62 574D BED5 423E 3FAD FE77 4E5C"
	$"755D 6164 6769 FE6B 386A 6865 615D 5853"
	$"4D47 403A 332D 2621 1C18 1514 1416 1A1F"
	$"262E 363F 484F 565B 5E5F 5E5C 5853 4D46"
	$"3F38 312B 251F 1A16 120F 0C09 0706 0403"
	$"0202 FE01 FE00 8100 FD00 0064 0502 0305"
	$"070B 8AE1 FF16 F5AE 9687 796B 5F54 66F1"
	$"8B40 405A EAB4 4B4F 5356 595C 5EFE 5F37"
	$"5E5C 5956 524E 4944 3F39 342E 2923 1E1A"
	$"1613 1110 1012 1519 1F25 2D34 3B42 474B"
	$"4E4F 4E4B 4843 3E38 322C 2620 1C17 1310"
	$"0D0A 0806 0504 0302 FE01 FC00 8100 FD00"
	$"0062 0502 0306 0921 E4E0 FF51 DAA0 9182"
	$"7467 5C52 A4E9 5241 416C 5B47 494C 4F51"
	$"5253 5453 5250 4E4B 4743 3F3B 3632 2D28"
	$"241F 1B17 1411 0E0D 0C0C 0E10 1418 1E24"
	$"2A30 353A 3D3F 3F3E 3C39 3530 2B26 211C"
	$"1814 100D 0B09 0705 0403 0202 0101 FA00"
	$"8100 FD00 0060 0502 0407 0A45 F9E0 FF2A"
	$"FBB9 9B8C 7D6F 6358 58E7 A741 4040 4142"
	$"4445 4748 4949 4847 4643 413D 3A36 322E"
	$"2A26 231F 1B18 1411 0F0C 0AFE 091F 0A0C"
	$"0F13 171C 2126 2A2D 3031 3231 2F2C 2925"
	$"211D 1815 110E 0B09 0706 0403 0202 FE01"
	$"F900 8100 FD00 005C 0503 0507 0B3D F4DF"
	$"FF0B E4A5 9586 786A 5F55 7F7F 423F FD3D"
	$"003E FE3F 363E 3D3C 3A37 3531 2E2B 2724"
	$"201D 1A17 1411 0F0C 0A09 0707 0607 0709"
	$"0B0E 1215 191D 2023 2526 2625 2421 1E1B"
	$"1815 110F 0C0A 0806 0503 0202 FE01 F700"
	$"8100 FD00 005B 0503 0508 0C16 BBDF FF0E"
	$"FEC5 9E8F 8072 655A 5049 423E 3B39 38FE"
	$"37FF 3634 3533 312F 2D2A 2724 211E 1B18"
	$"1512 100E 0C0A 0907 0605 0404 0505 0608"
	$"0A0D 1013 1518 1A1B 1C1C 1B1A 1816 1411"
	$"0E0C 0A08 0605 0403 02FE 01F5 0081 00FD"
	$"0000 5806 0305 090D 1349 F6DF FF27 EEAB"
	$"9889 7A6C 6055 4B44 3E39 3633 3230 2F2E"
	$"2D2B 2A28 2523 201E 1B18 1613 110F 0D0B"
	$"0A08 0706 0504 FD03 FF04 0706 0709 0B0D"
	$"0F11 13FD 140E 1211 0F0E 0C0A 0806 0504"
	$"0302 0201 01F3 0081 00FD 0000 5406 0306"
	$"090E 141D A4DE FF25 D0A0 9182 7466 5A4F"
	$"463E 3833 2F2D 2A28 2725 2321 1F1D 1B18"
	$"1614 120F 0D0C 0A09 0706 0504 0403 FB02"
	$"0803 0405 0608 090B 0C0D FE0E FF0D 090C"
	$"0A09 0806 0504 0302 02FE 01F2 0081 00FD"
	$"0000 5107 0406 090E 151D 3DEC DFFF 25F5"
	$"B19A 8A7B 6D5F 5348 3F37 312C 2825 2220"
	$"1E1C 1A18 1614 1210 0E0C 0B09 0807 0605"
	$"0403 0302 02FB 0107 0203 0304 0506 0708"
	$"FC09 0808 0707 0605 0403 0202 FE01 F000"
	$"8100 FD00 004E 0703 0609 0E14 1D27 8DDE"
	$"FF21 DBA2 9383 7465 584C 4138 302A 2521"
	$"1D1B 1816 1412 100E 0D0B 0A08 0706 0504"
	$"0303 0202 FC01 FF00 FE01 FF02 FF03 FF04"
	$"FF05 FE06 FE05 0404 0303 0202 FE01 EE00"
	$"8100 FD00 0044 0803 0509 0D14 1C26 3CDD"
	$"DFFF 1CFB B99B 8B7C 6C5E 5044 3A31 2923"
	$"1E1A 1614 110F 0D0C 0A09 0706 0504 0403"
	$"FE02 FD01 FA00 FD01 FF02 FD03 0004 FD03"
	$"FE02 FE01 EC00 8100 FD00 003A 0903 0508"
	$"0D13 1B24 307C FEDF FF1B E4A5 9484 7464"
	$"5648 3C32 2922 1C17 1310 0D0B 0A08 0706"
	$"0504 0303 0202 FD01 F500 FC01 FA02 FC01"
	$"EA00 8100 FD00 0033 0903 0507 0C11 1922"
	$"2D3C C9DF FF18 FEC5 9C8C 7B6B 5C4D 4035"
	$"2B22 1B15 110E 0B09 0706 0504 0302 02FD"
	$"01EF 00F6 01E7 0081 00FD 0000 2D0A 0204"
	$"070A 0F16 1F29 366B FADF FF15 EEA7 9484"
	$"7363 5345 382D 231C 1510 0C09 0705 0403"
	$"0202 FD01 C800 8100 FD00 002A 0A02 0306"
	$"090E 141C 2531 3FB5 DEFF 12CE 9D8C 7B6A"
	$"5A4B 3D31 261D 1610 0C08 0604 0302 FE01"
	$"C500 8100 FD00 002B 0B02 0305 080C 1118"
	$"212C 395B ECDF FF14 F5AE 9483 7261 5142"
	$"3529 1F17 110C 0806 0402 0201 01C4 0081"
	$"00FD 0000 290B 0102 0406 0A0F 151D 2732"
	$"4098 DEFF 12D9 9C8B 7968 5747 392D 2219"
	$"120D 0906 0402 0101 C300 8100 FD00 002A"
	$"0C01 0203 0508 0C12 1922 2C39 4FE1 DFFF"
	$"12FA B492 806F 5D4D 3E31 251B 140E 0906"
	$"0402 0101 C300 8100 FD00 002A FF01 0B02"
	$"0407 0A0F 151D 2732 3F85 FEDF FF11 E099"
	$"8775 6352 4334 281E 150F 0A06 0402 0101"
	$"C300 8100 FD00 002A 0D00 0102 0305 080C"
	$"1219 212B 3848 CADF FF11 F0A3 8C7A 6857"
	$"4738 2B20 1710 0B07 0402 0101 C300 8100"
	$"FD00 002B 0E00 0101 0204 060A 0E14 1C25"
	$"313E 6EFA E0FF 11EA A290 7E6C 5A4A 3A2D"
	$"2218 110C 0705 0301 01C3 0081 00FD 0000"
	$"2BFF 000C 0102 0305 080C 1118 202A 3644"
	$"B5E0 FF11 D5A3 9280 6E5C 4C3C 2F23 1912"
	$"0C08 0503 0101 C300 8100 FD00 002D FF00"
	$"FF01 0B02 0406 090E 141B 242F 3C5C ECE2"
	$"FF12 EAB7 A392 806E 5D4C 3D2F 241A 120C"
	$"0805 0301 01C3 0081 00FD 0000 2EFE 000C"
	$"0102 0305 070B 1017 1F29 3442 9AE4 FF14"
	$"F9E0 C1AF A08F 7E6C 5B4B 3C2F 231A 120C"
	$"0805 0301 01C3 0081 00FD 0000 31FE 00FF"
	$"010B 0204 0609 0D13 1A23 2D3A 50E0 E7FF"
	$"16FD EDD6 C4B8 AA9B 8A7A 6958 493A 2D22"
	$"1912 0C08 0503 0101 C300 8100 FD00 0031"
	$"FD00 0C01 0203 0407 0A0F 151D 2732 4086"
	$"E8FF 17F5 E2D1 C7BC B0A2 9384 7363 5445"
	$"372B 2018 110B 0704 0301 01C3 0081 00FD"
	$"0000 34FD 00FF 010B 0203 0508 0C12 1921"
	$"2C38 47CC EBFF 19F9 EAD8 D0C7 BDB2 A698"
	$"8A7B 6B5C 4D3F 3327 1E16 0F0A 0704 0201"
	$"01C3 0081 00FD 0000 35FC 00FF 010B 0204"
	$"070A 0E14 1C25 313E 70F8 EEFF 1AFC EFDF"
	$"D4CD C5BB B1A6 998C 7E70 6254 4639 2E23"
	$"1B13 0E09 0604 0201 C200 8100 FD00 0036"
	$"FB00 0C01 0203 0508 0C11 1720 2A36 44B3"
	$"F0FF 1CFE F3E3 D7D0 C9C1 B8AE A398 8C7F"
	$"7264 574A 3E32 281F 1711 0C08 0503 0201"
	$"C200 8100 FD00 0038 FB00 FF01 0B02 0406"
	$"090E 131B 242F 3B5B EEF2 FF1D F7E7 D8D2"
	$"CBC4 BBB3 A99F 9489 7D71 6458 4C40 352B"
	$"221A 140E 0A07 0403 0101 C200 8100 FD00"
	$"0039 FA00 0C01 0203 0507 0B10 161E 2834"
	$"419B F4FF 1FFA EADA D3CD C6BE B6AD A399"
	$"8F84 796D 6256 4B40 362D 241C 1610 0C08"
	$"0604 0201 01C2 0081 00FD 0000 3BFA 00FF"
	$"010B 0204 0609 0D12 1A22 2D39 4EDD F7FF"
	$"20FC ECD9 D1CC C6BF B8AF A69D 9388 7E73"
	$"695E 5349 3F35 2D24 1D17 110D 0906 0403"
	$"0201 C100 8100 FD00 003D F900 0D01 0203"
	$"0407 0A0F 151D 2732 3F81 FEFA FF22 FEEC"
	$"D6CA C8C4 BFB8 B1A8 9F96 8C81 776D 6359"
	$"4F45 3C33 2B24 1D17 120D 0A07 0503 0201"
	$"01C1 0081 00FD 0000 3DF9 00FF 010B 0203"
	$"0508 0C11 1821 2B36 44C9 FBFF 01EF D0FE"
	$"BC1D BAB5 B0A8 A098 8E84 7A70 665C 534A"
	$"4138 3029 221C 1612 0E0A 0705 0402 0101"
	$"C000 8100 FD00 003E F800 FF01 3202 0406"
	$"0A0E 141B 242F 3B61 D3FD FFFF F0C8 A9A7"
	$"ACAD ADAA A59F 988F 867D 7369 5F56 4D44"
	$"3C34 2C26 1F1A 1511 0D0A 0705 0402 0201"
	$"BF00 8100 FD00 003D F700 3301 0203 0508"
	$"0B10 171F 2833 3F5A 90B6 B492 8991 989B"
	$"9D9C 9994 8E86 7E75 6B62 594F 473E 362F"
	$"2822 1D18 130F 0C09 0705 0402 0201 01BF"
	$"0081 00FD 0000 3CF7 00FF 0130 0204 0609"
	$"0D13 1922 2B36 414D 5965 707A 8187 8A8B"
	$"8A87 827C 746C 635B 5249 4139 312B 241F"
	$"1A15 110E 0B08 0605 0302 0201 01BE 0081"
	$"00FD 0000 39F6 002D 0102 0305 070A 0F15"
	$"1C24 2D37 424D 5761 6A71 7679 7978 7570"
	$"6A63 5B53 4B43 3B33 2D26 201B 1713 0F0C"
	$"0A07 0604 0302 FE01 BD00 8100 FD00 0038"
	$"F600 FF01 2C02 0305 080C 1117 1D25 2E37"
	$"414A 535A 6065 6768 6663 5E59 524B 443C"
	$"352E 2822 1D18 1410 0D0A 0806 0504 0302"
	$"0101 BB00 8100 FD00 0036 F500 FF01 2A03"
	$"0406 090D 1218 1E26 2D35 3D45 4B50 5456"
	$"5655 524E 4843 3C36 2F29 231E 1915 110E"
	$"0B09 0705 0403 0202 0101 BA00 8100 FD00"
	$"0033 F400 2701 0203 0507 0A0E 1318 1E25"
	$"2B32 383D 4245 4646 4542 3E3A 352F 2A24"
	$"1F1A 1612 0F0C 0A08 0604 0302 02FE 01B9"
	$"0081 00FD 0000 31F4 00FF 0123 0203 0508"
	$"0B0E 1317 1D22 272C 3134 3638 3836 3431"
	$"2D28 241F 1B17 1310 0D0A 0806 0504 0302"
	$"FE01 B700 8100 FD00 002F F300 FF01 2302"
	$"0406 080B 0E12 161A 1E22 2528 2A2B 2B2A"
	$"2825 221E 1B17 1410 0D0B 0907 0504 0302"
	$"0201 01B5 0081 00FD 0000 2CF2 0020 0102"
	$"0304 0608 0A0D 1013 1619 1C1E 1F20 201F"
	$"1D1B 1916 1310 0E0B 0907 0604 0302 02FE"
	$"01B4 0081 00FD 0000 2AF2 00FF 010B 0203"
	$"0406 0709 0C0E 1012 1416 FE17 0D16 1513"
	$"110F 0D0B 0908 0605 0302 02FE 01B2 0081"
	$"00FD 0000 27F1 00FF 010A 0203 0405 0608"
	$"0A0B 0D0E 0FFE 100B 0F0E 0D0C 0A09 0706"
	$"0504 0302 FE01 B000 8100 FD00 0025 F000"
	$"FF01 FF02 0703 0405 0608 0909 0AFE 0B0C"
	$"0A09 0908 0706 0504 0302 0201 01AE 0081"
	$"00FD 0000 20EF 00FE 0106 0203 0304 0506"
	$"06FD 07FF 06FF 0504 0403 0302 02FE 01AD"
	$"0081 00FD 0000 00FF"
};

resource 'STR ' (128) {
	"1"
};

resource 'aete' (0) {
	0x1,
	0x0,
	english,
	roman,
	{	/* array Suites: 2 elements */
		/* [1] */
		"Required Suite",
		"Terms that every application should supp"
		"ort",
		'reqd',
		1,
		1,
		{	/* array Events: 4 elements */
			/* [1] */
			"open",
			"Open documents",
			'reqd',
			'odoc',
			noReply,
			"",
			replyOptional,
			singleItem,
			notEnumerated,
			notTightBindingFunction,
			enumsAreConstants,
			enumListCanRepeat,
			replyIsValue,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			verbEvent,
			reserved,
			reserved,
			reserved,
			'alis',
			"list of files to open",
			directParamRequired,
			listOfItems,
			notEnumerated,
			changesState,
			enumsAreConstants,
			enumListCanRepeat,
			directParamIsValue,
			directParamIsTarget,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			{	/* array OtherParams: 0 elements */
			},
			/* [2] */
			"print",
			"Print files",
			'reqd',
			'pdoc',
			noReply,
			"",
			replyOptional,
			singleItem,
			notEnumerated,
			notTightBindingFunction,
			enumsAreConstants,
			enumListCanRepeat,
			replyIsValue,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			verbEvent,
			reserved,
			reserved,
			reserved,
			'alis',
			"files to print",
			directParamRequired,
			listOfItems,
			notEnumerated,
			doesntChangeState,
			enumsAreConstants,
			enumListCanRepeat,
			directParamIsValue,
			directParamIsTarget,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			{	/* array OtherParams: 0 elements */
			},
			/* [3] */
			"quit",
			"Quit clip2icns",
			'reqd',
			'quit',
			noReply,
			"",
			replyOptional,
			singleItem,
			notEnumerated,
			notTightBindingFunction,
			enumsAreConstants,
			enumListCanRepeat,
			replyIsValue,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			verbEvent,
			reserved,
			reserved,
			reserved,
			noParams,
			"no parameters required",
			directParamOptional,
			singleItem,
			notEnumerated,
			changesState,
			enumsAreConstants,
			enumListCanRepeat,
			directParamIsValue,
			directParamIsTarget,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			{	/* array OtherParams: 0 elements */
			},
			/* [4] */
			"run",
			"Application startup",
			'reqd',
			'oapp',
			noReply,
			"",
			replyOptional,
			singleItem,
			notEnumerated,
			notTightBindingFunction,
			enumsAreConstants,
			enumListCanRepeat,
			replyIsValue,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			verbEvent,
			reserved,
			reserved,
			reserved,
			noParams,
			"",
			directParamOptional,
			singleItem,
			notEnumerated,
			changesState,
			enumsAreConstants,
			enumListCanRepeat,
			directParamIsValue,
			directParamIsTarget,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			{	/* array OtherParams: 0 elements */
			}
		},
		{	/* array Classes: 0 elements */
		},
		{	/* array ComparisonOps: 0 elements */
		},
		{	/* array Enumerations: 0 elements */
		},
		/* [2] */
		"clip2icns Suite",
		"",
		'c2ci',
		0,
		0,
		{	/* array Events: 1 elements */
			/* [1] */
			"insert",
			"Inserting the clipboard contents into an"
			" icon",
			'c2ci',
			'insr',
			noReply,
			"",
			replyOptional,
			singleItem,
			notEnumerated,
			notTightBindingFunction,
			enumsAreConstants,
			enumListCanRepeat,
			replyIsValue,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			verbEvent,
			reserved,
			reserved,
			reserved,
			noParams,
			"",
			directParamOptional,
			singleItem,
			notEnumerated,
			doesntChangeState,
			enumsAreConstants,
			enumListCanRepeat,
			directParamIsValue,
			directParamIsTarget,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			reserved,
			{	/* array OtherParams: 3 elements */
				/* [1] */
				"into",
				'iFil',
				'alis',
				"location of the file",
				required,
				singleItem,
				notEnumerated,
				reserved,
				enumsAreConstants,
				enumListCanRepeat,
				paramIsValue,
				notParamIsTarget,
				reserved,
				reserved,
				reserved,
				reserved,
				prepositionParam,
				notFeminine,
				notMasculine,
				singular,
				/* [2] */
				"with ID",
				'iID ',
				'long',
				"ID to insert to, if not present then a d"
				"ialog will appear",
				optional,
				singleItem,
				notEnumerated,
				reserved,
				enumsAreConstants,
				enumListCanRepeat,
				paramIsValue,
				notParamIsTarget,
				reserved,
				reserved,
				reserved,
				reserved,
				prepositionParam,
				notFeminine,
				notMasculine,
				singular,
				/* [3] */
				"with name",
				'iNam',
				'TEXT',
				"name of the icon (if left out the defaul"
				"t name for the ID will be used)",
				optional,
				singleItem,
				notEnumerated,
				reserved,
				enumsAreConstants,
				enumListCanRepeat,
				paramIsValue,
				notParamIsTarget,
				reserved,
				reserved,
				reserved,
				reserved,
				prepositionParam,
				notFeminine,
				notMasculine,
				singular
			}
		},
		{	/* array Classes: 0 elements */
		},
		{	/* array ComparisonOps: 0 elements */
		},
		{	/* array Enumerations: 0 elements */
		}
	}
};

resource 'alrx' (300) {
	versionOne {
		13,
		0,
		kUseThemeWindow,
		""
	}
};

data 'c2ic' (0) {
	$"16A9 2031 3939 3820 4D69 6861 6920 5061"            /* .© 1998 Mihai Pa */
	$"7270 6172 6974 61"                                  /* rparita */
};

resource 'dctb' (128) {
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

resource 'dctb' (129) {
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

resource 'dctb' (131) {
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

resource 'dlgx' (128) {
	versionZero {
		11
	}
};

resource 'dlgx' (129) {
	versionZero {
		13
	}
};

resource 'dlgx' (130) {
	versionZero {
		9
	}
};

resource 'dlgx' (131) {
	versionZero {
		9
	}
};

data 'iSNP' (-16455) {
	$"0000"                                               /* .. */
};

data 'iSNP' (128) {
	$"0000"                                               /* .. */
};

resource 'icl4' (128) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 000D CDCD CDCC 0000 0000 0000"
	$"0000 0000 00DD 0000 0CFD C000 0000 0000"
	$"0000 0000 0DC0 D000 CFDC DC00 0000 0000"
	$"0000 0000 DC00 0D0C FDCC CDC0 0000 0000"
	$"0000 000D C000 00DF DC00 00DC 0000 0000"
	$"0000 CEEE CC00 000D C000 000D C000 0000"
	$"0000 E0FC ECC0 0000 0000 0000 DC00 0000"
	$"CDDE C000 CADD 0C00 0000 00C0 CDC0 0000"
	$"D00A AAAA AADC FCC0 0000 3333 3333 BBBB"
	$"D000 CE00 FDCC FDC0 0000 3333 3323 2BBB"
	$"D00C E000 CFDC FDC0 0000 3333 32B2 BBB2"
	$"D0CE 0000 0CFC FDC0 000C 3333 2BBB B222"
	$"D0E0 0000 CFDC FDC0 3CC0 3333 B222 2B22"
	$"D0CE 000C FDCC FD33 33CC 2323 2BB2 B2B2"
	$"D0CC E0CF DCCC FD33 333C 33B2 2B2B 2B21"
	$"D0CC CEFD CCCC FD33 33DC 32B2 22B2 22B2"
	$"D0CC CCDC CCCC FDCC 3DDC 322B 2222 B111"
	$"D0CC CCCC CCCC FDCC CCCC B222 222B 1211"
	$"D0CC CCCC CCCC FDC0 CCC0 2222 2222 1111"
	$"DCCC CCCC CCCC FDC0 CCCC 22BB 2211 1111"
	$"0FFF FFFA FFFF DDCC 00CC CCCC CCCC ED00"
	$"0000 0000 CEDD DCC0 CC0C CCCC CCCE DC00"
	$"0000 0000 0CEC CCCC 0CCC CCCC CCED CCC0"
	$"0000 0000 00CE CC0C CCCC CCCC CEDC CC00"
	$"0000 0000 000C ECC0 C0CC CCCC EDCC C000"
	$"0000 0000 0000 CECC CCCC CCCE DCCC 0000"
	$"0000 0000 0000 0CEC CCCC CCED CCC0 0000"
	$"0000 0000 0000 00CE CCCC CEDC CC00 0000"
	$"0000 0000 0000 000C ECCC EDCC C000 0000"
	$"0000 0000 0000 0000 CECE DCC0 0000 0000"
	$"0000 0000 0000 0000 0CED CC"
};

resource 'icl8' (128) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0056 F856 F856"
	$"F856 F8F6 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 F9FA F500 0000"
	$"F5F6 FEF9 F600 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 00F9 F6F5 FAF5 0000"
	$"2BFE F9F7 F9F6 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 F92B F500 F5FA F5F7"
	$"FEF9 F6F6 F7F9 F600 0000 0000 0000 0000"
	$"0000 0000 0000 00F9 F6F5 00F5 00F5 FAFE"
	$"F9F6 F5F5 F5F5 F9F6 0000 0000 0000 0000"
	$"0000 0000 F6FC FCFC F6F6 F500 F500 F5F9"
	$"F6F5 F5F5 F5F5 F5F9 F600 0000 0000 0000"
	$"0000 0000 FBF5 FF2B FCF8 F6F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F9F6 0000 0000 0000"
	$"F681 81AC 2BF5 F5F5 F6FD 8181 F5F6 F5F5"
	$"F5F5 F5F5 F5F5 F6F5 F6F9 F600 0000 0000"
	$"8100 00FD FDFD FDFD FDFD F92B FEF8 F6F5"
	$"F5F5 F5F5 4646 4640 4040 4040 3A3A 3A3A"
	$"8100 F5F5 F6FC F5F5 FEF9 F8F8 FEF9 F6F5"
	$"F5F5 F5F5 4646 4022 4040 1C40 173A 3A3A"
	$"8100 F5F6 FCF5 0000 F6FE F9F8 FEF9 F6F5"
	$"F5F5 F5F5 4640 2240 401D 3A17 3A3A 3A10"
	$"81F5 F6FC F500 0000 00F6 FEF8 FEF9 F6F5"
	$"F5F5 F5F6 4022 4040 1C3A 3A3A 3A3B 1035"
	$"8100 FCF5 0000 0000 F6FE F9F8 FEF9 F6F5"
	$"D8F6 F6F5 4040 4041 3A1D 173B 1034 1110"
	$"81F5 F8FC F500 00F6 FEF9 F8F8 FEF9 D8D8"
	$"D8D8 2BF6 1C40 1C40 173A 3A17 3A11 3410"
	$"81F5 F6F8 FCF5 F6FE F9F8 2BF8 FEF9 D8D8"
	$"D8D8 D8F7 4041 3A17 3B3A 1734 1134 100B"
	$"81F5 F62B F8FC FEF9 F82B 2BF8 FEF9 D8D8"
	$"D8D8 FAF8 4017 3A3B 1710 3411 1011 2E11"
	$"81F5 F62B 2BF8 F9F8 2B2B F7F8 FEF9 F6F8"
	$"D8F9 56F7 403B 173A 3B17 3510 340B 0A0A"
	$"81F5 2B2B 2B2B 2B2B F72B 2BF8 FEF9 F62B"
	$"F7F8 2BF6 3A17 1017 1035 1034 0B10 2F0B"
	$"81F5 2B2B 2B2B 2B2B 2B2B F7F8 FEF9 F6F5"
	$"F6F6 F6F5 3B17 1010 3510 1011 0A0B 0A0A"
	$"812B F7F7 F8F8 F8F8 F8F8 F8F8 FEF9 F6F5"
	$"F6F6 F6F6 1710 3434 1035 0A2F 0A2F 0A0A"
	$"00FE FEFE FEFE FEFD FEFE FEFE F9F9 F6F6"
	$"F5F5 F6F6 F6F7 F7F7 F7F7 F7F7 FCF9 F500"
	$"0000 0000 0000 0000 F6AC FAF9 F9F6 F6F5"
	$"F6F6 F5F6 F6F6 F6F6 F6F6 F8AC F92B F500"
	$"0000 0000 0000 0000 00F6 FBF8 F6F6 F6F6"
	$"F5F6 F6F6 F6F6 F6F6 F6F8 FCF9 F72B F6F5"
	$"0000 0000 0000 0000 0000 F6FB F7F6 F5F6"
	$"F6F6 F6F6 F6F6 F6F6 F8FC F9F7 2BF6 F5F5"
	$"0000 0000 0000 0000 0000 00F6 FBF7 F6F5"
	$"F6F5 F6F6 F6F6 F6F8 FCF9 F72B F6F5 F500"
	$"0000 0000 0000 0000 0000 0000 F6FB F7F6"
	$"F6F6 F6F6 F6F6 F8FC F9F7 2BF6 F500 0000"
	$"0000 0000 0000 0000 0000 0000 00F6 FBF7"
	$"F6F6 F6F6 F6F8 FCF9 F72B F6F5 F500 0000"
	$"0000 0000 0000 0000 0000 0000 0000 F6FB"
	$"F7F6 F6F6 F8FC F9F7 2BF6 F5F5 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 00F6"
	$"FBF7 F6F8 FCF9 F72B F6F5 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"F6FB F8FC F9F7 2BF5 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"00F6 FBF9 F7F6 F5F5"
};

resource 'ics#' (128) {
	{	/* array: 2 elements */
		/* [1] */
		$"0000 0000 0000 1000 2800 063F 0638 0BB0"
		$"12A8 0210 7E00 0404",
		/* [2] */
		$"07C0 0FE0 3FF0 FFF8 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF 07FF 03FE 01FC 00F8"
	}
};

resource 'ics4' (128) {
	$"0000 0CCC CC00 0000 0000 CCC0 DDC0 0000"
	$"00CC C0CD CCCC 0000 0CDD CC00 000C C000"
	$"CDDD EDD0 00BB BB22 C0DC DDD0 0C33 33BB"
	$"CD00 DDEC C033 B222 CCCD DCE3 3C23 22BB"
	$"CCDD CCEB 3DB2 2B21 CCCC CDEC CC22 2211"
	$"DDDD DEDC 0CDB BDB1 0CCC DDC0 CCCC CDC0"
	$"0000 0CC0 CCCC DCC0 0000 00CC 0CCD DC00"
	$"0000 000D C0DD C000 0000 0000 CDDC"
};

resource 'ics8' (128) {
	$"0000 0000 00F7 2B2B 2BF8 0000 0000 0000"
	$"0000 0000 2B2B 2BF5 5656 F700 0000 0000"
	$"0000 F6F8 2B00 F656 F8F6 F6F7 0000 0000"
	$"F52B 56FA F82B 00F5 F5F5 00F6 2B00 0000"
	$"F7F9 81F9 FCF9 F9F5 F5F5 3939 3939 0F0F"
	$"F7F5 56F6 F9FA 81F5 00F6 46D8 4041 3A3A"
	$"F856 0000 5681 FB2B 32F5 4040 3A16 1710"
	$"F7F8 F756 FAF8 FBD7 D732 1C40 1617 342E"
	$"F7F6 56FA 2BF8 FB39 40F9 3A16 3B34 110A"
	$"F8F6 2B2B 2B56 FB2B 2B2B 163B 1011 0B0A"
	$"56FA FAFA 81FB 81F6 F5F6 3334 3457 3403"
	$"F52B 2B2B F981 F7F5 F6F6 F62B F7FA F8F5"
	$"0000 0000 00F8 F7F5 F6F6 F6F6 F9F8 F6F5"
	$"0000 0000 0000 F8F7 F5F6 F656 56F6 F500"
	$"0000 0000 0000 0056 F7F5 F956 F6F5 0000"
	$"0000 0000 0000 0000 F8F9 56F6 F5"
};

data 'ictb' (128) {
	$"0000 0000 0000 0000 0007 0020 0007 0034"            /* ........... ...4 */
	$"0007 0048 0007 005C 000F 0070 000F 0084"            /* ...H...\...p...„ */
	$"0001 0100 000A 0000 0000 0000 FFFF FFFF"            /* ............ÿÿÿÿ */
	$"FFFF 0000 0001 0000 000A 0000 0000 0000"            /* ÿÿ.............. */
	$"FFFF FFFF FFFF 0000 0001 0000 000A 0000"            /* ÿÿÿÿÿÿ.......... */
	$"0000 0000 FFFF FFFF FFFF 0000 0000 0000"            /* ....ÿÿÿÿÿÿ...... */
	$"0000 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........ÿÿÿÿÿÿ.. */
	$"0000 0400 0000 0000 0000 FFFF 0000 0006"            /* ..........ÿÿ.... */
	$"0000 0000 0000 0400 0000 0000 0000 FFFF"            /* ..............ÿÿ */
	$"0000 0006 0000 0000"                                /* ........ */
};

data 'ictb' (129) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0007 002C 8007 0040 0000 0000 0001 0000"            /* ...,€..@........ */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........ÿÿÿÿÿÿ.. */
	$"0054 0000 0009 0000 0000 0000 FFFF FFFF"            /* .T..........ÿÿÿÿ */
	$"FFFF 0000 0647 656E 6576 61"                        /* ÿÿ...Geneva */
};

data 'ictb' (131) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
};

data 'ictb' (132) {
};

resource 'mctb' (129, "File menu") {
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

resource 'mctb' (202) {
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

resource 'mctb' (203) {
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

resource 'mctb' (204) {
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

resource 'mctb' (205) {
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

resource 'mctb' (207) {
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

resource 'vers' (1) {
	0x1,
	0x60,
	release,
	0x0,
	14,
	"1.6",
	"©1998-9 Mihai Parparita"
};

resource 'vers' (2) {
	0x1,
	0x60,
	release,
	0x0,
	14,
	"1.6",
	"clip2icns 1.6"
};

