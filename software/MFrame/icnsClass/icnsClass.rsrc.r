/* Resource fork of software/MFrame/icnsClass/icnsClass.rsrc */
resource 'CNTL' (1001, "Flags Group Box", purgeable) {
	{245, 10, 307, 379},
	0,
	visible,
	100,
	0,
	160,
	0,
	"Flags"
};

resource 'CNTL' (1002, "ID Popup", purgeable) {
	{11, 130, 31, 152},
	0,
	visible,
	0,
	202,
	400,
	0,
	""
};

resource 'CNTL' (1005, "Icon Info: Icon Format", purgeable) {
	{40, 10, 60, 378},
	0,
	visible,
	-1,
	4000,
	401,
	0,
	"Icon Format:"
};

resource 'CNTL' (1006, "Members Group Box", purgeable) {
	{99, 9, 241, 381},
	0,
	visible,
	100,
	0,
	160,
	0,
	"Members"
};

resource 'CNTL' (1100, purgeable) {
	{121, 13, 137, 153},
	0,
	visible,
	100,
	0,
	377,
	0,
	"Thumbnail (128 x 128)"
};

resource 'CNTL' (1101, purgeable) {
	{165, 13, 181, 153},
	0,
	visible,
	100,
	0,
	377,
	0,
	"Huge (48 x 48)"
};

resource 'CNTL' (1102, purgeable) {
	{184, 13, 200, 153},
	0,
	visible,
	100,
	0,
	377,
	0,
	"Large (32 x 32)"
};

resource 'CNTL' (1103, purgeable) {
	{202, 13, 218, 153},
	0,
	visible,
	100,
	0,
	377,
	0,
	"Small (16 x 16)"
};

resource 'CNTL' (1104, purgeable) {
	{220, 13, 236, 153},
	0,
	visible,
	100,
	0,
	377,
	0,
	"Mini (16 x 12)"
};

resource 'CNTL' (1105, "Members Divider", purgeable) {
	{159, 15, 162, 373},
	0,
	visible,
	100,
	0,
	144,
	0,
	"Purgeable"
};

resource 'CNTL' (1106, purgeable) {
	{264, 14, 280, 124},
	0,
	visible,
	100,
	0,
	377,
	0,
	"Purgeable"
};

resource 'CNTL' (1107, purgeable) {
	{282, 14, 298, 124},
	0,
	visible,
	100,
	0,
	377,
	0,
	"Preload"
};

resource 'CNTL' (1108, purgeable) {
	{264, 134, 280, 244},
	0,
	visible,
	100,
	0,
	377,
	0,
	"Protected"
};

resource 'CNTL' (1109, purgeable) {
	{282, 134, 298, 244},
	0,
	visible,
	100,
	0,
	377,
	0,
	"System Heap"
};

resource 'CNTL' (1110, purgeable) {
	{264, 264, 280, 374},
	0,
	visible,
	100,
	0,
	377,
	0,
	"Locked"
};

resource 'DITL' (4000, "Icon Info", purgeable) {
	{	/* array DITLarray: 54 elements */
		/* [1] */
		{318, 306, 338, 374},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{318, 228, 338, 292},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{13, 7, 29, 58},
		StaticText {
			enabled,
			"ID:"
		},
		/* [4] */
		{13, 64, 29, 124},
		EditText {
			enabled,
			"-16455"
		},
		/* [5] */
		{70, 10, 86, 60},
		StaticText {
			disabled,
			"Name:"
		},
		/* [6] */
		{70, 64, 86, 375},
		EditText {
			enabled,
			""
		},
		/* [7] */
		{245, 10, 307, 379},
		Control {
			enabled,
			1001
		},
		/* [8] */
		{13, 198, 29, 376},
		StaticText {
			disabled,
			""
		},
		/* [9] */
		{264, 14, 280, 124},
		Control {
			enabled,
			1106
		},
		/* [10] */
		{282, 14, 298, 124},
		Control {
			enabled,
			1107
		},
		/* [11] */
		{264, 264, 280, 374},
		Control {
			enabled,
			1110
		},
		/* [12] */
		{264, 134, 280, 244},
		Control {
			enabled,
			1108
		},
		/* [13] */
		{282, 134, 298, 244},
		Control {
			enabled,
			1109
		},
		/* [14] */
		{13, 165, 29, 200},
		StaticText {
			disabled,
			"Size:"
		},
		/* [15] */
		{11, 130, 31, 152},
		Control {
			enabled,
			1002
		},
		/* [16] */
		{40, 10, 60, 378},
		Control {
			enabled,
			1005
		},
		/* [17] */
		{99, 9, 241, 381},
		Control {
			enabled,
			1006
		},
		/* [18] */
		{220, 13, 236, 153},
		Control {
			enabled,
			1104
		},
		/* [19] */
		{121, 13, 137, 153},
		Control {
			enabled,
			1100
		},
		/* [20] */
		{165, 13, 181, 153},
		Control {
			enabled,
			1101
		},
		/* [21] */
		{184, 13, 200, 153},
		Control {
			enabled,
			1102
		},
		/* [22] */
		{202, 13, 218, 153},
		Control {
			enabled,
			1103
		},
		/* [23] */
		{159, 15, 162, 373},
		Control {
			enabled,
			1105
		},
		/* [24] */
		{142, 15, 156, 53},
		StaticText {
			disabled,
			"Hints"
		},
		/* [25] */
		{142, 112, 154, 141},
		StaticText {
			disabled,
			"Icon:"
		},
		/* [26] */
		{142, 148, 154, 179},
		StaticText {
			disabled,
			"32-bit"
		},
		/* [27] */
		{142, 180, 154, 211},
		StaticText {
			disabled,
			"8-bit"
		},
		/* [28] */
		{142, 212, 154, 243},
		StaticText {
			disabled,
			"4-bit"
		},
		/* [29] */
		{142, 244, 154, 275},
		StaticText {
			disabled,
			"1-bit"
		},
		/* [30] */
		{142, 281, 154, 316},
		StaticText {
			disabled,
			"Mask:"
		},
		/* [31] */
		{142, 315, 154, 346},
		StaticText {
			disabled,
			"8-bit"
		},
		/* [32] */
		{142, 347, 154, 378},
		StaticText {
			disabled,
			"1-bit"
		},
		/* [33] */
		{165, 154, 181, 171},
		CheckBox {
			enabled,
			""
		},
		/* [34] */
		{184, 154, 200, 171},
		CheckBox {
			enabled,
			""
		},
		/* [35] */
		{202, 154, 218, 171},
		CheckBox {
			enabled,
			""
		},
		/* [36] */
		{165, 182, 181, 199},
		CheckBox {
			enabled,
			""
		},
		/* [37] */
		{184, 182, 200, 199},
		CheckBox {
			enabled,
			""
		},
		/* [38] */
		{202, 182, 218, 199},
		CheckBox {
			enabled,
			""
		},
		/* [39] */
		{220, 182, 236, 199},
		CheckBox {
			enabled,
			""
		},
		/* [40] */
		{165, 214, 181, 231},
		CheckBox {
			enabled,
			""
		},
		/* [41] */
		{184, 214, 200, 231},
		CheckBox {
			enabled,
			""
		},
		/* [42] */
		{202, 214, 218, 231},
		CheckBox {
			enabled,
			""
		},
		/* [43] */
		{220, 214, 236, 231},
		CheckBox {
			enabled,
			""
		},
		/* [44] */
		{165, 246, 181, 263},
		CheckBox {
			disabled,
			""
		},
		/* [45] */
		{184, 246, 200, 263},
		CheckBox {
			disabled,
			""
		},
		/* [46] */
		{202, 246, 218, 263},
		CheckBox {
			disabled,
			""
		},
		/* [47] */
		{220, 246, 236, 263},
		CheckBox {
			disabled,
			""
		},
		/* [48] */
		{165, 318, 181, 335},
		CheckBox {
			enabled,
			""
		},
		/* [49] */
		{184, 318, 200, 335},
		CheckBox {
			enabled,
			""
		},
		/* [50] */
		{202, 318, 218, 335},
		CheckBox {
			enabled,
			""
		},
		/* [51] */
		{165, 350, 181, 367},
		CheckBox {
			disabled,
			""
		},
		/* [52] */
		{184, 350, 200, 367},
		CheckBox {
			disabled,
			""
		},
		/* [53] */
		{202, 350, 218, 367},
		CheckBox {
			disabled,
			""
		},
		/* [54] */
		{220, 350, 236, 367},
		CheckBox {
			disabled,
			""
		}
	}
};

data 'DLGX' (4000) {
	$"0647 656E 6576 6100 0000 0000 0000 0000"            /* .Geneva......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0009 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0036 0000 0000 0000 0000 0000 0000 0001"            /* .6.............. */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0007"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 8000 0000"            /* ............Ä... */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 8000 0000 0000 0000 0000 0005"            /* ....Ä........... */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
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
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
};

resource 'DLOG' (4000, "Icon Info", purgeable) {
	{228, 594, 575, 978},
	1043,
	invisible,
	goAway,
	0x0,
	4000,
	"Icon Info…",
	centerMainScreen
};

resource 'MENU' (202) {
	202,
	textMenuProc,
	allEnabled,
	enabled,
	"IDs",
	{	/* array: 7 elements */
		/* [1] */
		"Item Icon", noIcon, hierarchicalMenu, "À", plain,
		/* [2] */
		"System Folders", noIcon, hierarchicalMenu, "Ã", plain,
		/* [3] */
		"Generic Icons", noIcon, hierarchicalMenu, "Õ", plain,
		/* [4] */
		"Internet Icons", noIcon, hierarchicalMenu, "Œ", plain,
		/* [5] */
		"Battery Status", noIcon, hierarchicalMenu, "œ", plain,
		/* [6] */
		"Badges", noIcon, hierarchicalMenu, "–", plain,
		/* [7] */
		"Others", noIcon, hierarchicalMenu, "—", plain
	}
};

resource 'MENU' (203) {
	203,
	textMenuProc,
	allEnabled,
	enabled,
	"Item Icon",
	{	/* array: 1 elements */
		/* [1] */
		"–16455 Item Icon", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (204) {
	204,
	textMenuProc,
	allEnabled,
	enabled,
	"System Folders",
	{	/* array: 56 elements */
		/* [1] */
		"–20803 Language & Region Support", noIcon, noKey, noMark, plain,
		/* [2] */
		"–20801 Internet Search Sites", noIcon, noKey, noMark, plain,
		/* [3] */
		"–20797 Scripts", noIcon, noKey, noMark, plain,
		/* [4] */
		"–20792 ColorSync Profiles", noIcon, noKey, noMark, plain,
		/* [5] */
		"–20744 Internet", noIcon, noKey, noMark, plain,
		/* [6] */
		"–20729 Favorites", noIcon, noKey, noMark, plain,
		/* [7] */
		"–20724 Speakable Items", noIcon, noKey, noMark, plain,
		/* [8] */
		"–20723 Appearance", noIcon, noKey, noMark, plain,
		/* [9] */
		"–3999 Generic Folder", noIcon, noKey, noMark, plain,
		/* [10] */
		"–3997 Open Folder", noIcon, noKey, noMark, plain,
		/* [11] */
		"–3994 Private Folder", noIcon, noKey, noMark, plain,
		/* [12] */
		"–3993 Trash Empty", noIcon, noKey, noMark, plain,
		/* [13] */
		"–3992 Desktop", noIcon, noKey, noMark, plain,
		/* [14] */
		"–3984 Trash Full", noIcon, noKey, noMark, plain,
		/* [15] */
		"–3983 System Folder", noIcon, noKey, noMark, plain,
		/* [16] */
		"–3982 Apple Menu Items", noIcon, noKey, noMark, plain,
		/* [17] */
		"–3981 Startup Items", noIcon, noKey, noMark, plain,
		/* [18] */
		"–3980 Shared Folder", noIcon, noKey, noMark, plain,
		/* [19] */
		"–3979 Drop Folder", noIcon, noKey, noMark, plain,
		/* [20] */
		"–3978 Share Point", noIcon, noKey, noMark, plain,
		/* [21] */
		"–3977 Mounted Folder", noIcon, noKey, noMark, plain,
		/* [22] */
		"–3976 Control Panels", noIcon, noKey, noMark, plain,
		/* [23] */
		"–3975 Print Spool", noIcon, noKey, noMark, plain,
		/* [24] */
		"–3974 Preferences", noIcon, noKey, noMark, plain,
		/* [25] */
		"–3973 Extensions", noIcon, noKey, noMark, plain,
		/* [26] */
		"–3972 File Server", noIcon, noKey, noMark, plain,
		/* [27] */
		"–3968 Fonts", noIcon, noKey, noMark, plain,
		/* [28] */
		"–3966 Recent Documents", noIcon, noKey, noMark, plain,
		/* [29] */
		"–3965 Recent Applications", noIcon, noKey, noMark, plain,
		/* [30] */
		"–3964 Recent Servers", noIcon, noKey, noMark, plain,
		/* [31] */
		"–3963 MacOS Read Me Files", noIcon, noKey, noMark, plain,
		/* [32] */
		"–3962 Control Strip Modules", noIcon, noKey, noMark, plain,
		/* [33] */
		"–3961 Sounds", noIcon, noKey, noMark, plain,
		/* [34] */
		"–3960 Help", noIcon, noKey, noMark, plain,
		/* [35] */
		"–3959 Scripting Additions", noIcon, noKey, noMark, plain,
		/* [36] */
		"–3958 Internet Plug-ins", noIcon, noKey, noMark, plain,
		/* [37] */
		"–3957 Language Support", noIcon, noKey, noMark, plain,
		/* [38] */
		"–3956 Shared Libraries", noIcon, noKey, noMark, plain,
		/* [39] */
		"–3955 Text Encodings", noIcon, noKey, noMark, plain,
		/* [40] */
		"–3954 Printer Drivers", noIcon, noKey, noMark, plain,
		/* [41] */
		"–3953 Printer Descriptions", noIcon, noKey, noMark, plain,
		/* [42] */
		"–3952 Voices", noIcon, noKey, noMark, plain,
		/* [43] */
		"–3951 Control Panels (Disabled)", noIcon, noKey, noMark, plain,
		/* [44] */
		"–3950 Extensions (Disabled)", noIcon, noKey, noMark, plain,
		/* [45] */
		"–3949 Startup Items (Disabled)", noIcon, noKey, noMark, plain,
		/* [46] */
		"–3948 Shutdown Items (Disabled)", noIcon, noKey, noMark, plain,
		/* [47] */
		"–3947 System Extensions (Disabled)", noIcon, noKey, noMark, plain,
		/* [48] */
		"–3946 Assistants", noIcon, noKey, noMark, plain,
		/* [49] */
		"–3945 Utilities", noIcon, noKey, noMark, plain,
		/* [50] */
		"–3944 Application Support", noIcon, noKey, noMark, plain,
		/* [51] */
		"–3943 Apple Extras", noIcon, noKey, noMark, plain,
		/* [52] */
		"–3942 Contextual Menu Items", noIcon, noKey, noMark, plain,
		/* [53] */
		"–3812 Workgroup", noIcon, noKey, noMark, plain,
		/* [54] */
		"–3811 User", noIcon, noKey, noMark, plain,
		/* [55] */
		"–3774 System Folder (protected)", noIcon, noKey, noMark, plain,
		/* [56] */
		"–3773 Applications Folder (protected)", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (205) {
	205,
	textMenuProc,
	allEnabled,
	enabled,
	"Generic Icons",
	{	/* array: 37 elements */
		/* [1] */
		"–20800 Disk Image", noIcon, noKey, noMark, plain,
		/* [2] */
		"–20799 Generic PC Card", noIcon, noKey, noMark, plain,
		/* [3] */
		"–20794 TrueType Multi Flat Font", noIcon, noKey, noMark, plain,
		/* [4] */
		"–20752 Generic Font Scaler", noIcon, noKey, noMark, plain,
		/* [5] */
		"–20743 LaserWriter", noIcon, noKey, noMark, plain,
		/* [6] */
		"–20732 TrueType Flat Font", noIcon, noKey, noMark, plain,
		/* [7] */
		"–16415 Generic Extension", noIcon, noKey, noMark, plain,
		/* [8] */
		"–4000 Generic Document", noIcon, noKey, noMark, plain,
		/* [9] */
		"–3998 Floppy", noIcon, noKey, noMark, plain,
		/* [10] */
		"–3996 Generic App", noIcon, noKey, noMark, plain,
		/* [11] */
		"–3995 Apple HD", noIcon, noKey, noMark, plain,
		/* [12] */
		"–3991 Generic DA", noIcon, noKey, noMark, plain,
		/* [13] */
		"–3989 Edition File", noIcon, noKey, noMark, plain,
		/* [14] */
		"–3988 RAM Disk", noIcon, noKey, noMark, plain,
		/* [15] */
		"–3987 CD", noIcon, noKey, noMark, plain,
		/* [16] */
		"–3985 Stationery", noIcon, noKey, noMark, plain,
		/* [17] */
		"–3971 Generic Preferences", noIcon, noKey, noMark, plain,
		/* [18] */
		"–3970 Generic Suitcase", noIcon, noKey, noMark, plain,
		/* [19] */
		"–3969 Generic DA Document", noIcon, noKey, noMark, plain,
		/* [20] */
		"–3967 Shared Library", noIcon, noKey, noMark, plain,
		/* [21] */
		"–3851 Generic Control Strip Module", noIcon, noKey, noMark, plain,
		/* [22] */
		"–3850 Generic Codec", noIcon, noKey, noMark, plain,
		/* [23] */
		"–3832 PC Disk", noIcon, noKey, noMark, plain,
		/* [24] */
		"–3831 Apple II Disk", noIcon, noKey, noMark, plain,
		/* [25] */
		"–3824 Generic Control Panel", noIcon, noKey, noMark, plain,
		/* [26] */
		"–3817 Removable Disk", noIcon, noKey, noMark, plain,
		/* [27] */
		"–3810 Sound", noIcon, noKey, noMark, plain,
		/* [28] */
		"–3809 International Script", noIcon, noKey, noMark, plain,
		/* [29] */
		"–3808 TrueType Font", noIcon, noKey, noMark, plain,
		/* [30] */
		"–3807 Bitmap Font", noIcon, noKey, noMark, plain,
		/* [31] */
		"–3806 Keyboard Layout", noIcon, noKey, noMark, plain,
		/* [32] */
		"–3805 DA Suitcase", noIcon, noKey, noMark, plain,
		/* [33] */
		"–3804 Font Suitcase", noIcon, noKey, noMark, plain,
		/* [34] */
		"–3803 Sound Clipping", noIcon, noKey, noMark, plain,
		/* [35] */
		"–3802 Text Clipping", noIcon, noKey, noMark, plain,
		/* [36] */
		"–3801 Picture Clipping", noIcon, noKey, noMark, plain,
		/* [37] */
		"–3800 Generic Clipping", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (206) {
	206,
	textMenuProc,
	allEnabled,
	enabled,
	"Internet Icons",
	{	/* array: 12 elements */
		/* [1] */
		"–20796 AppleTalk Zone", noIcon, noKey, noMark, plain,
		/* [2] */
		"–20795 FTP Server", noIcon, noKey, noMark, plain,
		/* [3] */
		"–20793 AppleShare Server", noIcon, noKey, noMark, plain,
		/* [4] */
		"–20739 Generic Location", noIcon, noKey, noMark, plain,
		/* [5] */
		"–20738 Newsgroup Location", noIcon, noKey, noMark, plain,
		/* [6] */
		"–20737 E-mail Location", noIcon, noKey, noMark, plain,
		/* [7] */
		"–20736 File Location", noIcon, noKey, noMark, plain,
		/* [8] */
		"–20735 AppleShare Location", noIcon, noKey, noMark, plain,
		/* [9] */
		"–20734 FTP Location", noIcon, noKey, noMark, plain,
		/* [10] */
		"–20733 HTTP Location", noIcon, noKey, noMark, plain,
		/* [11] */
		"–20731 IP File Server", noIcon, noKey, noMark, plain,
		/* [12] */
		"–20726 AppleTalk", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (207) {
	207,
	textMenuProc,
	0x7FFFFEFF,
	enabled,
	"Battery Status",
	{	/* array: 19 elements */
		/* [1] */
		"–20290 Battery Charging Full", noIcon, noKey, noMark, plain,
		/* [2] */
		"–20289 Battery Charging 90%", noIcon, noKey, noMark, plain,
		/* [3] */
		"–20288 Battery Charging 75%", noIcon, noKey, noMark, plain,
		/* [4] */
		"–20287 Battery Charging 60%", noIcon, noKey, noMark, plain,
		/* [5] */
		"–20286 Battery Charging 45%", noIcon, noKey, noMark, plain,
		/* [6] */
		"–20285 Battery Charging 30%", noIcon, noKey, noMark, plain,
		/* [7] */
		"–20284 Battery Charging 15%", noIcon, noKey, noMark, plain,
		/* [8] */
		"–20283 Battery Charging Empty", noIcon, noKey, noMark, plain,
		/* [9] */
		"-", noIcon, noKey, noMark, plain,
		/* [10] */
		"–20282 Battery In-use Full", noIcon, noKey, noMark, plain,
		/* [11] */
		"–20281 Battery In-Use 90%", noIcon, noKey, noMark, plain,
		/* [12] */
		"–20280 Battery In-Use 75%", noIcon, noKey, noMark, plain,
		/* [13] */
		"–20279 Battery In-Use 60%", noIcon, noKey, noMark, plain,
		/* [14] */
		"–20278 Battery In-Use 45%", noIcon, noKey, noMark, plain,
		/* [15] */
		"–20277 Battery In-Use 30%", noIcon, noKey, noMark, plain,
		/* [16] */
		"–20276 Battery In-Use 15%", noIcon, noKey, noMark, plain,
		/* [17] */
		"–20275 Battery In-Use Empty", noIcon, noKey, noMark, plain,
		/* [18] */
		"–20274 No Battery", noIcon, noKey, noMark, plain,
		/* [19] */
		"–4001 Plugged in (?)", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (208) {
	208,
	textMenuProc,
	allEnabled,
	enabled,
	"Badges",
	{	/* array: 5 elements */
		/* [1] */
		"–20789 Alias Badge", noIcon, noKey, noMark, plain,
		/* [2] */
		"–20788 Mounted Badge", noIcon, noKey, noMark, plain,
		/* [3] */
		"–20787 Shared Badge", noIcon, noKey, noMark, plain,
		/* [4] */
		"–20786 Locked Badge", noIcon, noKey, noMark, plain,
		/* [5] */
		"–20740 Script Badge", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (209) {
	209,
	textMenuProc,
	0x75F6FF6D,
	enabled,
	"Others",
	{	/* array: 43 elements */
		/* [1] */
		"–16386 Apple Menu Icon", noIcon, noKey, noMark, plain,
		/* [2] */
		"-", noIcon, noKey, noMark, plain,
		/* [3] */
		"–20798 Unlocked", noIcon, noKey, noMark, plain,
		/* [4] */
		"–3823 Locked", noIcon, noKey, noMark, plain,
		/* [5] */
		"-", noIcon, noKey, noMark, plain,
		/* [6] */
		"–20791 Descending Sort Order", noIcon, noKey, noMark, plain,
		/* [7] */
		"–20790 Ascending Sort Order", noIcon, noKey, noMark, plain,
		/* [8] */
		"-", noIcon, noKey, noMark, plain,
		/* [9] */
		"–20751 Privileges: Writable", noIcon, noKey, noMark, plain,
		/* [10] */
		"–20750 Privileges: Uknown", noIcon, noKey, noMark, plain,
		/* [11] */
		"–20749 Privileges: N/A", noIcon, noKey, noMark, plain,
		/* [12] */
		"–20748 Privileges: Read", noIcon, noKey, noMark, plain,
		/* [13] */
		"–20747 Privileges: Read/Write", noIcon, noKey, noMark, plain,
		/* [14] */
		"–3784 Privileges: No Folders", noIcon, noKey, noMark, plain,
		/* [15] */
		"–3783 Privileges: No Write", noIcon, noKey, noMark, plain,
		/* [16] */
		"–3782 Privileges: No Files", noIcon, noKey, noMark, plain,
		/* [17] */
		"-", noIcon, noKey, noMark, plain,
		/* [18] */
		"–20746 Snap to Grid", noIcon, noKey, noMark, plain,
		/* [19] */
		"–20745 Keep Arranged", noIcon, noKey, noMark, plain,
		/* [20] */
		"-", noIcon, noKey, noMark, plain,
		/* [21] */
		"–20741 Backwards Arrow", noIcon, noKey, noMark, plain,
		/* [22] */
		"–20742 Forward Arrow Icon", noIcon, noKey, noMark, plain,
		/* [23] */
		"–20730 Recent Items Icon", noIcon, noKey, noMark, plain,
		/* [24] */
		"–20729 Favorite Items", noIcon, noKey, noMark, plain,
		/* [25] */
		"–20728 Shortcut Icon", noIcon, noKey, noMark, plain,
		/* [26] */
		"-", noIcon, noKey, noMark, plain,
		/* [27] */
		"–20271 Help Icon", noIcon, noKey, noMark, plain,
		/* [28] */
		"-", noIcon, noKey, noMark, plain,
		/* [29] */
		"–16509 Clipboard", noIcon, noKey, noMark, plain,
		/* [30] */
		"–16494 System Suitcase", noIcon, noKey, noMark, plain,
		/* [31] */
		"–16482 Finder", noIcon, noKey, noMark, plain,
		/* [32] */
		"–3828 MacOS Logo", noIcon, noKey, noMark, plain,
		/* [33] */
		"-", noIcon, noKey, noMark, plain,
		/* [34] */
		"–3822 Stop Icon", noIcon, noKey, noMark, plain,
		/* [35] */
		"–3821 Caution Icon", noIcon, noKey, noMark, plain,
		/* [36] */
		"–3820 Note Icon", noIcon, noKey, noMark, plain,
		/* [37] */
		"-", noIcon, noKey, noMark, plain,
		/* [38] */
		"–3816 Group", noIcon, noKey, noMark, plain,
		/* [39] */
		"–3815 Owner", noIcon, noKey, noMark, plain,
		/* [40] */
		"–3813 Guest User", noIcon, noKey, noMark, plain,
		/* [41] */
		"–3814 User", noIcon, noKey, noMark, plain,
		/* [42] */
		"-", noIcon, noKey, noMark, plain,
		/* [43] */
		"Custom ID", noIcon, noKey, noMark, 2
	}
};

resource 'MENU' (4000, "Icon Formats") {
	4000,
	textMenuProc,
	allEnabled,
	enabled,
	"Icon Formats",
	{	/* array: 5 elements */
		/* [1] */
		"Mac OS Universal", noIcon, noKey, noMark, plain,
		/* [2] */
		"Mac OS New", noIcon, noKey, noMark, plain,
		/* [3] */
		"Mac OS Old", noIcon, noKey, noMark, plain,
		/* [4] */
		"Windows", noIcon, noKey, noMark, plain,
		/* [5] */
		"Mac OS X Server", noIcon, noKey, noMark, plain
	}
};

resource 'STR#' (4000, "Format Names", purgeable) {
	{	/* array StringArray: 1 elements */
		/* [1] */
		"All Formats"
	}
};

resource 'STR#' (4001, "Icon Part Names", purgeable) {
	{	/* array StringArray: 24 elements */
		/* [1] */
		"Thumbnail 32-bit Icon",
		/* [2] */
		"Thumbnail 8-bit Mask",
		/* [3] */
		"Huge 32-bit Icon",
		/* [4] */
		"Huge 8-bit Icon",
		/* [5] */
		"Huge 4-bit Icon",
		/* [6] */
		"Huge 1-bit Icon",
		/* [7] */
		"Huge 8-bit Mask",
		/* [8] */
		"Huge 1-bit Mask",
		/* [9] */
		"Large 32-bit Icon",
		/* [10] */
		"Large 8-bit Icon",
		/* [11] */
		"Large 4-bit Icon",
		/* [12] */
		"Large 1-bit Icon",
		/* [13] */
		"Large 8-bit Mask",
		/* [14] */
		"Large 1-bit Mask",
		/* [15] */
		"Small 32-bit Icon",
		/* [16] */
		"Small 8-bit Icon",
		/* [17] */
		"Small 4-bit Icon",
		/* [18] */
		"Small 1-bit Icon",
		/* [19] */
		"Small 8-bit Mask",
		/* [20] */
		"Small 1-bit Mask",
		/* [21] */
		"Mini 8-bit Icon",
		/* [22] */
		"Mini 4-bit Icon",
		/* [23] */
		"Mini 1-bit Icon",
		/* [24] */
		"Mini 1-bit Mask"
	}
};

resource 'STR#' (4002, "Misc. Icon Strings", purgeable) {
	{	/* array StringArray: 2 elements */
		/* [1] */
		"<I>None</I>",
		/* [2] */
		"<I>Item’s Finder Icon</I>"
	}
};

resource 'STR#' (4003, "Icon Info Balloon Help", purgeable) {
	{	/* array StringArray: 13 elements */
		/* [1] */
		"Sets the selected attributes and closes "
		"this dialog.",
		/* [2] */
		"Closes this dialog without making any ch"
		"anges.",
		/* [3] */
		"Each icon within a file must have an uni"
		"que ID.",
		/* [4] */
		"This is the size of the final icon resou"
		"rce.",
		/* [5] */
		"Names are optional, but they can help yo"
		"u identify icon resources quickly.",
		/* [6] */
		"If an icon is purgeable, it will be unlo"
		"aded from memory is space is short.",
		/* [7] */
		"If an icon is preloaded, it will be load"
		"ed automatically once a file is opened.",
		/* [8] */
		"If an icon is locked, then it cannot be "
		"moved while loaded in memory.",
		/* [9] */
		"If an icon is protected, then it cannot "
		"be modified.",
		/* [10] */
		"If an icon is part of the system heap, t"
		"hen it will be placed in the area of mem"
		"ory that is used by the system.",
		/* [11] */
		"This pop-up menu can be used to select c"
		"ommonly used icon IDs.",
		/* [12] */
		"This pop-up menu can be used to select v"
		"arious icon formats. Note that some of t"
		"hem do not support all options (e.g. Win"
		"dows does not allow 8-bit masks).",
		/* [13] */
		"These checkboxes are used to select the "
		"possible members that the icon can have."
		" Only the checked members will appear in"
		" the members palette. Some checkboxes ma"
		"ybe be disabled if the current format do"
		"es not support them."
	}
};

resource 'STR#' (4004, "Icon Info Strings", purgeable) {
	{	/* array StringArray: 5 elements */
		/* [1] */
		"Insert Icon…",
		/* [2] */
		" bytes",
		/* [3] */
		"An icon with the ID <ID> already exists "
		"in this file. If you continue, the old i"
		"con will be overwritten when the current"
		" one is saved.",
		/* [4] */
		"Overwrite",
		/* [5] */
		"Cancel"
	}
};

resource 'cctb' (1001) {
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

resource 'cctb' (1002) {
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

resource 'cctb' (1006) {
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

data 'clut' (4000, "Windows 4-bit Colors") {
	$"0000 0000 0000 000F 0000 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0001 0000 0000 7B7B 0002 0000 7B7B 0000"            /* ......{{....{{.. */
	$"0003 0000 7B7B 7B7B 0004 7B7B 0000 0000"            /* ....{{{{..{{.... */
	$"0005 7B7B 0000 7B7B 0006 7B7B 7B7B 0000"            /* ..{{..{{..{{{{.. */
	$"0007 BDBD BDBD BDBD 0008 7B7B 7B7B 7B7B"            /* ..ΩΩΩΩΩΩ..{{{{{{ */
	$"0009 0000 0000 FFFF 000A 0000 FFFF 0000"            /* ......ˇˇ....ˇˇ.. */
	$"000B 0000 FFFF FFFF 000C FFFF 0000 0000"            /* ....ˇˇˇˇ..ˇˇ.... */
	$"000D FFFF 0000 FFFF 000E FFFF FFFF 0000"            /* ..ˇˇ..ˇˇ..ˇˇˇˇ.. */
	$"000F 0000 0000 0000"                                /* ........ */
};

data 'clut' (4001, "Windows 8-bit Colors") {
	$"0000 0008 8000 00FF 0000 FFFF FFFF FFFF"            /* ....Ä..ˇ..ˇˇˇˇˇˇ */
	$"0000 FF00 0000 3300 0000 A500 0000 2100"            /* ..ˇ...3...•...!. */
	$"0000 CC00 0000 3300 0000 FF00 3300 6600"            /* ..Ã...3...ˇ.3.f. */
	$"0000 9900 0000 3300 0000 CC00 3300 6600"            /* ..ô...3...Ã.3.f. */
	$"0000 FF00 6600 9900 0000 FF00 0000 6600"            /* ..ˇ.f.ô...ˇ...f. */
	$"0000 CC00 0000 6600 0000 6600 0000 3300"            /* ..Ã...f...f...3. */
	$"0000 FF00 3300 9900 0000 9900 3300 6600"            /* ..ˇ.3.ô...ô.3.f. */
	$"0000 CC00 6600 9900 0000 FF00 9900 CC00"            /* ..Ã.f.ô...ˇ.ô.Ã. */
	$"0000 FF00 0000 9900 0000 9900 0000 6600"            /* ..ˇ...ô...ô...f. */
	$"0000 CC00 3300 9900 0000 FF00 6600 CC00"            /* ..Ã.3.ô...ˇ.f.Ã. */
	$"0000 D600 0000 9300 0000 CC00 0000 9900"            /* ..÷...ì...Ã...ô. */
	$"0000 FF00 3300 CC00 0000 FF00 0000 CC00"            /* ..ˇ.3.Ã...ˇ...Ã. */
	$"0000 FF00 0000 FF00 0000 CC00 0000 CC00"            /* ..ˇ...ˇ...Ã...Ã. */
	$"0000 9900 0000 9900 0000 8000 0000 8000"            /* ..ô...ô...Ä...Ä. */
	$"0000 6600 0000 6600 0000 3300 0000 3300"            /* ..f...f...3...3. */
	$"0000 FF00 3300 FF00 0000 CC00 3300 CC00"            /* ..ˇ.3.ˇ...Ã.3.Ã. */
	$"0000 9900 3300 9900 0000 FF00 6600 FF00"            /* ..ô.3.ô...ˇ.f.ˇ. */
	$"0000 CC00 6600 CC00 0000 6600 3300 6600"            /* ..Ã.f.Ã...f.3.f. */
	$"0000 FF00 9900 FF00 0000 9900 6600 9900"            /* ..ˇ.ô.ˇ...ô.f.ô. */
	$"0000 CC00 9900 CC00 0000 FF00 CC00 FF00"            /* ..Ã.ô.Ã...ˇ.Ã.ˇ. */
	$"0000 CC00 0000 FF00 0000 9900 0000 CC00"            /* ..Ã...ˇ...ô...Ã. */
	$"0000 CC00 3300 FF00 0000 6600 0000 9900"            /* ..Ã.3.ˇ...f...ô. */
	$"0000 9900 3300 CC00 0000 CC00 6600 FF00"            /* ..ô.3.Ã...Ã.f.ˇ. */
	$"0000 9900 0000 FF00 0000 8000 0000 FF00"            /* ..ô...ˇ...Ä...ˇ. */
	$"0000 6600 0000 CC00 0000 3300 0000 6600"            /* ..f...Ã...3...f. */
	$"0000 9900 3300 FF00 0000 6600 3300 9900"            /* ..ô.3.ˇ...f.3.ô. */
	$"0000 9900 6600 CC00 0000 CC00 9900 FF00"            /* ..ô.f.Ã...Ã.ô.ˇ. */
	$"0000 6600 0000 FF00 0000 3300 0000 9900"            /* ..f...ˇ...3...ô. */
	$"0000 6600 3300 CC00 0000 9900 6600 FF00"            /* ..f.3.Ã...ô.f.ˇ. */
	$"0000 3300 0000 CC00 0000 6600 3300 FF00"            /* ..3...Ã...f.3.ˇ. */
	$"0000 0000 0000 FF00 0000 0000 0000 CC00"            /* ......ˇ.......Ã. */
	$"0000 0000 0000 9900 0000 0000 0000 8000"            /* ......ô.......Ä. */
	$"0000 0000 0000 6600 0000 0000 0000 3300"            /* ......f.......3. */
	$"0000 3300 3300 FF00 0000 3300 3300 CC00"            /* ..3.3.ˇ...3.3.Ã. */
	$"0000 3300 3300 9900 0000 6600 6600 FF00"            /* ..3.3.ô...f.f.ˇ. */
	$"0000 6600 6600 CC00 0000 3300 3300 6600"            /* ..f.f.Ã...3.3.f. */
	$"0000 9900 9900 FF00 0000 6600 6600 9900"            /* ..ô.ô.ˇ...f.f.ô. */
	$"0000 9900 9900 CC00 0000 CC00 CC00 FF00"            /* ..ô.ô.Ã...Ã.Ã.ˇ. */
	$"0000 A000 A000 A400 0000 0000 3300 CC00"            /* ..†.†.§.....3.Ã. */
	$"0000 3300 6600 FF00 0000 0000 3300 9900"            /* ..3.f.ˇ.....3.ô. */
	$"0000 3300 6600 CC00 0000 6600 9900 FF00"            /* ..3.f.Ã...f.ô.ˇ. */
	$"0000 0000 6600 FF00 0000 0000 6600 CC00"            /* ....f.ˇ.....f.Ã. */
	$"0000 0000 3300 6600 0000 3300 9900 FF00"            /* ....3.f...3.ô.ˇ. */
	$"0000 3300 6600 9900 0000 6600 9900 CC00"            /* ..3.f.ô...f.ô.Ã. */
	$"0000 9900 CC00 FF00 0000 A600 CA00 F000"            /* ..ô.Ã.ˇ...¶. .. */
	$"0000 0000 9900 FF00 0000 CC00 EC00 FF00"            /* ....ô.ˇ...Ã.Ï.ˇ. */
	$"0000 0000 6600 9900 0000 3300 9900 CC00"            /* ....f.ô...3.ô.Ã. */
	$"0000 6600 CC00 FF00 0000 0000 9900 CC00"            /* ..f.Ã.ˇ.....ô.Ã. */
	$"0000 3300 CC00 FF00 0000 0000 CC00 FF00"            /* ..3.Ã.ˇ.....Ã.ˇ. */
	$"0000 0000 FF00 FF00 0000 0000 CC00 CC00"            /* ....ˇ.ˇ.....Ã.Ã. */
	$"0000 0000 9900 9900 0000 0000 8000 8000"            /* ....ô.ô.....Ä.Ä. */
	$"0000 0000 6600 6600 0000 0000 3300 3300"            /* ....f.f.....3.3. */
	$"0000 3300 FF00 FF00 0000 3300 CC00 CC00"            /* ..3.ˇ.ˇ...3.Ã.Ã. */
	$"0000 3300 9900 9900 0000 6600 FF00 FF00"            /* ..3.ô.ô...f.ˇ.ˇ. */
	$"0000 6600 CC00 CC00 0000 3300 6600 6600"            /* ..f.Ã.Ã...3.f.f. */
	$"0000 9900 FF00 FF00 0000 6600 9900 9900"            /* ..ô.ˇ.ˇ...f.ô.ô. */
	$"0000 9900 CC00 CC00 0000 CC00 FF00 FF00"            /* ..ô.Ã.Ã...Ã.ˇ.ˇ. */
	$"0000 0000 FF00 CC00 0000 0000 CC00 9900"            /* ....ˇ.Ã.....Ã.ô. */
	$"0000 3300 FF00 CC00 0000 0000 9900 6600"            /* ..3.ˇ.Ã.....ô.f. */
	$"0000 3300 CC00 9900 0000 6600 FF00 CC00"            /* ..3.Ã.ô...f.ˇ.Ã. */
	$"0000 0000 FF00 9900 0000 0000 CC00 6600"            /* ....ˇ.ô.....Ã.f. */
	$"0000 0000 6600 3300 0000 3300 FF00 9900"            /* ....f.3...3.ˇ.ô. */
	$"0000 3300 9900 6600 0000 6600 CC00 9900"            /* ..3.ô.f...f.Ã.ô. */
	$"0000 9900 FF00 CC00 0000 0000 FF00 6600"            /* ..ô.ˇ.Ã.....ˇ.f. */
	$"0000 0000 9900 3300 0000 3300 CC00 6600"            /* ....ô.3...3.Ã.f. */
	$"0000 6600 FF00 9900 0000 0000 CC00 3300"            /* ..f.ˇ.ô.....Ã.3. */
	$"0000 3300 FF00 6600 0000 0000 FF00 0000"            /* ..3.ˇ.f.....ˇ... */
	$"0000 0000 CC00 0000 0000 0000 9900 0000"            /* ....Ã.......ô... */
	$"0000 0000 8000 0000 0000 0000 6600 0000"            /* ....Ä.......f... */
	$"0000 0000 3300 0000 0000 3300 FF00 3300"            /* ....3.....3.ˇ.3. */
	$"0000 3300 CC00 3300 0000 3300 9900 3300"            /* ..3.Ã.3...3.ô.3. */
	$"0000 6600 FF00 6600 0000 6600 CC00 6600"            /* ..f.ˇ.f...f.Ã.f. */
	$"0000 3300 6600 3300 0000 9900 FF00 9900"            /* ..3.f.3...ô.ˇ.ô. */
	$"0000 6600 9900 6600 0000 9900 CC00 9900"            /* ..f.ô.f...ô.Ã.ô. */
	$"0000 CC00 FF00 CC00 0000 3300 CC00 0000"            /* ..Ã.ˇ.Ã...3.Ã... */
	$"0000 6600 FF00 3300 0000 3300 9900 0000"            /* ..f.ˇ.3...3.ô... */
	$"0000 6600 CC00 3300 0000 9900 FF00 6600"            /* ..f.Ã.3...ô.ˇ.f. */
	$"0000 6600 FF00 0000 0000 6600 CC00 0000"            /* ..f.ˇ.....f.Ã... */
	$"0000 3300 6600 0000 0000 9900 FF00 3300"            /* ..3.f.....ô.ˇ.3. */
	$"0000 6600 9900 3300 0000 9900 CC00 6600"            /* ..f.ô.3...ô.Ã.f. */
	$"0000 CC00 FF00 9900 0000 9900 FF00 0000"            /* ..Ã.ˇ.ô...ô.ˇ... */
	$"0000 6600 9900 0000 0000 9900 CC00 3300"            /* ..f.ô.....ô.Ã.3. */
	$"0000 CC00 FF00 6600 0000 9900 CC00 0000"            /* ..Ã.ˇ.f...ô.Ã... */
	$"0000 CC00 FF00 3300 0000 CC00 FF00 0000"            /* ..Ã.ˇ.3...Ã.ˇ... */
	$"0000 FF00 FF00 0000 0000 CC00 CC00 0000"            /* ..ˇ.ˇ.....Ã.Ã... */
	$"0000 9900 9900 0000 0000 8000 8000 0000"            /* ..ô.ô.....Ä.Ä... */
	$"0000 6600 6600 0000 0000 3300 3300 0000"            /* ..f.f.....3.3... */
	$"0000 FF00 FF00 3300 0000 CC00 CC00 3300"            /* ..ˇ.ˇ.3...Ã.Ã.3. */
	$"0000 9900 9900 3300 0000 FF00 FF00 6600"            /* ..ô.ô.3...ˇ.ˇ.f. */
	$"0000 CC00 CC00 6600 0000 6600 6600 3300"            /* ..Ã.Ã.f...f.f.3. */
	$"0000 FF00 FF00 9900 0000 9900 9900 6600"            /* ..ˇ.ˇ.ô...ô.ô.f. */
	$"0000 CC00 CC00 9900 0000 FF00 FF00 CC00"            /* ..Ã.Ã.ô...ˇ.ˇ.Ã. */
	$"0000 E700 E700 D600 0000 AD00 A900 9000"            /* ..Á.Á.÷...≠.©.ê. */
	$"0000 FF00 CC00 0000 0000 CC00 9900 0000"            /* ..ˇ.Ã.....Ã.ô... */
	$"0000 FF00 CC00 3300 0000 9900 6600 0000"            /* ..ˇ.Ã.3...ô.f... */
	$"0000 CC00 9900 3300 0000 FF00 CC00 6600"            /* ..Ã.ô.3...ˇ.Ã.f. */
	$"0000 FF00 9900 0000 0000 CC00 6600 0000"            /* ..ˇ.ô.....Ã.f... */
	$"0000 6600 3300 0000 0000 FF00 9900 3300"            /* ..f.3.....ˇ.ô.3. */
	$"0000 9900 6600 3300 0000 CC00 9900 6600"            /* ..ô.f.3...Ã.ô.f. */
	$"0000 FF00 CC00 9900 0000 FF00 6600 0000"            /* ..ˇ.Ã.ô...ˇ.f... */
	$"0000 EF00 D600 C600 0000 9900 3300 0000"            /* ..Ô.÷.∆...ô.3... */
	$"0000 CC00 6600 3300 0000 FF00 9900 6600"            /* ..Ã.f.3...ˇ.ô.f. */
	$"0000 CC00 3300 0000 0000 FF00 6600 3300"            /* ..Ã.3.....ˇ.f.3. */
	$"0000 FF00 3300 0000 0000 FF00 0000 0000"            /* ..ˇ.3.....ˇ..... */
	$"0000 CC00 0000 0000 0000 9900 0000 0000"            /* ..Ã.......ô..... */
	$"0000 8000 0000 0000 0000 6600 0000 0000"            /* ..Ä.......f..... */
	$"0000 3300 0000 0000 0000 FF00 3300 3300"            /* ..3.......ˇ.3.3. */
	$"0000 CC00 3300 3300 0000 FF00 5000 5000"            /* ..Ã.3.3...ˇ.P.P. */
	$"0000 9900 3300 3300 0000 FF00 6600 6600"            /* ..ô.3.3...ˇ.f.f. */
	$"0000 CC00 6600 6600 0000 6600 3300 3300"            /* ..Ã.f.f...f.3.3. */
	$"0000 FF00 9900 9900 0000 9900 6600 6600"            /* ..ˇ.ô.ô...ô.f.f. */
	$"0000 CC00 9900 9900 0000 FF00 CC00 CC00"            /* ..Ã.ô.ô...ˇ.Ã.Ã. */
	$"0000 FF00 7C00 8000 0000 FE00 FE00 FE00"            /* ..ˇ.|.Ä...˛.˛.˛. */
	$"0000 F800 F800 F800 0000 F100 F100 F100"            /* ..¯.¯.¯...Ò.Ò.Ò. */
	$"0000 EA00 EA00 EA00 0000 E300 E300 E300"            /* ..Í.Í.Í...„.„.„. */
	$"0000 DD00 DD00 DD00 0000 D700 D700 D700"            /* ..›.›.›...◊.◊.◊. */
	$"0000 CC00 CC00 CC00 0000 CB00 CB00 CB00"            /* ..Ã.Ã.Ã...À.À.À. */
	$"0000 C000 C000 C000 0000 B200 B200 B200"            /* ..¿.¿.¿...≤.≤.≤. */
	$"0000 9900 9900 9900 0000 9600 9600 9600"            /* ..ô.ô.ô...ñ.ñ.ñ. */
	$"0000 8600 8600 8600 0000 8000 8000 8000"            /* ..Ü.Ü.Ü...Ä.Ä.Ä. */
	$"0000 7F00 7F00 7F00 0000 7700 7700 7700"            /* ..........w.w.w. */
	$"0000 6600 6600 6600 0000 5F00 5F00 5F00"            /* ..f.f.f..._._._. */
	$"0000 5500 5500 5500 0000 4D00 4D00 4D00"            /* ..U.U.U...M.M.M. */
	$"0000 4200 4200 4200 0000 3900 3900 3900"            /* ..B.B.B...9.9.9. */
	$"0000 3300 3300 3300 0000 2900 2900 2900"            /* ..3.3.3...).).). */
	$"0000 2200 2200 2200 0000 1C00 1C00 1C00"            /* .."."."......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000"                                /* ........ */
};

resource 'dctb' (4000) {
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

resource 'dlgx' (4000) {
	versionZero {
		15
	}
};

data 'hrct' (4000, "Icon Info", purgeable) {
	$"0002 0000 0000 0000 0000 000D 0014 0003"            /* ................ */
	$"0000 0000 013E 0132 0152 0176 0FA3 0001"            /* .....>.2.R.v.£.. */
	$"0014 0003 0000 0000 013E 00E4 0152 0124"            /* .........>.‰.R.$ */
	$"0FA3 0002 0014 0003 0000 0000 000D 0040"            /* .£.............@ */
	$"001D 007C 0FA3 0003 0014 0003 0000 0000"            /* ...|.£.......... */
	$"000D 00A5 001D 0178 0FA3 0004 0014 0003"            /* ...•...x.£...... */
	$"0000 0000 0046 0040 0056 0177 0FA3 0005"            /* .....F.@.V.w.£.. */
	$"0014 0003 0000 0000 0108 000E 0118 007C"            /* ...............| */
	$"0FA3 0006 0014 0003 0000 0000 011A 000E"            /* .£.............. */
	$"012A 007C 0FA3 0007 0014 0003 0000 0000"            /* .*.|.£.......... */
	$"0108 0108 0118 0176 0FA3 0008 0014 0003"            /* .......v.£...... */
	$"0000 0000 0108 0086 0118 00F4 0FA3 0009"            /* .......Ü...Ù.£.. */
	$"0014 0003 0000 0000 011A 0086 012A 00F4"            /* ...........Ü.*.Ù */
	$"0FA3 000A 0014 0003 0000 0000 000B 0082"            /* .£.............Ç */
	$"001F 0098 0FA3 000B 0014 0003 0000 0000"            /* ...ò.£.......... */
	$"0028 000A 003C 017A 0FA3 000C 0014 0003"            /* .(...<.z.£...... */
	$"0000 0000 0063 0009 00F1 017D 0FA3 000D"            /* .....c...Ò.}.£.. */
};

data 'hwin' (4000, "Icon Info", purgeable) {
	$"0002 0000 0000 0001 0FA0 6872 6374 0009"            /* .........†hrct.. */
	$"0949 636F 6E20 496E 666F"                           /* .Icon Info */
};

data 'hwin' (4001, "Insert Icon", purgeable) {
	$"0002 0000 0000 0001 0FA0 6872 6374 000B"            /* .........†hrct.. */
	$"0B49 6E73 6572 7420 4963 6F6E"                      /* .Insert Icon */
};

data 'ictb' (4000) {
	$"0028 00D8 0028 0100 0005 0128 0005 013C"            /* .(.ÿ.(.....(...< */
	$"0005 0150 0007 0164 0028 0178 0007 01A0"            /* ...P...d.(.x...† */
	$"0028 01B4 0028 01DC 0028 0204 0028 022C"            /* .(.¥.(.‹.(...(., */
	$"0028 0254 0005 027C 0028 0290 0028 02B8"            /* .(.T...|.(.ê.(.∏ */
	$"0028 02E0 0028 0308 0028 0330 0028 0358"            /* .(.‡.(...(.0.(.X */
	$"0028 0380 0028 03A8 0000 0000 0007 03D0"            /* .(.Ä.(.®.......– */
	$"0007 03E4 0005 03F8 0005 040C 0005 0420"            /* ...‰...¯.......  */
	$"0005 0434 0007 0448 0005 045C 0005 0470"            /* ...4...H...\...p */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0001 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0002 0000 0000 0000 0003 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0001 FFFF FFFF FFFF 0002 0000 0000 0000"            /* ..ˇˇˇˇˇˇ........ */
	$"0003 FFFF FFFF FFFF 0000 0000 0000 0000"            /* ..ˇˇˇˇˇˇ........ */
	$"0000 0000 FFFF FFFF FFFF 0000 0000 0000"            /* ....ˇˇˇˇˇˇ...... */
	$"0000 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........ˇˇˇˇˇˇ.. */
	$"0000 0000 0000 0000 0000 0000 FFFF FFFF"            /* ............ˇˇˇˇ */
	$"FFFF 0000 0001 0000 0009 0000 0000 0000"            /* ˇˇ.............. */
	$"FFFF FFFF FFFF 0000 0000 0000 0000 0003"            /* ˇˇˇˇˇˇ.......... */
	$"0000 0000 0000 0000 0001 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0002 0000 0000 0000 0003 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0000 0000 0000 0000 0000 0000 FFFF FFFF"            /* ............ˇˇˇˇ */
	$"FFFF 0000 0000 0000 0000 0003 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0001 FFFF FFFF FFFF 0002 0000"            /* ......ˇˇˇˇˇˇ.... */
	$"0000 0000 0003 FFFF FFFF FFFF 0000 0000"            /* ......ˇˇˇˇˇˇ.... */
	$"0000 0003 0000 0000 0000 0000 0001 FFFF"            /* ..............ˇˇ */
	$"FFFF FFFF 0002 0000 0000 0000 0003 FFFF"            /* ˇˇˇˇ..........ˇˇ */
	$"FFFF FFFF 0000 0000 0000 0003 0000 0000"            /* ˇˇˇˇ............ */
	$"0000 0000 0001 FFFF FFFF FFFF 0002 0000"            /* ......ˇˇˇˇˇˇ.... */
	$"0000 0000 0003 FFFF FFFF FFFF 0000 0000"            /* ......ˇˇˇˇˇˇ.... */
	$"0000 0003 0000 0000 0000 0000 0001 FFFF"            /* ..............ˇˇ */
	$"FFFF FFFF 0002 0000 0000 0000 0003 FFFF"            /* ˇˇˇˇ..........ˇˇ */
	$"FFFF FFFF 0000 0000 0000 0003 0000 0000"            /* ˇˇˇˇ............ */
	$"0000 0000 0001 FFFF FFFF FFFF 0002 0000"            /* ......ˇˇˇˇˇˇ.... */
	$"0000 0000 0003 FFFF FFFF FFFF 0000 0000"            /* ......ˇˇˇˇˇˇ.... */
	$"0000 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........ˇˇˇˇˇˇ.. */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0001 FFFF FFFF FFFF 0002 0000 0000 0000"            /* ..ˇˇˇˇˇˇ........ */
	$"0003 FFFF FFFF FFFF 0000 0000 0000 0003"            /* ..ˇˇˇˇˇˇ........ */
	$"0000 0000 0000 0000 0001 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0002 0000 0000 0000 0003 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0001 FFFF FFFF FFFF 0002 0000 0000 0000"            /* ..ˇˇˇˇˇˇ........ */
	$"0003 FFFF FFFF FFFF 0000 0000 0000 0003"            /* ..ˇˇˇˇˇˇ........ */
	$"0000 0000 0000 0000 0001 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0002 0000 0000 0000 0003 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0001 FFFF FFFF FFFF 0002 0000 0000 0000"            /* ..ˇˇˇˇˇˇ........ */
	$"0003 FFFF FFFF FFFF 0000 0000 0000 0003"            /* ..ˇˇˇˇˇˇ........ */
	$"0000 0000 0000 0000 0001 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0002 0000 0000 0000 0003 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0001 FFFF FFFF FFFF 0002 0000 0000 0000"            /* ..ˇˇˇˇˇˇ........ */
	$"0003 FFFF FFFF FFFF 0000 0000 0000 0003"            /* ..ˇˇˇˇˇˇ........ */
	$"0000 0000 0000 0000 0001 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0002 0000 0000 0000 0003 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0001 0100 0009 0000 0000 0000 FFFF FFFF"            /* ............ˇˇˇˇ */
	$"FFFF 0000 0001 0100 0009 0000 0000 0000"            /* ˇˇ.............. */
	$"FFFF FFFF FFFF 0000 0001 0100 0009 0000"            /* ˇˇˇˇˇˇ.......... */
	$"0000 0000 FFFF FFFF FFFF 0000 0001 0100"            /* ....ˇˇˇˇˇˇ...... */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........ˇˇˇˇˇˇ.. */
	$"0001 0100 0009 0000 0000 0000 FFFF FFFF"            /* ............ˇˇˇˇ */
	$"FFFF 0000 0001 0100 0009 0000 0000 0000"            /* ˇˇ.............. */
	$"FFFF FFFF FFFF 0000 0001 0100 0009 0000"            /* ˇˇˇˇˇˇ.......... */
	$"0000 0000 FFFF FFFF FFFF 0000 0001 0100"            /* ....ˇˇˇˇˇˇ...... */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........ˇˇˇˇˇˇ.. */
	$"0001 0100 0009 0000 0000 0000 FFFF FFFF"            /* ............ˇˇˇˇ */
	$"FFFF 0000"                                          /* ˇˇ.. */
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

resource 'mctb' (206) {
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

resource 'mctb' (208) {
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

