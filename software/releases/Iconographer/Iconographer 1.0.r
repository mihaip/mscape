/* Resource fork of software/releases/Iconographer/Iconographer 1.0 */
resource 'MENU' (128) {
	128,
	textMenuProc,
	0x7FFFFFFB,
	enabled,
	apple,
	{	/* array: 3 elements */
		/* [1] */
		"About Iconographer…", noIcon, noKey, noMark, plain,
		/* [2] */
		"Register…", noIcon, noKey, noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (130) {
	130,
	textMenuProc,
	allEnabled,
	enabled,
	"Open",
	{	/* array: 3 elements */
		/* [1] */
		"Mac OS Icon…", noIcon, "O", noMark, plain,
		/* [2] */
		"Windows Icon…", noIcon, "O", noMark, plain,
		/* [3] */
		"Mac OS X Icon…", noIcon, "O", noMark, plain
	}
};

resource 'MENU' (132) {
	132,
	textMenuProc,
	allEnabled,
	enabled,
	"Select",
	{	/* array: 4 elements */
		/* [1] */
		"All", noIcon, "A", noMark, plain,
		/* [2] */
		"Similar", noIcon, "S", noMark, plain,
		/* [3] */
		"Deselect", noIcon, "D", noMark, plain,
		/* [4] */
		"Inverse", noIcon, "I", noMark, plain
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
		"Rotate CW", noIcon, "T", noMark, plain,
		/* [2] */
		"Rotate CCW", noIcon, "T", noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Flip Horizontal", noIcon, "[", noMark, plain,
		/* [5] */
		"Flip Vertical", noIcon, "]", noMark, plain,
		/* [6] */
		"-", noIcon, noKey, noMark, plain,
		/* [7] */
		"Invert", noIcon, "I", noMark, plain
	}
};

resource 'MENU' (136) {
	136,
	textMenuProc,
	0x7FFFFFEB,
	enabled,
	"Icon",
	{	/* array: 6 elements */
		/* [1] */
		"Zoom In", noIcon, "=", noMark, plain,
		/* [2] */
		"Zoom Out", noIcon, "-", noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Colors", noIcon, hierarchicalMenu, "â", plain,
		/* [5] */
		"-", noIcon, noKey, noMark, plain,
		/* [6] */
		"Info…", noIcon, noKey, noMark, plain
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
		"Normally", noIcon, "C", noMark, plain,
		/* [2] */
		"Icon and Mask", noIcon, "C", noMark, plain,
		/* [3] */
		"Icon Family", noIcon, "C", noMark, plain
	}
};

resource 'MENU' (131) {
	131,
	textMenuProc,
	0x7FFFFBFB,
	enabled,
	"Edit",
	{	/* array: 12 elements */
		/* [1] */
		"Undo", noIcon, "Z", noMark, plain,
		/* [2] */
		"Redo", noIcon, "Z", noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Cut", noIcon, "X", noMark, plain,
		/* [5] */
		"Copy", noIcon, hierarchicalMenu, "á", plain,
		/* [6] */
		"Paste", noIcon, hierarchicalMenu, "Ü", plain,
		/* [7] */
		"Clear", noIcon, noKey, noMark, plain,
		/* [8] */
		"Select", noIcon, hierarchicalMenu, "Ñ", plain,
		/* [9] */
		"Transform", noIcon, hierarchicalMenu, "Ö", plain,
		/* [10] */
		"Adjust…", noIcon, "U", noMark, plain,
		/* [11] */
		"-", noIcon, noKey, noMark, plain,
		/* [12] */
		"Preferences…", noIcon, noKey, noMark, plain
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
		"Normally", noIcon, "V", noMark, plain,
		/* [2] */
		"As Icon and Mask", noIcon, "V", noMark, plain,
		/* [3] */
		"Into Current Selection", noIcon, "V", noMark, plain,
		/* [4] */
		"Icon Family", noIcon, "V", noMark, plain
	}
};

resource 'MENU' (137) {
	137,
	textMenuProc,
	allEnabled,
	enabled,
	"Color",
	{	/* array: 2 elements */
		/* [1] */
		"Mac OS System Palette", noIcon, noKey, noMark, plain,
		/* [2] */
		"Windows System Palette", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (129) {
	129,
	textMenuProc,
	0x7FFFFF77,
	enabled,
	"File",
	{	/* array: 9 elements */
		/* [1] */
		"New Icon", noIcon, "N", noMark, plain,
		/* [2] */
		"Open", noIcon, hierarchicalMenu, "Ç", plain,
		/* [3] */
		"Close", noIcon, "W", noMark, plain,
		/* [4] */
		"-", noIcon, noKey, noMark, plain,
		/* [5] */
		"Save", noIcon, "S", noMark, plain,
		/* [6] */
		"Save As…", noIcon, noKey, noMark, plain,
		/* [7] */
		"Save Into File…", noIcon, noKey, noMark, plain,
		/* [8] */
		"-", noIcon, noKey, noMark, plain,
		/* [9] */
		"Quit", noIcon, "Q", noMark, plain
	}
};

resource 'MENU' (2000, "Types") {
	2000,
	textMenuProc,
	0x7FFFFFFB,
	enabled,
	"Types",
	{	/* array: 3 elements */
		/* [1] */
		"Macintosh Icon", noIcon, noKey, noMark, plain,
		/* [2] */
		"Windows Icon", noIcon, noKey, noMark, plain,
		/* [3] */
		"Mac OS X Server Icon", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (200) {
	200,
	textMenuProc,
	allEnabled,
	enabled,
	"Icon Depths",
	{	/* array: 4 elements */
		/* [1] */
		"32 bit", noIcon, noKey, noMark, plain,
		/* [2] */
		"8 bit", noIcon, noKey, noMark, plain,
		/* [3] */
		"4 bit", noIcon, noKey, noMark, plain,
		/* [4] */
		"1 bit", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (201) {
	201,
	textMenuProc,
	allEnabled,
	enabled,
	"Mask Depths",
	{	/* array: 2 elements */
		/* [1] */
		"8 bit", noIcon, noKey, noMark, plain,
		/* [2] */
		"1 bit", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (1410) {
	1410,
	textMenuProc,
	allEnabled,
	enabled,
	"Font",
	{	/* array: 0 elements */
	}
};

resource 'MENU' (1412) {
	1412,
	textMenuProc,
	allEnabled,
	enabled,
	"Style",
	{	/* array: 7 elements */
		/* [1] */
		"Plain", noIcon, noKey, noMark, plain,
		/* [2] */
		"Bold", noIcon, noKey, noMark, 1,
		/* [3] */
		"Italic", noIcon, noKey, noMark, 2,
		/* [4] */
		"Underline", noIcon, noKey, noMark, 4,
		/* [5] */
		"Shadow", noIcon, noKey, noMark, 16,
		/* [6] */
		"Condensed", noIcon, noKey, noMark, 32,
		/* [7] */
		"Extended", noIcon, noKey, noMark, 64
	}
};

resource 'MENU' (1411) {
	1411,
	textMenuProc,
	0x7FFFFDFF,
	enabled,
	"Size",
	{	/* array: 11 elements */
		/* [1] */
		"9", noIcon, noKey, noMark, plain,
		/* [2] */
		"10", noIcon, noKey, noMark, plain,
		/* [3] */
		"12", noIcon, noKey, noMark, plain,
		/* [4] */
		"14", noIcon, noKey, noMark, plain,
		/* [5] */
		"18", noIcon, noKey, noMark, plain,
		/* [6] */
		"24", noIcon, noKey, noMark, plain,
		/* [7] */
		"36", noIcon, noKey, noMark, plain,
		/* [8] */
		"48", noIcon, noKey, noMark, plain,
		/* [9] */
		"72", noIcon, noKey, noMark, plain,
		/* [10] */
		"-", noIcon, noKey, noMark, plain,
		/* [11] */
		"Other", noIcon, noKey, noMark, 2
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

resource 'DLOG' (129, "Register") {
	{178, 612, 313, 962},
	1043,
	invisible,
	goAway,
	0x0,
	129,
	"Register…",
	alertPositionMainScreen
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

resource 'DLOG' (128, "About") {
	{88, 131, 307, 455},
	plainDBox,
	invisible,
	noGoAway,
	0x0,
	128,
	"About",
	alertPositionMainScreen
};

data 'DLOG' (3001, "Select Object", purgeable) {
	$"0000 0000 00D7 0158 0001 0000 0000 0000"            /* .....◊.X........ */
	$"0000 0BB9 00"                                       /* ...π. */
};

resource 'DLOG' (1410, "Text Tool", purgeable) {
	{389, 44, 622, 250},
	1043,
	invisible,
	goAway,
	0x0,
	1410,
	"Text Tool",
	centerParentWindow
};

resource 'DLOG' (1000, "Preferences", purgeable) {
	{255, 255, 480, 568},
	1043,
	invisible,
	goAway,
	0x0,
	1000,
	"Preferences",
	centerMainScreen
};

resource 'DLOG' (1001, "Icon Info", purgeable) {
	{195, 291, 387, 569},
	1043,
	invisible,
	goAway,
	0x0,
	1001,
	"Icon Info…",
	centerParentWindow
};

resource 'DLOG' (1010, "Adjust", purgeable) {
	{259, 337, 443, 704},
	1043,
	invisible,
	noGoAway,
	0x0,
	1010,
	"Adjust…",
	centerParentWindowScreen
};

resource 'DLOG' (1011, purgeable) {
	{341, 144, 561, 519},
	1024,
	visible,
	goAway,
	0x0,
	1011,
	"DITL 1011 “Adjust: Pane 1” from icnsEdit"
	"orClass.rsrc",
	noAutoCenter
};

resource 'DLOG' (1012, purgeable) {
	{337, 600, 549, 1015},
	1024,
	visible,
	goAway,
	0x0,
	1012,
	"",
	noAutoCenter
};

resource 'DLOG' (9999, purgeable) {
	{200, 219, 456, 645},
	documentProc,
	visible,
	goAway,
	0x0,
	9999,
	"Untitled Icon",
	noAutoCenter
};

resource 'DLOG' (300, "Icon Browser", purgeable) {
	{321, 46, 548, 399},
	1043,
	invisible,
	goAway,
	0x0,
	300,
	"Icon Browser",
	centerParentWindowScreen
};

resource 'FREF' (129) {
	'****',
	1,
	""
};

resource 'FREF' (128) {
	'APPL',
	0,
	""
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

resource 'icl4' (128) {
	$"0000 0000 0000 0000 0000 0000 0000 BB00"
	$"0000 0000 0000 0000 0000 0000 000B 1B00"
	$"0000 0000 0000 0000 FF00 0000 00B1 BA00"
	$"0000 0000 0000 00FF FF00 0000 BB1B A000"
	$"0000 0000 0000 FFFF 0FF0 000B 1CBA 0000"
	$"0000 0000 00FF FF00 CFFC CCB1 BEA0 0000"
	$"0000 0000 FFFF 00CC CCCC CB1B EA00 0000"
	$"0000 00FF FF00 0CCC CCBB B1DE AD00 0000"
	$"0000 FFFF 0000 0CCC DBEB 1DEA BDC0 0000"
	$"00FF FF00 0000 CCCD BEB1 DEAE BDCC 0000"
	$"FFFF 0000 000C DCDB EB1D EFEB BBCC C000"
	$"FF00 0000 0CDD CBBE BCDE FFBB DDCC CCFF"
	$"0FF0 000C DDDC DBEB DDCC DDCC CCCC CCFF"
	$"0FF0 000D CCCD DEEC CBBB CCCC CCCC CDFF"
	$"00FF 0000 CDDD CBDB EAAE EBBD CCDD BBFF"
	$"00FF 0000 DDCC BAAE EEEA AEEE EBBB BBFF"
	$"000F F000 CCCB 03FD CCCC CCDA EAEE EEFF"
	$"000F F000 CCDC 3FDC CCCC CCDF FEEE EEFF"
	$"0000 FF0C CCB3 FDCC CCCC CCCD FF0E EEFF"
	$"0000 FF0C CAAA DCCC CCDB 333D FF00 0000"
	$"0000 0FF0 CBBB CCCC C333 4CCC DFF0 0000"
	$"0000 0FF0 CBBB CCCB 33BC CCCC DFF0 0000"
	$"0000 00FF 0BBB 4B33 3BCC CCCC DDFF 0000"
	$"0000 00FF 0CBB BB3B CCCC CCDD FFFF CCCC"
	$"0000 000F F0CB BBCC CCCC DDFF FFDD DDCC"
	$"0000 000F F0CC CCCC CCDD FFFF DDDD DCCC"
	$"0000 0000 FF0C CCCC DDFF FFDD DDDD CC00"
	$"0000 0000 FF0C CCDD FFFF DDDD DDCC C000"
	$"0000 0000 0FF0 DDFF FFDD DDDD CCC0 0000"
	$"0000 0000 0FFD FFFF DDDD CCCC 0000 0000"
	$"0000 0000 00FF FFDD CCCC CC00 0000 0000"
	$"0000 0000 00FF ECCC CC"
};

resource 'icl4' (-16455) {
	$"0000 0000 0000 0000 0000 0000 0000 BB00"
	$"0000 0000 0000 0000 0000 0000 000B 1B00"
	$"0000 0000 0000 0000 FF00 0000 00B1 BA00"
	$"0000 0000 0000 00FF FF00 0000 BB1B A000"
	$"0000 0000 0000 FFFF 0FF0 000B 1CBA 0000"
	$"0000 0000 00FF FF00 CFFC CCB1 BEA0 0000"
	$"0000 0000 FFFF 00CC CCCC CB1B EA00 0000"
	$"0000 00FF FF00 0CCC CCBB B1DE AD00 0000"
	$"0000 FFFF 0000 0CCC DBEB 1DEA BDC0 0000"
	$"00FF FF00 0000 CCCD BEB1 DEAE BDCC 0000"
	$"FFFF 0000 000C DCDB EB1D EFEB BBCC C000"
	$"FF00 0000 0CDD CBBE BCDE FFBB DDCC CCFF"
	$"0FF0 000C DDDC DBEB DDCC DDCC CCCC CCFF"
	$"0FF0 000D CCCD DEEC CBBB CCCC CCCC CDFF"
	$"00FF 0000 CDDD CBDB EAAE EBBD CCDD BBFF"
	$"00FF 0000 DDCC BAAE EEEA AEEE EBBB BBFF"
	$"000F F000 CCCB 03FD CCCC CCDA EAEE EEFF"
	$"000F F000 CCDC 3FDC CCCC CCDF FEEE EEFF"
	$"0000 FF0C CCB3 FDCC CCCC CCCD FF0E EEFF"
	$"0000 FF0C CAAA DCCC CCDB 333D FF00 0000"
	$"0000 0FF0 CBBB CCCC C333 4CCC DFF0 0000"
	$"0000 0FF0 CBBB CCCB 33BC CCCC DFF0 0000"
	$"0000 00FF 0BBB 4B33 3BCC CCCC DDFF 0000"
	$"0000 00FF 0CBB BB3B CCCC CCDD FFFF CCCC"
	$"0000 000F F0CB BBCC CCCC DDFF FFDD DDCC"
	$"0000 000F F0CC CCCC CCDD FFFF DDDD DCCC"
	$"0000 0000 FF0C CCCC DDFF FFDD DDDD CC00"
	$"0000 0000 FF0C CCDD FFFF DDDD DDCC C000"
	$"0000 0000 0FF0 DDFF FFDD DDDD CCC0 0000"
	$"0000 0000 0FFD FFFF DDDD CCCC 0000 0000"
	$"0000 0000 00FF FFDD CCCC CC00 0000 0000"
	$"0000 0000 00FF ECCC CC"
};

resource 'icl4' (131, "Mac OS X Icon") {
	$"0000 00DD EEEE EEEE EEEE EEEE E000 0000"
	$"0000 00E0 0000 0000 0000 0000 EE00 0000"
	$"0000 00E0 0000 0000 0000 0000 ECE0 0000"
	$"0000 00E0 0000 0000 0000 0000 E0CD 0000"
	$"0AAA AAAA AAAA AAAA AACC 0000 E00C E000"
	$"0AA0 00A0 A000 A000 AACC 0000 E00C CE00"
	$"0AAA 0AA0 A0AA A0AA AADC C000 EEEE EEA0"
	$"0AAA 0AA0 A00A A00A AADC C000 CDDD DDA0"
	$"0AAA 0AA0 A0AA A0AA AADC C000 0CCC CDA0"
	$"0AAA 0AA0 A0AA A0AA AADC C000 0000 0DA0"
	$"0AAA AAAA AAAA AAAA AADC C000 0000 0DA0"
	$"0000 00AD DDDD DDDD DDCC 0000 0000 0DA0"
	$"0000 00EC CCCC CCCC CCCC 0000 0000 0DA0"
	$"0000 00E0 000C CCCC CCCC CCCC C000 0CA0"
	$"0000 00E0 00C0 CCCC CCCC CCCC CE00 0CA0"
	$"0000 00E0 00CC DDDD DDDD DDDD DE00 0CF0"
	$"0000 00E0 00CC DCCC CCDC CCCD DE00 0CF0"
	$"0000 00E0 00CC DD7C CEDD CDEE DE00 0CF0"
	$"0000 00E0 00CC 7DDC CCDC C5DD DE00 0CF0"
	$"0000 00E0 00CC DDDD CCCC EEDD DE00 0CF0"
	$"0000 00E0 00CC DDDD CCCD EDDD DE00 0CF0"
	$"0000 00E0 00CC DDDD DCCC DDDD DE00 0CF0"
	$"0000 00E0 00CC DDDD CCCC DDDD DE00 0CF0"
	$"0000 00E0 00CC DDDC C5DC CDDD DE00 0CF0"
	$"0000 00E0 00CC DDCC DEDC CCDD DE00 0CF0"
	$"0000 00E0 00CC DCCC CDDC CCCC DE00 0CF0"
	$"0000 00E0 00CC 7DE5 EDDD E5EE DE00 0CF0"
	$"0000 00E0 00CD DDDD DDDD DDDD DE00 0CF0"
	$"0000 00E0 000E EEEE EEEE EEEE E000 0CF0"
	$"0000 00E0 0000 0000 0000 0000 0000 0CF0"
	$"0000 00E0 CCCC CCCC CCCC CCCC CCCC CCF0"
	$"0000 00EE AAAA AAFA FFFF FFFF FFFF FFF0"
};

resource 'icl4' (130, "Windows Icon") {
	$"0000 00DD EEEE EEEE EEEE EEEE E000 0000"
	$"0000 00E0 0000 0000 0000 0000 EE00 0000"
	$"0000 00E0 0000 0000 0000 0000 ECE0 0000"
	$"0000 00E0 0000 0000 0000 0000 E0CD 0000"
	$"0AAA AAAA AAAA AAAA ACC0 0000 E00C E000"
	$"0AAA 0AA0 0AA0 0AAA ACC0 0000 E00C CE00"
	$"0AAA 0A0A AA0A A0AA ADCC 0000 EEEE EEA0"
	$"0AAA 0A0A AA0A A0AA ADCC 0000 CDDD DDA0"
	$"0AAA 0A0A AA0A A0AA ADCC 0000 0CCC CDA0"
	$"0AAA 0AA0 0AA0 0AAA ADCC 0000 0000 0DA0"
	$"0AAA AAAA AAAA AAAA ADCC 0000 0000 0DA0"
	$"0000 00AD DDDD DDDD DCC0 0000 0000 0DA0"
	$"0000 00EC CCCC CDDC CCC0 0000 0000 0DA0"
	$"0000 00E0 0000 CDDD DC00 0000 0000 0CA0"
	$"0000 00E0 0000 CCCD EEDD DCCC 0000 0CA0"
	$"0000 00E0 0000 CCCC CBAA FFFF DC00 0CF0"
	$"0000 00E0 0000 DCCC CDFB 2BF9 FEC0 0CF0"
	$"0000 00E0 000C DDDC CDA2 2EED EFC0 0CF0"
	$"0000 00E0 00DC CCDD BAAB BF8D FE00 0CF0"
	$"0000 00E0 00DC CCCD DAE9 FFEE FD00 0CF0"
	$"0000 00E0 00CD CCCC EAD5 92BF AC00 0CF0"
	$"0000 00E0 0000 DDCD A57E A11F D000 0CF0"
	$"0000 00E0 0000 0DEA AAEF A12F C000 0CF0"
	$"0000 00E0 0000 000C DEAF ABAE 0000 0CF0"
	$"0000 00E0 0000 0000 00CD EFFC 0000 0CF0"
	$"0000 00E0 0000 0000 0000 CCC0 0000 0CF0"
	$"0000 00E0 0000 0000 0000 0000 0000 0CF0"
	$"0000 00E0 0000 0000 0000 0000 0000 0CF0"
	$"0000 00E0 0000 0000 0000 0000 0000 0CF0"
	$"0000 00E0 0000 0000 0000 0000 0000 0CF0"
	$"0000 00E0 CCCC CCCC CCCC CCCC CCCC CCF0"
	$"0000 00EE AAAA AAAA FFFF FFFF FFFF FFF0"
};

resource 'icl4' (129, "Mac OS Icon") {
	$"0000 00DD EEEE EEEE EEEE EEEE E000 0000"
	$"0000 00E0 0000 0000 0000 0000 EE00 0000"
	$"0000 00E0 0000 0000 0000 0000 ECE0 0000"
	$"0000 00E0 0000 0000 0000 0000 E0CD 0000"
	$"0AAA AAAA AAAA AAAA AAAA CC00 E00C E000"
	$"0AA0 AA00 AA00 AA0A A0AA CC00 E00C CE00"
	$"0AA0 A0AA A0AA 0A00 A0AA DCC0 EEEE EEA0"
	$"0AA0 A0AA A0AA 0A0A 00AA DCC0 CDDD DDA0"
	$"0AA0 A0AA A0AA 0A0A 00AA DCC0 0CCC CDA0"
	$"0AA0 AA00 AA00 AA0A A0AA DCC0 0000 0DA0"
	$"0AAA AAAA AAAA AAAA AAAA DCC0 0000 0DA0"
	$"0000 00AD DDDD DDDD DDDD CC00 0000 0DA0"
	$"0000 00EC CCCC CCCC CCCC CC00 0000 0DA0"
	$"0000 00E0 0000 0000 00CE D000 0000 0CA0"
	$"0000 00E0 000C CCCC CCFE CCCC C000 0CA0"
	$"0000 00E0 000E D55D 5FED DDDD E000 0CF0"
	$"0000 00E0 000E 7DD5 CFC0 CC0C D000 0CF0"
	$"0000 00E0 0005 DDE5 DFCC DE0C E000 0CF0"
	$"0000 00E0 000E DDDD FDCC CCCC D000 0CF0"
	$"0000 00E0 000E DDD7 FDCC CCCC E000 0CF0"
	$"0000 00E0 0005 DDDD AFFE CC0C D000 0CF0"
	$"0000 00E0 000E DD5D 77DE 0CDC E000 0CF0"
	$"0000 00E0 0005 C5E5 55EF DEEC D000 0CF0"
	$"0000 00E0 000E DDC5 E5EA DC00 E000 0CF0"
	$"0000 00E0 000E 5DED 5DEF CDDD E000 0CF0"
	$"0000 00E0 000C CCCC CCCE ECCC C000 0CF0"
	$"0000 00E0 0000 0000 000C ED00 0000 0CF0"
	$"0000 00E0 0000 0000 0000 0000 0000 0CF0"
	$"0000 00E0 0000 0000 0000 0000 0000 0CF0"
	$"0000 00E0 0000 0000 0000 0000 0000 0CF0"
	$"0000 00E0 CCCC CCCC CCCC CCCC CCCC CCF0"
	$"0000 00EE AAAA AAFA FFFF FFFF FFFF FFF0"
};

resource 'icl8' (128) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 5858 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0058 0334 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"FFFF 0000 0000 0000 0000 5803 34DE 0000"
	$"0000 0000 0000 0000 0000 0000 0000 FFFF"
	$"FFFF 0000 0000 0000 5834 0334 DE00 0000"
	$"0000 0000 0000 0000 0000 0000 FFFF FFFF"
	$"00FF FF00 0000 0058 032D 34DE 0000 0000"
	$"0000 0000 0000 0000 0000 FFFF FFFF 0000"
	$"F8FF FF08 0832 5E03 3488 DE00 0000 0000"
	$"0000 0000 0000 0000 FFFF FFFF 0000 F6F6"
	$"F632 0808 325E 0334 88DE 0000 0000 0000"
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
	$"0000 0000 0000 0000 00FF FFF5 5656 FFFF"
	$"FEFF FAFA FAFA FAFA F8F8 F600 0000 0000"
	$"0000 0000 0000 0000 00FF FF56 FFFF FEFF"
	$"FAFA FAFA F8F8 F8F8 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 FFFF FEFF FAFA"
	$"F8F8 F8F8 F8F6 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 FFFF FBF8 F8F8"
	$"F6F6"
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
	$"00DD DDDD 00DD DD00 00DD DD00 00DD DDDD"
	$"DDF8 2BF5 F5F5 F5F5 FB00 00F6 F8FB 0000"
	$"00DD DDDD 00DD 00DD DDDD 00DD DD00 DDDD"
	$"DDF9 F7F6 F5F5 F5F5 FBFC FCFC ACAC FD00"
	$"00DD DDDD 00DD 00DD DDDD 00DD DD00 DDDD"
	$"DDFA F7F6 F5F5 F5F5 F6F9 F9FA FA81 FD00"
	$"00DD DDDD 00DD 00DD DDDD 00DD DD00 DDDD"
	$"DDFA F7F6 F5F5 F5F5 F5F7 F7F8 F856 FD00"
	$"00DD DDDD 00DD DD00 00DD DD00 00DD DDDD"
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

resource 'icl8' (-16455) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 5858 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0058 0334 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"FFFF 0000 0000 0000 0000 5803 34DE 0000"
	$"0000 0000 0000 0000 0000 0000 0000 FFFF"
	$"FFFF 0000 0000 0000 5834 0334 DE00 0000"
	$"0000 0000 0000 0000 0000 0000 FFFF FFFF"
	$"00FF FF00 0000 0058 032D 34DE 0000 0000"
	$"0000 0000 0000 0000 0000 FFFF FFFF 0000"
	$"F8FF FF08 0832 5E03 3488 DE00 0000 0000"
	$"0000 0000 0000 0000 FFFF FFFF 0000 F6F6"
	$"F632 0808 325E 0334 88DE 0000 0000 0000"
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

resource 'ICN#' (128) {
	{	/* array: 2 elements */
		/* [1] */
		$"0000 0000 0000 0000 0000 C004 0003 C008"
		$"000F 6010 003C 7E60 00F0 34C0 03C0 31C0"
		$"0F00 33A0 3C00 E790 F000 CF8C C01B 9F03"
		$"6066 0003 618E 4003 3031 D407 30CF FEAF"
		$"1816 0357 182C 01FF 0C38 00DF 0C70 0EC0"
		$"0670 7860 067C C060 037F 8030 033F 00FF"
		$"0180 03FF 0180 0FFF 00C0 3FFC 00C0 FFF8"
		$"0063 FFE0 006F FF00 003F FC00 003F C0",
		/* [2] */
		$"0000 000C 0000 001C 0000 C03C 0003 C0F8"
		$"000F E1F0 003F FFE0 00FF FFC0 03FF FFC0"
		$"0FFF FFE0 3FFF FFF0 FFFF FFF8 FFFF FFFF"
		$"7FFF FFFF 7FFF FFFF 3FFF FFFF 3FFF FFFF"
		$"1FFF FFFF 1FFF FFFF 0FFF FFDF 0FFF FFC0"
		$"07FF FFE0 07FF FFE0 03FF FFF0 03FF FFFF"
		$"01FF FFFF 01FF FFFF 00FF FFFC 00FF FFF8"
		$"007F FFE0 007F FF00 003F FC00 003F C0"
	}
};

resource 'ICN#' (-16455) {
	{	/* array: 2 elements */
		/* [1] */
		$"0000 0000 0000 0000 0000 C004 0003 C008"
		$"000F 6010 003C 7E60 00F0 34C0 03C0 31C0"
		$"0F00 33A0 3C00 E790 F000 CF8C C01B 9F03"
		$"6066 0003 618E 4003 3031 D407 30CF FEAF"
		$"1816 0357 182C 01FF 0C38 00DF 0C70 0EC0"
		$"0670 7860 067C C060 037F 8030 033F 00FF"
		$"0180 03FF 0180 0FFF 00C0 3FFC 00C0 FFF8"
		$"0063 FFE0 006F FF00 003F FC00 003F C0",
		/* [2] */
		$"0000 000C 0000 001C 0000 C03C 0003 C0F8"
		$"000F E1F0 003F FFE0 00FF FFC0 03FF FFC0"
		$"0FFF FFE0 3FFF FFF0 FFFF FFF8 FFFF FFFF"
		$"7FFF FFFF 7FFF FFFF 3FFF FFFF 3FFF FFFF"
		$"1FFF FFFF 1FFF FFFF 0FFF FFDF 0FFF FFC0"
		$"07FF FFE0 07FF FFE0 03FF FFF0 03FF FFFF"
		$"01FF FFFF 01FF FFFF 00FF FFFC 00FF FFF8"
		$"007F FFE0 007F FF00 003F FC00 003F C0"
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

resource 'ICN#' (130, "Windows Icon") {
	{	/* array: 2 elements */
		/* [1] */
		$"03FF FF80 0200 00C0 0200 00A0 0200 0090"
		$"7FFF 8088 7667 8084 75DB C0FE 75DB 8056"
		$"75DB C002 7667 8006 7FFF C002 02AA 8006"
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

resource 'vers' (1) {
	0x1,
	0x0,
	release,
	0x0,
	0,
	"1.0",
	"1.0 ©1998-99 Mihai Parparita"
};

resource 'vers' (2) {
	0x1,
	0x0,
	release,
	0x0,
	0,
	"1.0",
	"Iconographer 1.0"
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

resource 'dlgx' (3002) {
	versionZero {
		9
	}
};

resource 'dlgx' (-6043) {
	versionZero {
		9
	}
};

resource 'dlgx' (128) {
	versionZero {
		15
	}
};

resource 'dlgx' (3001) {
	versionZero {
		9
	}
};

resource 'dlgx' (1410) {
	versionZero {
		15
	}
};

resource 'dlgx' (1000) {
	versionZero {
		15
	}
};

resource 'dlgx' (9999) {
	versionZero {
		11
	}
};

resource 'dlgx' (1001) {
	versionZero {
		15
	}
};

resource 'dlgx' (1010) {
	versionZero {
		15
	}
};

resource 'dlgx' (300) {
	versionZero {
		15
	}
};

resource 'DITL' (129, "Registration") {
	{	/* array DITLarray: 9 elements */
		/* [1] */
		{102, 270, 122, 338},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{102, 190, 121, 254},
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

resource 'DITL' (3002, purgeable) {
	{	/* array DITLarray: 13 elements */
		/* [1] */
		{161, 277, 181, 357},
		Button {
			enabled,
			"Save"
		},
		/* [2] */
		{130, 277, 150, 357},
		Button {
			enabled,
			"Cancel"
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
			"Eject"
		},
		/* [6] */
		{60, 277, 80, 357},
		Button {
			enabled,
			"Desktop"
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
			"Save icon as:"
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

resource 'DITL' (128, "About Box") {
	{	/* array DITLarray: 6 elements */
		/* [1] */
		{44, 66, 62, 154},
		UserItem {
			enabled
		},
		/* [2] */
		{60, 65, 78, 161},
		UserItem {
			enabled
		},
		/* [3] */
		{0, 0, 219, 324},
		UserItem {
			enabled
		},
		/* [4] */
		{176, 2, 188, 110},
		UserItem {
			disabled
		},
		/* [5] */
		{190, 2, 202, 110},
		UserItem {
			disabled
		},
		/* [6] */
		{204, 2, 216, 110},
		UserItem {
			disabled
		}
	}
};

resource 'DITL' (3000, "Basic Alert") {
	{	/* array DITLarray: 2 elements */
		/* [1] */
		{67, 311, 87, 369},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{8, 58, 60, 369},
		StaticText {
			disabled,
			"^0 ^1."
		}
	}
};

resource 'DITL' (3001, "Select Object", purgeable) {
	{	/* array DITLarray: 11 elements */
		/* [1] */
		{157, 253, 177, 333},
		Button {
			enabled,
			"Open"
		},
		/* [2] */
		{126, 253, 146, 333},
		Button {
			enabled,
			"Cancel"
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
		{30, 236, 46, 338},
		UserItem {
			enabled
		},
		/* [5] */
		{54, 253, 74, 333},
		Button {
			enabled,
			"Eject"
		},
		/* [6] */
		{82, 253, 102, 333},
		Button {
			enabled,
			"Desktop"
		},
		/* [7] */
		{51, 13, 181, 231},
		UserItem {
			enabled
		},
		/* [8] */
		{28, 13, 47, 231},
		UserItem {
			enabled
		},
		/* [9] */
		{113, 252, 114, 334},
		Picture {
			disabled,
			11
		},
		/* [10] */
		{189, 24, 209, 211},
		Button {
			enabled,
			"Select \"<file name>\""
		},
		/* [11] */
		{6, 15, 23, 300},
		StaticText {
			disabled,
			"Select a file, folder, or disk:"
		}
	}
};

resource 'DITL' (1410, "Text Tool", purgeable) {
	{	/* array DITLarray: 9 elements */
		/* [1] */
		{204, 123, 224, 191},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{204, 43, 224, 107},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{100, 11, 116, 51},
		StaticText {
			disabled,
			"Text:"
		},
		/* [4] */
		{119, 16, 187, 192},
		EditText {
			enabled,
			"Icon Mangler"
		},
		/* [5] */
		{8, 8, 28, 188},
		Control {
			enabled,
			1410
		},
		/* [6] */
		{38, 11, 54, 56},
		StaticText {
			disabled,
			"Size:"
		},
		/* [7] */
		{39, 124, 55, 158},
		EditText {
			enabled,
			"12"
		},
		/* [8] */
		{37, 166, 57, 188},
		Control {
			enabled,
			1411
		},
		/* [9] */
		{66, 8, 86, 190},
		Control {
			enabled,
			1412
		}
	}
};

resource 'DITL' (1000, "Preferences", purgeable) {
	{	/* array DITLarray: 13 elements */
		/* [1] */
		{193, 238, 213, 306},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{193, 158, 213, 222},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{16, 9, 34, 142},
		StaticText {
			disabled,
			"Default zoom level:"
		},
		/* [4] */
		{19, 252, 30, 287},
		EditText {
			disabled,
			"1000%"
		},
		/* [5] */
		{13, 293, 37, 306},
		Control {
			enabled,
			1000
		},
		/* [6] */
		{38, 8, 54, 168},
		CheckBox {
			enabled,
			"Show pixel grid"
		},
		/* [7] */
		{55, 8, 71, 313},
		CheckBox {
			enabled,
			"Check sync between 8-bit and 1-bit masks"
		},
		/* [8] */
		{72, 8, 88, 313},
		CheckBox {
			enabled,
			"Dither when copying down to lower depths"
		},
		/* [9] */
		{128, 13, 144, 235},
		RadioButton {
			enabled,
			"Create a new icon"
		},
		/* [10] */
		{144, 13, 160, 232},
		RadioButton {
			enabled,
			"Open an existing icon"
		},
		/* [11] */
		{160, 13, 176, 233},
		RadioButton {
			enabled,
			"Do nothing"
		},
		/* [12] */
		{111, 8, 187, 309},
		Control {
			enabled,
			1003
		},
		/* [13] */
		{89, 8, 105, 313},
		CheckBox {
			enabled,
			"Generate old style icons"
		}
	}
};

resource 'DITL' (1001, "Icon Info", purgeable) {
	{	/* array DITLarray: 15 elements */
		/* [1] */
		{160, 198, 180, 266},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{160, 120, 180, 184},
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
		{13, 64, 29, 116},
		EditText {
			enabled,
			"-16455"
		},
		/* [5] */
		{42, 10, 58, 60},
		StaticText {
			disabled,
			"Name:"
		},
		/* [6] */
		{42, 64, 58, 267},
		EditText {
			enabled,
			""
		},
		/* [7] */
		{13, 153, 29, 188},
		StaticText {
			disabled,
			"Size:"
		},
		/* [8] */
		{13, 186, 29, 276},
		StaticText {
			disabled,
			""
		},
		/* [9] */
		{90, 14, 106, 124},
		CheckBox {
			enabled,
			"Purgeable"
		},
		/* [10] */
		{108, 14, 124, 124},
		CheckBox {
			enabled,
			"Preload"
		},
		/* [11] */
		{127, 14, 143, 124},
		CheckBox {
			enabled,
			"Locked"
		},
		/* [12] */
		{90, 146, 106, 256},
		CheckBox {
			enabled,
			"Protected"
		},
		/* [13] */
		{108, 146, 124, 256},
		CheckBox {
			enabled,
			"System Heap"
		},
		/* [14] */
		{70, 10, 150, 271},
		Control {
			enabled,
			1001
		},
		/* [15] */
		{11, 124, 31, 146},
		Control {
			enabled,
			1002
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
			"Cancel"
		},
		/* [3] */
		{153, 5, 173, 165},
		CheckBox {
			enabled,
			"Real-time preview"
		},
		/* [4] */
		{8, 4294967295, 141, 368},
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
			"Colorize"
		},
		/* [6] */
		{47, 5, 68, 80},
		StaticText {
			disabled,
			"Hue:"
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
			"Brightness:"
		},
		/* [6] */
		{85, 5, 105, 84},
		StaticText {
			disabled,
			"Contrast:"
		}
	}
};

resource 'DITL' (9999) {
	{	/* array DITLarray: 29 elements */
		/* [1] */
		{7, 5, 29, 31},
		Control {
			enabled,
			132
		},
		/* [2] */
		{7, 31, 29, 57},
		Control {
			enabled,
			133
		},
		/* [3] */
		{29, 5, 51, 31},
		Control {
			enabled,
			134
		},
		/* [4] */
		{29, 31, 51, 57},
		Control {
			enabled,
			135
		},
		/* [5] */
		{8, 64, 202, 258},
		Control {
			enabled,
			200
		},
		/* [6] */
		{241, 4294967295, 257, 62},
		Control {
			enabled,
			201
		},
		/* [7] */
		{241, 62, 257, 418},
		Control {
			enabled,
			202
		},
		/* [8] */
		{187, 11, 227, 51},
		Control {
			enabled,
			203
		},
		/* [9] */
		{24, 296, 124, 356},
		Control {
			enabled,
			204
		},
		/* [10] */
		{24, 360, 124, 420},
		Control {
			enabled,
			205
		},
		/* [11] */
		{7, 296, 21, 356},
		Control {
			enabled,
			206
		},
		/* [12] */
		{7, 360, 21, 420},
		Control {
			enabled,
			207
		},
		/* [13] */
		{126, 298, 138, 352},
		Control {
			enabled,
			208
		},
		/* [14] */
		{126, 366, 138, 420},
		Control {
			enabled,
			209
		},
		/* [15] */
		{51, 5, 73, 31},
		Control {
			enabled,
			128
		},
		/* [16] */
		{51, 31, 73, 57},
		Control {
			enabled,
			129
		},
		/* [17] */
		{139, 31, 161, 57},
		Control {
			enabled,
			141
		},
		/* [18] */
		{73, 31, 95, 57},
		Control {
			enabled,
			131
		},
		/* [19] */
		{73, 5, 95, 31},
		Control {
			enabled,
			130
		},
		/* [20] */
		{95, 31, 117, 57},
		Control {
			enabled,
			138
		},
		/* [21] */
		{141, 296, 195, 420},
		Control {
			enabled,
			210
		},
		/* [22] */
		{196, 296, 208, 420},
		Control {
			enabled,
			211
		},
		/* [23] */
		{95, 5, 117, 31},
		Control {
			enabled,
			137
		},
		/* [24] */
		{139, 5, 161, 31},
		Control {
			enabled,
			140
		},
		/* [25] */
		{117, 31, 139, 57},
		Control {
			enabled,
			139
		},
		/* [26] */
		{117, 5, 139, 31},
		Control {
			enabled,
			136
		},
		/* [27] */
		{167, 7, 181, 55},
		Control {
			enabled,
			212
		},
		/* [28] */
		{4294967295, 4294967295, 4, 4},
		Control {
			enabled,
			213
		},
		/* [29] */
		{7, 5, 161, 57},
		Control {
			enabled,
			214
		}
	}
};

resource 'DITL' (300, purgeable) {
	{	/* array DITLarray: 5 elements */
		/* [1] */
		{199, 277, 219, 345},
		Button {
			enabled,
			"Open"
		},
		/* [2] */
		{199, 197, 219, 261},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{4, 4, 35, 348},
		StaticText {
			disabled,
			"Select an icon from the list on the left"
			" to see its preview. When you have found"
			" the icon you are looking for press the "
			"Open button to edit it."
		},
		/* [4] */
		{38, 8, 192, 62},
		UserItem {
			enabled
		},
		/* [5] */
		{40, 68, 190, 345},
		Control {
			enabled,
			300
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

data 'DLGX' (128) {
	$"0743 6869 6361 676F 0000 0000 0000 0000"            /* .Chicago........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0006 000A 0000 0000 0000 0000 0000 000A"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 000A 0000 0000 0000 0000"            /* ................ */
	$"0000 000A 0000 0000 0000 0000 0000 000A"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
};

data 'DLGX' (1410) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0009 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0007 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'DLGX' (1000) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0004 0000 0001 0000 0000 0000 0004"            /* ................ */
	$"0000 0001 0000 0000 0000 0004 0000 0001"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'DLGX' (1001) {
	$"0743 6869 6361 676F 0000 0000 0000 0000"            /* .Chicago........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"000F 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0007"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"8000 0000 0000 0000 0000 0005 0000 0000"            /* Ä............... */
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

data 'DLGX' (9999) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"001D 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"8000 0000 0000 0000 0000 0005 0000 0000"            /* Ä............... */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 8000 0000"            /* ............Ä... */
	$"0000 0000 0000 0005 8000 0000 0000 0000"            /* ........Ä....... */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'DLGX' (300) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0005 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 000A 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'ictb' (132) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0007 0028 8007 003C 0001 0000 0009 0000"            /* ...(Ä..<........ */
	$"0000 0000 FFFF FFFF FFFF 0000 0050 0000"            /* ....ˇˇˇˇˇˇ...P.. */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........ˇˇˇˇˇˇ.. */
	$"0647 656E 6576 61"                                  /* .Geneva */
};

data 'ictb' (129) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0007 0024 0000 0000 000C 0000 0000 0000"            /* ...$............ */
	$"FFFF FFFF FFFF 0000"                                /* ˇˇˇˇˇˇ.. */
};

data 'ictb' (3002) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
};

data 'ictb' (128) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000"                      /* ............ */
};

data 'ictb' (1410) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000"                                          /* .... */
};

data 'ictb' (1001) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000"                      /* ............ */
};

data 'ictb' (1000) {
	$"0000 0000 0000 0000 0007 0030 0007 0044"            /* ...........0...D */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 000C 0000 0000 0000 FFFF FFFF"            /* ............ˇˇˇˇ */
	$"FFFF 0000 0001 0000 0009 0000 0000 0000"            /* ˇˇ.............. */
	$"FFFF FFFF FFFF 0000"                                /* ˇˇˇˇˇˇ.. */
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

data 'ictb' (1010) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
};

data 'ictb' (9999) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000"                                          /* .... */
};

data 'ictb' (300) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000"                                          /* .... */
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

resource 'mctb' (128) {
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

resource 'mctb' (134) {
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

resource 'mctb' (2000) {
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

resource 'mctb' (136, "Icon menu") {
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

resource 'mctb' (201) {
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

resource 'mctb' (1412) {
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

resource 'mctb' (1411) {
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

resource 'dctb' (1410) {
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

resource 'dctb' (1001) {
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

resource 'dctb' (1011) {
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

data 'Mcmd' (207) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (129) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (201) {
	$"0002 0000 0000 0000 0000"                           /* .......... */
};

data 'Mcmd' (131) {
	$"0003 0000 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'Mcmd' (132) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (128) {
	$"0002 0000 0000 0000 0000"                           /* .......... */
};

data 'Mcmd' (130) {
	$"0009 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000"                                     /* ...... */
};

data 'Mcmd' (133) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (134) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (2000) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (135) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (136) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (137) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (1) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (1410) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (1412) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (1411) {
	$"000B 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'Mcmd' (202) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (203) {
	$"0000"                                               /* .. */
};

resource 'STR#' (150, "App Balloon Help", purgeable) {
	{	/* array StringArray: 1 elements */
		/* [1] */
		"Iconographer\n\nUse this application to ed"
		"it the icons of files and folders. Drag "
		"an item onto the application in order to"
		" edit its icon."
	}
};

resource 'STR#' (151, "Apple Menu Balloon Help", purgeable) {
	{	/* array StringArray: 4 elements */
		/* [1] */
		"Displays information about this version "
		"of Iconographer.",
		/* [2] */
		"Displays information about this version "
		"of Iconographer.\n\nNot available because "
		"the about box cannot be shown at this ti"
		"me.",
		/* [3] */
		"Allows you to register Iconographer, thu"
		"s removing the shareware reminder.",
		/* [4] */
		"Allows you to register Iconographer, thu"
		"s removing the shareware reminder.\n\nNot "
		"available because the registration dialo"
		"g cannot be shown at this time."
	}
};

resource 'STR#' (155, "Select Balloon Help", purgeable) {
	{	/* array StringArray: 8 elements */
		/* [1] */
		"Selects the entire icon.",
		/* [2] */
		"Selects the entire icon.\n\nNot available "
		"because a selection cannot be made at th"
		"is time.",
		/* [3] */
		"Selects colors similar to the ones found"
		" in the current selection.",
		/* [4] */
		"Selects colors similar to the ones found"
		" in the current selection.\n\nNot availabl"
		"e because there is no selection availabl"
		"e.",
		/* [5] */
		"Removes the current selection.",
		/* [6] */
		"Removes the current selection.\n\nNot avai"
		"lable because there is no selection avai"
		"lable.",
		/* [7] */
		"Selects what is not currently selected a"
		"nd vice-versa.",
		/* [8] */
		"Selects what is not currently selected a"
		"nd vice-versa.\n\nNot available because th"
		"ere is no selection available."
	}
};

resource 'STR#' (156, "Transform Balloon Help", purgeable) {
	{	/* array StringArray: 5 elements */
		/* [1] */
		"Rotates the current selection (or the en"
		"tire image if a selection is not availab"
		"le) 90 degrees in a clockwise direction.",
		/* [2] */
		"Rotates the current selection (or the en"
		"tire image if a selection is not availab"
		"le) 90 degrees in a counter-clockwise di"
		"rection.",
		/* [3] */
		"Mirrors the current selection (or the en"
		"tire image if a selection is not availab"
		"le) across the vertical axis.",
		/* [4] */
		"Mirrors the current selection (or the en"
		"tire image if a selection is not availab"
		"le) across the horizontal axis.",
		/* [5] */
		"Inverts (makes “negative”) the current s"
		"election (or the entire image if a selec"
		"tion is not available)."
	}
};

resource 'STR#' (153, "Open Balloon Help", purgeable) {
	{	/* array StringArray: 6 elements */
		/* [1] */
		"Opens an item’s Finder icon into a new e"
		"ditor window.",
		/* [2] */
		"Opens an item’s icon into a new editor w"
		"indow.\n\nNot available because no more ed"
		"itors can be created.",
		/* [3] */
		"Opens a Windows icon (.ICO file) into a "
		"new editor window.",
		/* [4] */
		"Opens a Windows icon (.ICO file) into a "
		"new editor window.\n\nNot available becaus"
		"e no more editors can be created.",
		/* [5] */
		"Opens a Mac OS X icon (.tiff file) into "
		"a new editor window.",
		/* [6] */
		"Opens a Mac OS X icon (.tiff file) into "
		"a new editor window.\n\nNot available beca"
		"use no more editors can be created."
	}
};

resource 'STR#' (129, "Standard Errors", purgeable) {
	{	/* array StringArray: 14 elements */
		/* [1] */
		"The file you selected is already open in"
		" another program.",
		/* [2] */
		"This development copy of <app name> expi"
		"red on September 1, 1999. Please downloa"
		"d a newer version.",
		/* [3] */
		"A needed resource is missing. <app name>"
		" could be corrupted, please reinstall th"
		"e program.",
		/* [4] */
		"<app name> requires System 7.5.3 or abov"
		"e.",
		/* [5] */
		"AppleEvents could not be initialized, <a"
		"pp name> cannot continue.",
		/* [6] */
		"There was an error while initializing th"
		"e Appearance Mangler, <app name> cannot "
		"continue.",
		/* [7] */
		"There was error while initializing the m"
		"enu bar. <app name>’s resource fork is m"
		"ost likely corrupted, please reinstall.",
		/* [8] */
		"Cannot launch this URL. Internet Config "
		"must be installed.",
		/* [9] */
		"A new editor could not be created. Most "
		"likely you are low on memory. Either clo"
		"se some of the open editors, or give <ap"
		"p name> more memory.",
		/* [10] */
		"<app name> is low on memory. The drawing"
		" states of this editor will be disposed "
		"in order to make more room.",
		/* [11] */
		"<app name> has run out of memory. This e"
		"ditor must be closed in order to make mo"
		"re room.",
		/* [12] */
		"The “Register” application could not be "
		"found. Please reinstall <app name>.",
		/* [13] */
		"The registration code that you have type"
		"d is incorrect. Please enter it EXACTLY "
		"as it is shown in the email that you hav"
		"e received.",
		/* [14] */
		"Thank you for registering <app name>."
	}
};

resource 'STR#' (154, "Edit Balloon Help", purgeable) {
	{	/* array StringArray: 22 elements */
		/* [1] */
		"Edit Menu\n\nUse this menu to undo and red"
		"o actions, to cut and paste or to set th"
		"e Iconographer preferences.",
		/* [2] */
		"Edit Menu\n\nUse this menu to undo and red"
		"o actions, to cut and paste or to set th"
		"e Iconographer preferences.\n\nNot availab"
		"le because the front-most window does no"
		"t support these operations.",
		/* [3] */
		"Reverses the effects of the previous act"
		"ion.",
		/* [4] */
		"Reverses the effects of the previous act"
		"ion.\n\nNot available because all of the a"
		"ctions have been undone, or because the "
		"last action cannot be undone.",
		/* [5] */
		"Reapplies the effects of the action that"
		" was just un-done.",
		/* [6] */
		"Reapplies the effects of the action that"
		" was just un-done.\n\nNot available becaus"
		"e no action was undone.",
		/* [7] */
		"Deletes the current selection and places"
		" its contents in the clipboard.",
		/* [8] */
		"Deletes the current selection and places"
		" its contents in the clipboard.\n\nNot ava"
		"ilable because there is no selection or "
		"there are no open editors.",
		/* [9] */
		"Places the contents of the current selec"
		"tion in the clipboard.",
		/* [10] */
		"Places the contents of the current selec"
		"tion in the clipboard.\n\nNot available be"
		"cause there is no selection or there are"
		" no open editors.",
		/* [11] */
		"Inserts the contents of the clipboard in"
		"to the current editor.",
		/* [12] */
		"Inserts the contents of the clipboard in"
		"to the current editor.\n\nNot available be"
		"cause the clipboard is does not contain "
		"any image data, or because there are no "
		"open editors.",
		/* [13] */
		"Deletes the contents of the current sele"
		"ction.",
		/* [14] */
		"Deletes the contents of the current sele"
		"ction.\n\nNot available because there is n"
		"o selection or there are no open editors"
		".",
		/* [15] */
		"Performs various selection operations.",
		/* [16] */
		"Performs various selection operations.\n\n"
		"Not available because there are no open "
		"icons.",
		/* [17] */
		"Performs various transformations on imag"
		"es.",
		/* [18] */
		"Performs various transformations on imag"
		"es.\n\nNot available because there are no "
		"open icons.",
		/* [19] */
		"Makes color adjustements to the icon.",
		/* [20] */
		"Makes color adjustements to the icon.\n\nN"
		"ot available because there are no open i"
		"cons.",
		/* [21] */
		"Opens a dialog box which allows you to c"
		"ustomize various aspects of Iconographer"
		"’s operation.",
		/* [22] */
		"Opens a dialog box which allows you to c"
		"ustomize various aspects of Iconographer"
		"’s operation.\n\nNot available because the"
		" preferences cannot be edited at this mo"
		"ment."
	}
};

resource 'STR#' (158, "Copy Balloon Help", purgeable) {
	{	/* array StringArray: 6 elements */
		/* [1] */
		"Places the contents of the current selec"
		"tion in the clipboard.",
		/* [2] */
		"Places the contents of the current selec"
		"tion in the clipboard.\n\nNot available be"
		"cause there is no selection or there are"
		" no open editors.",
		/* [3] */
		"Places the contents of the current icon "
		"and mask into the clipboard.",
		/* [4] */
		"Places the contents of the current icon "
		"and mask into the clipboard.\n\nNot availa"
		"bles because there are no open icons.",
		/* [5] */
		"Places all of the depths and sizes of th"
		"e open icon into the clipboard.",
		/* [6] */
		"Places all of the depths and sizes of th"
		"e open icon into the clipboard.\n\nNot ava"
		"ilable because there are no open icons."
	}
};

resource 'STR#' (161, "Registration Balloon Help", purgeable) {
	{	/* array StringArray: 6 elements */
		/* [1] */
		"Click here to verify your registration c"
		"ode. If it is valid then Iconographer wi"
		"ll be registered.",
		/* [2] */
		"This button will abort the registration.",
		/* [3] */
		"Click here to open up the Register appli"
		"cation. You can then fill out the form, "
		"send it to Kagi and pay for Iconographer"
		", thus removing the shareware messsages.",
		/* [4] */
		"Your name should be entered here. Please"
		" make sure to type it in exactly as it a"
		"ppears in the registration e-mail, since"
		" the serial number is based on it.",
		/* [5] */
		"Optionally, your company name can be ent"
		"ered here.",
		/* [6] */
		"The registration number you received goe"
		"s here. "
	}
};

resource 'STR#' (157, "Paste Balloon Help", purgeable) {
	{	/* array StringArray: 6 elements */
		/* [1] */
		"Pastes the clipboard contents into a flo"
		"ated selection.",
		/* [2] */
		"Separates the clipboard contents as an i"
		"con and as mask, which will be merged wi"
		"th the current icon and mask contents.",
		/* [3] */
		"Pastes the clipboard contents scaled to "
		"the dimensions of the current selection.",
		/* [4] */
		"Pastes the clipboard contents scaled to "
		"the dimensions of the current selection."
		"\n\nNot available because no selection has"
		" been made.",
		/* [5] */
		"Pastes an entire icon family into the cu"
		"rrent open icon.",
		/* [6] */
		"Pastes an entire icon family into the cu"
		"rrent open icon.\n\nNot available because "
		"the clipboard does not contain an icon f"
		"amily."
	}
};

resource 'STR#' (128, "Default Names", purgeable) {
	{	/* array StringArray: 12 elements */
		/* [1] */
		"Iconographer",
		/* [2] */
		"Iconographer Preferences",
		/* [3] */
		"OK",
		/* [4] */
		"Save",
		/* [5] */
		"Cancel",
		/* [6] */
		"Don’t Save",
		/* [7] */
		"Register",
		/* [8] */
		"Not Yet",
		/* [9] */
		":Register",
		/* [10] */
		"Not Registered",
		/* [11] */
		"mailto:mihai@mscape.com",
		/* [12] */
		"http://www.mscape.com/"
	}
};

resource 'STR#' (160, "About Balloon Help", purgeable) {
	{	/* array StringArray: 3 elements */
		/* [1] */
		"Click here to e-mail the author (require"
		"s Internet Config).",
		/* [2] */
		"Click here to visit the Mscape Software "
		"homepage (requires Internet Config).",
		/* [3] */
		"If you’ve paid, thank your very much. If"
		" you haven’t, perhaps you should conside"
		"r it."
	}
};

resource 'STR#' (159, "Icon Balloon Help", purgeable) {
	{	/* array StringArray: 9 elements */
		/* [1] */
		"Icon Menu\n\nThis menu can be used to modi"
		"fy certain attributes of the front-most "
		"icon.",
		/* [2] */
		"Icon Menu\n\nThis menu can be used to modi"
		"fy certain attributes of the front-most "
		"icon.\n\nNot available because there are n"
		"o open editors.",
		/* [3] */
		"This command increases the magnification"
		" level of the front-most icon.",
		/* [4] */
		"This command increases the magnification"
		" level of the front-most icon.\n\nNot avai"
		"lable because the icon is at maximum mag"
		"nification, or because there are no open"
		" icons.",
		/* [5] */
		"This command decreases the magnification"
		" level of the front-most icon.",
		/* [6] */
		"This command decreases the magnification"
		" level of the front-most icon.\n\nNot avai"
		"lable because the icon is at minimum mag"
		"nification, or because there are no open"
		" icons.",
		/* [7] */
		"This command allows you to change the co"
		"lor palette used for the current icon.\n\n"
		"Not available because the current depth "
		"does not support different color depths,"
		" or because there are no open icons.",
		/* [8] */
		"Displays a dialog which allows you to ch"
		"ange the ID, name and flags of the curre"
		"nt icon.",
		/* [9] */
		"Displays a dialog which allows you to ch"
		"ange the ID, name and flags of the curre"
		"nt icon.\n\nNot available because there ar"
		"e no open icons."
	}
};

resource 'STR#' (152, "File Balloon Help", purgeable) {
	{	/* array StringArray: 14 elements */
		/* [1] */
		"File Menu\n\nUse this menu to perform oper"
		"ations with files and folders.",
		/* [2] */
		"File Menu\n\nUse this menu to perform oper"
		"ations with files and folders.\n\nNot avai"
		"lable because file operations cannot be "
		"performed at the moment.",
		/* [3] */
		"Creates a new editor window with an empt"
		"y icon.",
		/* [4] */
		"Creates a new editor window with an empt"
		"y icon.\n\nNot available because no more e"
		"ditors can be created.",
		/* [5] */
		"Closes the front-most icon.",
		/* [6] */
		"Closes the front-most icon.\n\nNot availab"
		"le because no icons are opened.",
		/* [7] */
		"Saves the front-most icon.",
		/* [8] */
		"Saves the front-most icon.\n\nNot availabl"
		"e because there are no open icons, or be"
		"cause the front-most icon doesn’t need t"
		"o be saved.",
		/* [9] */
		"Saves the front-most icon in a different"
		" file.",
		/* [10] */
		"Saves the front-most icon in a different"
		" file.\n\nNot available because there are "
		"no open icons.",
		/* [11] */
		"Inserts the front-most icon into a diffe"
		"rent file (without replacing the file’s "
		"contents).",
		/* [12] */
		"Inserts the front-most icon into a diffe"
		"rent file (without replacing the file’s "
		"contents).\n\nNot available because there "
		"are no open icons.",
		/* [13] */
		"Exits Iconographer, first asking if any "
		"unsaved changes should be saved.",
		/* [14] */
		"Exits Iconographer, first asking if any "
		"unsaved changes should be saved.\n\nNot av"
		"ailable because Iconographer cannot be e"
		"xited at this time."
	}
};

resource 'STR#' (130, "Prompts", purgeable) {
	{	/* array StringArray: 10 elements */
		/* [1] */
		"Do you want to save changes to the <app "
		"name> document “<file name>” before clos"
		"ing it?",
		/* [2] */
		"Select the file or folder whose icon you"
		" want to edit.",
		/* [3] */
		"Select a name and location for the icon "
		"to be saved in.",
		/* [4] */
		"Select the file or folder into which you"
		" want to insert the icon.",
		/* [5] */
		"Insert Icon",
		/* [6] */
		"Open Icon",
		/* [7] */
		"You have used <app name> to create <no o"
		"f icons> icons. If you continue to use i"
		"t, please pay the $15 shareware fee. Thi"
		"s can be done online, or by using the en"
		"closed Register application.",
		/* [8] */
		"Select the Windows icon (.ico file) you "
		"want to edit.",
		/* [9] */
		"Select the Mac OS X Server icon (.tiff f"
		"ile) you want to edit.",
		/* [10] */
		"An icon with the ID <ID> already exists "
		"in the file “<file name>.” Do you wish t"
		"o replace it?"
	}
};

resource 'STR#' (3001, "Select Object Strings") {
	{	/* array StringArray: 2 elements */
		/* [1] */
		"Select \"<file name>\"",
		/* [2] */
		"Select Desktop"
	}
};

resource 'STR#' (201, "Labels", purgeable) {
	{	/* array StringArray: 6 elements */
		/* [1] */
		"Icon",
		/* [2] */
		"Mask",
		/* [3] */
		"Preview",
		/* [4] */
		"Pick a foreground color:",
		/* [5] */
		"Pick a background color:",
		/* [6] */
		" bytes"
	}
};

resource 'STR#' (202, "Icon Part Names", purgeable) {
	{	/* array StringArray: 18 elements */
		/* [1] */
		"Large 32-bit Icon",
		/* [2] */
		"Small 32-bit Icon",
		/* [3] */
		"Large 8-bit Mask",
		/* [4] */
		"Small 8-bit Mask",
		/* [5] */
		"Large 8-bit Icon",
		/* [6] */
		"Small 8-bit Icon",
		/* [7] */
		"Large 4-bit Icon",
		/* [8] */
		"Small 4-bit Icon",
		/* [9] */
		"Large 1-bit Icon",
		/* [10] */
		"Small 1-bit Icon",
		/* [11] */
		"Large 1-bit mask",
		/* [12] */
		"Small 1-bit Mask",
		/* [13] */
		"Huge 32-bit Icon",
		/* [14] */
		"Huge 8-bit Mask",
		/* [15] */
		"Huge 1-bit Icon",
		/* [16] */
		"Huge 1-bit Mask",
		/* [17] */
		"Huge 8-bit Icon",
		/* [18] */
		"Huge 4-bit Icon"
	}
};

resource 'STR#' (200, "Basic Strings", purgeable) {
	{	/* array StringArray: 9 elements */
		/* [1] */
		"Untitled",
		/* [2] */
		"An icon with the ID <ID> already exists "
		"in this file. If you continue, the old i"
		"con will be overwritten when the current"
		" is saved.",
		/* [3] */
		"Overwrite",
		/* [4] */
		"Cancel",
		/* [5] */
		"The large 8-bit and 1-bit masks seem to "
		"be out of sync. Should the large 1-bit m"
		"ask be regenerated?",
		/* [6] */
		"The small 8-bit and 1-bit masks seem to "
		"be out of sync. Should the small 1-bit m"
		"ask be regenerated?",
		/* [7] */
		"The huge 8-bit and 1-bit masks seem to b"
		"e out of sync. Should the huge 1-bit mas"
		"k be regenerated?",
		/* [8] */
		"Yes",
		/* [9] */
		"No"
	}
};

resource 'STR#' (203, "Editor Balloon Help", purgeable) {
	{	/* array StringArray: 24 elements */
		/* [1] */
		"Rectangular Marquee Tool (M)",
		/* [2] */
		"Move Tool (V)",
		/* [3] */
		"Lasso Tool (L)",
		/* [4] */
		"Magic Wand Tool (W)",
		/* [5] */
		"Pencil Tool (N)",
		/* [6] */
		"Eye Dropper Tool (I)",
		/* [7] */
		"Paint Bucket Tool (K)",
		/* [8] */
		"Eraser Tool (E)",
		/* [9] */
		"Rectangle Tool (R)",
		/* [10] */
		"Oval Tool (O)",
		/* [11] */
		"Line Tool (Y)",
		/* [12] */
		"Polygon Tool (P)",
		/* [13] */
		"Gradient Tool (G)",
		/* [14] */
		"Text Tool (T)",
		/* [15] */
		"This is the main editing area. The curre"
		"nt icon is displayed at a magnified size"
		" here.",
		/* [16] */
		"The magnification level is displayed her"
		"e. To change it, you either use the Zoom"
		" In and Zoom Out commands from the View "
		"menu, or the grow box in the lower-right"
		" corner of the window.",
		/* [17] */
		"The name and ID of the current icon are "
		"displayed here. Clicking on this placard"
		" will result in a dialog which allows yo"
		"u to change the name, ID and flags of th"
		"e icon.",
		/* [18] */
		"The current foreground and background co"
		"lors are displayed here. Click on the co"
		"lor swatches to change them.",
		/* [19] */
		"This set of image wells displays the thr"
		"ee sizes (48 x 48, 32 x 32 and 16 x16) f"
		"or the current icon depth. You can click"
		" on them to edit that size. You may also"
		" drag among them to copy and scale their"
		" contents.",
		/* [20] */
		"This popup is used to switch among the d"
		"ifferent icon depths. You may also hold "
		"down option to transfer one depth to ano"
		"ther.",
		/* [21] */
		"This set of image wells displays the thr"
		"ee sizes (48 x 48, 32 x 32 and 16 x16) f"
		"or the current mask depth. You can click"
		" on them to edit that size. You may also"
		" drag among them to copy and scale their"
		" contents.",
		/* [22] */
		"This popup is used to switch among the d"
		"ifferent mask depths. You may also hold "
		"down option to transfer one depth to ano"
		"ther.",
		/* [23] */
		"Here you can see a preview of the curren"
		"t icon and mask together on two differen"
		"t backgrounds (white and the current des"
		"ktop pattern). You can click on the prev"
		"iew in order to view the icon in the sel"
		"ected state.",
		/* [24] */
		"The current color pattern is displayed h"
		"ere. Click on the swatch to change it."
	}
};

resource 'STR#' (204, "Icon Info Balloon Help", purgeable) {
	{	/* array StringArray: 11 elements */
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
		"ommonly used icon IDs."
	}
};

resource 'STR#' (300, "Icon Browser: List Strings", purgeable) {
	{	/* array StringArray: 1 elements */
		/* [1] */
		"\t\t\t\t\t\t\t\t\tItem’s Finder Icon"
	}
};

resource 'STR#' (301, "Icon Browser: Balloon Help", purgeable) {
	{	/* array StringArray: 4 elements */
		/* [1] */
		"Opens the selected icon into an editor.",
		/* [2] */
		"Closes this dialog without opening any i"
		"cons.",
		/* [3] */
		"Select an icon from this list.",
		/* [4] */
		"The preview for the selected icon is dis"
		"played here."
	}
};

data 'Mngl' (0, "Owner resource") {
	$"18A9 2031 3939 382D 3920 4D69 6861 6920"            /* .© 1998-9 Mihai  */
	$"5061 7270 6172 6974 61"                             /* Parparita */
};

resource 'ics#' (-16455) {
	{	/* array: 2 elements */
		/* [1] */
		$"0006 0188 07CC 1C78 70FC C5FB DB01 43EB"
		$"621F 240F 34CC 130C 183E 0AFF 0FFF 07FE",
		/* [2] */
		$"0006 018E 07DC 1FF8 7FFC FFFF FFFF 7FFF"
		$"7FFF 3FFF 3FFC 1FFC 1FFE 0FFF 0FFF 07FE"
	}
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

resource 'ics#' (130, "Windows Icon") {
	{	/* array: 2 elements */
		/* [1] */
		$"1FF8 100C FFCA A46F AD45 A463 FFC1 1543"
		$"1001 1003 1001 1003 1001 1003 1555 1FFF",
		/* [2] */
		$"1FF8 1FFC FFFE FFFF FFFF FFFF FFFF 1FFF"
		$"1FFF 1FFF 1FFF 1FFF 1FFF 1FFF 1FFF 1FFF"
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

resource 'ics4' (-16455) {
	$"0000 0000 0000 0BB0 0000 000F F000 BCB0"
	$"0000 0FFF DDCC BB00 000F FF0C CDDB E000"
	$"0FFF 00CC BBBE BC00 FF00 0CCB BBFB BCCD"
	$"FF0C CCBB DDCC CCCF 0F00 CCBB EEEB BBBF"
	$"0FF0 CCBD CCCE FEEF 00F0 CBDC CCBD FEFF"
	$"00FF CBCC BBCC FF00 000F CBB3 CCCD FF00"
	$"000F FCCC CDFF DDC0 0000 FCCC FFDD DDCC"
	$"0000 FFFF DDDD CCCC 0000 0FDD DCCC CCC0"
};

resource 'ics4' (128) {
	$"0000 0000 0000 0BB0 0000 000F F000 BCB0"
	$"0000 0FFF DDCC BB00 000F FF0C CDDB E000"
	$"0FFF 00CC BBBE BC00 FF00 0CCB BBFB BCCD"
	$"FF0C CCBB DDCC CCCF 0F00 CCBB EEEB BBBF"
	$"0FF0 CCBD CCCE FEEF 00F0 CBDC CCBD FEFF"
	$"00FF CBCC BBCC FF00 000F CBB3 CCCD FF00"
	$"000F FCCC CDFF DDC0 0000 FCCC FFDD DDCC"
	$"0000 FFFF DDDD CCCC 0000 0FDD DCCC CCC0"
};

resource 'ics4' (130, "Windows Icon") {
	$"000E EEEE EEEE E000 000E 0000 0000 EE00"
	$"AAAA AAAA AACC ECE0 A0A0 0A00 0ADC EEDA"
	$"A0A0 AA0A 0ADC CCCA A0A0 0A00 0ADC 00CA"
	$"AAAA AAAA AADC 00CA 000E CCCC CDD0 00CF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0CCC CCCC CCCF 000A AAAA FFFF FFFF"
};

resource 'ics4' (129, "Mac OS Icon") {
	$"000E EEEE EEEE E000 000E 0000 0000 EE00"
	$"AAAA AAAA AAAA AAE0 A0A0 0A00 0A0A 0ADF"
	$"A0A0 AA0A 0A00 0ADF A0A0 0A00 0A0A 0ADF"
	$"AAAA AAAA AAAA AADF 000E CCDD DDDD DDDF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0CCC CCCC CCCF 000A AAAA FFFF FFFF"
};

resource 'ics4' (131, "Mac OS X Icon") {
	$"000E EEEE EEEE E000 000E 0000 0000 EE00"
	$"AAAA AAAA AAAA AAE0 A000 A0A0 0A00 AADF"
	$"AA0A A0A0 AA0A AADF AA0A A0A0 AA0A AADF"
	$"AAAA AAAA AAAA AADF 000E CCDD DDDD DDDF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0CCC CCCC CCCF 000A AAAA FFFF FFFF"
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

resource 'ics8' (-16455) {
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

resource 'ics8' (130, "Windows Icon") {
	$"0000 00FB FBFB FBFC FCFC FCFC FC00 0000"
	$"0000 00FB F5F5 F5F5 F5F5 F5F5 FCFB 0000"
	$"DDDD DDDD DDDD DDDD DDDD F8F6 FBF7 FB00"
	$"DD00 DD00 00DD 0000 00DD FAF7 FCFC FAFD"
	$"DD00 DD00 DDDD 00DD 00DD FAF7 F7F8 F8FD"
	$"DD00 DD00 00DD 0000 00DD F9F7 F5F5 F8FD"
	$"DDDD DDDD DDDD DDDD DDDD F9F6 F5F5 F8FD"
	$"0000 00FC F7F7 F7F7 F856 F9F5 F5F5 F8FE"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F7FF"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F7FF"
	$"0000 00AC F5F7 F7F7 F7F7 F7F7 F7F7 F7FF"
	$"0000 00FD FDFD FDFD FEFE FEFE FFFF FFFF"
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

resource 'icns' (-16455) {
	{	/* array elementArray: 10 elements */
		/* [1] */
		'ics#',
		$"0006 0188 07CC 1C78 70FC C5FB DB01 43EB"
		$"621F 240F 34CC 130C 183E 0AFF 0FFF 07FE"
		$"0006 018E 07DC 1FF8 7FFC FFFF FFFF 7FFF"
		$"7FFF 3FFF 3FFC 1FFC 1FFE 0FFF 0FFF 07FE",
		/* [2] */
		'ics4',
		$"0000 0000 0000 0BB0 0000 000F F000 BCD0"
		$"0000 0FFF DDCC BB00 000F FF0C CDBB E000"
		$"0FFF 00CC BBBA BC00 FF00 0CDB BBFB BCCD"
		$"FF0C CCBB DDDC CCCF 0F00 CCBB AAEB BBBF"
		$"0FF0 CDBD CCCE AAEF 00F0 DADC CCDD FAFF"
		$"00FF D2CC 2BDC FF00 000F C222 DCCD FF00"
		$"000F FCDC CDFF AAA0 0000 FCCC FFAA AAAA"
		$"0000 FFFF AAAA AAAA 0000 0FAA AAAA AAA0",
		/* [3] */
		'ics8',
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
		$"0000 00FF FF32 32F7 F756 FFFE FDFD FD00"
		$"0000 0000 FFF6 2BF8 FFFE FDFD FDFD FDFD"
		$"0000 0000 FFFF FFFD FDFD FDFD FDFD FDFD"
		$"0000 0000 00FF FDFD FDFD FDFD FDFD FD00",
		/* [4] */
		'is32',
		$"8AFF 01BB BC85 FF01 0000 80FF 02BB D48F"
		$"83FF 8000 0567 7BE9 D0BF 8F82 FF80 0006"
		$"ECDC D6C8 BEBB 7081 FF80 0069 F2E4 DDDF"
		$"A5A5 BD5A B3DE FFFF 0000 F6ED E4AF C7A2"
		$"99B6 2A86 B5D2 DF90 0000 EFD1 A0B6 80A3"
		$"BFC4 CAE6 E5D9 D120 FF00 F3E7 A5A3 977D"
		$"6260 6E82 A9A6 A020 FF00 00E4 DEB7 9E83"
		$"C4BE B552 3F59 6020 FFFF 00EB B18E 7AC7"
		$"C2C3 C6A3 0059 2020 FFFF 0000 D8D6 CBC8"
		$"D0CB B8AC 0000 82FF 0A00 E4D5 D2D4 C5B4"
		$"AE97 0000 82FF 0800 00CE CABE B79D 0013"
		$"8023 82FF 0500 DAC0 A500 1A83 2381 FF80"
		$"0086 2382 FF00 0F86 2300 FF8A FF01 979C"
		$"85FF 0100 0080 FF02 97B5 6F83 FF80 0005"
		$"676D D4B8 9D72 82FF 8000 06EC D8B5 8BA0"
		$"9745 81FF 8000 69F2 E4D8 B361 7D99 2B78"
		$"B9FF FF00 00F7 EDE4 AF9D 5C6D 9019 3F77"
		$"A4BB 8700 00EF D1A0 B558 6986 8899 B4B5"
		$"AAA0 0EFF 00F3 E7A5 A364 5635 2E3B 5279"
		$"716A 0EFF 0000 E4DD 8751 80C4 BEB5 471F"
		$"3038 0EFF FF00 EB9B 2174 C7B9 9073 8100"
		$"300E 0EFF FF00 008A 5DBD A15A 5C95 AC00"
		$"0082 FF0A 00AB 625A 4481 B2AE 9600 0082"
		$"FF08 0000 9B8C B5B6 9D00 1380 2382 FF05"
		$"00DB C0A5 001A 8323 81FF 8000 8623 82FF"
		$"000F 8623 00FF 8AFF 014B 4C85 FF01 0000"
		$"80FF 024B 5760 83FF 8000 0567 65CA 764C"
		$"5F82 FF80 0006 ECD4 A373 5B4B 3581 FF80"
		$"0069 F2E4 D697 4F3E 4D21 5EA4 FFFF 0000"
		$"F6ED E4AE 854C 3A4D 1335 5C89 A683 0000"
		$"EFD1 A0B5 4758 756F 819A 9A8E 840C FF00"
		$"F3E7 A5A3 5432 2C24 3044 665D 580C FF00"
		$"00E4 DE89 537A C4BE B545 1D2A 310C FFFF"
		$"00EB 9B24 74C7 B991 7581 002A 0C0C FFFF"
		$"0000 8C61 BDA2 5D60 96AC 0000 82FF 0A00"
		$"AD65 5E48 83B3 AE97 0000 82FF 0800 009C"
		$"8EB5 B69D 0013 8023 82FF 0500 DBC0 A500"
		$"1A83 2381 FF80 0086 2382 FF00 0F86 2300"
		$"FF",
		/* [5] */
		's8mk',
		$"0000 0000 0000 0000 0000 0000 009E FF00"
		$"0000 0000 0000 009E FF00 0000 9EFF FF00"
		$"0000 0000 009E FFFF FF9E 00FF FFFF 0000"
		$"0000 009E FFFF FFFF FFFF FFFF FF00 0000"
		$"009E FFFF FFFF FFFF FFFF FFFF FFFF 0000"
		$"FAFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"9EFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"00FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"009E FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0000 FFFF FFFF FFFF FFFF FFFF FF6B 9EFF"
		$"0000 9EFF FFFF FFFF FFFF FFFF FF9E 0000"
		$"0000 00FF FFFF FFFF FFFF FFFF FFFA 0000"
		$"0000 009E FFFF FFFF FFFF FFFF A317 0500"
		$"0000 0000 FFFF FFFF FFFF F6DF B36B 1F02"
		$"0000 0000 9EFF FFFF F9E5 D0B5 8E55 1701"
		$"0000 0000 00FD E39A 7350 351F 1008 0200",
		/* [6] */
		'ICN#',
		$"0000 000C 0000 0014 0000 C02C 0003 C0D8"
		$"000F 6130 003C 62E0 00F0 35C0 03C0 3B80"
		$"0F00 57E0 3C00 AF90 F001 5FC8 C01E BF07"
		$"6067 0003 619E 5003 3067 FA0F 30AF FF57"
		$"1836 01FF 182C 01FF 0C38 00DF 0C78 1EC0"
		$"0678 F860 067F E060 033F 80B0 031E 02F0"
		$"0180 0BF8 0180 2FFC 00C0 BFFE 00C2 FFFE"
		$"006B FFFE 006F FFFC 003F FFF8 003F FFE0"
		$"0000 000C 0000 001C 0000 C03C 0003 C0F8"
		$"000F E1F0 003F FFE0 00FF FFC0 03FF FFC0"
		$"0FFF FFE0 3FFF FFF0 FFFF FFF8 FFFF FFFF"
		$"7FFF FFFF 7FFF FFFF 3FFF FFFF 3FFF FFFF"
		$"1FFF FFFF 1FFF FFFF 0FFF FFDF 0FFF FFC0"
		$"07FF FFE0 07FF FFE0 03FF FFF0 03FF FFF0"
		$"01FF FFF8 01FF FFFC 00FF FFFE 00FF FFFE"
		$"007F FFFE 007F FFFC 003F FFF8 003F FFE0",
		/* [7] */
		'icl4',
		$"0000 0000 0000 0000 0000 0000 0000 BB00"
		$"0000 0000 0000 0000 0000 0000 000B 1B00"
		$"0000 0000 0000 0000 FF00 0000 00B1 BA00"
		$"0000 0000 0000 00FF FF00 0000 BB1B A000"
		$"0000 0000 0000 FFFF 0FF0 000B 1CBA 0000"
		$"0000 0000 00FF FF00 CFFC CDB1 BEA0 0000"
		$"0000 0000 FFFF 00CC CCCC DB1B EA00 0000"
		$"0000 00FF FF00 0CCC CCBB B1BE AD00 0000"
		$"0000 FFFF 0000 0CCC DBAB 1BEA BDC0 0000"
		$"00FF FF00 0000 CCCD BAB1 BEAA BDCD 0000"
		$"FFFF 0000 000C DCDB AB1B EFAB BBCC C000"
		$"FF00 0000 0CDD CBBA BCBE FFAB DDDC CCFF"
		$"0FF0 000C DDDC DAAB DDDD DDCC CCCC CCFF"
		$"0FF0 000D CCCD DEEC CBBB DCCC CCCC DDFF"
		$"00FF 0000 CDDD CBBB EAAA EBBD CDDD BBFF"
		$"00FF 0000 DDCC AAAE AAAA AAAA EBBB BBFF"
		$"000F F000 CCCA 03FD CCCC CCDA AAAA EEFF"
		$"000F F000 CCDC 3FDC CCCC CCDF FAAA AEFF"
		$"0000 FF0C CC33 FDCC CCCC CCCD FF0A AEFF"
		$"0000 FF0C CAAA DCCC CCDB 33BD FF00 0000"
		$"0000 0FF0 C222 CCCC D223 BCCC DFF0 0000"
		$"0000 0FF0 C222 CCCB 22BC CCCC DFF0 0000"
		$"0000 00FF 0222 2223 3DCC CCCC DDFF 0000"
		$"0000 00FF 0D22 2232 CCCC CCDD FFFF 0000"
		$"0000 000F F0D2 22CC CCCC DDFF FFEE E000"
		$"0000 000F F0CC CCCC CCDD FFFF EEEE EE00"
		$"0000 0000 FF0C CCCC DDFF FFEE EEEE EEE0"
		$"0000 0000 FF0C CCDD FFFF EEEE EEEE EEE0"
		$"0000 0000 0FF0 DDFF FFEE EEEE EEEE EEE0"
		$"0000 0000 0FFD FFFF EEEE EEEE EEEE EE00"
		$"0000 0000 00FF FFEE EEEE EEEE EEEE E000"
		$"0000 0000 00FF EEEE EEEE EEEE EEE0 0000",
		/* [8] */
		'icl8',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 5858 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0058 0334 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"FFFF 0000 0000 0000 0000 5803 34DE 0000"
		$"0000 0000 0000 0000 0000 0000 0000 FFFF"
		$"FFFF 0000 0000 0000 5834 0334 DE00 0000"
		$"0000 0000 0000 0000 0000 0000 FFFF FFFF"
		$"00FF FF00 0000 0058 032D 34DE 0000 0000"
		$"0000 0000 0000 0000 0000 FFFF FFFF 0000"
		$"F8FF FF08 0832 5E03 3488 DE00 0000 0000"
		$"0000 0000 0000 0000 FFFF FFFF 0000 F6F6"
		$"F632 0808 325E 0334 88DE 0000 0000 0000"
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
		$"F8F7 F7F7 F8F8 F9F9 FFFF FFFF 0000 0000"
		$"0000 0000 0000 00FF FFF5 3239 3939 32F7"
		$"F7F7 F7F7 F9F9 FFFF FFFF FDFD FD00 0000"
		$"0000 0000 0000 00FF FF00 2B2B 2B2B F7F7"
		$"F7F7 F9F9 FFFF FEFF FDFD FDFD FDFD 0000"
		$"0000 0000 0000 0000 FFFF 002B 2BF7 F7F7"
		$"F9F9 FFFF FEFF FDFD FDFD FDFD FDFD FD00"
		$"0000 0000 0000 0000 FFFF 002B 2BF7 F9F9"
		$"FFFF FEFF FDFD FDFD FDFD FDFD FDFD FD00"
		$"0000 0000 0000 0000 00FF FFF5 5656 FFFF"
		$"FEFF FDFD FDFD FDFD FDFD FDFD FDFD FD00"
		$"0000 0000 0000 0000 00FF FF56 FFFF FEFF"
		$"FDFD FDFD FDFD FDFD FDFD FDFD FDFD 0000"
		$"0000 0000 0000 0000 0000 FFFF FEFF FDFD"
		$"FDFD FDFD FDFD FDFD FDFD FDFD FD00 0000"
		$"0000 0000 0000 0000 0000 FFFF FDFD FDFD"
		$"FDFD FDFD FDFD FDFD FDFD FD00 0000 0000",
		/* [9] */
		'il32',
		$"99FF 01A1 9F9A FF02 A1FE B18F FF01 0000"
		$"85FF 03A1 FEB1 448D FF81 0083 FF04 9FBC"
		$"FEB1 458C FF81 0002 F500 0081 FF04 A1FE"
		$"D7B0 458B FF81 000C F6F6 A700 00EA EAB8"
		$"9FFE C162 458A FF81 000D F7F7 DDDA D6BB"
		$"E9EB B89F FEC3 6245 89FF 8100 0FF9 F8E1"
		$"DEDB DCE5 DEBA 8FA2 FEC6 6245 D087 FF81"
		$"0012 FAF9 E7E3 E0DD DDE5 D4B3 679A FEC8"
		$"6245 A5C9 D384 FF81 0015 FBFA EBE8 E5E1"
		$"DFD5 E2D4 A469 9EF2 C962 4579 9BC2 D2D0"
		$"81FF 8100 18FC FBEE ECE9 E6E3 D294 DED2"
		$"B36A A0F3 C75C 1B5D 899C B5CD D5D3 80FF"
		$"7F00 00FC FCF1 EFED EAE8 D798 6BE5 C29C"
		$"657A DEB3 6A0D 2082 ADBD C3D1 D5D7 D020"
		$"20FF 0000 FBF0 EEEC DA9A 6D9F D3B8 8170"
		$"B9C5 C1CE C7B2 AFDA E7EA E1D9 D8D9 D420"
		$"20FF 0000 FBEF EDEA 91A0 D7D0 9368 5C75"
		$"EBD4 9FB3 C4DE E7EC EBE3 E4DD D6CE C620"
		$"20FF FF00 00FA ECE9 E6D4 966A 9ACD A2C7"
		$"886F 4D61 6F7F 9094 C1DB CCC1 C0B7 AB20"
		$"200F FFFF 0000 FAEB E7E4 8D9C D1B3 9755"
		$"465C 8064 0C4A 4E5A 5B55 6C8F 8B8C 9588"
		$"2020 80FF 1C00 00F9 E5E3 E0DC C89D FF9B"
		$"1CA4 C6C3 C0BC B9B0 7A41 5A4B 535E 6860"
		$"2020 80FF 1C00 00F9 E4E1 DEDB 83F2 D802"
		$"82C8 C5C1 BEBB B7B4 8900 0055 5859 5A5E"
		$"2020 81FF 1B00 00F7 DFDC C8A5 D902 82CA"
		$"C6C3 C0BC BAB8 B4B1 8600 00FF 6361 5E20"
		$"2081 FF15 0000 F7DD DA46 6E49 97CB C8C4"
		$"C2C2 C7CE D3D6 CE85 0000 88FF 1500 00F6"
		$"D9D7 D6D5 CDC9 C5C3 C7D1 D2D5 CEB2 ADAB"
		$"8300 0087 FF15 0000 F5D6 D7D5 D5CD C9C8"
		$"CFD2 D2CE B6B1 AEAC A982 0000 88FF 1500"
		$"00F2 D7D5 D4D4 D1D3 D5D4 C9B6 B2B0 ADAB"
		$"A981 8100 0087 FF11 0000 F2D3 D4D3 D2D1"
		$"D5D1 BEB7 B4B1 AEAC 8382 8100 88FF 1200"
		$"00F1 D1D4 D2D2 C4BC B8B5 B2B0 8684 0000"
		$"010B 8023 87FF 0F00 00F1 CAC7 C4C0 BDBA"
		$"B7B4 8986 0000 1284 2387 FF0C 0000 F0C5"
		$"C3BF BBB8 8C8A 0000 1E87 2386 FF0A 0000"
		$"F0C3 C1BD 908D 0000 1F89 2387 FF07 0000"
		$"EE93 9100 001E 8B23 87FF 0500 0094 0000"
		$"1D8C 2389 FF02 0000 198D 238A FF00 008D"
		$"2382 FF99 FF01 8281 9AFF 0282 E489 8FFF"
		$"0100 0085 FF03 82E4 8918 8DFF 8100 83FF"
		$"0481 9EE4 8919 8CFF 8100 02F5 0000 81FF"
		$"0482 E4B6 9419 8BFF 8100 0CF6 F5A7 0000"
		$"B4B7 9B79 E493 4419 8AFF 8100 0DF8 F7DD"
		$"D9D6 A9B6 B59B 7DE4 9744 1989 FF81 000F"
		$"F9F8 E1DE DBCC B3A0 6E51 80E4 9A44 199B"
		$"87FF 8100 12FA F9E6 E3E0 DCCD B397 682E"
		$"76E4 9D44 1963 96A1 84FF 8100 15FB FAEB"
		$"E8E5 E1DF C4B0 9953 307E CF9C 4619 3459"
		$"8BA6 9C81 FF81 0018 FBFB EEEC E9E6 E3D2"
		$"94B3 9167 2E7E D09A 440E 2A3C 557B A0A8"
		$"A280 FF7F 0000 FCFC F2F0 EDEA E7D7 986B"
		$"B376 4B2D 51B5 864F 040E 3461 818A 9FA8"
		$"A7A1 0E0E FF00 00FB F0EE EBDA 9A6D 9ED3"
		$"842D 3A7D 8683 9998 8C85 A0B3 B9AE A9AA"
		$"AAA5 0E0E FF00 00FB F0ED EA92 A1D7 D093"
		$"6844 38B3 A962 6F7D 9DB2 BEBC B5B7 AFA5"
		$"9B95 0E0E FFFF 0000 FAEB E8E6 D496 6A9A"
		$"CC83 9A44 3D1E 2934 4455 5C8E AC9A 8B89"
		$"7D75 0E0E 0FFF FF00 00FA EAE7 E48D 9CD1"
		$"B328 1633 4480 3B0C 1F22 2F30 2E42 5C55"
		$"5860 550E 0E80 FF1C 0000 F9E5 E2DF DCC7"
		$"29FF 1C15 9DC6 C3C0 BDB9 AD6C 2331 202B"
		$"333C 370E 0E80 FF1C 0000 F9E4 E1DD DA75"
		$"B626 0282 C8C4 C2BE BBB8 B489 0000 2A2F"
		$"3031 3B0E 0E81 FF1B 0000 F7E0 DBA5 2629"
		$"0281 C9C6 C2C0 BBB3 AFB0 AE86 0000 FF38"
		$"393B 0E0E 81FF 1500 00F7 DECF 1C18 1D81"
		$"CAC8 C3BC A47E 533C 2E47 8500 0088 FF15"
		$"0000 F3C0 5469 50BA C9C6 B98E 4B40 324C"
		$"A6AC AB82 0000 87FF 1500 00F3 BD53 6951"
		$"AFBF A361 4746 50AE B1AE ACAA 8200 0088"
		$"FF15 0000 E550 675C 4E60 4B3A 396F B2B1"
		$"B0AD AAA8 8181 0000 87FF 1100 00EF 885C"
		$"665C 5D38 50A4 B6B4 B1AE AC83 8281 0088"
		$"FF12 0000 EE82 5658 50A0 BAB7 B5B2 B086"
		$"8400 0001 0B80 2387 FF0F 0000 F1CA C7C4"
		$"C1BE BAB7 B389 8600 0012 8423 87FF 0C00"
		$"00F0 C6C2 BFBC B98D 8A00 001E 8723 86FF"
		$"0A00 00F0 C3C0 BD8F 8D00 001F 8923 87FF"
		$"0700 00EE 9490 0000 1E8B 2387 FF05 0000"
		$"9500 001D 8C23 89FF 0200 0019 8D23 8AFF"
		$"0000 8D23 82FF 99FF 013E 3C9A FF02 3E67"
		$"4D8F FF01 0000 85FF 033E 674D 188D FF81"
		$"0083 FF04 3C4A 674D 1A8C FF81 0002 F500"
		$"0081 FF04 3E67 5A45 1A8B FF81 000C F6F5"
		$"A700 0094 9593 3167 4A23 1A8A FF81 000D"
		$"F8F7 DCD9 D79E 9995 9337 674F 231A 89FF"
		$"8100 0FF9 F8E1 DFDB BF91 8657 4739 6752"
		$"231A 7A87 FF81 0012 FAF9 E6E3 E0DD C191"
		$"7C51 2A32 6753 231A 4B78 8384 FF81 0015"
		$"FBFA EBE7 E5E1 DFB9 8B7D 412C 3763 5324"
		$"1A2C 446D 8A80 81FF 8100 18FB FBEE ECE9"
		$"E6E3 D294 9378 5427 3761 5122 1124 323F"
		$"6084 8D86 80FF 7F00 00FC FCF2 EFED EAE8"
		$"D697 6B91 5B3C 2730 5956 2A0A 0C2C 4F65"
		$"6C85 8D89 880C 0CFF 0000 FBF1 EEEC DA9A"
		$"6D9E D36F 202F 6A76 7683 8378 748C 9A9D"
		$"918E 8E8C 880C 0CFF 0000 FBEF EDEA 92A0"
		$"D7D0 9268 2230 9694 5354 5F80 95A2 9E9A"
		$"9D94 8881 7A0C 0CFF FF00 00FA ECE9 E6D5"
		$"966A 9ACD 4651 3538 191F 2A36 444A 7591"
		$"8173 7268 600C 0C0F FFFF 0000 FAEB E7E4"
		$"8D9C D1B3 2716 1D22 802E 0118 1D80 2807"
		$"384D 4748 4F47 0C0C 80FF 1C00 00F9 E6E2"
		$"DFDC C82C FF1F 0A91 C6C3 BFBC B9AC 6A1F"
		$"2B1B 262B 3330 0C0C 80FF 1C00 00F9 E4E1"
		$"DEDB 76B8 2B02 82C8 C5C1 BEBB B7B5 8900"
		$"002A 292A 2B35 0C0C 81FF 1B00 00F7 DFDB"
		$"A52A 2E02 81C9 C6C3 BFBA B3AF B0AE 8600"
		$"00FF 2A2C 350C 0C81 FF15 0000 F7DD CE1D"
		$"1A1E 81CA C8C3 BCA5 8056 4032 4A85 0000"
		$"88FF 1500 00F3 C057 6C54 BBC9 C6B8 904F"
		$"4536 50A7 ADAA 8300 0087 FF15 0000 F3BF"
		$"566C 55B0 BEA5 644B 4954 AEB1 AEAC AA82"
		$"0000 88FF 1500 00E6 546B 5F52 634F 3E3D"
		$"71B2 B2AF ADAA A981 8100 0087 FF11 0000"
		$"EF89 5F69 6060 3D54 A6B6 B4B1 AEAC 8382"
		$"8100 88FF 1200 00EE 8559 5C54 A1BA B7B5"
		$"B2AF 8683 0000 010B 8023 87FF 0F00 00F1"
		$"CAC7 C4C1 BDBA B7B4 8986 0000 1284 2387"
		$"FF0C 0000 F0C6 C2BF BCB8 8C8A 0000 1E87"
		$"2386 FF0A 0000 F0C4 C0BD 8F8D 0000 1F89"
		$"2387 FF07 0000 EE93 9100 001E 8B23 87FF"
		$"0500 0094 0000 1D8C 2389 FF02 0000 198D"
		$"238A FF00 008D 2382 FF",
		/* [10] */
		'l8mk',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 FF86 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 00FF FFFF 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"2517 0000 0000 0000 0000 FFFF FFBA 0000"
		$"0000 0000 0000 0000 0000 0000 0000 259E"
		$"FF9E 0000 0000 0000 8BFF FFFF FF00 0000"
		$"0000 0000 0000 0000 0000 0000 259E FFFF"
		$"FFFF 2500 0000 00FF FFFF FFFF 0000 0000"
		$"0000 0000 0000 0000 0000 259E FFFF FFFF"
		$"FFFF 9E55 FFFF FFFF FFFF FF00 0000 0000"
		$"0000 0000 0000 0000 259E FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF 0000 0000 0000"
		$"0000 0000 0000 259E FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF 0000 0000 0000"
		$"0000 0000 259E FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FF00 0000 0000"
		$"0000 259E FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF 0000 0000"
		$"179E FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FF00 0000"
		$"25FA FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"009E FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0025 FAFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0000 9EFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0000 25FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0000 009E FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0000 0025 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF 9E12 56B6 FFFF FFFF"
		$"0000 0000 9EFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FF25 0012 56FF FFFF"
		$"0000 0000 25FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FF9E 0000 0000 0000"
		$"0000 0000 009E FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF 2500 0000 0000"
		$"0000 0000 0025 FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF 9E00 0000 0000"
		$"0000 0000 0000 9EFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FA25 0000 0000"
		$"0000 0000 0000 25FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF 9E17 0000 0000"
		$"0000 0000 0000 009E FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF A32D 0402 0100 0000"
		$"0000 0000 0000 0025 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF CC74 4029 170D 0502 0000"
		$"0000 0000 0000 0000 9EFF FFFF FFFF FFFF"
		$"FFFF FFFF F6DF C7AC 8B68 4629 1305 0100"
		$"0000 0000 0000 0000 25FF FFFF FFFF FFFF"
		$"FFFF FCF7 F1EB DFCD B392 6B43 1F0A 0200"
		$"0000 0000 0000 0000 009E FFFF FFFF FFFF"
		$"F9EF E5DC D0C4 B5A4 8E74 5534 1707 0100"
		$"0000 0000 0000 0000 0025 FFFF FFFF F1D8"
		$"C4B8 A997 8573 5F4F 4032 2314 0802 0000"
		$"0000 0000 0000 0000 0000 9EFD E3B6 9A85"
		$"7361 5041 3529 1F16 100B 0804 0200 0000"
		$"0000 0000 0000 0000 0000 1786 6250 4335"
		$"291F 1610 0B08 0502 0201 0100 0000 0000"
	}
};

data 'hmnu' (128, "Apple", purgeable) {
	$"0002 0000 0000 0000 0000 0003 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 0097 0001 0097 0002"            /* .........ó...ó.. */
	$"0000 0000 0000 0000 0014 0003 0097 0003"            /* .............ó.. */
	$"0097 0004 0000 0000 0000 0000"                      /* .ó.......... */
};

data 'hmnu' (130, "Open", purgeable) {
	$"0002 0000 0000 0000 0000 0004 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 0099 0001 0099 0002"            /* .........ô...ô.. */
	$"0000 0000 0000 0000 0014 0003 0099 0003"            /* .............ô.. */
	$"0099 0004 0000 0000 0000 0000 0014 0003"            /* .ô.............. */
	$"0099 0005 0099 0006 0000 0000 0000 0000"            /* .ô...ô.......... */
};

data 'hmnu' (132, "Select", purgeable) {
	$"0002 0000 0000 0000 0000 0005 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009B 0001 009B 0002"            /* .........õ...õ.. */
	$"0000 0000 0000 0000 0014 0003 009B 0003"            /* .............õ.. */
	$"009B 0004 0000 0000 0000 0000 0014 0003"            /* .õ.............. */
	$"009B 0005 009B 0006 0000 0000 0000 0000"            /* .õ...õ.......... */
	$"0014 0003 009B 0007 009B 0008 0000 0000"            /* .....õ...õ...... */
	$"0000 0000"                                          /* .... */
};

data 'hmnu' (133, "Transform", purgeable) {
	$"0002 0000 0000 0000 0000 0008 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009C 0001 0000 0000"            /* .........ú...... */
	$"0000 0000 0000 0000 0014 0003 009B 0002"            /* .............õ.. */
	$"0000 0000 0000 0000 0000 0000 0004 0100"            /* ................ */
	$"0014 0003 009C 0003 0000 0000 0000 0000"            /* .....ú.......... */
	$"0000 0000 0014 0003 009C 0004 0000 0000"            /* .........ú...... */
	$"0000 0000 0000 0000 0004 0100 0014 0003"            /* ................ */
	$"009C 0005 0000 0000 0000 0000 0000 0000"            /* .ú.............. */
};

data 'hmnu' (131, "Edit", purgeable) {
	$"0002 0000 0000 0000 0000 000D 0004 0100"            /* ................ */
	$"0014 0003 009A 0001 009A 0002 0000 0000"            /* .....ö...ö...... */
	$"009A 0002 0014 0003 009A 0003 009A 0004"            /* .ö.......ö...ö.. */
	$"0000 0000 0000 0000 0014 0003 009A 0005"            /* .............ö.. */
	$"009A 0006 0000 0000 0000 0000 0004 0100"            /* .ö.............. */
	$"0014 0003 009A 0007 009A 0008 0000 0000"            /* .....ö...ö...... */
	$"0000 0000 0014 0003 009A 0009 009A 000A"            /* .........ö...ö.. */
	$"0000 0000 0000 0000 0014 0003 009A 000B"            /* .............ö.. */
	$"009A 000C 0000 0000 0000 0000 0014 0003"            /* .ö.............. */
	$"009A 000D 009A 000E 0000 0000 0000 0000"            /* .ö...ö.......... */
	$"0014 0003 009A 000F 009A 0010 0000 0000"            /* .....ö...ö...... */
	$"0000 0000 0014 0003 009A 0011 009A 0012"            /* .........ö...ö.. */
	$"0000 0000 0000 0000 0014 0003 009A 0013"            /* .............ö.. */
	$"009A 0014 0000 0000 0000 0000 0004 0100"            /* .ö.............. */
	$"0014 0003 009A 0015 009A 0016 0000 0000"            /* .....ö...ö...... */
	$"0000 0000"                                          /* .... */
};

data 'hmnu' (135, "Copy", purgeable) {
	$"0002 0000 0000 0000 0000 0004 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009E 0001 009E 0002"            /* .........û...û.. */
	$"0000 0000 0000 0000 0014 0003 009E 0003"            /* .............û.. */
	$"009E 0004 0000 0000 0000 0000 0014 0003"            /* .û.............. */
	$"009E 0005 009E 0006 0000 0000 0000 0000"            /* .û...û.......... */
};

data 'hmnu' (134, "Paste", purgeable) {
	$"0002 0000 0000 0000 0000 0005 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009D 0001 0000 0000"            /* .........ù...... */
	$"0000 0000 0000 0000 0014 0003 009D 0002"            /* .............ù.. */
	$"0000 0000 0000 0000 0000 0000 0014 0003"            /* ................ */
	$"009D 0003 009D 0004 0000 0000 0000 0000"            /* .ù...ù.......... */
	$"0014 0003 009D 0005 009D 0006 0000 0000"            /* .....ù...ù...... */
	$"0000 0000"                                          /* .... */
};

data 'hmnu' (137, "Colors", purgeable) {
	$"0002 0000 0000 0000 0000 0000 0004 0100"            /* ................ */
};

data 'hmnu' (136, "Icon", purgeable) {
	$"0002 0000 0000 0000 0000 0007 0004 0100"            /* ................ */
	$"0014 0003 009F 0001 009F 0002 0000 0000"            /* .....ü...ü...... */
	$"009E 0002 0014 0003 009F 0003 009F 0004"            /* .û.......ü...ü.. */
	$"0000 0000 0000 0000 0014 0003 009F 0005"            /* .............ü.. */
	$"009F 0006 0000 0000 0000 0000 0004 0100"            /* .ü.............. */
	$"0014 0003 0000 0000 009F 0007 0000 0000"            /* .........ü...... */
	$"0000 0000 0004 0100 0014 0003 009F 0008"            /* .............ü.. */
	$"009F 0009 0000 0000 0000 0000"                      /* .ü.......... */
};

data 'hmnu' (129, "File", purgeable) {
	$"0002 0000 0000 0000 0000 000A 0004 0100"            /* ................ */
	$"0014 0003 0098 0001 0098 0002 0000 0000"            /* .....ò...ò...... */
	$"0098 0002 0014 0003 0098 0003 0098 0004"            /* .ò.......ò...ò.. */
	$"0000 0000 0000 0000 0004 0100 0014 0003"            /* ................ */
	$"0098 0005 0098 0006 0000 0000 0000 0000"            /* .ò...ò.......... */
	$"0004 0100 0014 0003 0098 0007 0098 0008"            /* .........ò...ò.. */
	$"0000 0000 0000 0000 0014 0003 0098 0009"            /* .............ò.. */
	$"0098 000A 0000 0000 0000 0000 0014 0003"            /* .ò.............. */
	$"0098 000B 0098 000C 0000 0000 0000 0000"            /* .ò...ò.......... */
	$"0004 0100 0014 0003 0098 000D 0098 000E"            /* .........ò...ò.. */
	$"0000 0000 0000 0000"                                /* ........ */
};

data 'hfdr' (-5696, purgeable) {
	$"0002 0000 0000 0000 0000 0001 0008 0003"            /* ................ */
	$"0096 0001"                                          /* .ñ.. */
};

data 'hwin' (128, "About", purgeable) {
	$"0002 0000 0000 0001 0080 6872 6374 0005"            /* .........Ährct.. */
	$"0541 626F 7574"                                     /* .About */
};

data 'hwin' (129, "Register", purgeable) {
	$"0002 0000 0000 0001 0081 6872 6374 0008"            /* .........Åhrct.. */
	$"0852 6567 6973 7465 7200"                           /* .Register. */
};

data 'hwin' (1001, "Icon Info", purgeable) {
	$"0002 0000 0000 0001 03E9 6872 6374 0009"            /* .........Èhrct.. */
	$"0949 636F 6E20 496E 666F"                           /* .Icon Info */
};

data 'hwin' (300, "Icon Browser", purgeable) {
	$"0002 0000 0000 0001 012C 6872 6374 000C"            /* .........,hrct.. */
	$"0C49 636F 6E20 4272 6F77 7365 7200"                 /* .Icon Browser. */
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

data 'hrct' (128, "About", purgeable) {
	$"0002 0000 0000 0000 0000 0003 0014 0003"            /* ................ */
	$"0000 0000 002C 002C 003E 009A 00A0 0001"            /* .....,.,.>.ö.†.. */
	$"0014 0003 0000 0000 003C 0041 004E 00A1"            /* .........<.A.N.° */
	$"00A0 0002 0014 0003 0000 0000 00B0 0002"            /* .†...........∞.. */
	$"00D8 006E 00A0 0003"                                /* .ÿ.n.†.. */
};

data 'hrct' (1001, "Icon Info", purgeable) {
	$"0002 0000 0000 0000 0000 000B 0014 0003"            /* ................ */
	$"0000 0000 00A0 00BB 00B4 00FF 00CC 0001"            /* .....†.ª.¥.ˇ.Ã.. */
	$"0014 0003 0000 0000 00A0 006D 00B4 00AD"            /* .........†.m.¥.≠ */
	$"00CC 0002 0014 0003 0000 0000 000D 0040"            /* .Ã.............@ */
	$"001D 007C 00CC 0003 0014 0003 0000 0000"            /* ...|.Ã.......... */
	$"000D 008B 001D 0107 00CC 0004 0014 0003"            /* ...ã.....Ã...... */
	$"0000 0000 002A 0040 003A 00FE 00CC 0005"            /* .....*.@.:.˛.Ã.. */
	$"0014 0003 0000 0000 005A 000E 006A 007C"            /* .........Z...j.| */
	$"00CC 0006 0014 0003 0000 0000 006C 000E"            /* .Ã...........l.. */
	$"007C 007C 00CC 0007 0014 0003 0000 0000"            /* .|.|.Ã.......... */
	$"007F 000E 008F 007C 00CC 0008 0014 0003"            /* .....è.|.Ã...... */
	$"0000 0000 005A 0085 006A 00F3 00CC 0009"            /* .....Z.Ö.j.Û.Ã.. */
	$"0014 0003 0000 0000 006C 0085 007C 00F3"            /* .........l.Ö.|.Û */
	$"00CC 000A 0014 0003 0000 0000 000B 007C"            /* .Ã.............| */
	$"001F 0092 00CC 000B"                                /* ...í.Ã.. */
};

data 'hrct' (300, "Icon Browser", purgeable) {
	$"0002 0000 0000 0000 0000 0004 0014 0003"            /* ................ */
	$"0000 0000 00C7 0115 00DB 0159 012D 0001"            /* .....«...€.Y.-.. */
	$"0014 0003 0000 0000 00C7 00C5 00DB 0105"            /* .........«.≈.€.. */
	$"012D 0002 0014 0003 0000 0000 0028 0044"            /* .-...........(.D */
	$"00BE 0159 012D 0003 0014 0003 0000 0000"            /* .æ.Y.-.......... */
	$"0026 0008 00C0 003E 012D 0004"                      /* .&...¿.>.-.. */
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

resource 'xmnu' (130, "Open Menu") {
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

resource 'kind' (128) {
	'Mngl',
	0,
	{	/* array kindArray: 3 elements */
		/* [1] */
		'Icon', "Mac OS Icon",
		/* [2] */
		'ICO ', "Windows Icon",
		/* [3] */
		'TIFF', "Mac OS X Icon"
	}
};

resource 'cctb' (2000) {
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

resource 'cctb' (2001) {
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

resource 'cctb' (128) {
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

resource 'cctb' (129) {
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

resource 'cctb' (131) {
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

resource 'cctb' (200) {
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

resource 'cctb' (201) {
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

resource 'cctb' (132) {
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

resource 'cctb' (130) {
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

resource 'cctb' (133) {
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

resource 'cctb' (134) {
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

resource 'cctb' (135) {
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

resource 'cctb' (136) {
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

resource 'cctb' (137) {
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

resource 'cctb' (138) {
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

resource 'cctb' (139) {
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

resource 'cctb' (140) {
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

resource 'cctb' (141) {
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

resource 'cctb' (202) {
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

resource 'cctb' (203) {
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

resource 'cctb' (204) {
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

resource 'cctb' (205) {
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

resource 'cctb' (206) {
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

resource 'cctb' (207) {
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

resource 'cctb' (208) {
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

resource 'cctb' (209) {
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

resource 'cctb' (210) {
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

resource 'cctb' (211) {
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

resource 'cctb' (1410) {
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

resource 'cctb' (1003) {
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

resource 'cctb' (1011) {
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

resource 'cctb' (1012) {
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

resource 'cctb' (1013) {
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

resource 'CNTL' (2000, "Types Pop-up", purgeable) {
	{6, 8, 26, 258},
	0,
	invisible,
	60,
	2000,
	409,
	0,
	"Format:"
};

resource 'CNTL' (2001, "Old Types Pop-up", purgeable) {
	{185, 11, 205, 261},
	0,
	visible,
	60,
	2000,
	409,
	0,
	"Format:"
};

resource 'CNTL' (1411, "Size Popup", purgeable) {
	{37, 166, 57, 188},
	0,
	visible,
	0,
	1411,
	401,
	0,
	""
};

resource 'CNTL' (1412, "Size Popup", purgeable) {
	{66, 8, 86, 190},
	0,
	visible,
	45,
	1412,
	401,
	0,
	"Style:"
};

resource 'CNTL' (1410, "Font Popup", purgeable) {
	{8, 8, 28, 188},
	0,
	visible,
	45,
	1410,
	405,
	1179602500,
	"Font:"
};

resource 'CNTL' (1001, "Flags Group Box", purgeable) {
	{70, 10, 150, 271},
	0,
	visible,
	100,
	0,
	160,
	0,
	"Flags"
};

resource 'CNTL' (1002, "ID Popup", purgeable) {
	{11, 124, 31, 146},
	0,
	visible,
	0,
	202,
	400,
	0,
	""
};

resource 'CNTL' (1000, "Zoom Level Arrows", purgeable) {
	{13, 293, 37, 306},
	0,
	visible,
	100,
	0,
	96,
	0,
	""
};

resource 'CNTL' (1003, "Startup Options Group Box", purgeable) {
	{93, 7, 169, 308},
	0,
	visible,
	100,
	0,
	160,
	0,
	"Startup Options"
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

resource 'CNTL' (128, "Pen Tool", purgeable) {
	{51, 5, 73, 31},
	0,
	visible,
	128,
	258,
	32,
	0,
	""
};

resource 'CNTL' (129, "Eyedropper Tool", purgeable) {
	{51, 31, 73, 57},
	0,
	visible,
	129,
	258,
	32,
	0,
	""
};

resource 'CNTL' (130, "Fill Tool", purgeable) {
	{73, 5, 95, 31},
	0,
	visible,
	130,
	258,
	32,
	0,
	""
};

resource 'CNTL' (131, "Eraser Tool", purgeable) {
	{73, 31, 95, 57},
	0,
	visible,
	131,
	258,
	32,
	0,
	""
};

resource 'CNTL' (132, "Marquee Tool", purgeable) {
	{7, 5, 29, 31},
	0,
	visible,
	132,
	258,
	32,
	0,
	""
};

resource 'CNTL' (133, "Move Tool", purgeable) {
	{7, 31, 29, 57},
	0,
	visible,
	133,
	258,
	32,
	0,
	""
};

resource 'CNTL' (134, "Lasso Tool", purgeable) {
	{29, 5, 51, 31},
	0,
	visible,
	134,
	258,
	32,
	0,
	""
};

resource 'CNTL' (135, "Wand Tool", purgeable) {
	{29, 31, 51, 57},
	0,
	visible,
	135,
	258,
	32,
	0,
	""
};

resource 'CNTL' (136, "Line Tool", purgeable) {
	{117, 5, 139, 31},
	0,
	visible,
	136,
	258,
	32,
	0,
	""
};

resource 'CNTL' (137, "Rectangle Tool", purgeable) {
	{95, 5, 117, 31},
	0,
	visible,
	137,
	258,
	32,
	0,
	""
};

resource 'CNTL' (138, "Oval Tool", purgeable) {
	{95, 31, 117, 57},
	0,
	visible,
	138,
	258,
	32,
	0,
	""
};

resource 'CNTL' (139, "Polygon Tool", purgeable) {
	{117, 31, 139, 57},
	0,
	visible,
	139,
	258,
	32,
	0,
	""
};

resource 'CNTL' (140, "Gradient Tool", purgeable) {
	{139, 5, 161, 31},
	0,
	visible,
	140,
	258,
	32,
	0,
	""
};

resource 'CNTL' (141, "Text Tool", purgeable) {
	{139, 31, 161, 57},
	0,
	visible,
	141,
	258,
	32,
	0,
	""
};

resource 'CNTL' (200, "Icon Edit Well", purgeable) {
	{8, 64, 202, 258},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (204, "Icon Display", purgeable) {
	{24, 296, 124, 356},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (205, "Mask Display", purgeable) {
	{24, 360, 124, 420},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (206, "Icon Popup", purgeable) {
	{7, 296, 21, 356},
	0,
	visible,
	0,
	200,
	401,
	0,
	""
};

resource 'CNTL' (207, "Mask Popup", purgeable) {
	{7, 360, 21, 420},
	0,
	visible,
	0,
	201,
	401,
	0,
	""
};

resource 'CNTL' (208, "Icon Label", purgeable) {
	{126, 298, 138, 352},
	0,
	visible,
	100,
	0,
	288,
	0,
	"Icon"
};

resource 'CNTL' (209, "Mask Label", purgeable) {
	{126, 366, 138, 420},
	0,
	visible,
	100,
	0,
	288,
	0,
	"Mask"
};

resource 'CNTL' (210, "Preview", purgeable) {
	{141, 296, 195, 420},
	32,
	visible,
	0,
	0,
	256,
	0,
	""
};

resource 'CNTL' (211, "Preview Label", purgeable) {
	{196, 296, 208, 420},
	0,
	visible,
	100,
	0,
	288,
	0,
	"Preview"
};

resource 'CNTL' (212, "Patterns", purgeable) {
	{167, 7, 181, 55},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (203, "Fore/Back Color", purgeable) {
	{187, 11, 227, 51},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (201, "Zoom Placard", purgeable) {
	{241, 4294967295, 257, 62},
	32,
	visible,
	0,
	0,
	256,
	0,
	""
};

resource 'CNTL' (202, "Info Placard", purgeable) {
	{241, 62, 257, 418},
	32,
	visible,
	0,
	0,
	256,
	0,
	""
};

resource 'CNTL' (213, "Background Pane", purgeable) {
	{4294967295, 4294967295, 4, 4},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (1010, "Adjust Tabs", purgeable) {
	{8, 4294967295, 141, 368},
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

resource 'CNTL' (214, "Toolbar Well", purgeable) {
	{7, 5, 161, 57},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (300, "Icon Browser: Icon List", purgeable) {
	{40, 68, 190, 345},
	300,
	visible,
	100,
	0,
	352,
	0,
	""
};

resource 'MBAR' (128) {
	{	/* array MenuArray: 4 elements */
		/* [1] */
		128,
		/* [2] */
		129,
		/* [3] */
		131,
		/* [4] */
		136
	}
};

resource 'PICT' (128, "About Pic") {
	1818,
	{0, 0, 219, 324},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 00DB 0144 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 00DB"
	$"0144 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 00DB 0144 0098 8144 0000 0000 00DB"
	$"0144 0000 0000 0000 0000 0048 0000 0048"
	$"0000 0000 0008 0001 0008 0000 0000 0000"
	$"0000 0000 0000 0046 ED62 0000 00FF 0000"
	$"FFFF FFFF FFFF 0001 E4E4 E4E4 E4E4 0002"
	$"5454 2C2C 3434 0003 E5E5 DBDB DDDD 0004"
	$"3C3C 2C2C 3434 0005 EDED E4E4 F1F1 0006"
	$"DDDD DBDB E5E5 0007 E4E4 E4E4 ECEC 0008"
	$"EAEA ECEC F6F6 0009 DCDC EEEE F9F9 000A"
	$"DCDC E8E8 EEEE 000B E8E8 F7F7 FBFB 000C"
	$"E4E4 ECEC ECEC 000D DCDC E4E4 E4E4 000E"
	$"2121 2C2C 2424 000F E4E4 ECEC E4E4 0010"
	$"DCDC E4E4 DADA 0011 ECEC F4F4 E9E9 0012"
	$"E4E4 ECEC DCDC 0013 DCDC E4E4 CBCB 0014"
	$"E4E4 ECEC D4D4 0015 E4E4 ECEC CCCC 0016"
	$"DCDC E4E4 A4A4 0017 D3D3 D4D4 C2C2 0018"
	$"2424 2424 0C0C 0019 2121 2121 1414 001A"
	$"2C2C 2C2C 2121 001B E4E4 E4E4 B4B4 001C"
	$"ECEC ECEC BCBC 001D 2424 2424 1D1D 001E"
	$"E4E4 E4E4 BCBC 001F ECEC ECEC C4C4 0020"
	$"DCDC DCDC B7B7 0021 E4E4 E4E4 C4C4 0022"
	$"ECEC ECEC CCCC 0023 ECEC ECEC D4D4 0024"
	$"E4E4 E4E4 CCCC 0025 DCDC DCDC C7C7 0026"
	$"ECEC ECEC DCDC 0027 E4E4 E4E4 D4D4 0028"
	$"ECEC ECEC E4E4 0029 E4E4 E4E4 DCDC 002A"
	$"E5E5 E4E4 A7A7 002B E3E3 DDDD 9B9B 002C"
	$"E3E3 D6D6 7A7A 002D E4E4 DCDC B4B4 002E"
	$"DCDC D4D4 AEAE 002F ECEC E4E4 BCBC 0030"
	$"E4E4 DCDC BCBC 0031 ECEC E4E4 C4C4 0032"
	$"E2E2 C8C8 6F6F 0033 E0E0 CECE 8F8F 0034"
	$"3434 2C2C 1414 0035 3C3C 3434 1C1C 0036"
	$"E2E2 D4D4 A6A6 0037 ECEC E4E4 CCCC 0038"
	$"DBDB CCCC A3A3 0039 E4E4 DCDC C7C7 003A"
	$"DDDD DBDB D6D6 003B DEDE B5B5 5555 003C"
	$"CACA 9494 2828 003D DADA A7A7 3F3F 003E"
	$"ECEC BCBC 5C5C 003F 4B4B 3C3C 1F1F 0040"
	$"2C2C 2424 1414 0041 3434 2C2C 1C1C 0042"
	$"DDDD C2C2 8D8D 0043 D1D1 C0C0 9C9C 0044"
	$"E4E4 D4D4 B4B4 0045 CBCB 9696 3939 0046"
	$"E2E2 B5B5 6262 0047 DDDD B8B8 7676 0048"
	$"D8D8 9595 2828 0049 E2E2 A7A7 4A4A 004A"
	$"EDED B4B4 5757 004B D8D8 A7A7 5858 004C"
	$"3C3C 3434 2727 004D E0E0 D4D4 C1C1 004E"
	$"5E5E 4444 1F1F 004F 3C3C 2C2C 1414 0050"
	$"CACA 9696 4B4B 0051 D7D7 ACAC 6C6C 0052"
	$"4444 2C2C 0C0C 0053 CACA 8686 2929 0054"
	$"E5E5 9D9D 3A3A 0055 DBDB 9797 3939 0056"
	$"EDED A8A8 4E4E 0057 E4E4 AAAA 5959 0058"
	$"BFBF 8E8E 4E4E 0059 BCBC A1A1 7D7D 005A"
	$"ECEC E2E2 D4D4 005B D2D2 8080 1D1D 005C"
	$"B2B2 7474 2B2B 005D F1F1 A2A2 3F3F 005E"
	$"D9D9 9898 4747 005F BCBC 8484 4242 0060"
	$"D1D1 9B9B 5959 0061 D9D9 8787 2A2A 0062"
	$"C9C9 8787 3A3A 0063 E5E5 9A9A 4848 0064"
	$"C9C9 8C8C 4646 0065 4A4A 3434 1B1B 0066"
	$"8A8A 6767 4141 0067 4C4C 3D3D 2D2D 0068"
	$"E5E5 9191 3838 0069 BFBF 7777 2F2F 006A"
	$"DADA 8989 3737 006B 4444 2C2C 1414 006C"
	$"A4A4 6C6C 3232 006D ACAC 7474 3A3A 006E"
	$"7C7C 5454 2C2C 006F 3434 2424 1414 0070"
	$"5454 3C3C 2323 0071 3C3C 2C2C 1C1C 0072"
	$"6464 4C4C 3333 0073 4444 3434 2424 0074"
	$"ADAD 8C8C 6969 0075 2C2C 2424 1C1C 0076"
	$"CECE AEAE 8D8D 0077 3434 2C2C 2424 0078"
	$"ECEC DADA C8C8 0079 B3B3 A9A9 9F9F 007A"
	$"F4F4 E8E8 DCDC 007B ECEC E4E4 DCDC 007C"
	$"D1D1 CCCC C7C7 007D E5E5 8686 2B2B 007E"
	$"D2D2 7878 2828 007F ACAC 6C6C 3131 0080"
	$"D8D8 8B8B 4646 0081 BABA 7C7C 4040 0082"
	$"C2C2 8484 4A4A 0083 9F9F 7979 5757 0084"
	$"5C5C 4A4A 3A3A 0085 DADA 7272 1E1E 0086"
	$"B7B7 6A6A 2828 0087 A6A6 6464 2A2A 0088"
	$"9999 5C5C 2A2A 0089 A1A1 6464 3232 008A"
	$"B5B5 7474 3B3B 008B 9494 6D6D 4D4D 008C"
	$"E0E0 C0C0 A4A4 008D CECE 6969 1E1E 008E"
	$"DDDD 7B7B 2D2D 008F 4C4C 2C2C 1414 0090"
	$"8B8B 5454 2A2A 0091 AAAA 6C6C 3C3C 0092"
	$"7979 4C4C 2B2B 0093 5C5C 3C3C 2323 0094"
	$"7B7B 5555 3838 0095 5454 3D3D 2C2C 0096"
	$"E4E4 CACA B6B6 0097 DADA C7C7 B8B8 0098"
	$"F4F4 ECEC E6E6 0099 5B5B 2B2B 0A0A 009A"
	$"BEBE 6060 1C1C 009B A7A7 5A5A 2525 009C"
	$"B6B6 6C6C 3737 009D 5858 3434 1C1C 009E"
	$"3C3C 2424 1414 009F 6B6B 4444 2828 00A0"
	$"4444 2C2C 1C1C 00A1 8787 5959 3A3A 00A2"
	$"4C4C 3434 2424 00A3 5252 4444 3A3A 00A4"
	$"7676 6666 5B5B 00A5 C1C1 B8B8 B2B2 00A6"
	$"8F8F 4848 1B1B 00A7 8080 4444 1D1D 00A8"
	$"5454 2C2C 1414 00A9 9595 5454 2929 00AA"
	$"B0B0 6363 3131 00AB 8787 4C4C 2727 00AC"
	$"7676 4444 2626 00AD 9999 5C5C 3535 00AE"
	$"A1A1 6464 3D3D 00AF 9898 8B8B 8383 00B0"
	$"CACA 5B5B 1C1C 00B1 9D9D 4C4C 1D1D 00B2"
	$"6A6A 3434 1414 00B3 7676 3C3C 1C1C 00B4"
	$"6969 3838 1C1C 00B5 8888 3636 0B0B 00B6"
	$"C4C4 5252 1818 00B7 B5B5 4B4B 1616 00B8"
	$"D6D6 6666 2A2A 00B9 5C5C 2C2C 1414 00BA"
	$"4444 2424 1414 00BB ACAC 6363 3C3C 00BC"
	$"6767 3C3C 2626 00BD 4C4C 2C2C 1C1C 00BE"
	$"5454 3434 2424 00BF 5C5C 3C3C 2C2C 00C0"
	$"3434 2424 1C1C 00C1 3C3C 2C2C 2424 00C2"
	$"4444 3434 2C2C 00C3 6A6A 5858 4F4F 00C4"
	$"8989 7878 6F6F 00C5 A4A4 9898 9292 00C6"
	$"9898 3939 0B0B 00C7 6A6A 2A2A 0C0C 00C8"
	$"A7A7 4444 1515 00C9 8989 3C3C 1818 00CA"
	$"7878 3434 1717 00CB 4C4C 2424 1414 00CC"
	$"5454 2C2C 1C1C 00CD 8787 2C2C 0A0A 00CE"
	$"7878 2A2A 0C0C 00CF 9898 3939 1717 00D0"
	$"5E5E 3434 2424 00D1 8888 4C4C 3535 00D2"
	$"9A9A 2B2B 0808 00D3 AAAA 3A3A 1414 00D4"
	$"8888 3434 1717 00D5 5454 2424 1414 00D6"
	$"6767 2C2C 1919 00D7 5C5C 2C2C 1D1D 00D8"
	$"3C3C 2424 1C1C 00D9 4444 2C2C 2424 00DA"
	$"4C4C 3434 2C2C 00DB 7777 2C2C 1717 00DC"
	$"5E5E 2424 1313 00DD 5353 3C3C 3535 00DE"
	$"8787 2C2C 1717 00DF 4444 2424 1C1C 00E0"
	$"4C4C 2C2C 2424 00E1 9696 2C2C 1616 00E2"
	$"4C4C 2424 1C1C 00E3 5454 2C2C 2424 00E4"
	$"5454 3434 2D2D 00E5 5454 2424 1C1C 00E6"
	$"5E5E 3434 2D2D 00E7 DCDC 8585 7474 00E8"
	$"DEDE 9494 8787 00E9 5D5D 2424 1C1C 00EA"
	$"7878 1C1C 1010 00EB CCCC C4C4 C3C3 00EC"
	$"3D3D 1C1C 1919 00ED DCDC 6363 5D5D 00EE"
	$"DCDC 6E6E 6868 00EF 2F2F 1C1C 1B1B 00F0"
	$"DCDC 5555 5151 00F1 DBDB 3B3B 3B3B 00F2"
	$"4C4C 2424 2424 00F3 4444 2424 2424 00F4"
	$"4C4C 2C2C 2C2C 00F5 3C3C 2424 2424 00F6"
	$"4444 2C2C 2C2C 00F7 3434 2424 2424 00F8"
	$"2424 1C1C 1C1C 00F9 2C2C 2424 2424 00FA"
	$"3434 2C2C 2C2C 00FB 3C3C 3434 3434 00FC"
	$"ECEC E4E4 E4E4 00FD F9F9 F9F9 F9F9 00FE"
	$"ECEC ECEC ECEC 00FF 0000 0000 0000 0000"
	$"0000 00DB 0144 0000 0000 00DB 0144 0000"
	$"00D6 041D F81D F81D FEF8 FC1D 00F8 FD1D"
	$"00F8 F51D FCF8 051D F81D F81D F8F3 1DFE"
	$"75FD 1DFB 75F8 F9F8 75FE F9F9 75FD F9FF"
	$"7507 F9F7 F9F7 7575 C0C0 FC75 FCF7 FBC0"
	$"FCC0 0641 C041 C041 C041 FD77 FFC0 00F7"
	$"FCC0 FE77 09F7 7777 C1C1 7741 C1C1 41FD"
	$"C105 7741 7171 C1C1 FD71 FBC1 0071 FDC1"
	$"FB71 FFD9 00A0 FB71 10A0 D973 D971 D9D9"
	$"A0A0 D9D9 A0A0 D973 73A0 FED9 0073 FBD9"
	$"FFE0 FEA2 12BE 93BC 9FAC ACAB AB90 90A9"
	$"9090 A990 A6A9 5C3B 0C32 3E55 8DB7 C6B5"
	$"B5B2 B4D6 B4B3 FDB4 02D6 D7D7 FECC FEBD"
	$"08A0 F3A0 DF71 F5D8 D8F5 FCD8 F3C0 0375"
	$"EF75 EFF9 7501 EF75 012C 2DF8 1DF8 1DF8"
	$"F81D F8F8 1DF8 1DF8 1DF8 F81D F81D F81D"
	$"F81D F81D F81D 1DF8 1DF8 F91D F81D F8F9"
	$"F8F9 F9F8 F9F8 F91D F8FD 1D1B 751D 751D"
	$"75F9 1DF9 75F9 1D75 1DF9 75F9 F8F9 1D75"
	$"F975 F975 F975 F9F9 FD75 001D FC75 271A"
	$"F975 EF75 F975 F975 751A 751A 75F9 75F9"
	$"1A75 1AC0 F775 F7C0 F775 7775 7775 77C0"
	$"F7C0 F7C0 F741 C0FC C00A 41C0 41C0 41C0"
	$"C0F7 41C1 F5FE 77FE C00F 77F5 C0C1 C077"
	$"D8C1 41C1 C171 C1C1 7177 FDC1 0871 C171"
	$"C171 D8C1 71D8 FDC1 0171 D9FE C124 71C1"
	$"C171 C171 D9C1 A0C1 D9A0 71A0 D9D9 A071"
	$"D973 A0A0 C1D9 D9A0 A0D9 A0A0 D965 A073"
	$"D973 D9FC 730E BDD9 A0A2 A2BE 95BF BC9F"
	$"ACAB AB90 90FC A905 90A9 A65C 4B3E 0E3E"
	$"3C5B B7B1 C9B5 CAB2 9DE3 D0B4 B2B3 FEB4"
	$"11D6 9DD7 CCCC BDBD E2DF DFD9 F371 A0C1"
	$"F5D8 F5FC D8F5 C0FE EF0B 75C0 EFF9 EFEF"
	$"7575 EFF8 F875 0115 FAF8 FF1D 00F8 FD1D"
	$"0CF8 1DF8 F81D 1DF8 1D1D F8F8 1DF8 FC1D"
	$"04F8 1DF8 1DF8 FB1D 03F8 1D1D F8FA 1D03"
	$"751D 751D FE75 0BF9 75F9 F975 F975 F9F8"
	$"7575 F9FC 7506 F975 F9F9 7575 F9F6 7500"
	$"F9FA 7502 C075 C0FC 750F C075 C041 C041"
	$"C041 C041 C0C0 4141 F741 FF41 FD77 09C0"
	$"F741 77C0 C077 C141 C1FE 710E C177 77D8"
	$"C1C1 F571 D877 D871 71C1 C1FB 71FF C100"
	$"71FD C1FF 71FF C101 71C1 FE71 FFD9 00A0"
	$"FEC1 03D9 C1D9 C1FD D900 73FD D908 73D9"
	$"73D9 D973 73D9 A0FA D904 E0A2 BDD9 D9FE"
	$"A0FF A2FF 7318 D9E0 A2A2 BE93 BC9F 92AB"
	$"ABA6 90A9 A9B1 B1A9 A9A6 A65C 503E 320B"
	$"3D5B 9AC8 C6C9 B3B4 CCBD CCD7 FEB4 00BC"
	$"FEB4 06D6 D7D7 E3E3 BDBD FEA0 FFDF 03D8"
	$"DFD8 DFFD D804 C1D8 D8C0 D8FD C003 EFC0"
	$"C0EF FAC0 FE75 FFEF FF75 01EF 7501 1905"
	$"F81D F81D F8F8 FB1D 07F8 1DF8 1DF8 F81D"
	$"F8FE 1D1B F81D F81D 1DF8 1D1D F81D F81D"
	$"1DF8 1D1D F81D 1DF8 1D1D F81D 1DF8 1DF8"
	$"FE1D FB75 00F9 FA75 04F8 75F8 75F9 FD75"
	$"FCF9 0175 F9FE 7500 F9FB 7500 F9FE 7500"
	$"F9FD 7503 C075 75F9 FE75 11C0 75F7 77C0"
	$"7541 7541 7775 41C0 4141 F741 772E 77F7"
	$"77C0 77C0 C041 77C1 C0F7 C041 C171 7177"
	$"41F5 7771 C1C1 D8C1 41F5 C171 D8C1 71C1"
	$"7171 C171 71C1 71F5 71C1 71C1 71FC C1FE"
	$"7104 C1D9 D9C1 C1FA D902 C1D9 C1F6 D900"
	$"73FC D905 A0D9 D9E0 A2BD FED9 FFA0 1165"
	$"73A2 E0A2 E0A2 BE9D 939F AC92 ABAB 90A9"
	$"A9FD 88FE A904 6C45 3E32 491A 539A C8B5"
	$"B5CA B4D7 DFDF BDBD 9DD0 B4BC B3B4 B4D6"
	$"D0D7 CCCC BDE2 A0FA DF04 A0D8 D8A0 71FE"
	$"D8FE C000 D8FB C00F EFC0 EFC0 EFC0 EF75"
	$"C075 EF75 EFF9 EF75 011A FCF8 FF1D 07F8"
	$"1D1D F81D 1DF8 1DFE F8FF 1D02 F81D F8FE"
	$"1D03 F81D 1DF8 FD1D FFF8 FF1D 03F8 1DF9"
	$"F8FD 1D1C 751D 1D75 1D75 1D75 75F9 75F9"
	$"75F9 7575 F8F9 1DF9 75F9 75F8 7575 F975"
	$"EFFE 7502 F975 F9FD 7501 F7F9 F875 00F7"
	$"FC75 19C0 75F9 C075 C075 C0F7 75F7 75C0"
	$"C041 7777 F741 F741 C0C0 41C0 C009 41C0"
	$"4177 F541 77C0 C171 FEC0 13C1 41C0 77C0"
	$"4141 77F5 7771 C1F5 C1C1 D8C1 7171 D8FC"
	$"7101 C171 FDC1 01F5 71FD C112 D971 71C1"
	$"A0C1 D973 D9D9 73D9 73C1 D9C1 D9D9 C1F4"
	$"D901 E073 FBD9 00E0 FED9 02A2 E0A2 FBE0"
	$"FFBE 0493 BC9F AC92 FE90 02A9 8887 FD88"
	$"0790 A67F 453B 3E3B 3C0E 9AB7 C6B5 B5B3"
	$"9DBD 4FC0 714F 8F9D 9DFD B409 D6D7 D7CC"
	$"E3CC BDDF DFA0 FEDF FFA0 F9D8 FFC0 00D8"
	$"FBC0 10EF C0EF C0EF C075 75EF 75EF 75EF"
	$"F9EF 75F9 0125 021D F81D FEF8 FE1D 17F8"
	$"1D1D F81D F81D F8F8 1D1D F81D F8F8 1DF8"
	$"1DF8 1DF8 1D1D F8FE 1D02 F81D 75FD 1D0A"
	$"F875 1DF8 751D 1DF9 75EF 1DFB 750A F8F9"
	$"7575 EF1D EF1D F975 F9FC 7503 F975 F9F9"
	$"FE75 05F9 75F9 75F7 F9FC 7509 F975 F775"
	$"C075 C075 75C0 FE75 FEF7 0C1A F777 F741"
	$"77C0 7741 7741 C077 FEC0 FF77 0EF7 77F7"
	$"4141 C041 C041 77C0 77F7 41D8 FE41 09D8"
	$"4177 71C1 F571 77D8 71FC C1F9 7101 C171"
	$"FEC1 04D9 C1D9 C1C1 FEA0 01D9 A0FE D906"
	$"C1D9 C1D9 D9C1 D9FE C100 71FD D903 73A2"
	$"73A2 FED9 1173 A2D9 D973 E0A2 E0D9 D9BD"
	$"A2A2 A0E0 73A2 A0FE E0FF BE07 93BC ACAC"
	$"92AB ABA9 FE88 0087 FE88 08A9 A687 5F3B"
	$"323B 485B 0EC8 CFB5 C9A7 B3D0 7141 7534"
	$"9E6B BDD7 FCB4 01D6 D7FE CC09 8FBD BDA0"
	$"A0DF DFD8 DFDF FAD8 FEC0 00D8 F7C0 0BEF"
	$"C0C0 75EF 75EF F9EF F9EF EF01 2402 F81D"
	$"F8FD 1D00 F8FD 1D03 F81D F81D FDF8 2E1D"
	$"F81D 1DF8 1DF8 1D1D F8F8 1D75 F81D 1D75"
	$"F81D F975 F8F9 1D1D 751D 1DF9 751D 751D"
	$"75F9 75F9 75F9 75F9 F875 F91D 7575 FDF9"
	$"0375 F975 F9F4 7500 F7FA 7505 F775 F775"
	$"75C0 FE75 03C0 7575 41FB C00C 7741 77C0"
	$"41F7 41C0 4177 C041 7712 4177 41F5 7771"
	$"C041 C0C0 77F7 C177 41D8 41F5 71FE C117"
	$"71C1 D871 C171 C171 C171 C1F5 71C1 71C1"
	$"71C1 71C1 D971 D871 FED9 0471 D9A0 D971"
	$"FDD9 00A0 FED9 0BC1 D9D9 A0D9 A0C1 D9A0"
	$"D9A0 E0FD D913 65A0 D9A0 A2E0 A2D9 E0D9"
	$"E0BD D9E0 A2E0 73D9 E065 FEE0 0DE3 D0D0"
	$"BC9F ACAB ABA6 A6A9 9B87 87FE 88FF A907"
	$"9B81 3B32 3E48 5BB7 07C6 B5B5 C9A7 AC93"
	$"A0FE 4104 6FDF BDCC 9DFD B402 D0D7 D7FE"
	$"CC09 BDE0 E0BD DFA0 DF71 DF9E FED8 0071"
	$"FDD8 FCC0 02D8 C0D8 F7C0 FF75 03EF 75EF"
	$"7501 1603 1DF8 1D1D FEF8 1F1D F81D F81D"
	$"F81D F81D F81D 1DF8 1DF8 1DF8 1DF8 1D1D"
	$"F81D 1DF8 1D1D 75F8 1D1D F9FC 1D08 F81D"
	$"1D75 1D75 F91D EFF8 7500 F9FC 75FE F9FB"
	$"7500 F9FD 7506 F975 F975 F975 F9FC 7502"
	$"C075 F7FE 7500 C0FE 7506 C041 C041 C0C0"
	$"77FE C00D 4177 C041 C0C0 41C0 4177 C041"
	$"7777 13F5 77C0 41C0 41F7 41F7 41F5 C141"
	$"F571 77D8 7171 F5FE C103 D871 F571 FBC1"
	$"FA71 0AC1 D9C1 71C1 71C1 D9C1 D9A0 F9D9"
	$"05C1 A0D9 A0D9 A0FD D906 A0D9 A0D9 D9A0"
	$"D9FE A005 D965 A065 E0A2 FDE0 01D9 E0FE"
	$"A211 E073 A2E0 A2E0 A2D0 D0BC ACAC ABA6"
	$"A9A6 8888 FE87 FF88 0A87 A99B 8A3D 323E"
	$"485B 9AC8 10C9 CAC9 A6AB ACBC BE73 71C0"
	$"D8DF E2BD A8D0 FDB4 FED7 FECC 00E0 FEBD"
	$"FDDF FED8 0071 FAD8 FEC0 02F7 C0F5 F9C0"
	$"07EF C075 EF75 EF75 EF01 10FE 1D00 F8FD"
	$"1D0E F81D F81D 1DF8 1DF8 1DF8 1D1D F81D"
	$"F8FE 1D06 F81D F81D 1D75 F8FE 1D0C 75F8"
	$"1D1D 751D F81D 1D75 F91D F9FD 7505 1DEF"
	$"1DF9 F8F9 FA75 FEF9 00F7 FE75 02F9 75F9"
	$"FE75 02F9 75F9 F975 00C0 FA75 00F7 FEC0"
	$"FF41 FFC0 0AF7 C0C0 77C0 C075 C077 F741"
	$"FEC0 0777 C077 C041 F577 C00D 77C0 7177"
	$"41F5 7777 4177 C177 C141 FE71 FEC1 1D71"
	$"C171 71D8 7171 C171 71C1 A0C1 71D9 C171"
	$"C171 C1D9 71C1 D9A0 71D9 A0D9 A0FC D9FC"
	$"A0F4 D916 BDD9 E0A0 E0A0 65A0 A0D9 E073"
	$"E073 E0D9 A2A2 E0A2 E0A2 D9FE A2FF BE1A"
	$"D09F ACAC 6EAB 90A9 889B 9B87 9B87 879B"
	$"8888 5C50 323E 3D48 9AB7 B510 B5C9 A6A6"
	$"ABAB BC9D BEA0 D89E D8F3 A0CC 9DFD B404"
	$"D0D7 9D9D CCFB BDFE A002 DF9E A0FC D800"
	$"C1F0 C006 EFC0 F9EF 75EF 7501 2502 1DF8"
	$"1DFE F808 1DF8 1DF8 1DF8 1D1D F8FE 1D00"
	$"F8FD 1D0E F81D F81D F81D F81D F875 1DF8"
	$"1D1D 75FE 1D0A F91D 75F9 1D1D 7575 F975"
	$"F9FE 7504 EF75 751D F9FA 75FF F9FA 7506"
	$"F975 F7F9 F775 F9F9 7502 C075 C0FD 750B"
	$"C075 C075 F741 7741 4177 C041 FCC0 0C41"
	$"F7C0 4141 C041 7177 C041 D877 0EC0 77C0"
	$"71F5 41C1 F5C1 D877 C177 7177 FE71 01C1"
	$"71FE C102 D871 D8FD 71FE C111 71C1 D9C1"
	$"A071 71D9 D9A0 A0D9 A0A0 D9A0 D9A0 FBD9"
	$"0CA0 D9D9 A0D9 A073 D973 D973 D973 FEE0"
	$"0CA2 BDA2 BDA0 E0BD A2BD A0A0 A2A2 FDE0"
	$"FFA2 FFBD FEA2 FFBE FF93 079F AC92 ABAB"
	$"90A9 88FD 870E BB87 9BA9 885C 4B3E 323D"
	$"488D B7A6 B501 C9A6 FEA9 17AB A7BC 9DBD"
	$"D8C0 C0C1 DFBD D7D0 B4BC D6D0 D7D7 9DD7"
	$"CCBD CCFE BD07 E2A0 A0DF DFD8 D8F5 FCD8"
	$"FFC0 02D8 C0D8 F8C0 08EF C0EF C075 75EF"
	$"F9EF 010F 02F8 1DF8 FE1D 04F8 1DF8 1DF8"
	$"FB3E 091D F875 EF75 F81D F81D F8FE 1D09"
	$"F81D F875 1D1D F81D 1D75 FE1D 04F8 1D1D"
	$"F9F8 FB75 03F9 1D75 F9F6 7500 F9FD 7500"
	$"F9FE 7502 F775 F7FB 7500 C0FC 7503 F775"
	$"C075 F6C0 0341 F741 41FC C00A 7741 F771"
	$"F741 C041 C041 C10D 77C1 77C0 4177 41C1"
	$"4171 77C0 C1C1 FD71 02D8 71EB FC00 FC71"
	$"10A0 C171 C171 C1C1 D9C1 D971 D971 A0C1"
	$"A0C1 FCD9 0073 FAD9 18A0 D9D9 E0D9 E0D9"
	$"A0D9 E073 E0D9 E0D9 A2BD 65A2 BDA2 A0A0"
	$"A2E0 FCA2 0EE0 A2BD E0BE BE93 93BC 9FAC"
	$"92A7 AB90 FD88 FF9B 0FAA 899B A99B 5C45"
	$"3E2C 3B48 8DB7 C8D4 C916 CFB1 8888 90AB"
	$"ABAC BCCC 7171 75C0 D8A0 BD9D D6D0 B4D0"
	$"D0FE D7FE CC01 BDE2 FEBD 04DF A0DF A0DF"
	$"FDD8 0571 D8D8 C0C0 F5F6 C004 EFC0 EFC0"
	$"F7FE 7501 26FE 1D14 F81D F81D F81D F81D"
	$"463E 463E 463E 1D75 F81D F875 75FE 1D02"
	$"F81D F8FC 1D09 F81D F875 1DF9 751D F91D"
	$"FE75 08F9 F8F9 75F9 7575 F9F9 FE75 00F9"
	$"FA75 00F9 FD75 00F9 FE75 19C0 F9F7 F775"
	$"F775 F7C0 C0F7 7575 C075 C075 75C0 F7C0"
	$"F7C0 75C0 C0FE 4106 77C0 41C0 41F7 C0FC"
	$"4109 C041 7777 F577 71C0 C1C1 FFC1 0B41"
	$"C177 C1C1 D8D8 71C0 77C1 77FC 7101 C1EB"
	$"FC00 0571 C1D8 7171 C1FE 7104 D971 D9A0"
	$"D9FB A0FD D9FE 730A D9E0 D9A0 D9A0 E0A0"
	$"D9D9 E0FE D903 A0D9 E0D9 FEE0 1DBD D9A0"
	$"A2D9 65BD A0BD BDE0 A2E0 A2E0 A2E0 A2BD"
	$"BDBE E4D0 93BC 9FAC ACAB ABFE A914 8887"
	$"9B9B 8889 9BA9 A987 453B 2C3E 485B 9AC8"
	$"B5D4 CF1E B188 88A9 9090 ABAC BC9D A071"
	$"C041 D8DF BDCC D7B4 D0B4 D7D7 9DCC D79D"
	$"CCCC BDFE E200 A0FD DF08 71D8 D871 D8D8"
	$"C0C0 D8F2 C004 F775 EF75 EF01 230A 1DF8"
	$"1DF8 1D1D F81D F81D F8FB 3E00 F8FD 751A"
	$"F875 F875 1D1D F81D F8F8 75F8 751D F81D"
	$"F875 1D75 F91D 1D75 F8F9 1DFC 75FF F903"
	$"EFF9 75F9 F575 11F9 75C0 75C0 75F7 75F9"
	$"F7F9 7575 C0F9 77F7 F7FD 7504 F777 F777"
	$"F7FD C018 41F7 C0C0 41F7 C041 41C1 77C0"
	$"77C0 7741 C1F7 7141 C0C0 7177 C10D 7771"
	$"F541 7771 C171 77D8 77C1 71C1 FD71 02D8"
	$"71EB FC00 FFC1 FB71 02D9 C1C1 FED9 FFA0"
	$"0771 A071 D9A0 D9D9 73FD D90B 73A0 D9D9"
	$"E0E0 D9E0 E0A2 E0A2 FEE0 00D9 FEE0 08A2"
	$"E0E0 A2E0 A2E0 65BD FEA2 04E0 A2E0 A2E0"
	$"FEA2 22BE E6E6 BC9F ACAC 92AB ABA9 A988"
	$"9B87 879B 889B 87A9 A988 5F46 323E 3D5B"
	$"9AC6 C6B5 CFB1 01A9 88FD A905 90AC AC93"
	$"A2A0 FEC0 13F5 DFCB D7D6 B4D0 D79D D7CC"
	$"9DD7 D7CC E2CB BDBD E2FE DF08 A0D8 D871"
	$"F5D8 D8C0 D8F4 C007 EFC0 C0EF C0C0 7575"
	$"0122 FD1D 16F8 1D1D F81D F81D 463E 463E"
	$"463E 1DF8 75F8 75F9 751D 1DF8 FE1D 1475"
	$"F875 1DF8 EF1D EF1D 7575 F81D F9F8 F975"
	$"75EF 1DF9 FE75 FDF9 F975 02F9 75F9 FE75"
	$"0AF9 75F7 75F7 F7F9 F775 F7F7 FD75 0DC0"
	$"7741 7575 C0C0 F9C0 77C0 F7C0 75F8 C011"
	$"F741 F577 C177 C1C0 41C0 41C0 7171 D871"
	$"F541 04C1 77C1 C177 FEC1 FF71 01F5 77FE"
	$"C1FD 7101 C1EB FC00 0171 C1FE 7100 A0FE"
	$"7101 D971 FCD9 1BA0 D9A0 A0D9 D9A0 D9D9"
	$"73D9 A0D9 D9A0 D9D9 E0A0 D9E0 D9A2 E0E0"
	$"73E0 A2FE E0FF A20F E0A2 A2E0 A2E0 BDA2"
	$"A2E0 A2E0 A2E0 A2E0 FEBE 04E6 9F9F AC92"
	$"FEAB FFA9 02AD 9BAD FD9B FF88 0EA9 885C"
	$"3B32 3E3D 5B9A C8C6 B5C6 A9A9 1A88 9088"
	$"ADA9 ADA9 ABAC BC70 BD71 D8C0 D8DF CBCC"
	$"D7D0 D0D7 D79D CCD7 FDCC 08BD E2BD BDA0"
	$"DFDF A0A0 FED8 01C1 D8F2 C007 ECC0 C0F7"
	$"75F7 EF75 0113 02F8 1DF8 FE1D 04F8 1DF8"
	$"1DF8 FB3E 00F8 FE1D 0CF9 1DF9 F8F9 1D1D"
	$"F8F9 1D75 1D75 FE1D 04F8 7575 F9F9 FD75"
	$"FBF9 021D EFF9 FD75 09F9 7575 F975 75F7"
	$"F9F9 75FE F900 F7FB F906 75F9 75F7 C0C0"
	$"75FB C000 75F5 C0FE 410E C041 4177 4177"
	$"C0C0 41C0 D8C1 D877 C0FE C101 41D8 FF71"
	$"07C1 D871 F571 F5C1 F5FC C1FF 7103 D871"
	$"71EB FC00 FF71 FED9 03C1 D971 D9FE A000"
	$"C1FD D905 A0D9 73D9 A0A0 FBD9 07E0 A2E0"
	$"A073 E0A0 D9FE A0FF E0FF A202 73D9 A2FD"
	$"E017 A2BD A2BD 65A2 A2BE A2E0 E0F4 E0BE"
	$"BE93 939F 9FAC ACAB A6A6 FEA9 FF9B FF88"
	$"FE9B 1088 A9A9 6D3B 323E 3D48 9AB7 C6B5"
	$"C9A6 A9AD 1988 90A9 A9AD A990 ABA7 ACBC"
	$"BE71 C0C0 4F9E DFBD CCD7 D09D D7E3 E3FA"
	$"CCFF BD0B E2BD D9A0 DFA0 A0DF D8F5 D8D8"
	$"F2C0 05EF 75C0 EFC0 7501 2CFD 1D0C F91D"
	$"1DF8 1DF8 1D3E 3E46 3E46 3EFE 1D04 F91D"
	$"7283 4BFE 3E03 5866 77F9 FE1D 10F8 1D1D"
	$"7283 4B3E 3E46 588B 73F9 75F9 7594 FC66"
	$"0875 C183 3B3E 4B66 75F9 FE75 03F9 C3A5"
	$"01FE 000F EBC5 A375 F9F7 F775 4C79 FE00"
	$"3AA4 F9A4 FCAF 03A3 C077 C4FC AF0F F7C2"
	$"79FE 0001 AFC1 C041 C071 C0A4 7901 FE00"
	$"023A C5A3 0471 C171 C1C4 FCAF 06C1 C279"
	$"FE00 01AF FE71 00EB FC00 0F71 A3A5 0000"
	$"3AAF D9D9 A0D9 A0D9 A479 01FE 0007 EBC5"
	$"84A0 D973 D9A0 FBAF 06D9 9579 FE00 FCAF"
	$"FEE0 01A2 E0FC A233 BDA2 BEBD BD65 BDA2"
	$"A2E0 F4F4 E4E4 D093 BC4E ACAC 92D1 AB90"
	$"A9A9 88AD AD88 88AD 88B1 A9A9 B17F 4B32"
	$"323D 489A 9AC6 B5A6 CFA9 ADA9 FFA9 1288"
	$"AD88 A9A9 90AB ACB4 93D9 C06F 6F9E D8E2"
	$"CCCC FED7 FFE3 FECC 00D7 FECC FEBD 07D9"
	$"BDBD A0A0 DFD8 F3FE D8FF C000 D8F6 C006"
	$"EFC0 C0EF C075 C001 13FF 1D00 F8FE 1D06"
	$"F81D F81D F83E 46FD 3E15 F81D 1D77 5F46"
	$"3E3E 463E 463E 463B 721D 751D 1D77 5F46"
	$"FE3E 0046 FD3E 1694 7575 F958 463E 463E"
	$"464C 4B3E 3E46 3E3E 6675 75F9 4CA5 F800"
	$"05C4 75F7 7575 3AFC 0002 C4AF FDFD 0003"
	$"C377 C0EB FC00 01C2 3AFC 0005 C541 D841"
	$"C2A5 F800 04AF C171 D8EB FC00 01C2 3AFC"
	$"0003 AFC1 C1EB FC00 01C3 FEFC 0005 AFD9"
	$"A0A0 D979 F900 06FE AFA0 D9E0 D9EB FC00"
	$"0195 3AFC 000E C5A2 E0A2 A2E0 A2E0 A2E0"
	$"A2BE A2A2 BDFE A211 E0A2 DABE BED0 93B4"
	$"B3AC A76E AB90 90A9 8888 FEAD 0E88 ADA9"
	$"A990 A6A6 8745 3232 4948 5BB7 FDC6 03B1"
	$"A99B A9FF A900 88FC A9FF AB0C ACBC CCA0"
	$"6FC0 D8D8 A0BD CCCC 9DFD D701 CCD7 FBCC"
	$"FCBD 05A0 DFDF D8D8 F5FE D8FF C005 D8C0"
	$"C0D8 C0D8 FBC0 04EF C075 C0EF 00FA FB1D"
	$"04F8 1DF8 1D1D FE3E 0646 3E3E 1D75 F883"
	$"F63E 0467 F91D 7583 FA3E 0046 FE3E 0384"
	$"75F9 58FC 3E0B 833E 463E 3E46 3E4B 7575"
	$"F7A5 F600 03C3 F975 C4FB 0001 0879 FC00"
	$"03A4 F741 EBFC 0000 79FA 0003 7141 71A5"
	$"F700 0400 AFC0 71EB FC00 0079 FB00 03FE"
	$"D9C1 EBFC 0000 EBFB 0004 FE73 D9D9 C5F6"
	$"0004 A4D9 73BD EBFC 0000 79FA 00FE E0FE"
	$"A202 E0A2 BDFE A2FF 6504 BDA2 A2DA A2FE"
	$"BE08 BCB4 9FAC A7AB AB90 90FE A902 88AD"
	$"ADFE A914 D190 ABAB 9B5F 3B32 3E3D 5BB6"
	$"C8C6 B5C6 B1B1 8888 A904 8890 8888 ADFD"
	$"A90E ABAC AC9D BD71 C0D8 D8D9 BDBD CC9D"
	$"D0FD D7FF CC06 A8BD CCBD CCBD E2FE BDFF"
	$"A0FF DFFF D802 F5D8 D8FE C005 D8C0 C0D8"
	$"C0D8 FAC0 02EF C0C0 00E4 13F8 1D1D F81D"
	$"F81D F81D 1DF8 3E46 3E3E 463E 1D1D 67FE"
	$"3E0C 463E 3E46 3E46 3E46 3E58 751D 72FD"
	$"3E02 463E 46FE 3E09 463E 58F9 1D58 3E46"
	$"3E46 FA3E 0446 3E73 F9C3 F500 03EB 75F9"
	$"79F4 0003 C3C0 75EB F400 02A4 F5A4 F600"
	$"0400 0171 71EB F400 02C3 C1EB F400 02A4"
	$"7384 F500 043A E0D9 D9EB F400 06A4 A2E0"
	$"BDE0 A2BD FEE0 01A2 E0FE A2FD BEFF 9307"
	$"4EB4 9FA7 926E AB90 FEA9 1988 9B87 9B9B"
	$"889B B1B1 A9A6 885F 3B2C 3E3D 5BB6 C8D3"
	$"C6CF A6A9 A9FE 8800 90FE A914 88A9 8888"
	$"A990 ABAC B49D BDC1 F5F5 F3D9 BDCC D7D0"
	$"D0FD D7FF CC00 A8FE CCFB BD03 E0A0 DFDF"
	$"F6D8 FFC0 00D8 FDC0 04EF C0C0 EFC0 00F8"
	$"FF1D 08F8 1DF8 1DF8 1D1D F81D FB3E 0A1D"
	$"7566 3E3E 463E 3E84 7758 FC3E 0B1D F966"
	$"3E3E 463E 3E72 7758 46FD 3E03 C175 5846"
	$"FC3E 0346 3E3E 46FE 3E02 72F9 C5FC 0002"
	$"A44C EBFC 0002 4CC0 EBF4 0003 A477 C0EB"
	$"F400 02A4 7779 FC00 02C4 C2EB FE00 FF00"
	$"0284 C1EB F400 02A4 C1EB F400 02A4 D9AF"
	$"FC00 02C3 D9A5 FC00 03D9 E0E0 EBF4 0000"
	$"A4FE E0FF BD02 E0A2 BDFD A225 E0A2 E3D0"
	$"9393 4EB4 B49F A792 AB90 A9A9 889B 8786"
	$"8669 695C 8686 5C86 9B9B 5F3B 2C32 3D5B"
	$"9AB1 FECF 06B1 A9AD 8888 A988 1088 A9A9"
	$"88A9 AD88 AD88 A990 ABAC B4BE E0A0 FED9"
	$"09A0 BD9D D0D6 D6B4 B49D D7FD CC03 BDCC"
	$"CCA8 FEBD 03E0 BDDF DFF7 D805 C0D8 D8C0"
	$"C0D8 FDC0 02EF C0C0 0118 011D F8FE 1D02"
	$"F81D F8FE 1D0A 3E46 3E46 3E46 1D1D 583E"
	$"46FE 3E0C 1D75 6646 3E3E 463E 8475 583E"
	$"46FE 3E0A F975 663E 3E46 3E46 7275 58FE"
	$"3E04 463E 72C1 58FE 3E04 463E 7275 EBFC"
	$"0002 F9F7 AFFC 0002 A4C0 EBFC 0002 C44C"
	$"EBFC 0003 C377 C0EB FC00 02A4 C201 FC00"
	$"02A4 C1EB FC00 02C0 41AF FE00 FF00 02A4"
	$"C1EB FC00 02C4 71EB FC00 02A4 C1EB FC00"
	$"02C4 67EB FC00 02A4 D9EB FC00 02D9 73AF"
	$"FC00 03A4 D9A0 EBFC 0002 C495 FCFC 0006"
	$"A4A2 E0BD A2A2 BDFE A20C BDA2 A2BE BE9D"
	$"9D93 BC9F ACAC A7FE AB22 A6B1 9B86 6969"
	$"6255 8055 5554 543D 8062 624B 3232 3D48"
	$"8DB7 B1B5 C6B1 B1AD ADA1 A9A9 ADFF A9FF"
	$"88FD AD16 88AD 90AB ACB3 D0BE E0F3 A0D9"
	$"A0BD CCD7 B4B4 BCB4 D0D7 D7FA CC00 E2FD"
	$"BD06 A0DF 9EDF D8DF DFF9 D801 C0D8 FAC0"
	$"00EF 0116 FF1D 08F8 1DF8 1DF8 1DF8 751D"
	$"FB3E FF1D 0058 FE3E 0646 3EF9 1D66 3E46"
	$"FE3E 0272 1D58 FE3E 0546 3E75 1D66 46FD"
	$"3E03 7275 5846 FD3E FF75 0266 3E46 FE3E"
	$"0272 75EB FC00 FF75 00AF FC00 02C3 77EB"
	$"FC00 02F7 C0AF FC00 03A4 C041 EBFC 0002"
	$"7741 AFFC 0002 A4F5 EBFC 00FF 7100 79FE"
	$"00FF 0002 A4C1 EBFC 0002 D871 AFFC 0002"
	$"A4D9 EBFC 0002 D9A0 AFFC 0002 A4A0 EBFC"
	$"0002 D973 AFFC 0003 A4E0 D9EB FC00 02E0"
	$"A2AF FC00 0BA4 E0E0 BDCC BEA2 BD65 A2A2"
	$"CCFE BE10 9D93 BC9F 9292 ABAB A6B1 9B9B"
	$"5C53 6A55 63FE 4912 563B 4A3B 4A49 5746"
	$"3232 3B48 8DB7 C8C6 C6A6 B1FE A9FF AD01"
	$"88A9 FFAD FD88 FEAD 0F88 A9A9 90AC ACD0"
	$"9DBD A0E0 A08F A8B9 D6FD B401 D0D7 FCCC"
	$"0BA8 CC8F BDCC BDBD DFBA DFDF A0FC DFFB"
	$"D801 C0D8 FDC0 02EF C0C0 011E 15F8 1D1D"
	$"F81D F81D 1DF9 1DF8 3E46 3E46 3E3E F81D"
	$"583E 46FE 3EFF 1D0A 663E 3E46 3E46 721D"
	$"583E 46FE 3EFF 7508 663E 463E 463E 721D"
	$"58FE 3E04 463E 751D 66FE 3E04 463E 7275"
	$"EBFC 00FF 7500 AFFC 0002 A441 EBFC 0002"
	$"C0F7 AFFC 0003 A477 77EB FC00 FF41 00AF"
	$"FC00 02A4 77EB FC00 01C1 AFFD 00FF 0002"
	$"A4C1 EBFC 00FF C100 AFFC 0002 A4D9 EBFC"
	$"0002 71A0 AFFC 0002 A4A0 EBFC 0002 D9E0"
	$"AFFC 0003 A4A0 D9EB FC00 02BD A2AF FC00"
	$"26A4 BDA2 BDBE BDBE A2BD 65BE BE9D D093"
	$"4E4E 9F92 92AB ABB1 9B86 6953 6A63 5656"
	$"4A57 5746 463B 4646 FE3B 0F2C 323B 488D"
	$"B7C8 C6C6 C8B7 AAAA 9BB1 A9FE 88FF ADFF"
	$"8800 A9FC 8808 89AD 8890 92B3 B4D7 CCFE"
	$"BD09 A8D7 D6B4 B3B3 B4B4 B9D7 FCCC 00A8"
	$"FECC FFBD FF8F 08A0 DFA0 DFDF D8DF D8DF"
	$"FED8 04C0 D8D8 C0D8 FBC0 010D FF1D 00F8"
	$"FC1D 02F8 1D1D FB3E FF1D 0958 463E 3E46"
	$"3E1D 1D4C 95FD 7203 771D 5846 FE3E 0346"
	$"F975 66FC 3E0C 7275 5846 3E46 3E3E 7575"
	$"663E 46FE 3E02 7275 EBFC 00FF 7500 AFFC"
	$"0002 C375 EBFC 0002 C041 AFFC 0003 A477"
	$"41EB FC00 02C0 41AF FC00 03C3 D841 D8FE"
	$"7101 C3EB FC00 FF00 02A4 C1EB FC00 FFC1"
	$"00AF FC00 02A4 A0EB FC00 FFA0 00AF FC00"
	$"02A4 A0EB FC00 FFEB 0001 FC00 03A4 E0E0"
	$"EBFC 0002 BDA2 AFFC 0009 A4A2 A2E3 E0BE"
	$"A2A2 65BE FE9D 0DD0 BC9F 9FAC ABAB A9A9"
	$"875C 5355 63FE 5702 4A57 57FC 4609 5157"
	$"3B32 323B 555B B7B7 FEC6 09B7 8D86 9A9B"
	$"B79B 9B88 ADFF AD01 9BB1 FB88 159B 8988"
	$"A9AB A7B4 B49D BECC CCA8 9DB4 B4B3 B3B4"
	$"D6D7 D7FE CC08 8FE5 A8CC CCBD CC8F 8FFE"
	$"BD00 A0FB DFFB D8F9 C001 0914 1DF8 1D1D"
	$"F91D F875 75F8 7546 3E46 3E46 3E75 F958"
	$"46FD 3E1A F875 1D1A 1DF9 F91D 7575 5846"
	$"3E46 3E3E 7575 6646 3E3E 463E 7275 58FC"
	$"3EFF 7500 66FE 3E04 463E 7275 EBFC 0002"
	$"C041 AFFC 0002 A477 EBFC 00FF C000 AFFC"
	$"0003 C377 C0EB FC00 0241 71AF FC00 06A4"
	$"77F5 71D8 C2C5 FA00 FF00 02A4 F5EB FC00"
	$"02C1 D9AF FC00 02A4 D9EB FC00 02A0 D9AF"
	$"FC00 02A4 A0EB F400 03A4 E0A2 EBFC 0002"
	$"BDA2 AFFC 0003 A4BE E0E0 FEBE 01BD BEFE"
	$"9D14 93BC 9FAC A7AB AB9B 8769 6263 4957"
	$"5746 464A 5757 51FE 57FF 4B08 5746 3232"
	$"3B54 7E9A C8FD C601 C8B1 FEB7 FC9A FFAA"
	$"FE9B FF88 0089 FE87 107F 8988 A9A6 A7B3"
	$"D0D0 9DCC CCD7 D7B4 B3CA FEB4 019D D7F8"
	$"CCFC BD02 DFA0 A0FE DF02 D8DF DFFC D801"
	$"C0D8 FCC0 010B FF1D 05F8 1D1D F975 F8FE"
	$"75FC 3E13 4675 1D58 3E46 3E3E 4675 1DF9"
	$"1DF9 75F9 F975 1D58 FD3E 1B46 7575 663E"
	$"463E 3E46 7275 5846 3E3E 463E 7575 663E"
	$"463E 3E46 72C0 EBFC 00FF C000 AFFC 0002"
	$"C377 EBFC 00FF C000 AFFC 0003 A4C0 77EB"
	$"FC00 0241 77AF FC00 05A4 C1C1 71C4 FEF9"
	$"00FF 0002 A4C1 EBFC 0002 C1F6 AFFC 0002"
	$"A4D9 EBFC 00FF D900 AFFC 0002 A4D9 EBF4"
	$"0003 A4E0 A2EB FC00 FFA2 00AF FC00 3CA4"
	$"BEA2 BEE0 BEBE 9DBE BE70 93BC 9F92 ABA6"
	$"A99B 696A 5556 574A 574B 4657 3B49 4B57"
	$"4B57 4954 4957 3232 3E49 619A B7C8 C6C6"
	$"B5C7 CAE1 CFC8 B79A 8D8D 8585 0285 8D69"
	$"FE86 FFAA 1887 AA7F 9CAA 9B87 88AB A7B4"
	$"BCD0 9D9D B99D B4B4 B3B3 B4B4 D79D F8CC"
	$"01A8 CCFD BD01 E2A0 FCDF 01A0 DFFC D8FB"
	$"C001 0AFC 1D00 F8FD 1D03 F83E 3E46 FE3E"
	$"FF1D 0558 3E3E 463E 3EF7 7508 5846 3E46"
	$"3E3E 751D 66FC 3E04 7275 583E 46FE 3EFF"
	$"7500 66FC 3E02 7275 EBFC 0002 C075 AFFC"
	$"0002 A4C0 EBFC 0002 7741 AFFC 0003 A4C1"
	$"77EB FC00 02F5 C1AF FC00 03A4 71C1 C4FB"
	$"0000 FEFE 00FF 0002 A471 EBFC 00FF D900"
	$"AFFC 0002 A4A0 EBFC 0002 D973 AFFC 0002"
	$"A473 EBF4 0003 A4E0 A2EB FC00 FFA2 00C5"
	$"FC00 3CA4 BD9D E4F4 BD65 9D70 9D93 4EAC"
	$"92AB B1B1 9A69 6A63 4956 5657 4949 5757"
	$"4949 5E5E 4963 6355 4946 2C32 3D48 8DB7"
	$"C8C6 C6CA D7D6 C6B7 9A8D 855B 5B61 8E61"
	$"0761 5B61 617E 5B5B 7EFE 69FF 861B AA9B"
	$"9BA6 A7B3 B4D7 CCA8 A89D B4B2 B2B3 B3B4"
	$"B4D6 D7CC E5CC E3E5 CCE5 FECC 00A8 FDBD"
	$"02E2 BDBD FDDF 01A0 DFFA D8FE C001 1004"
	$"1DF8 1D1D F8FC 1D0A F93E 463E 3E46 3EF8"
	$"1D58 46FD 3E03 F8F9 751D FC75 011D 58FC"
	$"3EFF 7508 6646 3E3E 463E 721D 58FC 3EFF"
	$"7508 6646 3E3E 463E 7275 EBFC 0002 C075"
	$"AFFC 0002 C375 EBFC 0002 F741 AFFC 0003"
	$"A477 71EB FC00 F9C1 FF41 00A4 FB00 FFAF"
	$"FE00 FF00 02A4 71EB FC00 FF73 00AF FC00"
	$"02A4 A0EB FC00 0273 A2AF FC00 02A4 73EB"
	$"FC00 FCA2 06BD A2E0 A2A2 BDEB FC00 FBA2"
	$"1A65 BEBE 9DBE A2A2 BEBE D093 939F ACAC"
	$"AB9B AA69 4555 5657 4949 5E5E FC63 1E49"
	$"5E49 6355 5563 3E32 323B 3C8D B7C8 C6C6"
	$"B599 D6A6 9A8D 7E61 4868 6854 5555 0755"
	$"5454 6854 5548 6AFD 6109 5369 7E86 869B"
	$"B1A6 A7B3 FEB2 00D6 FEB2 FFB4 0AB2 D6D7"
	$"D7CC E3E0 E3E5 E3D7 FECC FEBD 0BE2 BDBD"
	$"E2E2 DFDF A0A0 DFD8 A0FD D800 6FFE C001"
	$"1BFF 1D01 F9F8 FC1D 0175 1DFB 3E0A 1D75"
	$"5846 3E3E 463E F975 72FC 6622 7375 5846"
	$"3E3E 463E F975 663E 3E46 3E3E 7275 5846"
	$"3E46 3E46 C075 663E 3E46 3E3E 7275 EBFC"
	$"0002 C041 AFFC 0002 A4F7 EBFC 0002 C041"
	$"AFFC 0003 A4C0 41EB FC00 FDC1 00D8 FDC1"
	$"0171 C5FC 0002 AFC1 AFFE 00FF 0002 A4D9"
	$"EBFC 0002 73A0 AFFC 0002 A4A0 EBFC 0002"
	$"D9A2 AFFC 0002 A4E0 EBFC 00FF E009 BDE0"
	$"A0A2 E0A2 BDBD A2EB FC00 00A2 FEBE 01BD"
	$"A2FD BE17 E0A2 BEBE D0BC BC9F 9292 909B"
	$"6964 5763 5656 4963 5E80 8063 FE55 FF6A"
	$"1A5E 5763 6854 3B32 323E 489A B7D3 C8C8"
	$"C9C7 C7C6 B861 5555 6349 493D FE49 0249"
	$"5757 FE49 0454 493D 5454 FE55 0E68 4848"
	$"5B53 5C86 9B9B B1A6 D4A7 B3A7 FDB3 04B4"
	$"D09D E3BD FBE3 06E0 BDE0 E0E3 E3E2 FEBD"
	$"06A0 DFA0 A0DF A0DF FDD8 FEC0 0118 FF1D"
	$"13F8 751D F81D 751D 1DF8 3E46 3E46 3E3E"
	$"75F8 583E 46FE 3EFF 750A 663B 3E46 3E46"
	$"7275 583E 46FE 3E03 F975 6646 FE3E 0346"
	$"7275 58FC 3E02 F775 66FC 3E02 7275 EBFC"
	$"00FF C000 AFFC 0002 C341 EBFC 0002 C5A4"
	$"01FC 0003 C377 C0EB FC00 04C1 D8C1 F577"
	$"FDC1 0171 EBFC 0002 C171 AFFE 00FF 0002"
	$"A4D9 EBFC 00FF D900 AFFC 0002 A473 EBFC"
	$"0002 73D9 AFFC 0002 A4A2 EBFC 00FF A200"
	$"AFFC 0003 A4A2 A2EB FC00 01CC 65FE BE01"
	$"9DA2 FCBE 1F70 9393 BC9F ACA7 B187 6249"
	$"604B 4957 5663 6355 5E63 6354 6861 5B7E"
	$"6A63 6855 3BFE 320D 3D5B B6B7 C8D3 CFDB"
	$"B9A6 8D7D 555E FC49 FE3B 003B FE57 FD49"
	$"0657 4949 3D49 5663 FD54 FD55 036A 6969"
	$"86FE 9B0D B1A6 A6B3 B4B4 9DCC A8D7 A8E5"
	$"CCCC FDBD 0AE2 CCE2 BDBD E2BD BDA0 DFA0"
	$"FEDF FDD8 FFC0 0119 0AF8 1D1D F81D F9F8"
	$"1D75 1DF9 FD3E 0446 3E75 1D58 FD3E 0346"
	$"F91D 66FC 3E02 721D 58FE 3E1C 463E F775"
	$"663E 3E46 3E3E 7275 583E 463E 463E 7575"
	$"663E 463E 463E 7275 EBFC 0002 4175 AFFC"
	$"0002 A4C0 A5F4 0003 A4D8 C0EB FC00 03C1"
	$"F541 D8FC C101 35EB FC00 02D9 C1AF FE00"
	$"FF00 02A4 D9EB FC00 02A0 73AF FC00 02A4"
	$"D9EB FC00 02D9 A2AF FC00 02A4 A2EB FC00"
	$"02E0 A2AF FC00 03A4 BDBE EBFC 0003 BECC"
	$"9D9D FEBE 0565 9DBE 9D9D 93FE BC34 ABA9"
	$"AA69 6A57 4657 6349 4963 6368 8068 8068"
	$"6861 858D 8D8E 6854 3B32 2C32 3D5B B0B7"
	$"C8C8 CFDB DBB1 696A 5449 574B 5757 4646"
	$"4B46 4604 464B 4646 4BFE 3B01 573B FE49"
	$"FF57 003B FD49 FE56 0F49 6355 6161 5B7E"
	$"8D9A 9AB1 B1A6 C9CA CAFE B2FF B9FF CCFE"
	$"BD00 E2FD BD04 E2BD BDE0 A0FE DFFC D800"
	$"C001 1C0D 1DF8 751D F81D 1DF9 1DF9 1D3E"
	$"3E46 FE3E 1475 1D58 463E 3E46 3E75 1D66"
	$"3E46 3E46 3E72 F958 3E46 FE3E 03F9 7566"
	$"46FD 3E03 7275 5846 FD3E 02F7 7566 FC3E"
	$"0272 C0EB FC00 02C0 77AF FC00 02C3 75AF"
	$"F400 03A4 C071 EBFC 0003 F5D8 D8F5 FDC1"
	$"0271 C1EB FC00 0271 C1AF FE00 FF00 02A4"
	$"D9EB FC00 02DD A0AF FC00 02A4 73EB FC00"
	$"02A0 D9AF FC00 02A4 A2EB FC00 FFA2 00AF"
	$"FC00 03A4 A2BE EBFC 0006 E3BE A2BE A29D"
	$"65FD 9D11 93BC 9FAC A99B 8680 574A 574B"
	$"4963 6354 6868 FE6A FF68 1961 858D B0B6"
	$"B068 3D32 2C32 4953 9AB7 B7C8 C6B5 DE9B"
	$"6A63 6349 49FE 57FF 4600 4BFE 4611 464B"
	$"464B 3B46 3B57 3B49 3B49 5757 463B 4B3B"
	$"FE57 FF49 1A5D 3D3D 5454 687D 618E 8D8D"
	$"9AB6 B7B7 A6A6 C9C9 B3B2 B29D CCA8 8F8F"
	$"FEBD 05E0 BDA0 E0BD BDFC DFFE D800 C001"
	$"21FE 1D18 F875 1DF8 1DF8 1D1D 3E46 3E3E"
	$"463E 7575 833E 3E46 3E3E 7775 66FC 3E02"
	$"671A 83FE 3E0C 463E C175 8B3E 3E46 3E46"
	$"9575 58FE 3E0C 463E 7541 663E 463E 3E46"
	$"72C0 79FC 0002 C2C0 C5FC 0002 C377 A3FA"
	$"0000 EBFC 0003 A441 F5EB FC00 FF71 01C1"
	$"71FE C103 71C1 71EB FC00 0267 D9A5 FE00"
	$"FF00 02A4 73EB FC00 02EB AFFD FC00 02A4"
	$"A0EB FC00 FFA2 00AF FC00 02A4 A2A5 FC00"
	$"0295 A279 FC00 03A4 BECC EBFC 00FE BEFF"
	$"6510 A2BE BE70 9393 BCB3 A7A6 8662 5E57"
	$"5746 57FE 63FF 6A00 7DFD 8E1D 6A8E 7E85"
	$"B0B6 D3B0 3D32 2C2C 3B55 8DB7 C8B7 C8B5"
	$"CD9B 7E63 6349 493D 3D49 FD57 023B 5757"
	$"0857 4657 4646 3B57 3B3B FE49 053D 3B3B"
	$"5157 4BFE 57FC 4925 3D5E 5555 6861 7E85"
	$"8D8D 9A9A B7C8 B1A6 A6C9 B3B2 D79D BD8F"
	$"BDBD CCBD BDE2 BDBD E2A0 DFDF A0F3 FED8"
	$"00C0 0117 0A75 1DF8 1D1D F875 1D75 1DF9"
	$"FC3E 0346 7575 66FC 3E0C 588B 3E3E 463E"
	$"3E4B 7775 663E 46FE 3E01 588B FC3E 043B"
	$"7575 5846 FD3E FF75 0866 3E3E 463E 3E72"
	$"C0AF FC00 01EB C5FC 0004 FEC0 C041 C4FC"
	$"0001 C5AF FC00 03A4 C171 EBFC 000A 71D8"
	$"7171 C171 C1C1 71C1 EBFC 0001 013A FD00"
	$"FF00 02A4 D9EB F400 02A4 A2EB FC00 02D9"
	$"A2AF FC00 02A4 A2AF FC00 02EB 79FE FC00"
	$"03BE E0BE EBFC 0017 A2BE BEA2 BEBE E4E6"
	$"D0D0 B4B3 AB87 6955 494A 4646 575E 686A"
	$"FD8E 1185 8D8D 8E8E 7E8D 8DB6 D3D3 8D3B"
	$"2C2C 3B3D 8DFE B705 C8B5 CDA6 7E5D FD49"
	$"FE3D 0249 4B4B FE3B 0046 0146 4BFD 570E"
	$"3B49 3B3B 493B 4949 3B57 3B49 3B57 57FD"
	$"49FF 4BFF 4913 5E6A 6161 5B7E 858D 8D9A"
	$"9AB6 B7C8 A6C9 B3B2 D7CC FEBD 00CC FDBD"
	$"07E2 BDE2 DFDF A0DF DFFE D801 0917 1D75"
	$"1DF8 751D 1DF8 1D1D F83E 463E 463E 3E75"
	$"1A77 3B46 3E46 FB3E 0946 3E66 7575 773B"
	$"3E3E 46FD 3E07 463E 463E 6675 7558 FE3E"
	$"0D46 3EC0 7566 463E 3E46 3E72 77C2 FEF6"
	$"000B AF77 4177 77A4 79EB A5C4 77AF FC00"
	$"03A4 7171 EBFC 00FC C105 D9C1 D971 71AF"
	$"F600 FF00 02A4 73EB FC00 00FE FB00 03FE"
	$"BDBD EBFC 00FF E000 AFFC 0003 A4A2 BFFE"
	$"F600 0479 BDBE BEEB FC00 FFBE 1AA2 BEE4"
	$"E4E6 E6BC BCAC A99C 8049 4A4A 5757 5E5E"
	$"688E 858D B08D 858D FEB0 FF8D 22B0 B6B6"
	$"B7B0 4B2C 2C32 485B 9AB7 B7C8 C6DB A68D"
	$"5549 4B63 635E 3D3D 494B 3B57 3B57 4646"
	$"0246 573B FC57 0749 573B 573B 3B57 57F8"
	$"4905 5749 4963 5555 FC61 FF5B 0A85 B09A"
	$"9AB7 C8B1 CFB3 B3D6 FCCC 01BD E2FB BD05"
	$"E2A0 DFDF D8D8 0110 0A75 1D1D 75F8 1DF9"
	$"1D75 F875 FB3E FE75 0094 FD3E 0646 3E3E"
	$"463E 3E50 FD75 0194 46FE 3E00 46FC 3E00"
	$"50FE 7508 583E 3E46 3E3E C040 66FC 3E03"
	$"72C0 77C4 F700 043A 7741 77C5 FCEB 0277"
	$"C0AF FC00 03A4 7171 EBFC 00FF C102 71C1"
	$"71FD C101 7184 FB00 01FE C5FE 00FF 0002"
	$"A473 EBFC 0000 C5FB 0003 AFBD A2EB FC00"
	$"02A0 A2AF FC00 03A4 A2E0 AFF7 0005 3ABF"
	$"A2BE BE7C FC00 0CBE 6565 BEE4 E6D0 D0B3"
	$"AB88 695E FE57 FF49 0C63 5E68 6A8E 8DB6"
	$"B6B0 8DB0 B6B6 FDB0 09B7 D3B6 8032 2C32"
	$"3D5B B6FE B70F C6CE D49B 6155 4949 6354"
	$"3D4B 574B 3B57 FC46 FE3B FF57 0246 5749"
	$"FC57 0349 5749 49FE 3D00 49FD 3D03 5E49"
	$"5454 FE55 0868 6A7D 617E 7E85 858D FE9A"
	$"06B7 B1C9 D4B4 D6D7 FDCC 01BD CCFE BD07"
	$"E2A0 BDDF A0DF DFD8 011D 0475 F975 F975"
	$"FD1D FF75 0546 3E46 3E3E 46FD 7509 6758"
	$"3E46 3E3E 463E 5766 FD75 11C0 7595 583E"
	$"463E 3E46 3E4B 6675 F775 7558 46FD 3E0D"
	$"75C0 663E 463E 463E 7241 4177 84EB FB00"
	$"06FE AFF7 41C1 C1EB FC00 0277 C1AF FC00"
	$"03A4 C071 EBFC 00FC C107 D9C1 D971 A071"
	$"C411 FE00 02FE C3AF FE00 FF00 02A4 C1EB"
	$"FC00 0195 EBFD 0004 79A2 E073 EBFC 0002"
	$"D9BD AFFC 0005 A4BE A2BD A4FC FA00 0279"
	$"95A2 FEBE 00EB FC00 19BE 9D9D 7093 D0B4"
	$"B3A9 5C62 494A 5757 493D 5555 6A8E 8EB8"
	$"B0B6 B7FE B6FF B7FE B61E B7D3 B045 3E2C"
	$"3249 5BB0 B6B7 B7C6 B5CE 9B8E 543D 4B57"
	$"493D 3D57 5746 573B 3BFD 4603 573B 573B"
	$"FE57 FF49 FE57 0563 4949 5454 3DFE 49FE"
	$"3D02 635E 54FD 5514 4855 486A 6A8E 7E61"
	$"5B5B 8D8D 9AB6 B7C8 A6D4 B2D0 BEFD CCFA"
	$"BD04 E0DF DFA0 7101 1AFC 7504 EFF9 1D1D"
	$"F8FD 7500 F9F9 7501 7394 FE66 0172 1DF8"
	$"7501 7394 FE66 0872 C075 C075 C075 75C0"
	$"FD75 02C0 7575 FEC0 0941 C041 C041 F777"
	$"41A3 C4FE AF07 A441 4177 F541 C1EB FC00"
	$"02C3 7779 FC00 FC71 FCC1 04D9 C171 C171"
	$"FEC1 0C71 D9D9 67C4 AFC4 67A0 A071 D9D9"
	$"FFD9 FFA0 00EB FC00 08D9 73C4 AFAF C3BD"
	$"A0BD FDA2 02E0 A2E0 FCA2 FFE0 01A2 BEFD"
	$"A20C BDC3 AFAF C5AF A4BF BEA2 BDBE 9DFA"
	$"BEFF 9D1C 7093 B4B4 A788 6949 4A3B 5749"
	$"4963 5468 6A8E 8EB8 B0B6 D3D3 B7B6 B7D3"
	$"D3FE B708 D3B6 6A32 2C32 3D61 8DFE B716"
	$"C6CD CEA6 6954 574B 4B49 5749 3D57 573B"
	$"3B57 3B57 4657 5706 3B57 3B57 573B 57FD"
	$"4901 6349 FC54 FE49 0563 5E55 5463 54FC"
	$"55FF 6AFF 6100 62FE 61FF 5BFE 8D08 B0B7"
	$"B1A6 C9B4 D0D7 D7FE CCFD BD06 A0BD BDA0"
	$"DFDF 7101 2107 F91D F9F8 F975 1DF8 FE75"
	$"01F8 1DF9 75FF F9FF 1AF8 7500 C0FD 7500"
	$"1AF7 7505 C075 75C0 75C0 FE75 18C0 4141"
	$"F741 F741 C0C0 4141 C041 7741 77C0 41C0"
	$"C041 F777 77C5 FC00 01FE 3AFC 0000 A5FE"
	$"C1FE 71FD C114 71C1 D9C1 A071 A071 71C1"
	$"71A0 C173 73D9 D971 A0D9 7304 A0D9 D973"
	$"EBFC 0013 E0BD A0A2 BDBD A2E0 A0E0 A2E0"
	$"BDA2 BDA2 65A2 A2BE FDA2 1065 BE65 A265"
	$"A2E0 A2BE E0BE BEDA BE9D BEBD FE65 23E4"
	$"BEBE 9D3F 7093 939D BCAB 7F45 4957 3B57"
	$"4B49 5455 6A7D 8E85 8D8D B0B6 D3D3 B7B6"
	$"B7C8 C8FD D307 533E 332C 3B48 8DB6 FEB7"
	$"0FC6 EADB 8780 5657 3B49 493B 3B3D 3B3B"
	$"57FC 3B01 493B FD49 FF4B 1057 4949 3D49"
	$"4963 5E55 5455 545E 6363 5555 FE68 005E"
	$"FE55 006A FE48 0553 5B5B 6161 53FD 5B0D"
	$"8D86 9AB7 B1CF A7CA B2B9 D79D CCCC FCBD"
	$"04E2 A0DF DFD8 0122 FF1D 00F8 FE75 04F8"
	$"75F9 F8F9 F975 FDF9 FA75 0AF9 75F9 F7F7"
	$"75F9 F7F7 75F9 FC75 06C0 7541 7541 75C0"
	$"FD75 1A41 7541 41C0 4177 F741 C0C0 41C0"
	$"7141 C077 F777 77C0 77F5 41F5 C1A3 F500"
	$"02C3 71C1 FE71 FFC1 0171 C1FB 710A C171"
	$"C1A0 C1D9 C171 A0D9 D9FE A0FF 73FF D902"
	$"73A2 EBFC 0002 A2BD E0FE BD07 A2BD A2E0"
	$"A2E0 A2BD FEA2 13BE 65A2 A2CC A2A2 BE65"
	$"BD65 BEA2 A2BE A2A2 E0A2 DAFD BE02 A865"
	$"9DFE BE1B A295 BE9D B2A7 888A 5E49 4A46"
	$"4949 6363 5561 8E85 858D B0B6 B6B7 D3E1"
	$"FDD3 0BCF D3D2 C69A 3B2C 2C32 3D85 B6FE"
	$"B70C C6CE EAB1 6249 4A57 5749 3B4B 49FE"
	$"3B07 4B3B 5749 493D 4949 083D 493D 4B49"
	$"4957 4949 FE54 FE5E 0354 5E55 3DFC 55FF"
	$"6804 6A55 556A 48FE 6103 5B61 5B5B FE61"
	$"FE5B FF8D 12B0 AAB7 C8A6 C9B2 B2D6 9DCC"
	$"E5BD CCE0 BDE2 DFA0 FEDF 0126 071D 7575"
	$"F9F8 F975 F9FE 7500 1DFE 7506 F975 75F9"
	$"F975 F9FC 750C F9F7 F975 75F7 75F9 7575"
	$"F775 F9FA 7502 4175 C0FD 750D 41C0 41C0"
	$"C041 C077 C077 41F7 4141 FDC0 0C41 C141"
	$"C1C0 41F5 77F5 77C1 C1C4 F800 01FE C4FD"
	$"710D C171 C171 C171 71C1 71D9 71D9 71D9"
	$"FEC1 FF71 01A0 D9FE A003 D9A0 D9D9 04A0"
	$"73E0 D9EB FC00 FFE0 FDA2 04BD A2E0 A2E0"
	$"FDA2 02BD A265 FCA2 00E0 FEA2 0B65 A2A2"
	$"CCA2 A2BE A2BE A270 95FE BE00 70FE 9D2B"
	$"BEE4 E6E6 B4A7 866A 4957 4657 4963 5568"
	$"6A61 858D 8DB0 B0B6 B6B7 D3B5 CDD4 C6C6"
	$"C8D3 E1D2 9A3D 2C2C 4655 5B9A FEB7 0ED3"
	$"CEC7 A669 494A 5649 4957 4B49 5756 FC49"
	$"043D 5E5E 4963 0063 FE49 0463 5E63 5E68"
	$"FA55 025E 545E FD55 0068 FB6A FE61 0A8E"
	$"618E 7E8E 7E61 617D 8E85 FE8D 0B9A B6B1"
	$"B1C9 A7CA B4B4 D7CC CCFE BD05 E2A0 DFDF"
	$"A0DF 012C 0875 F875 F875 1DEF 75F9 FD75"
	$"00F9 FD75 FEF9 0375 F975 F9FC 7500 C0FD"
	$"7500 C0FE 7500 C0FD 7503 C041 1AC0 FE41"
	$"23C0 7575 4175 4175 41F7 41C0 41C0 4141"
	$"C041 41C0 41C0 41C0 77C1 C177 41F5 77C1"
	$"77C1 C1A4 A5FB 0008 79A3 C171 71C1 C171"
	$"C1FE 71FF C1FB D900 A0FE D907 A0D9 71A0"
	$"C1A0 D973 FED9 00A0 FED9 00EB FC00 0ABD"
	$"A0E0 65BD A265 A2BD A2E0 FBA2 0DE0 65BE"
	$"BDA2 E3A2 BEA2 BEA2 A2BD A2FC BEFF A24F"
	$"E4A2 9DBE E4D0 9D9D 70E4 D0B4 A986 5556"
	$"4957 5754 5480 7D8E 8E85 8DB0 B0B6 B6B7"
	$"B7D3 C6B5 CADE E1D3 C6D2 C6C8 502C 2C32"
	$"3D5B 9AB6 B6B7 D3D2 B588 695E 5656 4949"
	$"6349 635E 6349 6349 6354 6363 5463 6349"
	$"0663 5E54 555E 8080 FE6A 0661 6A55 6355"
	$"6354 FE5E FC55 FF6A 0568 617D 618E 5BFE"
	$"8EFD 7EFF 8E19 5B85 8DB0 B09A B6B7 B1B1"
	$"C9A7 CAD6 D7D7 CCCC E2BD A0DF A0A0 DFA0"
	$"0133 FF75 09F8 F975 F975 75F9 7575 EFFE"
	$"7500 F9FB 75FE F902 F775 F9FE 7502 C075"
	$"C0FB 7500 C0FC 752F C077 75F7 7541 C075"
	$"41C0 41C0 41C0 41F7 4177 C077 7141 C041"
	$"C041 C071 4177 71C1 F577 C171 F571 C1F7"
	$"77F5 C3A4 A4C3 71C1 FC71 0BC1 D9D9 71C1"
	$"71C1 71C1 71D9 71FD 7304 A0C1 A0A0 D9FE"
	$"A004 D9A0 73A0 D904 D9A0 73A0 C3FC A400"
	$"E0FE BD04 A2BD A2BD A2FE E008 BEA2 A2BD"
	$"A2A2 BEA2 BEFB A218 E3A2 BEA2 BEA2 BEA2"
	$"BEBE 70A2 BEBE E3E4 709D 70D0 BCB3 B169"
	$"63FE 570B 5E80 4861 8E85 858D 8DB0 B6B6"
	$"FEB7 FFD3 23C6 CDDB DBD4 B5D2 D2B1 4532"
	$"2B32 3D5B 85B6 B7D3 D3C8 B169 4549 5654"
	$"4963 4B63 5E5E 4963 55FE 5EFF 5400 55FE"
	$"5400 63FF 5506 686A 7D6A 8E6A 8EFE 61FF"
	$"6AFF 5504 5E54 6354 5EFC 550B 6A48 6A61"
	$"5B61 7E7E 5B7E 7E85 FD7E 0585 8D9A 8D9A"
	$"9AFE B7FF B10E C9CA B4B4 D7D7 CCBD BDDF"
	$"A0DF A0DF A001 1901 F9F8 FD75 01F8 EFF8"
	$"7500 F9FD 7503 F9F7 75F9 F575 00C0 FE75"
	$"0FC0 7575 41C0 1AC0 4141 7775 C0C0 1AC0"
	$"1AFE C0FF 411B C041 41C0 F741 C177 F541"
	$"41C0 71C1 C141 F571 F541 F5C1 C1D8 C141"
	$"D841 FB71 05C1 71C1 73D9 C1FC 710F A071"
	$"A0A0 73A0 D9D9 A0A0 D9D9 A0A0 D973 FED9"
	$"00E0 05D9 A2E0 A2A2 E0FC A20C D9BD A2BD"
	$"A265 A2BD BDE0 A2A2 E0FE A206 BEA2 BEBE"
	$"A2A2 E0FE BEFE A2FE BE1B 9DBE 9D70 BEA2"
	$"9DBE BEE4 704E 9DBC A79B 7E55 5746 575E"
	$"6161 8585 B0B0 FDB6 FEB7 01C8 D3FE C622"
	$"CEC7 D6B2 B5CD B15F 322C 2C3D 488D B0B6"
	$"B7D3 B78D 5549 4A56 6355 5E5E 6363 5E55"
	$"6363 5EFE 63FB 5500 48FF 6101 5B61 FB8E"
	$"066A 616A 556A 6A68 F755 096A 6161 7E5B"
	$"7E5B 7E7E 85FE 7EFC 8DFF 9AFF B7FE C80F"
	$"CFC9 CACA D6D7 D7CC E2BD DFDF A0DF A0A0"
	$"0120 0575 F975 F975 F9F9 7507 F975 F975"
	$"F9F9 75F9 F375 00C0 FE75 0FC0 7575 41C0"
	$"75C0 41C0 1AC0 C041 77C0 41FE C0FF 410F"
	$"F741 F741 F7C0 C041 F541 C141 D871 D871"
	$"FAC1 0BD8 C171 71D8 C171 C171 C171 C1FE"
	$"7108 D9A0 C171 C1A0 C171 D9FE 7110 D971"
	$"D973 A0A0 D9D9 73A0 D9D9 A2A0 A0A2 A201"
	$"A2E0 FDA2 0AE0 A2E0 A2E0 A2A2 E0A2 A2BE"
	$"F9A2 0AE3 A2A2 BEBE A2A2 E3A2 BEA2 FBBE"
	$"049D A29D A270 FEBE 109D BEBE 7070 93B3"
	$"B17E 6849 5757 635E 6185 FEB0 04B6 B7B6"
	$"B7B7 FED3 FDC6 0EE1 DEDC 9999 CECD 6946"
	$"332C 3B48 859A FEB7 028D 8E63 FE49 0054"
	$"FE55 065E 6355 5554 6349 FE63 FE55 016A"
	$"48FE 6103 5B7E 7E85 FC7E 088E 616A 486A"
	$"616A 556A FE55 FF6A 0555 686A 6861 61FB"
	$"7E06 5B8D 5B8D 8D9A 8DFE 9A02 B0B7 B7FD"
	$"C809 B1C9 D4B2 D6B4 D7CC BDA0 FEDF 02A0"
	$"DFDF 0110 F875 00F9 F975 FFF9 EC75 0AC0"
	$"75C0 41C0 7541 C041 7741 FEC0 01F7 41FE"
	$"C015 41C0 41C0 41C0 41C0 C041 77C1 7141"
	$"D877 D871 F5C1 F571 FEC1 01D8 C1F8 7100"
	$"C1FE 710C C1A0 C1D9 D9A0 A071 D971 71A0"
	$"A0FE D9FF A0FE D9FF 73FF D902 A0E0 A20D"
	$"E0A2 E0A2 E0A2 A2BD E0A2 A2E0 A2BD FDA2"
	$"0365 A2A2 BEFD A200 CCFE A206 BEA2 A2E0"
	$"BEBE A2FB BE02 9DA2 9DFE BEFF 9D0A BE93"
	$"4E4E B4A9 696A 4949 3DFE 5505 618D B6B6"
	$"B7B7 FBD3 FEC6 1FB5 CDE1 DBCC 5299 CE9B"
	$"3D2C 2C3B 4885 B09A 9A8D 5363 5657 495E"
	$"5E55 5580 6855 48FD 54FF 63FF 6800 6AFE"
	$"61FF 7EFF 8502 858D 7EFE 8DFD 7EFF 6102"
	$"6A61 6AFC 6100 6AFE 6101 6A61 FD7E 0E8D"
	$"7E7E 8E7E 7E8D 8D9A B09A B09A B6B6 FDB7"
	$"FFC8 FFCF 0EC9 CACA D6D7 D7E0 BDDF A0D8"
	$"DFA0 DFA0 0114 F175 00F9 FD75 02F9 75F9"
	$"FD75 00C0 F975 00C0 FB75 27C0 1AC0 7577"
	$"C0C0 77C0 7741 C0F7 C041 C0C0 41F7 41C0"
	$"41C0 A3C5 AFAF F7C1 71C5 AFC5 71A3 C5A4"
	$"F5C4 C5FE 710E D8C1 71C1 7171 C171 A4C5"
	$"A3C1 A071 71FD C501 A473 FEA0 10D9 A0A0"
	$"73A0 D9A0 A0D9 73A2 E0A2 D9A0 D9D9 0CE0"
	$"A0E0 A2A2 E0A2 E0E0 C4C5 A2E0 FEA2 05BE"
	$"A2A2 BDA2 A2FE BE07 65A2 BDBE BDA2 A2E0"
	$"F9BE 1A9D BE9D BE9D BEBE 9DD0 D093 4E4E"
	$"BCA7 8668 6349 6355 4848 688E 85B6 F9D3"
	$"FFC6 25D2 E1B5 DEE1 DBF2 9E99 B13D 3E32"
	$"3B54 5B8D 8D7E 613D 3B46 573D 5555 806A"
	$"6868 5561 7D48 6868 55FE 6102 5B8E 7EFC"
	$"8D00 B000 B0FC 8D00 B8FD 7EFB 6104 8E7E"
	$"7E61 8EFC 7E02 B88D 9AFD 8D08 B88D 8D9A"
	$"9AB6 B69A B6FE B7FD C800 CFFE C909 CAB2"
	$"D6D7 CCBD E2A0 D871 FDD8 011D 0175 1DF6"
	$"7511 F975 F975 75F9 75F9 75F9 F9C0 75F7"
	$"C075 75C0 FC75 00C0 FE75 1BF7 C075 C075"
	$"C0C0 77C0 41F7 41C0 41F7 7741 41F7 7741"
	$"7741 C041 4177 C3FE 0002 C2C0 C3FE 0006"
	$"C0A4 FDC5 C1EB 00FB C1FF 7109 C171 71C5"
	$"00A4 D971 C1A0 FC00 07A4 71A0 71A0 A0D9"
	$"A0FB D906 E0A2 D9A2 E0A2 A203 65A2 A2E0"
	$"FCA2 097C 00E0 A2A2 72A2 A265 65FE A2FF"
	$"BE06 A2BE 659D A265 9DF8 BE00 9DFE BE00"
	$"9DFE BEFE 930B BC9F ACA7 B169 6363 5E54"
	$"4848 FE8E 0285 B6B7 FED3 FFD2 1EC6 D2C6"
	$"E1D4 D4DE DECD D6E2 ECA7 453E 323B 4848"
	$"6148 553D 5D49 6349 4954 5555 FE6A 0B80"
	$"6A68 487D 7D61 5B7E 5B8D 85FE 8DFE B001"
	$"9AB0 FEB0 029A 8D8D FC7E 048E 7E8E 7E8E"
	$"FB7E FE8D FF9A 05B0 9AB0 9AB6 B6FB 9A03"
	$"B69A 9AB7 FEC8 0FCF B1B1 CFC9 D4C9 CAB2"
	$"D6D7 D7CC E0DF DFFB D801 23FD 7500 F9F5"
	$"7500 F9FA 7500 F9FC 7500 C0FE 7506 C075"
	$"75C0 75C0 1AFE 7516 411A C041 F741 C077"
	$"C077 77F7 7777 41C0 4171 41D8 41C1 C3FE"
	$"0005 A4C1 AFFD 0000 FEC1 08F5 D87C 00C1"
	$"71C1 71C1 FE71 06A0 71D9 C171 C171 FEA0"
	$"0B00 7C71 A400 EBA0 A0D9 A073 A0FE D90A"
	$"73A0 73A2 E073 E0A2 A2E0 BD03 E0A0 BDE0"
	$"FEA2 00BD FDA2 0584 FCC5 A265 BDFB A204"
	$"CC65 BEA2 9DFE BE06 9DBE 9DBE 9DBE 9DFE"
	$"BE00 9DFD BE27 7093 93BC 9FAC A7B1 6955"
	$"545E 5E55 4861 8E8E B8B8 B0B7 D3D2 E1E1"
	$"CFE1 D4D4 DED4 DBCE C7C7 DCD5 AC81 FE3E"
	$"FF3D 1848 3D49 494A 4A49 5555 5E6A 7D7D"
	$"6A61 6A80 6A8E 8E7E B88D B09A FEB6 02B0"
	$"B6B6 FDB7 00B6 FF9A 06B6 B0B0 B88D 7E8D"
	$"FC7E 018D 7EFD 8D00 B0FC 9A02 B09A B6FD"
	$"B700 C8FB B7FF C8FF B100 C6FC C904 D4CA"
	$"CAB2 B4FE D705 CCE2 DFD8 D871 FDC0 011A"
	$"F275 04F9 75F7 F9F7 F875 05C0 F7C0 C075"
	$"75FD C00E F7C0 C075 C075 41F7 41C0 41F7"
	$"41C0 C0FE 7746 C077 77C1 7771 4141 C077"
	$"A400 3A00 C541 A500 7C00 C1A3 C5C3 C17C"
	$"00A4 7CC5 C1C1 A47C 7C79 DA71 A4C5 84D9"
	$"A0A0 7100 7CD9 3500 7C71 C3A5 7CA5 C3A0"
	$"A4C5 C4A5 84C5 C479 A595 A2DD A51A 7CA5"
	$"C4BD 84C5 C4A5 C3C4 C5A2 A500 7CA4 BFA5"
	$"7CEB C4A2 CC65 BEBE 9DFE 70FA BE02 9DBE"
	$"9DFD BE20 9DBE BE93 93BF 9F92 92D1 AA8E"
	$"5454 6355 616A 8E7E 8DB0 B0B6 B7D3 C6CD"
	$"D4CD D4DE CEFD DB15 C7CE C7A7 813B 3E46"
	$"3B3B 4A4A 4949 5760 5E55 6868 806A FE8E"
	$"0B7D 6A6A 7E8D 8DB0 B6B7 B7D3 C8FD B7FE"
	$"C8FE B704 B79A B7B7 9AFA 8D09 B08D 9A8D"
	$"8D9A 9AB6 B7B7 FEB6 009A FDB7 FDC8 0ACF"
	$"B1CF A6CF C9CF C9C9 D4C9 FACA 0AB2 D6D7"
	$"B9CC CCE2 E2DF D8D8 FCC0 0128 0175 F9F5"
	$"7503 F9F7 77F9 FE75 11F9 75F7 F775 F775"
	$"75F9 F7F9 F775 C0F7 C0C0 75FD C000 75FC"
	$"C042 F5C1 C1F7 C0C0 41C0 41C0 7741 7777"
	$"C177 C177 C300 C500 7CC1 007C 7C00 C1C3"
	$"00C5 C1EB 0079 3A00 C3A3 00EB A4FD A5C1"
	$"C500 A473 71D9 D900 3AA4 C500 A5D9 01FC"
	$"A401 FCA0 C5FE 0008 A400 01A5 00AF A279"
	$"0023 C4A5 0084 A400 FD00 A47C 00A2 3A00"
	$"FCC4 7900 C4A5 0072 A2BE BEA2 A2BE 9DBE"
	$"9D9D BE9D BE9D F8BE 129D 7093 9F9F 9292"
	$"ABB1 866A 5455 5E80 6A61 7E85 FEB0 05B6"
	$"B7C8 CFDE CDFE CA25 CEC7 EADB C9B1 B187"
	$"815E 3E46 4B4B 494A 493D 495E 5E63 686A"
	$"618E 8E7E 7E8E 618E 8D8D 9AB6 B7C8 FCD3"
	$"08C8 B1C8 CFD3 C6C8 B1B7 0EB7 C8C8 9AB8"
	$"8D8D 868D 8DB0 9A9A B0B0 FE9A 00B6 FAB7"
	$"0D9B C8B1 C8C8 B1CF CFA6 C9C9 D4CA DBFD"
	$"CA03 B4B3 CAB4 FCD6 08B9 D7D7 CCE2 DFDF"
	$"D8D8 FBC0 011F FA75 00F9 FB75 0AF9 77F9"
	$"F775 75F9 75F9 F71A FDF9 05F7 7775 F975"
	$"F7FA C02E 41C0 41C0 C041 F741 7777 C0C0"
	$"77C0 C141 77C0 7777 7177 4177 71C3 00C5"
	$"3A00 A400 C57C 0071 A400 C5C1 7C00 C0C5"
	$"00C3 C2FE A409 007C D8C5 00A4 C1A0 A073"
	$"FD00 15FE C3A0 A4C4 A43A 00D9 C500 79E0"
	$"A400 C5E0 007C E0C3 C418 A4A5 00A4 A400"
	$"7C95 BD7C 00BE A400 C5BE C3C4 A4A5 00A4"
	$"A2BE 65FD BE07 9DBE 9DBE BE9D BE9D FBBE"
	$"FF9D 13D0 93BC ACAC 92AB ABAA B868 6848"
	$"5555 6A61 8585 B0FE B603 B7D3 CFCD FECE"
	$"09C7 CECD B19B 8A64 4555 56FE 57FC 49FE"
	$"550C 6855 6A6A 8E85 858D B87E 8D8D 9AFE"
	$"B7FE D301 CFC8 FEC6 07B1 D4D4 C6C6 CFC8"
	$"C8FE C80B 9A8D 9A9A B6B0 9A9A B7B7 B69A"
	$"FEB7 F7C8 FECF 09B5 D4C9 D4A7 CAD6 D6D7"
	$"D6FA D7FE B9FF A806 CCD5 E5E2 DFDF D8FC"
	$"C002 EF75 7501 2C01 75F9 FA75 07F9 75F9"
	$"75F9 F775 F9FD 750D F7F9 75F9 C0F9 41F9"
	$"75F7 75C0 7575 FEC0 0075 FEC0 0075 FEC0"
	$"5141 C041 C0C0 41C0 77C1 C177 C041 41C1"
	$"4177 77C1 77C1 A400 C5C5 00EB 00C3 7C00"
	$"71A4 00C5 717C 0071 C500 A467 01FD 7C00"
	$"7C71 C500 A471 A073 7100 3AA4 A4D9 73D9"
	$"A500 EBFE 0073 C500 A4E0 A400 C5E0 007C"
	$"A2AF 001A 3A29 00A4 A400 C5A2 BD7C 00A2"
	$"A400 C5A2 AF00 3A7B 00A4 BEBE A2BE A2FC"
	$"BE02 9DBE 70FD BEFD 9DFF 9313 BC9F ACAC"
	$"AB90 9088 8680 6868 5548 5561 6185 8DB0"
	$"FEB6 FFD3 01B5 CDFE CE13 B5A6 8653 545D"
	$"4A56 4A56 634B 634B 635E 5548 6848 FE6A"
	$"028E 7E85 FE8D FE9A FFB7 06C8 D3D3 CFCF"
	$"C6CF FEC9 05B5 D4CE CEB5 C9FE CFFF C602"
	$"B79A 9AFE B7FF 9AFC B7FE C8F9 CFFF C903"
	$"B5C9 B5D4 FECA 02DB D6D6 FED7 04A8 D5E5"
	$"CCCC FEE5 01CC E2FE CBFF E2FF DFFF D8FD"
	$"C0FD 7501 23E6 7501 7741 FD75 03C0 75F7"
	$"75FC C055 41C0 41F7 4177 C041 C0C0 41D8"
	$"7741 C177 C1F7 C1C1 71C1 71C1 71C3 00C5"
	$"A400 00FE C17C 0071 C300 C571 7C00 71C5"
	$"00C3 AF00 A4C1 007C 71C5 FDA4 71A0 A073"
	$"007C A0D9 A2D9 C300 7973 7C00 A2C5 00A4"
	$"A2A4 00C5 A200 7CE0 FE3A 1FA2 C500 A4A4"
	$"00C5 65A2 7C00 BEA4 00C5 BE98 3ABE C500"
	$"A465 BEA2 65BE 65BE A2BE A2FE BEFC 7025"
	$"9D93 93B4 BC9F 92AB AB90 8888 9B69 6A68"
	$"5548 4861 6185 8DB6 B0B6 B6B7 D3C8 C6CA"
	$"EAEA C986 7E55 FE54 0149 5DFE 6300 5EFE"
	$"6300 6AFE 6112 7D61 618E 7E8D 8DB0 B0B6"
	$"B6B7 B7C8 C6D3 C6CF CFFE D40B CAD4 CADB"
	$"C7CE B2CA C9CF CFD4 0CB5 C89A 9AB7 B7C8"
	$"B7B7 C8C8 B1C8 FEB1 02CF B5CF FEC9 03D4"
	$"C9D4 D4FA CA04 D6B4 D0E9 E9FE CC0A E2BD"
	$"E2E2 CBE2 BDE2 BDE2 E2FD DF03 A0DF F5D8"
	$"FEC0 04EF C0EF 7575 0133 0175 F9FA 7507"
	$"F975 F975 75F9 75F9 FD75 00C0 FE75 06C0"
	$"7575 77C0 F7C0 FE75 FFC0 0075 FAC0 FF41"
	$"50D8 4141 C041 D871 C177 F541 7771 C177"
	$"C177 C177 C1C3 00C5 C200 00A5 717C 00C1"
	$"A4FD C571 EB00 71C5 00A4 C500 A4C3 007C"
	$"C1C5 00A4 A0C1 A0D9 007C D9D9 73D9 A400"
	$"7995 FC00 E0C5 00A4 A2A4 00A5 8400 A5A2"
	$"003A 15A2 EB00 A4A4 00C5 BEBE 7C00 BEA4"
	$"00A5 8400 3ABE A500 A4F7 BE03 A2BE BE70"
	$"FEBE 179D 9393 B4BC ACAC ABAB 90AD AD9B"
	$"877E 6863 686A 7D5B 858D B0FE B6FF B708"
	$"D3C6 D4DB DEB1 6980 5DFE 5402 555E 5EFE"
	$"5506 6A61 6A61 8E7E 7EFD 85FF 8D00 9AFE"
	$"B6FF B7FF C814 D3CF C6CF CFD4 D4CA DBDB"
	$"B2B2 D6DC B2B2 CAC9 A6D4 CA00 C9FE B7FD"
	$"C800 B1FE CF11 B1CF C9D4 CAD4 CAD4 D4CA"
	$"CADB DBC7 B2D6 C7B2 FED6 FED7 05E5 E2E2"
	$"DFDF E2FE DF07 D8DF D8DF DFA0 DFDF FED8"
	$"0BF5 D8D8 C0D8 C0C0 EFC0 7575 EF01 17FB"
	$"7500 EFFB 7503 F975 75F9 FB75 00C0 FE75"
	$"06C0 75C0 7575 F775 FAC0 0F41 C041 C041"
	$"C041 41C0 41C0 7171 41C0 41FE C100 77FB"
	$"C13C A400 AF71 3A00 AF71 7C00 C1C3 00C5"
	$"717C 0071 C500 A484 FE00 A500 7CC1 C500"
	$"A471 A0D9 D900 7CD9 A2D9 A2D9 3A00 013A"
	$"00A2 C500 A4A2 A400 3A00 00A4 E079 0015"
	$"987C 00A4 A400 C5BE BE7C 00A2 BE7C 00C5"
	$"7900 FE7C 00A4 FABE 02A2 BEA2 FEBE 02A2"
	$"9D70 FE93 FFB4 11AC 9292 AB90 A989 8987"
	$"6961 5568 6A6A 7D85 8DFC B6FF B70D D3C6"
	$"DEC9 B162 635D 6848 7D6A 8080 FE6A 0061"
	$"FD7E 0085 FC8D 02B0 9AB6 FEB7 FFC8 FCCF"
	$"FED4 0FCA DBD6 D6B9 D6D7 E9A8 A8B2 CAC9"
	$"C9CA CA09 B19A B7C8 C6CF B1B1 C6D4 FEC9"
	$"07D4 CACA CEDB CACA B4FE D601 B9DC FEB9"
	$"FCD7 06CC F2E2 DFDF D8DF F8D8 00F5 F9D8"
	$"FBC0 0275 EF75 0120 0475 F975 75F7 FD75"
	$"02F9 75F9 FE75 02F9 F7F7 FE75 00C0 FE75"
	$"00C0 FE75 FF41 0CF7 75C0 F7C0 41C0 41C0"
	$"F7C0 41F7 FE41 FFC0 FC71 03C0 41C1 71FE"
	$"C109 71C1 71C1 7171 D871 C1C1 FE71 00D8"
	$"FE71 FCC1 FB71 0867 C371 D9C1 73D9 7371"
	$"FED9 00A0 FED9 1673 D9A0 D9A0 A4E0 A2A2"
	$"BDA2 E0A2 E0A4 00C5 8484 BEA2 BDC3 0695"
	$"6565 BDBE 65BE FBA2 09BD A29D BEC3 72BE"
	$"BE93 93F5 BE19 70BE 9393 BCBC 9FAC ACAB"
	$"9090 A988 8889 867E 5554 558E 7EB8 B8B0"
	$"FEB6 FEB7 00D3 FEC6 069A 6168 6855 6A48"
	$"FE6A FF8E 005B FE7E 03B8 7EB8 8DFC B002"
	$"B6B7 B7FD C801 CFC6 FEC9 FFD4 11CA DBB3"
	$"D6D6 D7DC B9E9 CCCC D5C7 DBCA CAB2 C9FE"
	$"C8FF B50A CFB1 C9D4 CACA C9CA D6D6 C7FD"
	$"D6FF D7FE B904 D5B9 CCCC D5FE CC02 BDE2"
	$"E2FE DFF9 D8FE C0FD D800 C0FE D802 C0D8"
	$"D8FE C003 75EF 75F8 0125 F575 00F9 FE75"
	$"01F9 1AFD 7517 C041 7575 C075 75C0 4141"
	$"7741 4177 C0F7 41C0 C0F7 41F7 77C0 FE41"
	$"15D8 7141 D841 41C0 7177 71C1 7171 D871"
	$"C1C1 71C1 7171 D8FC 7125 F371 A0C1 A0C1"
	$"C171 71A0 D9A0 A071 A073 A0A0 7373 D9D9"
	$"A0D9 A0D9 A0E0 A0A2 73D9 A2BD A0BD A2E0"
	$"FCA2 08A4 00C5 BEA2 A2E0 65BD 0F65 A265"
	$"65BE BDA2 BE65 BEBD BEA2 BE65 A2F8 BE02"
	$"9DBE 9DFD BE19 70BE BE93 93BC BC9F ACAC"
	$"92AB 90A9 ADAD 8989 AA69 6A54 636A 8E8D"
	$"FDB6 02B7 D3B7 FED3 05B7 9A8D 6168 68FE"
	$"6102 6A61 8EFE 85FE 8D02 B0B8 B0FB B609"
	$"B7C8 C8CF CFC6 C6C9 B5B5 FDCA 01D6 DBFE"
	$"D6FF E9FF D5FF E507 D5DC C7DB B2D6 DBC9"
	$"01C8 CFFE B5FF C906 CADB DBB3 B2D6 E9FE"
	$"B9FE D7FF D5FF CC06 A8CB E2E5 E2E2 CBFE"
	$"E2FC DF05 D89E D8C0 D8D8 FCC0 FFD8 09C0"
	$"ECC0 D8C0 D8D8 9EEC 9EFE C0FF EF00 F801"
	$"2811 F975 F975 F775 F975 F975 F975 75F9"
	$"75F7 75F7 FC75 FFC0 FF75 16C0 7575 41F7"
	$"7777 C041 C0C0 41F7 41C0 C041 C177 F541"
	$"C041 FE71 01C0 71FD C1FF 7118 D841 D871"
	$"C171 71F5 7171 C171 D8C1 7171 C171 71C1"
	$"D971 A0C1 71FE D905 A0C1 A071 D9D9 FE73"
	$"03D9 73D9 73FD D906 E0D9 A0A2 A2BD A0FB"
	$"A205 A400 C5A2 A2E0 FEA2 0CA2 65BE BDA2"
	$"65BE 65BE A2BD A265 F9BE 0070 FDBE 069D"
	$"BE9D BE93 93D0 FE93 15BC 9F9F ACAC ABAB"
	$"A988 8889 896C 8786 6255 6363 558E 85FE"
	$"B6FF B7FD D312 B77E 6A48 7D7D 6A61 5B53"
	$"618E 7E8D 8DB0 B0B6 B0FE B6FF B7FD C8FE"
	$"CF11 D4C9 D4B5 CACA B2CE B2D6 B9D6 B9D6"
	$"D7E9 E9D5 FEE5 08E2 D5D6 D6C7 99B9 CACF"
	$"03CF DEDB DBFE CAFD D60E B9DC E9E5 CCE5"
	$"CCA8 CC8F E2E2 BDE2 BDFC E201 DFE2 FBDF"
	$"FED8 01EC C0FE D8FD C006 D86F C0C0 D8D8"
	$"C0FC D8FF C002 EF75 EF01 19FD 7500 1AFA"
	$"751D F975 75F9 1AF7 75C0 7575 C0F7 75C0"
	$"C075 75F7 C041 41C0 41C0 F7C0 C077 F5C0"
	$"FE77 15C1 71C1 7171 D871 C071 71C1 4171"
	$"4171 C0C1 D871 C171 D8FD 7102 C171 C1F8"
	$"7100 C1FE A017 D9A0 D973 73A0 D973 73D9"
	$"A0D9 D973 73A0 D9A2 A073 A0A2 A2BD FAA2"
	$"00E0 FEA2 00E0 FEA2 01BE A2F8 BE0B BDA2"
	$"A2BE BEA2 BEBE 709D BE9D FDBE 039D BE9D"
	$"D0FD 9328 BCB4 B49F ACAC 6EAB 90A9 A988"
	$"8789 6C7F 5C69 6A5E 6363 5468 85B0 B6B7"
	$"B7D3 D3D2 C88D 6A68 6A61 616A 6AFD 7E04"
	$"8E85 B0B6 B6FC B7FE C8FF CFFD D400 DBFD"
	$"CA03 B2C7 B2B2 FEB9 FFDC FFB9 01D5 CCFE"
	$"E509 E2CB DCD6 D6B9 CBD6 D4C9 07CA DBDC"
	$"C7B2 B4D6 DCFE D70A D5E5 CCCC E2E2 BDE2"
	$"BDE2 A0F8 DF00 BAFE DFFF D800 DFFE D8FF"
	$"EC01 C0EC FCC0 00EC F9C0 08D8 ECEC D8C0"
	$"C075 EF1D 0125 1175 F9F7 1AC0 77F9 75F9"
	$"75F9 F7F9 F975 F9F7 F9FE 753A F7C0 75C0"
	$"F775 F7F7 C01A C041 41C0 C041 C077 F7C0"
	$"41F7 41F5 77C1 77C1 D841 C071 7177 7141"
	$"77C0 C171 71C1 7171 D871 71D8 71C1 D971"
	$"A0D8 7171 A071 C1FE 7124 A071 D9A0 A0D9"
	$"D973 A071 73A0 73D9 73D9 73A2 D9D9 73D9"
	$"D9E0 65A2 E0A2 D9A2 A2E0 A2E0 A2A2 E0FC"
	$"A202 BEA2 650D BEA2 BE65 BE65 BE65 BEA2"
	$"CCA2 BEA2 F9BE FD70 FE93 FFBC 029F BC9F"
	$"FEAC 2192 AB90 90A9 889B 9B87 7F7F AA69"
	$"5355 635E 3D54 687E 85B6 B7D3 D3B7 B65B"
	$"6168 686A 6AFE 8E09 B87E B87E 8D9A B7D3"
	$"B7B7 FCD3 FFCF FFD4 FECA 00B2 FBD6 FFB9"
	$"06E9 B9DC D5D5 B9CC FBE5 09E2 E5E9 D7E3"
	$"E0D5 C7CA CA13 DBD7 DCD7 D6D7 E5E5 B9CC"
	$"CCF2 E2CC BDF2 E0F2 D9F2 FEDF FFD8 00DF"
	$"FEF3 00DF FBD8 00EC FDD8 FFC0 00EC FDC0"
	$"00EF F6C0 FDD8 FFC0 01EF 7501 2806 75F9"
	$"7575 41F7 F7FD 7502 F975 F7FA 750D C0F7"
	$"75C0 7577 75F7 75C0 7541 F741 FEC0 0641"
	$"C0F7 C077 F7C0 FDC1 0271 C041 FE71 0477"
	$"7141 41D8 FDC1 0571 F571 71C1 71FD C117"
	$"71A0 7171 D9C1 A071 C1A0 A071 A0A0 D9A0"
	$"73A0 A071 73D9 A0D9 FE73 06A2 D9BD 7373"
	$"E0D9 FDA2 00BD FEA2 01A0 BDFD A200 E0FE"
	$"A201 BE65 0ABE 9DBE BE9D A2BE BE65 9DA2"
	$"FABE FD70 00BE FE93 FEBC FE9F 04AC 9FA7"
	$"6EA7 FE90 FF88 FE87 1986 7F7F 8669 6A55"
	$"555E 5E54 615B 858D B7D3 B6B8 6A54 5448"
	$"616A 6AFE 7E00 B8FE 8D01 B6C8 FED3 0BB7"
	$"D3D3 CFE1 E1D4 DEDB CADB B2FE B9FE D71A"
	$"DCD7 E9E9 DCD7 DCD5 D5A8 D7A8 E5CC E3E3"
	$"E5E2 E5D6 A8BA E0CC B2CE D617 E9D5 D7B9"
	$"CCE5 CBE5 A8CC E2F2 E28F E2F3 F3DF F3F3"
	$"DFD8 ECEC FED8 02F3 F5F3 FAD8 00EC FED8"
	$"02EC C0D8 FCC0 02EF D8D8 F9C0 07F5 C0D8"
	$"C0EC C0C0 7501 0FFE 7502 F975 75FD F9FD"
	$"7500 F7FD 7500 C0FE 7506 F775 41C0 4141"
	$"77FA C001 F7C0 FE77 FDC0 0077 FEC1 07D8"
	$"71D8 C1F5 C1C1 F5F9 C10A 71C1 C4C5 DA71"
	$"D9D9 DAC5 C4FE D900 C1FE D9FD A0FF 7303"
	$"A0D9 A073 FDA0 01E0 D9FE A2FF BD01 E065"
	$"FEA2 04BD C4A5 7CAF FEA2 09E0 BEA2 BEBE"
	$"A2BE C4C4 BEFD BE0B A29D 65BE BEA2 9DA2"
	$"9DBE BE70 FE93 05D0 BC93 BC93 BCFD 9FFD"
	$"AC09 92AB A690 9088 8788 8987 FE7F 0491"
	$"7F5C 5355 FE5E 1B55 6A5B 858D B08D 7E80"
	$"6363 5548 6A61 6A61 7E7E 8D8D B8B0 B6C8"
	$"D3C6 D3FE C805 CFE1 D4DE DBDB FED6 FEE9"
	$"00D7 FEE9 02D7 D6D7 FEB9 06D7 A8E9 CCE5"
	$"D7D5 FDE5 FECC 06CB D5CC D7D7 D6D7 01D7"
	$"D5FE CC00 E2FE BD00 E2FA DFFF A006 DFD8"
	$"EC9E EC9E ECF8 D8F7 C003 D8EF C0EC F7C0"
	$"02EC D8D8 FBC0 0111 FF75 06F9 C075 75F7"
	$"75F7 FD75 03C0 7575 EFFE 7500 F7FE 750F"
	$"41C0 7741 F741 C0C0 41C0 C041 C041 F577"
	$"FAC0 0541 F571 C1F5 77FE C121 F5C1 C1F5"
	$"C1C1 F5C1 F5C1 71C1 7CFE C471 D9C1 C4FE"
	$"7CC1 D973 D9A0 D9A0 A0D9 A0A0 7365 FDD9"
	$"FF65 1FA0 65A0 73A2 A273 BD73 A2A2 E0A2"
	$"65C3 FEC4 C4FD C5A2 BEBE A2BE BEA2 BEC4"
	$"3AC3 BE00 BFFD BE00 BDFA BEFC 93FB BCFE"
	$"9FFF ACFF 92FF ABFF 90FE 88FF 8701 896C"
	$"FC7F 085C 696A 6863 5E5E 6A5B FE85 068E"
	$"6863 635E 556A FE61 038E 7E7E 8DFE B018"
	$"B6B7 D3D3 C6C8 C6C6 D4D4 CADB DBD6 D6DC"
	$"DCE9 D7E5 CCE5 E5E9 B9FE D7FE D60C D7E9"
	$"E9DC E9DC D7E5 A8D5 CCD7 CCFE D500 B9FE"
	$"D700 CC08 E5D5 CCCC E58F E2BD E2F7 DF03"
	$"D89E 9EEC FE9E F8D8 01C0 D8F7 C000 ECF5"
	$"C004 F5D8 D8C0 ECFE C001 2107 75F9 F7F9"
	$"F7F7 F9F9 FB75 00F7 FE75 08C0 F775 75F7"
	$"C077 41C0 FE41 10F7 41F7 7777 F777 F577"
	$"C0C0 F741 F7C0 7777 FEC1 03F5 71C1 D8FA"
	$"C100 F5FD C1FF 710F 7CA5 A5C1 D9D9 79EB"
	$"7CD9 73C1 A0D9 A0D9 FEA0 0273 A073 FED9"
	$"17A2 73D9 73A0 73E0 73D9 D973 A0BD E0A2"
	$"BDA2 C5C5 BDBD C57C BEFE A207 BEA2 BEBE"
	$"C5C5 9DBE 00FD FCBE FF9D 0170 BEFA 93FE"
	$"BCFF 9FFE ACFE 92FF ABFE 9002 A988 88FD"
	$"87FE 7F22 9C5C 7F7F 5C62 4854 6368 6A7E"
	$"5B8D 858E 685D 5D68 6A7E 8585 8E8E 7E8D"
	$"8D9A B69A B6B7 D3FE C61B CFC6 C9D4 DBD6"
	$"D6D7 D7B9 E9E5 E9D7 D7E9 D7B9 E9E9 D7B9"
	$"D6D7 D6D0 D6D6 FEE9 02D7 B9D7 FEB9 09D7"
	$"CCA8 D5D5 CCD7 D7CC CCFF D5FF CC05 CBE2"
	$"E2CB E2E2 FEDF 00BA FDDF 07D8 9E9E EC9E"
	$"EC9E ECF9 D8FD C002 ECC0 EFFD C000 D8FD"
	$"C000 D8FC C001 D8C0 FDD8 FBC0 0120 06F9"
	$"75F7 75F9 75F9 FD75 26C0 F775 C0F7 7575"
	$"F777 F7C0 75C0 7577 41F7 1AC0 7777 41F5"
	$"4177 C077 F577 C0C0 7777 C141 C1C0 C171"
	$"FCC1 3971 C171 C171 C171 C171 C1C1 7171"
	$"7CC4 FD71 D973 08C4 7CC1 A0C5 7CA5 C3A0"
	$"73C4 7CA5 C373 D9C3 A57C C4E0 A2A4 C479"
	$"7CC4 E0A2 DDA5 7CC5 A2BD C43A 95FD A20A"
	$"BEC4 7C7C C465 A47C 7CAF C51E 00C5 AFC4"
	$"9DBE AFC5 9D93 A4C4 BCA4 977C 839F 9F83"
	$"83A5 7492 8B97 4D74 AB90 A9FD 88FD 87FF"
	$"7F08 8A7F 7F5C 5C7F 6955 55FE 6808 615B"
	$"5B85 6168 7D8E 8EFE 6A07 8E85 8E85 8D9A"
	$"B0B6 FEB7 12C8 C6C6 CFC6 B5D4 DBDB D6D7"
	$"CCD7 D7CC A8CC D7DC FEB9 FCD6 00E9 F9D6"
	$"01D7 E9FD D704 CCE5 D5D5 A8FE D701 A8E9"
	$"00D5 FECC FEE2 04BD E2BD DFE2 FBDF FAD8"
	$"009E FAD8 01C0 D8FC C003 6FEF C0EC F9C0"
	$"06D8 C0D8 C0D8 D8F5 FDC0 00D8 FDC0 011C"
	$"FFF7 0075 FEF7 FF75 01F9 C0FE 75FF F70B"
	$"41C0 7577 C077 C0C0 41C0 C041 FEC0 0141"
	$"F5FE 7709 C041 F741 F577 41F5 41F5 FDC1"
	$"04F5 C1C1 F571 F7C1 3F71 C1C1 717C C33A"
	$"A473 A43A A47C D9AF A5A0 AFA5 D9C3 29DD"
	$"C3FC E0D9 FCC3 9501 84A2 C5FC DDC3 FE73"
	$"A2A5 AF95 3AC3 A2A2 3AFD C4A2 BEA2 C3FC"
	$"BFBF 7BC3 72A5 A5C3 A41E 00A4 C4FD 709D"
	$"7BFC 94D0 97C5 BCFC 8B94 28A1 AC79 FC74"
	$"66AB FD83 AEFD A988 88F9 8713 7F8A 8A5C"
	$"7F7F 5C5C 6255 5568 6A7D 8E7E 616A 6A68"
	$"FE6A 0863 5760 6A7E 858D B6B6 FCB7 16D3"
	$"C6B5 D4D4 CEDB D6D6 CCCC BDBD CCD5 E5CC"
	$"D7B9 C7D6 D6B9 FCD6 02E9 D6DC FCD6 FFD7"
	$"FFE9 0BD7 E9E9 A8E5 CCE9 D7CC E9CC A805"
	$"CCE5 CCCC E2BD FCE2 03A0 E2DF BDFD DF01"
	$"D8DF FDD8 05EC D8C0 D8C0 D8EC C0FD D8FF"
	$"C0FF D807 C0EC C0C0 ECC0 EFC0 0126 2BF7"
	$"75F9 F775 F775 75C0 75F7 C0F7 C0F9 C01A"
	$"C0C0 77F7 C0C0 F7C0 7741 F741 C077 77F7"
	$"41C0 41F7 41C1 4177 D841 77FE C102 71F5"
	$"71FE C14A 71C1 71C1 71C1 71C1 71C1 71C1"
	$"C171 717C C3C5 A5C1 79AF A47C A0C4 3A95"
	$"D973 73AF C5A0 D9AF D9D9 A4D9 D97C A4A2"
	$"C5C5 A2E0 3AC3 D9FD DAA2 C5C5 A2A2 BF79"
	$"00EB A2BE AFC5 A2BE C5AF 93C5 C570 9321"
	$"0093 93FE 9494 3AA5 AFBC FC66 9F83 9FAC"
	$"7C83 AB59 43AB AB83 4DA9 884D 7488 8789"
	$"8787 FD7F 045C 9C8A 5C9C FE5C 0A69 6255"
	$"5568 618E 6161 6A55 FE5E 0763 4B47 4746"
	$"807E B0FE B6FE B7FF C815 CFD4 D4CA CAC7"
	$"D6D6 D7D5 BDBD E5D5 D5E9 D7D7 D6B2 D6C7"
	$"FED6 FED7 FFE9 08CC D5CC D7E3 D7D7 E5D5"
	$"FEE5 09CC D7D7 E9B9 D7B9 CCA8 D5FF CC0D"
	$"E5BD E2E2 BDBD E2BD E2BD E2E2 BDE2 F9DF"
	$"FCD8 03C0 ECC0 D8F0 C007 ECC0 C0D8 F5D8"
	$"C0D8 F7C0 011D F975 06F7 75F7 1AF7 1A41"
	$"FEC0 00F7 FDC0 FF41 FFC0 1841 C0C0 41C0"
	$"41C0 77C0 C1C1 7777 D841 77F5 71C1 C1F5"
	$"7771 D8C1 F771 17C1 71C1 71A0 D97C A4C3"
	$"2971 0184 A47C D973 7CFE C5D9 73C5 C5FD"
	$"D925 A0C4 3A7C FEA4 E0C5 C5A2 A27C A4A2"
	$"007C 7CFC C5A2 65A2 BDC3 3AAF BEC5 C5BE"
	$"BEC5 C593 C559 93D0 2100 9393 EBAF AF79"
	$"74A5 94FC 9FAC 8303 4DFD 83AB 7679 A990"
	$"83FD 3939 FD74 8787 6C7F 7FFC 9C16 8A9C"
	$"8A5C 7F9C 8A69 6268 5568 6A8E 6168 6349"
	$"604B 5146 57FE 5101 4B8E FEB6 FEB7 0ED3"
	$"C8CF D4B5 DBCA C7C7 D6E9 D5A8 E5CC FEE9"
	$"03D6 D7D6 B4FE D613 D7A8 D5D5 CBCB BABA"
	$"ECD8 ECDF DFE2 CCCC D7D7 DCDC FDD7 00E5"
	$"FDD5 00E5 10CC E5BD E2E5 BDE5 BDE2 E2BD"
	$"E2BD E2BD F2BD FEDF 04A0 DFDF D8DF FBD8"
	$"EEC0 03EF C0D8 F5FC C008 D8C0 D8C0 C0D8"
	$"C0C0 EF01 25FE 7510 C0F7 75C0 7575 F7C0"
	$"F741 C0C0 41F7 41C0 41FE C003 F777 C077"
	$"FEC0 0277 41F7 FE41 06F5 41C1 C177 C1D8"
	$"FEC1 07D8 C1D8 7771 C1C1 D8F6 7127 C1A0"
	$"C17C C371 01C4 01A0 A47C A0A0 D9C4 11C5"
	$"A0C5 C5D9 A0D9 D9A0 FEC3 BD7C A4E0 C5C5"
	$"BDA2 7CA4 A200 FDA2 12CC 79C3 9D9D C47C"
	$"BEC5 C593 93C5 59BC C579 BC93 2100 BCBC"
	$"5979 4383 A128 74A5 9292 FD8B AB4D 8390"
	$"7676 A988 7478 8888 8789 896C 7F6C 7FFE"
	$"9CFF 8A16 9C7F 7F9C 9C7F 9C69 6A6A 556A"
	$"6A62 8049 5757 5147 4651 57FE 4B14 636A"
	$"B6B7 B7D3 D3C8 D3CF D4D4 DBDB D6D6 DCDC"
	$"B9D5 B9FE D7FF D601 E9D6 FDD7 FFE5 03E2"
	$"DFDF ECFE D800 C0FE EF06 D8DF E2CC D7D7"
	$"D6FC D701 E9A8 FED5 00CC 01E5 CCFE E210"
	$"CCBD E2BD E2E2 BDE2 BDE2 BDE2 BDBD D9DF"
	$"A0FD DF01 D871 FAD8 F8C0 00EF FCC0 04EC"
	$"EFC0 D8D8 FAC0 00D8 FCC0 0119 FA75 2EC0"
	$"75F7 7775 F741 F7C0 C077 C0F7 C041 C041"
	$"F777 41F7 4141 C077 77F5 77C0 77C1 41C1"
	$"C177 C1C1 D8C1 C177 71D8 7171 C1C1 F871"
	$"40D9 7171 A0A0 7CA4 7179 0079 D9A4 7C73"
	$"C4C4 73A4 7CD9 C4A5 D9DD 11D9 7300 A2D9"
	$"FCA4 BDC5 A5A2 A2FC 84A2 3A84 A279 C5CC"
	$"A5AF BE9D AFA5 9DC4 EB9D 9397 C4B4 7959"
	$"BC9F 2600 9F9F 8B7C FDAC ACFC 3974 ABAB"
	$"0090 AB98 8390 7676 8888 8998 8989 5A74"
	$"6C7F 7F91 917F 7F9C 8A8A FD7F 055C 7F9C"
	$"696A 55FE 6A01 8057 FD46 0347 5157 63FE"
	$"8002 6A7E 9AFE C80E D3C8 CFD4 B5CA CAB2"
	$"D6D6 E9A8 E9B9 DCFA D703 D5E2 DFE2 FEDF"
	$"FFD8 FFC0 FEF7 FEC0 05EC D8DF E2E5 CCFC"
	$"D702 B9D7 E9FE D700 CC03 E5CC E5E2 FEE5"
	$"00CC FEE2 02E5 BDBD FCE2 01BD A0FC DFF9"
	$"D801 C0D8 FCC0 02EC C0D8 FBC0 01EF D8FB"
	$"C000 D8F8 C001 26FD 75FF C0FF F703 C0F7"
	$"7541 FDC0 1841 77C0 4141 F741 F777 4177"
	$"41C0 C077 77C1 4177 4141 C077 C177 FDC1"
	$"05F5 71F5 71C1 71FE C1FB 711E A071 A071"
	$"71A0 71C1 7CA4 71A4 00C3 D9A4 7CD9 A4FC"
	$"C53A C4D9 953A 797C 79A0 A2FE A521 29A4"
	$"E0C5 3A79 EBA5 BEA2 AF3A 79FC 729D C398"
	$"3A3A 98C3 939F 3A79 793A 92AC 5979 92AC"
	$"0C4D 0374 ACFD 4D92 AB97 00A1 9090 FE97"
	$"0B7A 74A9 7676 8889 874D 9696 5AFD 7F2A"
	$"9C6D 7F7F 9C8A 9C9C 7F7F 5C8A 7F8A 6255"
	$"6855 555E 5751 4647 4651 574B 5E80 7E7E"
	$"B87E B8B6 B7D3 D3C8 CFCF B5FE CAFF D604"
	$"D7B9 D7D7 E9FE D721 BDF2 DFDF BABA DFF2"
	$"F3F2 D9F3 D8D8 ECC0 C0F5 D89E D89E D8BA"
	$"E2DF E2E2 E5E3 CCD5 D5E5 FBD7 14D7 CCE5"
	$"A8E5 CCE2 E5CB BDD5 CCCC E5E5 CCE2 E2BD"
	$"E2BD FBDF F8D8 06C0 ECD8 ECD8 C0D8 F9C0"
	$"05EC D8C0 D8C0 D8F9 C002 D8C0 C001 37FE"
	$"75FE C022 771A F71A C077 C075 C0C0 77F7"
	$"77F7 77F7 7777 41F5 41C0 7741 7771 77C1"
	$"77F5 41C1 41C1 41FE C131 7177 F5C1 7171"
	$"D8C1 71C1 7171 A071 A071 71C1 71C1 A071"
	$"71A0 73C1 D9A0 D973 D973 D973 D967 A484"
	$"A0A0 D973 A4C3 D9A0 65A2 A495 FEA2 FFC5"
	$"1572 C39D A2A2 BEC3 A4BF BED0 9393 8BA4"
	$"BC93 93BC BC8B 83FE AC03 92AC 92D1 0292"
	$"D192 FDAB FE90 0BA9 90A9 9074 ADA9 A988"
	$"ADAD 89FE 8701 5874 FD7F 099C 919C 7F7F"
	$"918A 917F 9CFE 5C13 7F81 625E 5548 5557"
	$"5147 5151 5757 636A 8E7E B8B0 FDB6 01B7"
	$"D3FE C6FF B5FF CAFE D60D D7E9 D7E9 D7D7"
	$"E9CB D840 75C0 ECEC FEDF 01D9 F3FE DF00"
	$"D8FD DFFF BA0E DFE2 BDE2 E2BA ECE2 E2E5"
	$"B9CC D7B9 E9FD D71C E5E3 CCE5 CCD5 D5A8"
	$"D5D5 CCCC D5CB CCE5 D5E2 E2BD E2BD DFDF"
	$"E2A0 DFD8 DFFA D8FF C019 D8C0 D8D8 C0EC"
	$"C0EC C0D8 C0C0 ECC0 ECD8 C0D8 C0C0 ECC0"
	$"C0D8 C0D8 FDC0 0125 0A75 C075 C0F7 C0F7"
	$"77C0 F71A FEC0 1475 C041 77C0 77C0 77C0"
	$"C177 77C1 77C0 41C0 7741 C1C1 FE77 09F5"
	$"41C0 41C1 C1F5 7141 71FC C108 D971 71C1"
	$"71C1 A071 A0FB 71FF 7306 71D9 7373 D973"
	$"73FA D900 E0FC A2FE 6509 A2BD A2BD C5C5"
	$"CC65 A2A2 FEBE 0393 D093 93FE BC01 9F93"
	$"FB9F 01AC 92FE ABFF D1FF D102 90D1 ABFE"
	$"9006 A990 90A9 9088 A9FC 8801 8988 FE87"
	$"087F 867F 7F9C 9C7F 7F9C FE7F FF9C 008A"
	$"FE5C 177F 5C81 8055 6A61 6A63 4651 5757"
	$"6080 8E7E B88D B0B6 B7C8 C8FE B706 C8CF"
	$"B5B5 CECE B2FE D6FF D706 E9D7 E9D7 E29E"
	$"40FE F805 C0D8 DFE2 DFE2 FDBA FDCB FCE2"
	$"10CC E3E2 E2CB BACB CCD7 E9B9 D5CC D5D7"
	$"E5D7 1AD7 E5D7 D7E5 A8E5 CBE5 A8E5 CCCC"
	$"D5CC E5E5 CBE2 BDBD E2E2 DFE2 E2DF FDD8"
	$"02DF D8F5 FDD8 00EC FED8 02EC C0EC FCC0"
	$"02EF ECC0 FED8 F9C0 03D8 C0D8 C001 1307"
	$"C075 C075 C075 41C0 FE41 FDC0 0477 C0C0"
	$"4141 FEC0 0F41 C1C1 77C1 77C0 4171 C071"
	$"41C1 C171 77F2 C1FE 7108 A071 71C1 D9D9"
	$"C1A0 C1FE D9FD A001 D9A0 FED9 18A2 E0A2"
	$"D9D9 E073 E0A2 BDA2 A2E0 A2E0 A2BD A2BE"
	$"A4A4 A2BE A2A2 FEBE FF9D FDBC FB9F FEAC"
	$"0092 FEAB FE90 FF90 FFD1 FF90 08A9 88A9"
	$"88AD 88A9 88AD FE88 FB87 FC7F 086D 8A8A"
	$"7F5C 6D8A 9C9C FE6D 2D9C AA91 9C69 4855"
	$"6A85 5B68 6357 6368 806A 7E8D 8DB0 B6B7"
	$"D3C8 C8B7 B7C8 CFE1 CACA B2B2 C7C7 B2D6"
	$"D6E9 D6D6 CCBD D8FD F8FF EF0C D8EC BABA"
	$"DFE2 CBCB 8FE2 BDCB CBFE E212 DFCB D5A8"
	$"E9D5 E2DF DFE5 D6D6 DCB9 CCE3 E9E9 A806"
	$"E9D7 E5A8 CCD5 A8FE CC02 A8E5 A8FE D503"
	$"E5CC CCE5 FBE2 02DF D8BA FEDF FCD8 02C0"
	$"D8EC FED8 08EC C0EC D8D8 ECD8 C0C0 FCD8"
	$"F6C0 0122 2175 41C0 4175 F7C0 1A41 F741"
	$"F741 F741 41C0 C041 F7C0 C041 7777 C141"
	$"F741 C041 C041 71FC C100 D8FE C100 F5FB"
	$"C102 71C1 C1FE 7105 73C1 7171 D9A0 F8D9"
	$"0273 D973 FDD9 03A2 E073 BDF8 A207 E0A2"
	$"BDBD E0A2 A2BE FEA2 FFBE FE93 02B4 9F9F"
	$"FAAC 0392 AC92 6EFE ABFE A900 9006 90A9"
	$"8888 A9A9 ADFE A903 88AD 88AD FD88 0187"
	$"88FE 87FD 7F31 5C7F 9C8A 8A5C 5C7F 919C"
	$"9C7F 7F6D 9C7F 917F 533C 6A8E 8D85 7E6A"
	$"6A7E 8EB8 B8B0 B0B6 B6D3 B1CF D3C8 B7C8"
	$"C8CF DBDB D6B4 DBB2 FED6 06D7 D6E9 E5E2"
	$"C0EF FE1D FFF8 0DEF 6FEC DFDF E2CB E2E2"
	$"BDCC CCCB CBFE E212 6B8F 8FDC E9E9 E5E2"
	$"BAE2 E9D6 DCA8 E3E5 E9D7 A806 D5A8 A8D7"
	$"E5A8 A8FA CCFF E50F CBCC E2CC CCBD E2CB"
	$"E2E2 DF9E DFDF 71DF FBD8 12EC D8D8 DFD8"
	$"C0EC C0D8 D8C0 D8C0 C0EC D8DF D8D8 FBC0"
	$"04D8 C0D8 C0C0 0116 FFC0 1075 C0F7 4175"
	$"C041 41F7 77F7 77C0 F7C0 41F7 FE41 10F7"
	$"41C1 7777 41C0 77C0 71C1 C177 C1C1 F571"
	$"F7C1 0071 FDC1 0B71 D9D9 A0A0 D973 D973"
	$"D973 73FE D90D 73A0 73A0 73A0 73D9 A2E0"
	$"E0BD A2E0 FAA2 02E0 A2BD FEA2 00BE FDA2"
	$"09BE 70BF 93BC B4AC AC92 ACF9 92FF ABFF"
	$"90FF A902 88A9 88F7 8800 90FE 8800 89FE"
	$"8703 886C 896C FA7F FE8A FE5C FF7F FF5C"
	$"427F 5C7F 7F6C 5C69 6A53 8DB0 B08D 7EB8"
	$"8D8D B8B8 B0B6 B7D3 D3CF CFC8 B7B7 C8CF"
	$"CAC7 C7D6 DBB4 DBD6 D6D7 E9E9 E2DF 9EEF"
	$"19F8 F9F9 75EF EF75 C0EC DFE2 BDCC CCE5"
	$"CCE5 E5CB FEE2 038F CBA8 E9FE D707 CBBA"
	$"E2E9 D6D6 B9BD FEE5 00D5 07CB CCE5 A8CC"
	$"E5CC E5FE CCFE E3FE CC04 E5CC CCE2 BDFE"
	$"E200 BAF9 DFFE D804 F5D8 9EDF DFFB D803"
	$"F5EC C0C0 FCD8 FDC0 00EC FCC0 00D8 0123"
	$"FE41 161A F777 C01A C077 C0F7 C0F7 7741"
	$"77C0 41C0 C041 7177 71C1 FE77 0A41 7771"
	$"7771 71C1 71C1 C171 F7C1 0671 D971 C171"
	$"A073 FE71 14A0 C1D9 C1D9 73D9 73D9 D973"
	$"D9A2 D9A2 D973 A2D9 A2D9 FAA2 00E0 FAA2"
	$"FFBE 00A2 FEBE 0193 BCFE 9F02 ACA7 6EFA"
	$"AB02 A7AB 6EFE 9004 A990 A988 88FE 8800"
	$"A9FC 88FE AD04 8988 8887 89FE 6C01 91BB"
	$"FE7F 1B9C 5C9C 5C6D 918A 9C5C 7F5C 5C86"
	$"7F6C 5C86 AA87 865B 6262 B8B6 B6B0 8DFE"
	$"B000 B6FE B7FF D308 E1CF CFC8 B7C8 C6D4"
	$"DBFE B2FD D6FF D7FF E52D D8C0 EF40 EFEF"
	$"75F7 C075 75EF EFEC D8DF E2E5 E5CC E5CC"
	$"CCBD E5E5 CCCB A8D5 B9D6 D6E9 A8CB BAD5"
	$"D6D6 B9A8 BDE5 8FCB 07CB E2CC E5CC CBBD"
	$"BDFE CC03 E3CC CCBD FEE2 02BD E2CC FEBD"
	$"FFE2 00BA FCDF 02D8 DFDF FCD8 02DF D8DF"
	$"FED8 06F5 D8D8 C0C0 EFC0 FDD8 FFC0 01D8"
	$"F7FA C001 1D1A 4175 C0C0 41F7 4141 77F7"
	$"77C0 77C0 F777 F577 77C0 77C0 77F5 77C1"
	$"C0FE C100 D8FE C109 41D8 C171 C1D8 71C1"
	$"C1F5 FCC1 0A71 C1C1 D9D9 C171 A071 A071"
	$"FEA0 FCD9 1073 D9BD 73D9 73D9 A2D9 73E0"
	$"E0A2 A2E0 A2E0 FAA2 04BD A2BE A2A2 FDBE"
	$"15BF 934E 9FAC A7AB AB90 90AB AB90 AB90"
	$"AB90 AB90 AB90 90FD A900 8800 89FB 88FE"
	$"AD0B 8988 8989 8787 7F7F BB7F 9191 FE7F"
	$"0A8A 6D5C 9C8A 9C91 6D7F 5C6D FE5C 126C"
	$"7F7F 8789 878D 7E8D B6B7 B6B6 B0B6 B6B7"
	$"B7C8 FED3 FECF 09C8 B7C8 C6CD CADB DBD6"
	$"B2FD D608 D7BD DFD8 75F8 F8EF 40FD D809"
	$"EFF7 75F9 EFC0 D8E2 E5E5 FDD5 07BD E5E5"
	$"CCCC D5B9 DCFE D60B B9D5 BACB D7D6 D6D5"
	$"A8CC CB6B F6E2 02BD E0BD FCE2 FEBD 06E2"
	$"BDCB E2DF DFA0 FDDF 04D8 DFDF D8D8 FEDF"
	$"FAD8 01C0 ECFE C0FD D8FD C003 D8C0 C0D8"
	$"FEC0 0125 0A41 C041 4177 41F7 7777 F741"
	$"FDF7 0A77 4177 C041 C077 C171 C141 FEC1"
	$"0077 FEC1 05F5 71C1 71C1 71F8 C100 71FE"
	$"C1FF D917 71A0 7171 C171 A071 A0D9 A0D9"
	$"7373 D9A0 D9D9 65A0 E0D9 73E0 FCA2 02BD"
	$"A2E0 FEA2 02BD A265 FDA2 06BE A2BE BE93"
	$"93BC FEAC 036E 9090 A9F6 9002 ABA6 90FE"
	$"A900 88FE 8800 89FD ADFF 89FF 8816 8987"
	$"897F 6CAA 7F7F 916D 7F7F 9C8A 5C5C 6D8A"
	$"6D8A 7F5C 6DFD 7F08 897F 8787 8887 9A8D"
	$"B0FC B706 B6B7 D3D3 C8CF C9FE D41E C6C8"
	$"C8CF CECE CADB DBD6 B2B9 D6D6 D7BD D875"
	$"F8F8 1D75 6FD8 DFCB E2DF D8C0 75FE EF02"
	$"C0D8 E2FD D508 8FBD E5D7 D7E9 B9DC B9FD"
	$"D60A B9CB CBB9 D6D6 B9D7 CC8F BDFC E202"
	$"CBE2 E2FC DFFF E2FD BD0B E2BD E2BD DFE2"
	$"A0BD E2E2 BDE2 FCDF FFD8 02DF D8DF FED8"
	$"09F3 F5F5 D8C0 ECC0 EFC0 C0FE D80A C0D8"
	$"C0D8 C0C0 ECC0 C0D8 C001 1108 4177 C077"
	$"C041 41F7 41FB 77FF C000 41FD C101 7177"
	$"FEC1 0277 4177 FEC1 FF71 00D8 FEC1 FF71"
	$"01C1 D9FD C10F D9C1 D971 A0C1 71D9 D9A0"
	$"D9A0 A0D9 A0D9 FE73 00E0 FED9 2AA0 65D9"
	$"A0A2 A2E0 A2E0 A2E0 A2E0 A2BD A2BD A265"
	$"A2A2 BEA2 65A2 A2BE 9D9D BE93 BCAC AC92"
	$"AB90 90A9 8888 A9A9 F890 FEA9 FE88 FA88"
	$"FF7F 0A5C 7F87 8789 7FBB 9191 7F6D FD5C"
	$"089C 5C7F 5C9C 8A9C 919C FB7F FF89 0787"
	$"8888 9BB0 B0B6 B7FE D311 C8B7 B7D3 C6CF"
	$"E1D4 CACA B5C6 C6B5 D4D4 CACA FDDB 1AB2"
	$"DBD6 A86F 40F8 F9F9 C0C0 D8E2 A8D5 D5E5"
	$"E2DF ECF9 F975 EFD8 BAE2 FED5 048F CCD7"
	$"E9D7 FEB9 FCD6 0ADC 8FCB E5D7 D6D6 B9A8"
	$"CBBD 03E0 E2E2 BDFE E2FB DFFB E203 BDE2"
	$"BDDF FEBD 01E2 BDFE E2F6 DF01 D8DF FDD8"
	$"00EC FCC0 FFD8 02C0 D8D8 F8C0 011E 1141"
	$"C041 4177 C041 C077 F577 77F5 F7C1 77D8"
	$"41FE C1FF 7701 7177 FEC1 0177 41FD C1FF"
	$"71FE C10B 71C1 C1D9 D9C1 D9C1 71C1 D9D9"
	$"FE71 03D9 73D9 73FD D90C A0D9 A073 A2A2"
	$"D965 73A0 A2BD A0F7 A200 65FD A214 BEA2"
	$"BEA2 BEA2 BEBE 9D93 BC9F ACAB AB90 A9A9"
	$"88A9 88FD A908 90A9 9090 A990 90A9 A9FD"
	$"880A A188 AD89 8987 5C69 6262 69FD 7F09"
	$"917F 9C8A 5C7F 5C7F 9C6D FD5C FF8A 0991"
	$"7F7F 5C7F 8787 7F89 87FE 8818 9BB6 B6B7"
	$"D3D3 CFCD C6CF C8D3 D2CD E1D4 B5C9 C9B5"
	$"B5CD DBCA CAFD D621 DBD4 CAB4 8F6F 191D"
	$"F7F5 DFDF BDD7 E9D6 DCE9 E5E2 ECF7 F975"
	$"75C0 D8E2 BDD5 D5A8 D5B9 FCD6 00C7 FCD6"
	$"03CC E2CB E9FE D602 B9A8 E5FF E5FB E2FB"
	$"DF04 E2BA E2BA E2FE DF04 E2BD BDE0 BDFD"
	$"E2FB DF00 D8FE DFFB D8FE C002 EFC0 EFFE"
	$"C007 D8C0 ECC0 C0EF C0EF FDC0 0123 0EC0"
	$"41F7 41C0 77C0 41C0 7741 F741 77C0 FE77"
	$"FEC1 0571 7777 71C1 77FA C106 71C1 D971"
	$"D9C1 A0FB C10A 71C1 71D9 71A0 71D9 A0D9"
	$"A0FE 7312 A0D9 73D9 D973 E073 73E0 A2A0"
	$"A2A2 BDE0 A2A2 E0FB A200 BEFD A20F BEA2"
	$"A2BE BE9D 9DBC BCAC 92AB AB90 90A9 FE88"
	$"05AD 88A9 9090 ADFC 9006 A990 A9A9 88AD"
	$"9019 88AD ADAE 6D8A 6264 4545 6262 5C7F"
	$"7F9C 9C7F 5C6D 5C7F 5C5C 9C9C FE5C 029C"
	$"8A6D FE7F 006C FE87 0089 FE88 03A9 9BB7"
	$"B7FE D30D D4CD DED4 CFCF C6C6 D4CF C9B5"
	$"C9D4 FEDB 12D6 B999 B9B2 CADE D4D4 DB8F"
	$"6F6F C0F3 E2CC D7D7 FCD6 0FD7 E5E2 D8C0"
	$"75EF 40D8 DFE2 E5D5 D5B9 DCFB D60E C7B2"
	$"DBD6 D6D7 CCE2 E5E9 D6D6 B9E9 D702 CCE5"
	$"E5FC E206 BDDF E2DF E2BD E2FE DF07 BADF"
	$"CBBA DFE2 BDBD FCE2 01DF E2FE DF00 BAFB"
	$"DFFC D803 ECC0 C0EF FDC0 03D8 ECD8 D8F9"
	$"C001 150A 4177 41C0 77C0 4141 C1C0 41FE"
	$"C00E 41C1 71C1 7141 7141 7171 4177 71C1"
	$"71FD C105 71C1 C171 C1C1 FD71 0DC1 D9C1"
	$"7171 D9D9 C1A0 D9D9 73D9 A0FE D900 A0FE"
	$"D90A BDD9 E0A2 A2BD A2BD A2A2 E0FB A2FC"
	$"BEFF A211 CC65 BEA2 A2BE BE9D BE93 BC9F"
	$"AC92 AB90 90A9 FD88 FFA9 FE90 00A9 F990"
	$"00A9 FE90 10AD 897F 8182 6450 5E64 6264"
	$"6262 6969 5C5C FC7F FE8A 215C 8A5C 5C8A"
	$"8A6D 7F7F 5C87 8887 8788 A9A9 9090 B1B7"
	$"B7D3 D3CF CFD4 CEEA CEC6 C8CF C6FE D401"
	$"CADB FED6 11E9 A8A8 C7CA CAD4 DEDB D6A8"
	$"9E9E E2E9 E9D7 D7FC D60F E9D7 D7CC DFD8"
	$"EF40 75C0 DFE2 E5DC B9B9 FED6 04DB D6DB"
	$"D6DB FDD6 09E9 E5DF E2E5 D6B9 B9E9 D703"
	$"E5CC E5E5 F7E2 00BD FCE2 FFDF 02BA CBBA"
	$"FCE2 F7DF 01D8 DFFB D8FE C002 F775 75FD"
	$"C003 ECC0 ECEF FBC0 0126 1C41 C041 4177"
	$"4141 C077 77C0 41C0 41F5 41C0 41C0 41C1"
	$"71C1 C041 7141 C177 FEC1 09F5 71C1 7171"
	$"D971 A071 A0FE C1FF 7100 C1FD 710A D973"
	$"D9A0 A0D9 7373 D9D9 A0FE 7307 A2D9 E0A2"
	$"E0A2 A265 FEA2 00E0 FABE 0365 A2BD BDFE"
	$"A2FF BE11 A2BE 93BC 9FAC A7AB 90A9 8888"
	$"8988 88AD 8888 FB90 00AB FB90 FF88 0087"
	$"019C 81FE 6202 5E60 80FE 6400 6AFE 62FF"
	$"69FF 5C02 7F6D 6DFE 9C00 8AFE 5C06 6D7F"
	$"917F 7F87 87FE 88FF A9FF AB12 6EB1 B7B7"
	$"D3D2 D3C6 B5DB C7B5 8662 69B1 CAC7 D6FE"
	$"D70F E3E0 E2D5 D6D4 C6D4 CDDB DBD7 CCCB"
	$"8FDC FBD6 17D7 D6E9 D7E9 CCE5 E2DF 6FEF"
	$"40C0 D8F2 E9D6 D6DB B2DB CAD6 DBFA D605"
	$"DCE2 DFD8 E5D7 FED6 00E9 05D5 A8CC E5E5"
	$"CBFD E206 DFE2 E2BD F2E0 F2F8 E204 DFE2"
	$"E2DF E2FE DF05 A0DF DFBA DFBA FEDF 00EC"
	$"FED8 FDC0 0875 EF75 75C0 C0EC D8EC F9C0"
	$"012F FF41 03F7 4177 C0FE 41FF 7711 C077"
	$"C041 7141 C071 4171 7771 41C0 C041 7171"
	$"FDC1 0571 D8C1 71C1 C1FD 71FF C103 D971"
	$"71C1 FE71 07D9 7373 D973 A0D9 A2FE A01C"
	$"A2BD A2E0 A2A2 A0A2 BDA2 A2BD A2E0 A2BE"
	$"BEA2 A2BE A2BE BE65 BDA2 BEA2 A2FE BEFF"
	$"930D 9FAC 926E AB88 8887 8987 8988 88AD"
	$"FD90 00A9 FA90 04A9 8888 5C69 0A62 6A62"
	$"6A62 4580 6482 8264 FC45 FF62 0481 8A6D"
	$"8A8A FE7F FF5C FD7F FE87 03AD 88A9 A9FE"
	$"ABFF 9224 A6B7 C8D3 D3D2 C6CD CEC9 894B"
	$"3E3D 9BCE 99CB BDBD A0A0 71DF D7CA D3D3"
	$"D4CE C7D6 D7E5 E5B9 B2FE DBFF D6FF D717"
	$"E9D7 CCE5 D5CB E2DF ECEF EFC0 D8E2 D7D6"
	$"DBCA B4DB DBD6 D6DB FBD6 09DC CBA0 D8E2"
	$"D7B9 D6D6 E906 D5A8 E5D7 E5E2 CBFD E207"
	$"DFE2 E2BD F2BD E2E2 FEBD 00E2 FEBD 0AE2"
	$"BDBD E2E2 BDBD E2BD DFA0 FCDF 01D8 9EFD"
	$"D8FE C000 F7FE 75FF C004 ECD8 D8C0 EFFB"
	$"C001 3021 F741 1A41 C041 41C0 C041 C071"
	$"77C1 77F7 C141 C0C1 F5C1 F5C1 7171 C1C1"
	$"7171 C171 C1C1 F971 03D9 73A0 C1FE 7110"
	$"A0D9 A0D9 738F A035 4C73 D965 6535 6565"
	$"CCFE BD07 65A2 A2E3 E3A2 65BD FE9D FF65"
	$"003F FEBE 03A2 65A2 DAFD BE09 93BC 9FAC"
	$"ACAB 90A9 8889 FC87 0388 90AD A1FE 90FE"
	$"A900 90FE A904 886C 6962 5502 4555 45FD"
	$"62FE 6405 5080 6262 455E FE60 095F 8A6D"
	$"8A8A 9C7F 5C9C 7FFE 6C03 8987 AD88 FE90"
	$"00D1 FE92 FFAB 0FB1 B7D3 D3CF D2CD CD9B"
	$"3D32 3250 9ACE A8FE BD27 8FA0 A0BD D6D4"
	$"CFD3 CFD4 DBE9 E5E5 D7D6 CAB5 CFC9 C9DB"
	$"B9D5 CCE3 E3BD CCE5 E2DF F775 F8EF 9EA8"
	$"B9D6 FEDB 04D6 DBC7 DBB2 FCD6 FFDC 08E5"
	$"DFD8 DFE5 D7D6 B9B9 0EB9 A8CC CCE5 A8E5"
	$"E5A8 BD8F CB8F CBBD FAE2 0CE5 E2E5 E2E5"
	$"E5E2 E5E2 BDE2 BDBD FDDF FFD8 00DF FAD8"
	$"FEC0 0375 EF75 EFFE C004 D8C0 ECC0 F5FE"
	$"C000 6F01 270B 4177 C0C0 4177 C077 71F7"
	$"7177 FDC1 FF77 0BC1 F571 C1C1 F571 C1C1"
	$"D871 C1FB 7108 C171 71C1 C1D9 71A0 71FE"
	$"A0FC D905 A065 6573 73D9 FEA0 FE65 0EBD"
	$"A2BD BD65 A2BE E3CC 6565 A2BE BEA2 FE65"
	$"05A2 DAA2 709D A2FE BE0A 9D93 BC9F ACA7"
	$"AB90 9088 88FE 89FF 87FD 8800 A9FD 90FE"
	$"A9FF 8805 875C 6945 5E5E FF5E 0780 6480"
	$"6462 6264 64FE 500C 5E64 504B 4646 6082"
	$"8A8A 917F 5CFD 7F01 8987 FE88 FF90 FFAB"
	$"FD92 1BAC AB90 C8B7 D3E1 E1C6 B745 2C2C"
	$"3E6A 9BCE B9BD BDE5 E5BD BDE0 D7CA CAFE"
	$"D424 DBB9 D5CC B4CA CFC6 C8D3 B1D4 C7D5"
	$"E2BD F2BD E2E2 DFD8 F5C0 F8EF 6F9E A8B9"
	$"D6D6 DBDB C7DB DBFE D6FF E90B DCB9 DCE5"
	$"DF9E D8E5 D7D6 B9B9 04D5 D7D7 CCCC FED5"
	$"05CC D5CB BDCB BDFB E2FB E500 CCFE D503"
	$"A8CC E5BD FDE2 FDDF FAD8 FFC0 0275 C075"
	$"FEEF FDC0 00D8 FEC0 02D8 C0C0 0138 FF77"
	$"0441 C077 41C1 FD77 FFC1 0077 FEC1 0271"
	$"C171 FEC1 FE71 1BC1 71C1 C171 C171 C171"
	$"C171 71C1 D9A0 C171 C1A0 D971 D973 73A0"
	$"D9A0 D9FD 73FF D9FF BDFF 6503 A273 C2A2"
	$"FE65 0F70 BE65 653F A2DA DAA2 BE65 9DA2"
	$"E4F4 A2FD 9D0B BE70 939F 9FAC 92AB 9088"
	$"ADAD FC89 0188 87FE 880E A9AD A188 9088"
	$"8987 5C69 6953 6A62 5019 5E80 455E 5580"
	$"6450 645E 604B 575E 4550 4B46 4657 6481"
	$"8A9C 5C7F FE87 0389 8788 88FE 90FF AB2A"
	$"92AB 9292 ABA7 AB90 B1B1 C8D3 D39A 3C2C"
	$"2B32 4969 C8CA D7BD BDCC CCE2 D8F3 F2E9"
	$"DCC7 DBD4 B3D6 DCB9 CACF C8FD B71E C8D4"
	$"C7DC CBBA DFE2 DFDF D8D8 EFEF 75EF C0DF"
	$"CBD7 D6D6 DBD6 DBD6 D6DC E9D7 E9FE D505"
	$"E2DF D8EC E2D7 FEB9 0FB9 D7B9 E9B9 D5A8"
	$"E5A8 D5E5 BDE2 BDE2 CBFE E202 E5CC BDFD"
	$"CCFF E503 E2CC E2D5 FEE2 02BD E2BD FADF"
	$"FDD8 00EC FEC0 03EF C0EF EFFE C000 D8FE"
	$"C003 D8C0 C0D8 0133 1241 C077 4177 F741"
	$"C1C0 C171 7771 C141 C177 C1F5 FAC1 0571"
	$"D8C1 D9C1 D9FC C13F D971 C1C1 A071 A071"
	$"71A0 A0D9 D973 D973 A0BD D973 D9D9 E0E0"
	$"A265 73E0 F4C2 A2A2 8F8F 6565 9D3F 3FA2"
	$"E0BE D0B4 B2B2 9DE3 A2A2 E49D CCBE 9393"
	$"BC9F 9292 AB90 A988 FE89 02AE 8989 FB88"
	$"0EA9 9090 ADAD 7F8A 8162 6962 626A 6262"
	$"FF62 0545 5555 3D5E 5EFE 4BFF 46FF 4B40"
	$"3D4B 4646 4B80 6262 699C 7F87 8887 8888"
	$"A990 90AB AB92 A7AB A7AB A76E AB90 A988"
	$"9B9B B79A 5532 2B2C 575B 9AB1 B3D7 BDCC"
	$"CCE5 DFC0 F7F3 BABA CBDC B4DB D6D6 DBC9"
	$"C8FE B708 B6B7 B7CF D4D6 D5BA BAFE DF0A"
	$"D8C0 4019 F8EF D8DF CBD5 A8FA D6FF E90C"
	$"E5A8 A8E9 E5A0 D8D8 DFE5 D6B9 B901 B9DC"
	$"FDD7 23DC CCD5 E5D5 E2CC E28F CBCB 8FBD"
	$"D5CC E5CC CCE5 CCCC E5E5 CBE5 E2A8 E2E2"
	$"BDE2 BDE2 8FBD E2FD DFFE D802 C0EC 6FFD"
	$"C0FF EFFD C002 D8EC C0FE D801 2C12 F741"
	$"41C0 7741 F541 7777 F577 C177 C177 7177"
	$"71FC C100 71FD C11C 73D9 D971 D971 D971"
	$"C1C1 A0C1 C1D9 A0D9 71C1 A0A0 D9A0 D973"
	$"D9E0 D9A0 73FE A204 7365 73A2 E4FD A219"
	$"BD9D BEA2 6565 9DAC A69B 7F87 88A6 B3BE"
	$"C2DA BE9D 93BF 9F9F 926E FE90 0088 FC89"
	$"006C FD89 FF88 FFA9 FF88 0287 6969 F862"
	$"FF64 0055 FE3D 0F49 4B49 4946 4732 4651"
	$"4647 4757 5E45 53FD 620C 5C87 8890 90AB"
	$"A7A7 ABAC 92A7 92FD AB11 A988 88AD ADBB"
	$"6949 2C2B 2B3B 488D B7C9 D6D7 FECC 11E2"
	$"9EEF F7F7 ECEC 9EBA CCD0 D6C7 DECF D3B6"
	$"B6FE B716 D3CF C9CA B9BA 9EEC DFEC C075"
	$"F875 C0DF E9E9 DC99 99E9 D7FE D6FE E902"
	$"CCE5 D5FE E207 F3D8 ECBA CBD7 D6B9 FEB9"
	$"0AD6 B9D6 D7D7 E9CC E5D5 E5E5 FDCB 07E2"
	$"BDE5 CCCC E5CC CCFD E503 D5E5 E2CC FDE2"
	$"04BD E2E2 CBE2 FDDF FFD8 03EC C0D8 D8FD"
	$"C000 EFFD C0FC D800 DF01 32FF 4104 C077"
	$"C0C1 77FE C103 4177 71C1 FD71 01C1 F5F8"
	$"C102 D9C1 73FB C106 A0C1 71C1 A0A0 71FE"
	$"A008 D973 D973 E0D9 A273 A0FE A201 D9E0"
	$"FDA2 1FA8 CCF4 DABE 9DE4 A2A2 9DA7 877E"
	$"6863 686A 699B A7BE DAE4 93BC 9F9F 9292"
	$"AB90 90FE 88FF 8718 AA87 876C 8989 AD89"
	$"8888 8787 6969 626A 6A62 625F 6264 6255"
	$"5506 5E55 3D49 493B 4BFE 3BFF 4619 3247"
	$"3242 3247 465E 4548 6262 645E 6481 6C90"
	$"D192 92A7 9292 ABA7 FEAB 0290 A988 FE89"
	$"2D6C 6945 2C16 1646 485B B7C8 CAA8 CCBD"
	$"8FDF BA6F 6FF7 C0D8 C0D8 9EBA A8D6 D6DE"
	$"D3D3 B7C8 B7C8 CFCF D4D4 B3D6 CBEC ECFE"
	$"C004 EF75 D8BD D6FE CAFF C715 DCD5 B9D7"
	$"D7E9 D7E5 E5E2 E2BD E2DF DFD8 6FEC CBA8"
	$"D6B9 FFB9 FBD6 11D7 E9D5 E5E5 E2CB CBD5"
	$"E28F A88F 8FD5 A8D5 CBFE E504 E2E5 E2D5"
	$"CCFD E207 BDE2 CBE2 DFBA DF9E FAD8 FFC0"
	$"02EF C0C0 FDD8 05DF D9DF F3D9 E001 3404"
	$"41F5 41C1 77FD C100 77F5 C100 F5FE C100"
	$"D9FD C106 71C1 A0C1 A0D9 A0FD D906 A0C1"
	$"A073 D9D9 73FD D92B 7365 6BBD D9F4 F6D9"
	$"D9E0 A265 65A8 BEDA E0A2 9DE6 F4BE A75C"
	$"6A68 6354 6368 7D85 9BAC BEBE BC9F 9FAC"
	$"ACAB 9090 FE88 0187 89FE 87FF 7F00 87FE"
	$"8910 889B 8769 536A 6153 6962 645E 605E"
	$"4555 3DFF 3D0B 5E3B 3B4B 3B46 4747 5132"
	$"4732 FE42 0F32 473B 3D3C 5555 5E63 4B64"
	$"8A89 90AB A7FD 92FF AB04 D190 A988 88FE"
	$"8910 5C5E 3216 1632 3D5B 9AC8 B5B2 A8BD"
	$"CCBD DFFE D83C F5D8 A0C1 F5D8 A06B A8D6"
	$"DECF B1D3 C6CF CFC9 D4D4 CADB D0E9 DFC0"
	$"C0EF EFD8 DFCC D6CA C9CF D4B5 CEB9 E9D5"
	$"CCD7 CCE5 E5E2 E2DF BADF DFD8 D8EF 9EBA"
	$"D5D7 D606 D6B9 DCB9 D6B9 D6FD D710 CCE5"
	$"A8D5 A8D5 8FD5 E28F E58F E5CB D5E5 E2FE"
	$"E503 A8CC E2BD FBE2 FEDF 099E D8DF D8F5"
	$"F5D8 D8C0 EFFE C000 D8FE A002 BDE0 E0FE"
	$"D900 E001 2F04 C041 C077 41FC C106 77C1"
	$"41C1 71C1 71FC C100 D8FD C102 D971 C1FB"
	$"712C D9C1 A073 C1D9 A0A0 C173 73D9 D973"
	$"E073 E0D9 65A0 A0BD BED0 E6E3 E0BD 6B65"
	$"65A2 DAA2 BDBE E3E3 B389 6A56 5D54 68FD"
	$"7D0D 8D9B A7BC 939F AC92 6E90 9088 8887"
	$"FE89 FF6C FD7F FDAA 049C 6962 626A FE62"
	$"0745 4B57 4955 553D 5E0E 4B3B 5147 4742"
	$"472C 332C 4247 4247 2CFE 4214 3246 4B49"
	$"546A 6264 5E5E 4569 87A9 ABA7 9292 AB6E"
	$"90FE AD45 8987 8987 7F5E 322B 2B47 3D5B"
	$"B7C8 A7B2 B9CC E5CC E0F3 F3D8 A0DF DFCB"
	$"C1F5 DFDF BACB DCD6 D4C9 C9D4 B5B5 CFC9"
	$"C9CA CAD6 D7E2 EC75 C0DF CCD6 CAD4 D4CF"
	$"E1D4 D4CA D6CC D5E2 E0E3 FDE2 FCDF 06D8"
	$"C06F ECCB D7B9 FEB9 01D6 B9FE D6FF D709"
	$"E9A8 E5CC E5D5 E58F 8FCB FEBD 10A8 E5D5"
	$"E5E5 E2CC E2CC E5CC E2E5 BDE2 BDBD FDDF"
	$"FAD8 10C0 D8C0 C0D8 D8A0 BDBD CCCC BEA2"
	$"E0D9 E0E0 0139 0577 C077 C177 77FC C103"
	$"71C1 71C1 FE71 FCC1 0371 C1C1 71FE C123"
	$"D971 C171 D971 A073 C1A0 7373 C173 D9A0"
	$"D973 D9A0 D9E0 A2E0 C273 9DB4 ABA9 A9AB"
	$"B39D BD65 FEA2 FF65 21A2 E0D0 A662 6354"
	$"636A 617E 5B85 8E7D 8D9B AC4E AC92 AB90"
	$"9088 8887 8989 876C 6CAE 6CFD 7FFF AAFF"
	$"69FF 80FE 64FF 5007 493B 493D 5555 4B51"
	$"0332 4742 33FD 3811 4233 3342 3233 4742"
	$"3233 4232 4746 3B45 5353 FD55 5262 5C87"
	$"A9AB AB90 90AD AD89 BB89 8987 5C64 322B"
	$"3632 3D5B 9AC8 B5B2 9DB9 D7E9 D7D7 F2F2"
	$"E3F2 E2E2 CBDF F3DF E2E2 CBCC D7B4 DBCA"
	$"CACD B5A6 C9A7 CADB DBE9 E2EC C0E5 D6B3"
	$"C9B5 B5E1 E1D4 D4CA CAB4 D7CB DFDF A0DF"
	$"FEE2 FCDF 06D8 C0EF 6FBA E5D7 04B9 DCB9"
	$"B9D6 FEB9 21D7 B9E9 D7E5 CCE5 CCE5 E5E2"
	$"BDCB BDCC E2CC E5E2 E5E5 CCE5 A8E2 CCE2"
	$"BDE5 E0E2 DFBD E2FE DF01 D8DF FCD8 0FF5"
	$"71DF A0A0 BDE0 CC9D D7BE A2D9 A0D9 E001"
	$"3502 4177 77FE C1FF 7704 C141 C141 C1FE"
	$"7101 D871 FDC1 03F5 C1C1 71FE C102 D9C1"
	$"71FD A007 D971 A0D9 D9A0 73D9 FD73 33A0"
	$"D9D9 A2E0 A204 DAAC 9C62 6A80 627F A7CC"
	$"736B BDA2 9D9D 3FBE B49B 6A63 5555 6A8E"
	$"617E 8D85 85B8 86AB 9F92 A7AB 90A9 8888"
	$"8987 87FD 6CFF 7FFF 9CFD 6901 6480 FE50"
	$"0A5E 493B 3B4B 3D45 454B 4733 FF36 102D"
	$"202D 2D2E 1636 3838 3333 4242 4742 4233"
	$"FE42 0347 4B5E 3DFE 55FE 5E04 5F7F 88A9"
	$"90FE ADFD 891B 6C5F 4633 2B2C 3B53 8DB7"
	$"A6B3 D7E9 D5D6 D6DB D6E9 D7D7 E9E9 E5A8"
	$"BDDF FEE2 FFBD FFD7 FFD6 FFCA 1BD4 CACA"
	$"DBD6 DBBC D7E5 DFE0 D6D4 C9C9 B5B5 D4D4"
	$"DECA DBB2 D6D7 CBDF D8FE DF00 E2FC DF07"
	$"ECD8 C06F 6FBA E5D7 02D6 B9B9 FED7 07D6"
	$"D7DC D7E9 A8E5 A8FE E509 E28F CCBD CCE2"
	$"CCCC E5D5 FECC FFBD FFE2 04BD E5E0 E2E2"
	$"F9DF FEBA FFDF FFA0 FED9 01E0 BDFE CC05"
	$"BEA2 A0A0 D9E0 0135 0341 7771 C1FE 7707"
	$"71C1 C177 C1C1 71C1 FE71 00F5 F9C1 FED9"
	$"07A0 71D9 71D9 7173 D9FD 730F D973 A073"
	$"73E0 D9D9 A2E0 D9E0 E06E 8154 FE56 115D"
	$"6A69 A9AC B4CC E0BE 6565 A8A7 867D 686A"
	$"6AFE 8E0C 7E8D 8D85 85B0 8892 A790 A9A9"
	$"88FD 871C 896C 6C7F 7F8A 9C8A 6969 6262"
	$"6460 514B 4B5E 5E49 5E49 3D4B 5151 4238"
	$"360B 442E 4D30 2530 2421 3020 3636 FD33"
	$"0242 4742 FE33 FF42 0C32 3B3D 3D48 3D3B"
	$"3B4B 5881 7F87 FE89 18BB 8987 6C64 462B"
	$"162C 3B48 859A A6CA B29D CC99 CAC9 A6D4"
	$"DBDB FED6 06D7 A8CC E2D5 E5E2 FEBD 05B9"
	$"DCD6 DBB4 D6FD B9FF D6FE E901 D7D4 FDCF"
	$"03DE CADB B4FD D605 CCE2 D8D8 C0D8 FBDF"
	$"08D8 ECDF D8C0 EFEC E5D7 13E9 B9B9 D7B9"
	$"B9D7 B9E9 A8E9 CCD7 D5E9 CCE5 CCE2 E2FE"
	$"BDFE E508 E28F E5BD BDD5 E2E5 BDFE E204"
	$"F2DF E2DF E2FE DF00 BAFE BD01 CCBE FEBD"
	$"FFA0 FFE0 FEE3 01BE BDFE A000 7301 37FC"
	$"7708 4177 C177 C1C1 71C1 C1FD 7100 D8FB"
	$"C113 71C1 D973 73D9 7171 D971 A0C1 73A0"
	$"7373 D9A0 71D9 FE73 1AA2 E0D9 A2D9 BEA7"
	$"6956 5D54 5E5E 5468 548E 8688 ACD7 9D65"
	$"8F9D A786 FB8E 0CB8 7E8D 8DB0 B08D 9AA6"
	$"AB90 8888 FD87 126C 876C 7F5C 868A 9C8A"
	$"5F62 453D 4B47 4247 4B45 FE55 075E 5147"
	$"4738 362E 440E 4D17 3924 2727 1327 2424"
	$"3020 2E38 42FE 33FF 4207 3338 3833 4232"
	$"463B FE3D FF3B 3051 6062 8A5C BBBB 89AA"
	$"7F5F 3B2B 2B33 3E55 5B9A B1A7 9DCC CC9D"
	$"B2A7 9B9B C8B5 CACE DBDB D6D7 A8D5 E5E5"
	$"BDE2 DFE2 E9D7 D6D6 FED7 02E9 D7E9 FED6"
	$"15DC B9D6 CAD4 E1D4 DEDE DBD6 D7D7 B9DC"
	$"DCE9 8FDF D8C0 D8FE BAFB DF05 D86F 40EC"
	$"E2D7 14B9 DCA8 A8D7 D7B9 CCD5 D7B9 E9A8"
	$"CCE5 E5CC E5BD BDE2 FEBD FFE5 0CE2 8FBD"
	$"E5CC BDBD E2BD E2F2 E2BD FEE2 00BD FDCC"
	$"FF9D FFD0 109D BEBD BDA0 A0BD E0BE E3E3"
	$"BEA2 A0A0 7173 0135 00C1 FB71 F8C1 FE71"
	$"00C1 FD71 3BD9 A071 71D9 73D9 C1D9 73D9"
	$"A0A0 D973 D9A0 734C 35E0 E065 35A0 73C2"
	$"D9A0 B287 6A56 636A 8E61 8E61 7D8E 857E"
	$"9AA6 D0A2 659D A79A 858E 857E 7EB8 B885"
	$"8DFE B006 8D9A 9BA9 A988 89FE 6C1E 89AA"
	$"918A 8A9C 869C 9C62 8050 5051 3233 3347"
	$"555B 483D 3D46 4738 382E 4D39 2548 1327"
	$"3A29 2712 0312 3A10 2739 2130 2D38 3638"
	$"3338 3342 2B36 3842 4747 3B3D 483D 3B47"
	$"4B3D 455F 818A BB87 5F4B 2C2B 3332 495B"
	$"9AB1 A6B2 CCD7 D7B4 ACA9 AA9B B7CF D4D4"
	$"CADB D6B9 A88F D5FE CC08 D5E2 D5D7 A8D5"
	$"D5E9 B2FC DBFF D6FF D701 D6DB FECA FFD6"
	$"FFDC 0EE9 A8CC B9B9 E5E5 E2EC 9ED8 9EEC"
	$"BADF FEBA 06E2 DFD8 6FC0 A0E2 FFA8 04E5"
	$"A8A8 D5A8 FED5 00B9 FECC FFA8 07D5 8FD5"
	$"BDBD E2BD E2FD BD0B E2BD E0E0 F2E0 F2E2"
	$"BDBD D5D5 FECC 01D7 9DFB B402 D09D BDFE"
	$"A00A BDBE E39D BEBE E0D9 A0A0 7301 3B08"
	$"C171 71F5 71F5 71C1 71FB C1FE 7101 C1A0"
	$"FD71 22D9 A0C1 A071 D9D9 C1D9 73D9 D9A0"
	$"D9E0 D9D9 A065 A0E0 A265 6B6B C2DA BDB2"
	$"8861 6868 8E85 FD8D 01B0 8DFE 8508 B7AC"
	$"BEA2 A2AB 9AB8 85FE 8D05 B88D B0B0 B6B6"
	$"FEB0 269A 9B88 877F 6C6C 877F 9C81 818A"
	$"6969 8164 604B 4B3B 4B3B 3246 455B 5B45"
	$"3D47 4243 2E4D 253A 3A01 1801 2910 2910"
	$"3A10 1028 2926 1029 2439 212D 2E2E 3836"
	$"3638 2B38 FD42 0051 FE3D 343B 573B 3D45"
	$"6262 695F 4B2C 2A2B 2C49 538D B7A6 B3CC"
	$"CCD7 D6A7 D1AD 9B86 9BC8 CFD4 D4DB D6D6"
	$"D7CC D5DC D7E5 BDBD E2BD 8FA8 E9D6 CAB5"
	$"FED4 06DB B2D6 D7CC D5B9 FDD6 06DC E9E5"
	$"E5D5 D5B9 FED7 08E2 DFD8 6FD8 D8DF E2BA"
	$"FECB FFDF 03D8 C0D8 A008 E5E9 CCE5 E5CC"
	$"E5D5 D5FE CC10 E5CC D5CB 8FE2 BDBD E2CC"
	$"E2BD BDE2 BDCB BDFB E20C BDCC CCB9 B9B4"
	$"B4D0 B4B4 B3B4 B3FE B404 9DCC BDA0 A0FE"
	$"BDFE 9D05 BEE0 A071 A0D9 0132 03C1 71C1"
	$"71F7 C100 D9FE 710B A071 C1A0 71A0 D973"
	$"71A0 7373 F9D9 0273 A0D9 FE65 12E0 F4A2"
	$"8FBD F4DA CCA6 5B8E 8EB8 B8B0 B0B6 B6B7"
	$"FEB6 0BB0 8DB0 ABE6 CCBE A7B7 B885 8DFE"
	$"B0FD B600 B7FE B626 B09B 8789 6C6C 7F5C"
	$"6962 6281 6969 4550 6051 4657 553C 4855"
	$"485B 5B45 3B47 332E 4424 2929 1001 0F72"
	$"0D01 0110 0D0F 0F01 290D 0F29 1029 293A"
	$"3925 2020 442D 3838 3633 4242 8C47 474B"
	$"453C 5E4B 4955 618E 6A3B 2C16 3642 3B3C"
	$"869A B1B3 B9CC D7D6 CAA6 ADAD 9B87 9B9B"
	$"CFCF DEDB B2D6 D6E9 DCDC D5CC E0F2 DFDF"
	$"E2D7 D0D6 DBD4 C9CF B5B5 CEB2 D6E9 A8DC"
	$"B9DC B9DC D5E5 E2E5 E5D5 E9D6 D7D7 BDBA"
	$"9EC0 D8FE F3FF DF07 E2DF DFF3 F5D8 D8DF"
	$"03E2 D5E5 E3FB E500 CCFE E5FD E2FF F210"
	$"E3F2 E0E5 BDE2 8F8F CB8F CBCB 8FA8 A8D7"
	$"9DFD B400 BCFD B415 B3B4 B3BC B49D CCBD"
	$"A0BD A0BD CCBE 9DBE E3BD A0A0 71D9 0138"
	$"04C1 71D8 71C1 FE71 01C1 71FC C114 D971"
	$"71C1 73A0 C1A0 7173 D973 D973 D973 C1D9"
	$"D973 73FC D90F 738F A2C2 DAE0 9DE0 D9D9"
	$"9D9B 7D85 B8B0 FDB6 00D3 FEB7 FDB6 07AB"
	$"BCCC E3A7 9BB0 B8FE B0FF B6FD B729 D3B7"
	$"B6B0 AA87 6C7F 5C69 693C 5362 5362 5F64"
	$"6051 3B49 4553 8D8D 5B5B 3C3D 4742 382E"
	$"3927 3A0C 0101 0C07 0210 010D FD01 130D"
	$"0101 2929 1029 2912 3A27 2524 1330 302E"
	$"4420 38FE 424B 4757 5E64 6953 6261 7E6A"
	$"4B32 2B2B 2C49 489A B7B1 A7B2 D7D7 D0CA"
	$"A688 8889 88AA 87B1 CFE1 D4CA DBDB D6D6"
	$"E9D6 E9E5 BDF2 DFCB E5E9 D6DB CAC9 CFC6"
	$"B5B5 CAC7 D6DC D58F D5DC D5D5 CBA0 E2BD"
	$"D7D7 FED6 0AB9 CBA0 D8C0 C0F5 F3DF 9EBA"
	$"FEDF 04F3 C1F5 D8BA FFCB FFE2 00CB FEE2"
	$"02BD E2E0 FEE2 01DF A0FC DF02 CBE2 BAFE"
	$"CB05 8FA8 A89D B99D FCB4 00B3 FEB4 00BC"
	$"FEB4 00B3 FEB4 FF9D 05BD A2E0 D9BD BDFD"
	$"9D05 BEE0 D9A0 A0D9 012B FEC1 0271 F5C1"
	$"FE71 16C1 71C1 C1D9 7171 73A0 7171 D973"
	$"C1A0 A073 D973 A073 D9A0 FED9 1873 D9A2"
	$"D965 E0E0 73D9 DAD9 BD65 A2D9 65B3 9A85"
	$"8DB6 B6B7 B6B7 FAD3 07B6 B7CF D0A2 A2B3"
	$"B7FE B0FE B62E B7D3 D3C8 D3B7 D3B7 B79A"
	$"865C 6D69 6253 453C 4545 5E50 5060 4B3D"
	$"3C5B 9A9A 693C 3D4B 4742 3897 3A10 010D"
	$"0107 0D01 0138 0C0D 010F 0F01 0F10 0F01"
	$"010D 0F0D 2910 01FE 0F29 2727 2324 2130"
	$"302E 4242 4747 5160 6262 5369 535E 4736"
	$"162C 3B48 9AB7 B1C9 B4D7 E3D0 B3A7 88FE"
	$"8705 8991 6C87 B1C6 FED4 FFDB FED6 00D7"
	$"FAE9 17D6 DBD4 CFB1 CFB5 D4B5 B2D6 E9CC"
	$"E2E5 D5E2 E2DF DFBD D7D6 DBFE D603 DC8F"
	$"BDA0 FED8 04DF BABA CBBD FEE2 03DF D8DF"
	$"BD02 CCD7 CCFE A8FC CCFD BDFE E002 BDE2"
	$"BDFD CC01 D79D FCB4 F9B3 FDB4 FFB2 15B4"
	$"B3B4 B49D CCBD BDA0 E0BD CC9D 9DD0 9DBE"
	$"A2A2 D9A0 D901 3502 71C1 71FE C1FD 71FF"
	$"C1FE 7126 D971 7371 C1A0 C1A0 A073 A073"
	$"D973 D9A0 D9D9 73D9 73D9 D973 E0A2 7373"
	$"A2A2 8F8F BDA2 653F ACB7 85FE B6FC D30E"
	$"D2D3 D2D3 D3B7 D3C9 BCA2 A2B4 A9B0 B8FE"
	$"B602 B7C8 D3FE C8FE D304 B79A 8669 69FD"
	$"6208 5362 5E49 5E50 453C 3CFE 5BFF 450F"
	$"5E51 4243 2E39 3A29 280C 0C01 0D01 0D0F"
	$"0129 0CFE 01FF 0FFE 0102 0F29 01FE 0FFF"
	$"103D 0129 3A10 3A27 3925 2030 2E33 3342"
	$"4751 4B60 8053 533B 2B1B 2B3E 489A B7C8"
	$"A6B3 D7D0 D0B4 A788 8989 877F 9191 7F87"
	$"9BC8 E1CF D4CE CEB2 B2D6 D6DC DBDB DED4"
	$"FEDB 0CD4 C9CF C8CF D4D4 CADB D6D6 CCBD"
	$"FCE2 13BD D7D6 B2CA DBDB D6DC A8CC DFD8"
	$"DFBA 8FB9 D6B4 ACFE B4FF D001 B4AC 03AC"
	$"A7AC B3FC B40B BCB4 BCBC 9F9F BC9F ACBC"
	$"B3BC FDAC 00BC FDAC 05A7 ACA7 B3B3 A7FD"
	$"B3FD B402 B2B4 B3FE B411 9DBE BDA0 E0BD"
	$"BDCC 9DB4 9DD7 BEBE A2A0 A0D9 0138 FF71"
	$"02C1 71C1 FE71 FFC1 FB71 02A0 7371 FDA0"
	$"0173 C1FD D90F A0D9 7373 D973 A0D9 BDA2"
	$"A2E0 A2D9 A2BD FE65 06A2 7370 B3B7 B0B6"
	$"FDD3 05D2 D3D2 D3C6 C6FE D306 C8C9 BC67"
	$"A293 A6FE B002 B6B7 B7FC D3FF C623 C89A"
	$"8686 6969 6245 5E55 6269 6460 573D 5548"
	$"3C5B 483C 5E4B 4742 3896 3A29 0F0D 0C01"
	$"0D0D FD01 150F 010D 0101 1001 0D29 0D01"
	$"0F01 2901 2929 0F29 1010 3AFE 2933 2724"
	$"2520 4436 3342 4251 4B60 553B 331B 3632"
	$"3D5B 9AB1 C9B2 B29D 9DD6 B3A9 896C 8987"
	$"7F91 AE91 9C86 C8C6 E1CD CDCE B2B2 D6B9"
	$"C7CE FECF 01C9 D4FD CF29 D3CF CFDE DBB2"
	$"D6D6 E3F2 E2BA BACB 8FD7 B4CA CACE DBDB"
	$"D6B9 B9CC CBE2 CCB9 B2B3 906C 8987 88A9"
	$"8888 896C 038A 5C7F 87FE 88FF 900E A690"
	$"A988 8889 7F89 8987 88A9 A9A6 ABFE A702"
	$"ACA7 A7FD B301 A7AC FDB3 05B2 B4B4 B2B4"
	$"B2FE B40F 939D A2BD A0A0 BDBD 9D9D 93B4"
	$"9D9D BEA2 FEA0 0134 01C1 71FC C100 F5FE"
	$"711E A071 A071 C1A0 D971 C171 D971 D9A0"
	$"A0D9 73D9 73A0 D9A2 73E0 D973 D9E0 A2A2"
	$"E0FE BD09 6573 D9F6 C273 B4B1 B6B6 FED3"
	$"04D2 D3C6 C6E1 FEC6 0EC8 D3C8 C9B4 3FA2"
	$"93A7 9AB8 B0B0 B6B7 FDD3 11C6 C8C8 AA86"
	$"6969 7E69 6264 5E80 819C 8A5F 53FD 4814"
	$"3D3C 4B51 4738 9739 2710 0D0D 010D 0F01"
	$"010F 100F 0136 0D0F 100D 0110 0D10 0110"
	$"010F 290F 0F10 3A01 1001 0F29 0F29 293A"
	$"2727 2144 4438 3833 4751 4B46 332A 1B2C"
	$"493C 9AC8 A6B3 B29D 9DB4 B3AB 87FE 6C45"
	$"877F 916C 919C 9C86 C8CF E1D4 B5CD CEC7"
	$"CECA A6B1 C8C8 CFB1 B1B7 B7C8 CFCF D4DB"
	$"C7DB B2D6 D7E3 E2CB CBD5 B9D6 CAC9 B5CD"
	$"CEC7 C7D6 B9D5 D5BC D188 8887 5C81 698A"
	$"5C8A 8A81 8162 FE62 0369 9C86 7FFC 870C"
	$"5C69 8162 8181 8A9C 5C87 88B1 A6F9 A703"
	$"B3A7 A7AC FDB3 FAB4 099D D0BE A2A0 A0D9"
	$"BDCC 9DFD B405 D09D CCBD A0BD 013F 09D8"
	$"71C1 71C1 71C1 C171 C1FE 7128 D9A0 7171"
	$"C1A0 A071 71D9 35D9 A0A0 D9A0 D973 73A2"
	$"7373 D9A0 A2A2 E073 E065 A2C2 F6D9 DA02"
	$"C273 B4C8 B6FE D318 D2D3 C6D3 C6E1 CFC6"
	$"C8CF C8C8 C9B4 A2A2 D0AB B6B0 B8B0 B6B6"
	$"B7FE D312 B79A 8669 6962 6264 6245 6450"
	$"5064 9C7F 6C5B 3CFE 3D0B 5E4B 4738 444D"
	$"3A10 1006 0F07 FE01 050C 0D0C 070D 0F0D"
	$"0C0D 0110 290D 1001 0F29 010F 0110 FE29"
	$"000F FE10 2129 1029 1029 1027 2725 4D2E"
	$"3638 3332 462C 2A20 333B 489A B7A6 A7B2"
	$"B9D6 B2A7 B187 7FFE 6CFF 7FFF 911B 6D9C"
	$"8A9C AAC8 B1B1 A6B5 B5CD B5A6 9B87 9BB1"
	$"CFD3 B79A 9AB7 D3E1 D4DE FEC7 03B9 E9CC"
	$"D7FE B902 D6DB CAFE C9FF CE06 DBD6 DCDC"
	$"B4D1 91FD 8108 8A81 8A8A 8181 825F 8224"
	$"5F69 818A 9C7F AA87 8887 877F 9C8A 8181"
	$"6281 818A 7F89 8890 ABA7 A7AB ABA7 B3A7"
	$"B3A7 ACA7 ACFC B3FC B4FE 9D07 A2E0 D9A0"
	$"A0BD 9D9D FDB4 05D0 9D9D A2E0 BD01 3601"
	$"C171 F9C1 FF71 0BD9 A0D9 C171 D9D9 73A0"
	$"D973 73FE D9FE 731C 6573 A273 73E0 73A2"
	$"E0A2 A2E0 65A2 E0A0 CCD0 BC93 9DB3 C8B6"
	$"D3D2 D2E1 CFFE E111 D3CF D3CF C8C8 B7CF"
	$"B2A2 70BC ACB6 B0B8 B0B6 FDB7 08B6 8669"
	$"6262 8264 6060 FE50 1F60 5E5F 5C87 8762"
	$"3D3D 5E4B 4742 384D 273A 010D 0101 0D01"
	$"0D0C 010F 0D0F 2901 0113 2901 0F01 0D29"
	$"0110 0110 010F 2901 0F29 0F29 100F FD29"
	$"233A 0F10 2929 2721 3930 3633 332C 2B36"
	$"3346 455B B7C6 A7B2 B2B4 B4C9 B19B 867F"
	$"876C 7F91 91FD 6D1A 8A81 9CAA AA9B B1B1"
	$"A6C9 A687 8A81 7F9B C8C6 C89A 9AB7 C6C6"
	$"CDCE CEFE C708 DCD7 D6D6 B2D6 C7DB CAFE"
	$"C907 B5CA CAB2 DCC7 A7AE FB81 028A 6D6D"
	$"FE81 0182 81FF 810B 8A9C 7F6C 89AD 8989"
	$"6C7F 8A8A FD5F 0581 6D6C 8988 90FD ABFE"
	$"A709 B3A7 B3A7 A7B3 A7A7 B3B3 FCB4 0A9D"
	$"D09D CCE0 D9A0 A0BD BDCC FEB4 07BC B4B4"
	$"D09D BE9D A201 3B09 71D8 C171 C171 D9C1"
	$"D9C1 FED9 00C1 FDD9 0F73 D9C1 73D9 73A0"
	$"D9A0 73D9 A2D9 73A2 A0FE A20B E0A2 A2E0"
	$"73D9 A2D0 ACA9 9B9A FE9B 089A B7D3 D3D2"
	$"DECD CDD4 FBCF FFC8 2BB1 B370 3F70 AC9B"
	$"B08D B0B0 B6B6 B08D 6962 5545 4550 4B51"
	$"5147 514B 4B5E 5062 6962 3D4B 4B47 4238"
	$"2E3A 2929 0CFE 0D0B 070F 070C 010D 0D0C"
	$"010D 0D0F 1B0F 0101 0D10 0F10 1001 0129"
	$"0101 2929 0F29 100F 030F 1010 2929 3A12"
	$"29FE 270E 2425 2D33 2B2B 1633 323D 5B9A"
	$"A6A7 B2FE B42F C9B1 9AB8 6986 5C7F 9C91"
	$"6D6D 8A6D 6D8A 8A81 8A8A BB8A BB9B 9B7F"
	$"7F8A 818A 9C9B B1C8 9B9A 9AC8 C6CD DBCE"
	$"B2D6 D6B9 B9D6 FECA FEDB 02CA D4D4 FECA"
	$"0BD6 C7B2 A98A 8181 8A8A 816D 8AFD 81FF"
	$"8200 8105 815C 7F6C 8989 FEAD 0489 6C6D"
	$"8A81 FE5F FF81 056D 9189 8888 90FE AB01"
	$"A7AC F9A7 FEB3 08B4 BCB4 D09D D79D E3E0"
	$"FEA0 0ED9 A0E0 9D9D B4B4 B3B3 BCB4 D0BE"
	$"70BE 0138 01C1 71FA C112 D9C1 A0C1 71C1"
	$"A0C1 D973 73A0 73A0 73D9 A0D9 D9FE 7304"
	$"A073 A065 73FC A205 E0BD B4A9 867E FE7D"
	$"FF5B 3B85 B8B0 B7CF E1CD D4CD D4CF E1CF"
	$"CFB1 C8C8 B1B3 703F 709F 9BB0 8D8D B09A"
	$"9A7E 6255 4545 3D4B 3B47 4732 4747 4B4B"
	$"3D3D 4B49 4B46 4742 3844 2429 3AFE 0CFE"
	$"010C 0F01 010C 0D01 0F01 0F10 0101 0C0E"
	$"100D 0F01 0F01 0129 0D29 0F29 2910 0FFE"
	$"2900 0FFE 2930 1029 1010 293A 1212 3A27"
	$"242D 3333 1633 323D 619A C8C9 B3B2 B4B4"
	$"CAA6 86B8 8D8D 865C 869C 6D91 6D6D 8A81"
	$"6D8A 6D81 8182 81FC 8A0D 6D91 8282 8186"
	$"9BB7 AA9A 9BCF E1CD FEDB FFD6 05C7 DBCA"
	$"D4D4 CAFC DBFF CA07 DBD6 CAA7 7F81 8A5C"
	$"FE8A FC81 0382 8182 8204 695C 7F6C 89FE"
	$"8811 AD89 918A 6981 5F58 5F5F 818A 7F89"
	$"88A9 A990 FDAB 0292 A792 FDA7 02B5 A7B3"
	$"FEB4 0DBC D7B9 9D9D E3BD A0C1 D9D9 BDCC"
	$"9DFE B4FF B305 BCB4 D093 BEBE 012C FFC1"
	$"FD71 FFC1 0EA0 D9D9 A071 A071 A0D9 D971"
	$"3535 A0A0 FCE0 02A2 6565 FE73 1DE0 A2A2"
	$"E065 BDC2 E0C7 B17E 7D7D 6A68 5454 5555"
	$"6A61 7E7E 9BB1 D4CE DBD4 D4FC CF12 C8A7"
	$"70BF 959F A98D 8D85 8D9A 8653 505E 503D"
	$"4BFE 5104 4651 464B 4BFE 5E1C 603B 5142"
	$"384D 243A 0101 0D01 0C07 0D07 010C 0C29"
	$"0D01 0D0D 010F 0D10 2900 0DFE 012D 290D"
	$"0101 1029 0110 2910 1029 0129 100F 1029"
	$"1029 3A12 1229 1027 2927 252B 3338 1632"
	$"3B48 8DC8 B5B3 B4B4 D6CA A69B FE69 0C86"
	$"8D7E 5B69 699C 9C8A 8183 816D FE8A 039C"
	$"8A8A 6DFB 8A11 8182 8281 9CAA 9BB7 C8CF"
	$"CDDE DEDB EAC7 CECA FED4 00DE FBCA 06CE"
	$"DBCA AB89 8A81 FA8A FE81 035F 8262 810C"
	$"815C 6D89 8789 8889 8991 6D8A 81FC 5F0D"
	$"818A 9187 8988 A9A6 ABAB A7AB A7AB FAA7"
	$"00B3 FDB4 0C9D D7CC A2BD A071 C1D8 A0BD"
	$"CCD0 FEB4 FEB3 FFB4 FED0 0134 1771 C171"
	$"C1D9 C171 71A0 35A0 35A0 C1A0 D9D9 A073"
	$"A073 A0D9 65FE E0FF A200 65FD 73FF A255"
	$"E0A2 6565 A0BC B17E 5448 7D80 635E 5554"
	$"5468 5554 7D8E 7E9A B1C9 CADE D4CF C9CF"
	$"B1C8 C9D0 D0BF 929B 8D85 5369 6253 3C50"
	$"3D49 3B47 513B 4B4B 503D 4555 8045 4B47"
	$"4236 4D17 2701 010C 0C07 0D0D 0C01 0CFE"
	$"010D 0D01 0F0D FD01 010D 0104 010F 010F"
	$"0DFE 2904 0129 0F10 3AFE 29FF 10FC 2926"
	$"2710 2910 3A29 293A 121E 332B 332C 3B45"
	$"69B7 A6B3 B4B4 CACE B18A 8062 6969 9A86"
	$"695B 5B8D 6986 9CFE 8AFF 81FC 8AFD 6D14"
	$"8A81 815F 8282 645F 8A9C AAAA 9BCF CFD4"
	$"D4DB D4C9 C9FE B5FE D4FE CA0D CECA A7A9"
	$"918A 8181 8A8A 6D5C 8A8A FE81 FE5F FF81"
	$"035C 9C7F 89FE 8819 896C 9C8A 8181 5F5F"
	$"8282 5F8A 6D7F 8988 88A9 90A6 A6AB A6AB"
	$"A7AB FCA7 FFB3 12B2 B4B4 D0D7 CCBD BDA0"
	$"71C0 7771 A0BD D7D0 B4B4 FDB3 FFB4 FED0"
	$"013B FF71 FED9 06A0 71A0 C1A0 D9D9 FB73"
	$"07D9 F4D9 D973 D9D9 A0FD 7302 65BD E0FE"
	$"A2FF BE10 A252 A890 6968 485B 4863 5E63"
	$"6868 7D6A 6AFD 7DFF 5B13 9BD4 DBCA C9C9"
	$"B5C6 B7A9 B3B4 AC88 867E 7E62 605E FC3D"
	$"1A3B 4B4B 3D60 503C 3C55 805E 5147 422E"
	$"2710 0F0D 010D 0107 010C 070F FE0D 0B0C"
	$"0D0D 010D 010F 0D01 0F10 0F16 010F 1001"
	$"0F29 0C01 1010 2929 1029 0F29 103A 0F29"
	$"103A 12FE 3A34 2728 270F 2727 2B33 2B2C"
	$"3B3D 539A B1CA B3B3 CAD4 A65F 7651 5E62"
	$"6986 8669 B869 7E69 8686 9C91 8A8A 6D8A"
	$"6D8A 8A6D 6D8A 6D8A 8181 82FE 81FF 5FFE"
	$"810F 9CAA 9BB1 A6C9 C9A9 899B B1C9 B5B5"
	$"CAD4 FECA 15C9 A6BB 8A81 5F81 8A81 918A"
	$"5C8A 818A 815F 5F82 5F81 8A04 9C7F 6C89"
	$"88FE 8916 7F8A 8181 5F5F 8282 5F5F 8A6D"
	$"7F87 8888 A9A6 90AB A6AB A6FD ABFE A7FF"
	$"B30F B4B2 B49D D7CC BDA0 A0D8 71C0 71A0"
	$"BD9D FEB4 05B3 B4B3 B49F B4FE D001 3B05"
	$"C171 C1D9 C1D9 FE71 28A0 C1A0 D973 D9D9"
	$"A073 A2DA A2F6 D9C1 35A0 7373 C2DA BDCC"
	$"E0A2 73A2 CCA2 656B B386 6A7D 6148 5563"
	$"806A FE8E 0285 8EB8 FE85 445B 7D85 C8C9"
	$"DBCA CAC9 C6B7 B1A7 A688 5C69 6262 8260"
	$"513B 3D3D 553D 543D 5545 6262 6A45 5E4B"
	$"4647 384D 2701 010C 070D 010C 0F07 010D"
	$"060F 010D 290F 0D0D 290C 290F 0101 1001"
	$"4A0F 100F 100F 0110 2929 1001 290F 1029"
	$"1029 0F29 2912 1210 2912 1010 2710 2727"
	$"332C 2B33 3245 5B9A B1C9 B3B4 B2B5 A658"
	$"422E 3847 5064 8186 9C69 697E 537E 6986"
	$"AA7F 8A8A 818A 8A6D 8A6D 6D8A FD81 FE5F"
	$"0082 FD81 148A 9CBB 879B 9BAA 9C8A 9C7F"
	$"9BA6 A6B5 C9C9 A6A9 877F FD81 FA8A FE81"
	$"FD5F 0181 8A16 5C7F 8989 8888 876C 7F8A"
	$"815F 8282 645F 5F81 8A6D 7F87 88FE A90D"
	$"A690 A6AB A6A7 A6A7 ABAB A7A7 B3B3 FEB4"
	$"0D9D D7BD BDA0 A0D8 D871 71A0 CCD0 D0FE"
	$"B402 B3B4 B3FE B401 BCD0 0134 14C1 D9C1"
	$"A0D9 7171 A0C1 A073 D9A0 D9A0 73D9 D965"
	$"E0A2 FED9 0073 FE65 FFE0 FF65 12BD E073"
	$"A2BE E0BD 4E9B 5B7D 6161 4854 546A 8585"
	$"FEB0 FCB6 05B0 8585 9AB3 D6FE CA07 C6C8"
	$"B79B 9B5C 5F80 FE50 FF51 1E4B 5E45 3C3C"
	$"4848 3D5E 5E63 4B46 4747 4244 2529 0101"
	$"0710 0C01 0C0D 0D0C 010C FE01 0C0D 0107"
	$"0101 0D0C 0F01 0F0F 0101 1201 2901 0D29"
	$"0F10 0F0F 100F 2929 0112 2912 2910 FD29"
	$"FF10 FE29 2112 1042 2C33 3332 3D5B 9AB7"
	$"A6B3 B4CA CEB1 5833 2525 208C 5160 6064"
	$"6282 6962 5369 69FD 8600 5CFD 8A00 6DFE"
	$"8AFF 81FB 5F03 6281 818A FE6D 117F BB9C"
	$"9C8A 815F 8169 7F87 8788 8991 6D81 5FFE"
	$"81FE 8A00 81FC 8AFF 8105 825F 8281 8A6D"
	$"017F 87FE 8905 876C 7F8A 815F FD82 FF5F"
	$"1181 8A8A 7F6C 8888 90A6 A9A6 90A6 ABA6"
	$"ABA6 ABFE A701 ACB3 FEB4 0CD0 CCE0 BDD9"
	$"7171 41F5 A0BD CC9D FCB4 FEB3 FEB4 00BC"
	$"0137 0BD9 C1A0 D971 71A0 71A0 73D9 D9FC"
	$"A00F 736B A0A2 F4F4 E0A2 6565 BDBD E065"
	$"65BD FEA2 08DA D9CC AB8D 7D85 5B5B FE61"
	$"2785 8DB0 B6B6 B7B7 D3D3 B7D3 B7B6 B6B7"
	$"B2D7 D6DB CAC9 C69B 6962 6264 6060 4B3B"
	$"5151 6050 6253 3C3C 3BFE 46FE 4212 8C2E"
	$"4D25 2901 070D 070D 0C0D 0C01 0D0C 0D07"
	$"0FFE 0D02 0F0D 0FFE 0100 10FE 0101 0F10"
	$"3310 0D10 2910 2910 290F 2901 0F29 3A29"
	$"1029 0F29 1229 293A 2729 123A 1027 4251"
	$"382B 463D 5B9A 9AC6 CAB2 B2CA A658 3625"
	$"2324 4D36 43FD 6002 8062 62FD 69FF 8605"
	$"9B86 865C 5C6D FE8A FF81 FC5F 1162 8281"
	$"818A 8A5C 6D5C 7F8A 9C81 8A81 815F 82FE"
	$"8104 8A81 8282 5FFE 8106 8A81 5F81 818A"
	$"8AFD 81FD 5FFF 8A00 7FFF 87FF 8905 8887"
	$"7F8A 8A5F FD82 FE5F 0B81 8A6D 7F6C 8888"
	$"A990 90A6 A9FE A604 A7A6 A7AB A7FD B30F"
	$"B4D0 D0CC BDA0 A0D8 71D8 71A0 E0CC 9DD0"
	$"FDB4 00B3 FDB4 01D0 B401 2901 D9A0 FED9"
	$"FFA0 11D9 73D9 7373 D9A0 A0D9 D9A0 7373"
	$"DADA F4E0 A2FE 65FF A2FF 65FE CCFF A202"
	$"CCCA 9BFE 8508 8D8E 7E7E 8DB0 B6B6 B7FD"
	$"D3FF B7FF D305 B7B6 CFD6 CCB4 FDCA 06B1"
	$"6280 5E50 4B51 FE4B 125E 6269 6260 462C"
	$"4233 3336 2E2D 4D39 2403 0101 FB0C 1607"
	$"0C01 0C0F 0101 0C01 0C0F 010F 0101 0D0D"
	$"010D 0F01 1001 0D10 0110 1029 0129 2901"
	$"100F 2929 10FD 292A 123A 2929 1012 123A"
	$"2927 3642 787A 333C 5B8D 9AB1 C9B3 B2B2"
	$"A682 3824 3A13 3A4D 4438 7660 6051 6060"
	$"6469 62FE 69FC 8603 875C 9C8A FD81 FD5F"
	$"0481 5F81 8169 FC8A 0269 8A69 FD81 008A"
	$"FD81 008A FB81 FF5F FC81 028A 8181 FD82"
	$"0381 8A5C 7FFF 8708 8988 876C 7F8A 815F"
	$"5FFD 82FF 5F0C 818A 5C7F 8987 88A9 A6A6"
	$"A9A6 90FE A601 A7AB FEA7 FFB3 FEB4 0C9D"
	$"CCE0 A0C1 71F5 C1D9 D9BD 9DD7 FEB4 02B3"
	$"B4B3 FBB4 012A 0571 A0D9 A0D9 A0FE D91F"
	$"73A0 D973 D9D9 73BD D973 73A2 E0E0 BDA2"
	$"6573 73C2 C273 C173 BDBD A071 65A6 8685"
	$"FE8D FFB8 038D B6B6 B7F5 D30E D4E3 E3D7"
	$"9DB9 99B2 8882 6060 4B60 60FE 502F 6269"
	$"6260 422B 3636 2D2E 204D 273A 3A10 0107"
	$"0D07 0C0C 0701 010D 0C0F 060C 010D 0D0C"
	$"0101 0C0F 0F01 0F0D 2901 0110 0F01 150F"
	$"1001 010D 3A10 2910 2929 0F10 0F10 2910"
	$"2910 2910 10FE 291C 123A 4D76 96FC 9774"
	$"A6B1 C8A6 B5B3 B3CE C96D 4224 2713 2714"
	$"2430 3642 76FD 5106 6050 6462 6269 69FE"
	$"8606 879B 877F 8A81 82FD 5F00 62FD 5F08"
	$"698A 8A69 5C5C 8A69 8AFE 81F9 8A01 6D8A"
	$"FE81 FD5F FB81 0882 8182 8281 815C 7F87"
	$"FF87 0788 896C 7F8A 8181 5FFC 82FF 5F15"
	$"818A 6D7F 8989 88A9 9090 A690 A6AB A6A7"
	$"A6A7 ABA7 A7B3 FEB4 0DD7 9DBD A0A0 D871"
	$"C071 D9E0 A29D 9DFC B401 BCB3 FDB4 00BC"
	$"0137 FF71 01A0 D9FE A001 73A0 FED9 03A0"
	$"D9A2 D9FD 7303 A0BD A0A0 FD73 0DF6 C273"
	$"73A2 7093 BEA0 4E88 B87E 9AFE 8D03 B0B6"
	$"B7B7 FDD3 02E1 D3CF FDD3 23B7 CFB2 BEF4"
	$"E2DF BA8F B36C 5060 6050 6462 695C 9C82"
	$"644B 422B 1B2E 2E30 2425 3A3A 010C 07FD"
	$"0C0B 0D0C 0D0D 0C01 0D01 0D01 010C FD01"
	$"0B10 060F 0D01 0C01 1001 0129 0F01 290F"
	$"FE29 0501 2910 2929 0FFC 29FF 104B 2910"
	$"1029 2927 1027 3942 973A 4D74 6EB2 B4AC"
	$"B3B4 B4B3 D49C 5120 3A24 1427 2724 4D44"
	$"8C43 7676 4747 5151 4B60 6462 6269 8A9C"
	$"8687 9B87 AA91 8A82 5F62 5F5F 8264 8281"
	$"8169 8A8A 9C9C 698A 815C FE6D 078A 6D8A"
	$"6D8A 6D8A 8AFD 81FF 5FFF 8202 815F 5FFE"
	$"81FE 82FF 8103 8A7F 6C87 FF87 1B88 877F"
	$"6D81 5F5F 825F 8258 5882 5F5F 818A 6D7F"
	$"8789 88A9 90AB ABA6 90FE A601 A7A6 FEA7"
	$"FFB3 FFB4 0DD0 9DE0 A0A0 C1C0 C171 A0E0"
	$"CC9D 9DFD B400 B3FA B401 3701 A0D9 FDA0"
	$"FCD9 23A0 D9A2 D9A2 E0A2 7365 65BD A0A2"
	$"7373 D9A0 BD9D B3AB 8888 8988 ABB1 9A85"
	$"B0B6 B0B0 B6B6 B7FE D302 C6CF C6FE CF36"
	$"D3CF D3C8 C8CA 8FC1 F5DF D8CB 9DAB 6D60"
	$"605E 5069 7F87 8891 5051 332B 2B44 3039"
	$"2501 0107 0D07 0701 0D07 0D0D 0701 0C01"
	$"0C0D 010D 010D 07FE 0D0D 010F 0C10 0D01"
	$"0129 0F01 290F 0C0F 390D 0129 0F01 1029"
	$"0129 1029 0F29 2912 2929 2729 2927 2927"
	$"2929 3951 7601 FC76 6CB3 D002 F49D BCB2"
	$"CABB 4B2A 2713 273A 1325 244D 4D44 388C"
	$"4242 76FE 4704 514B 6064 82FE 8A0E 695C"
	$"9B9B 8791 8182 645F 5F82 825F 81FD 8A07"
	$"5C8A 8A81 5C8A 8A6D FE91 FC6D FF81 FF82"
	$"0481 5F82 825F FE81 025F 8282 FD81 048A"
	$"7F7F 8787 0889 8889 6C6D 8A81 5F5F FD82"
	$"0D58 825F 8181 8A6D 7F6C 8888 9090 A6FE"
	$"AB04 A6AB A6A6 ABFE A711 B3B4 B4D0 9D9D"
	$"BDA0 71D8 71D8 D8A0 BDA2 9DD0 FBB4 FFBC"
	$"FDB4 012F FEA0 FFD9 09A0 D9A0 73A0 73D9"
	$"73D9 A0FE A216 7365 65A2 E0F4 C2D9 BDB2"
	$"A79B 5C5B 5361 627E 535B 8585 B6FC B702"
	$"D3C6 D3FD CF01 E1C9 FECF 38B7 D3C9 A840"
	$"4041 D86B 9DAC 885F 4545 5F8A 879B 9C5C"
	$"6447 3836 3844 2427 2901 010C 0D07 0D0D"
	$"0C07 0D01 0D01 070F 0101 0701 0D0D 0F0D"
	$"010C 010D FE01 090F 290F 010D 0101 0D29"
	$"2903 290F 2901 FE29 FF10 2E29 1010 1229"
	$"2910 2910 1212 293A 1029 1251 7630 1243"
	$"BBAB B3B4 F4F6 BDB2 B388 6036 5A3A 2727"
	$"2527 2713 2421 4D44 3843 FE42 078C 4242"
	$"4751 5160 82FD 690C 869B 9B88 876D 5F64"
	$"6482 8281 69F9 8A05 6D5C 6D7F 916D FE91"
	$"FF6D FF8A FE81 FD5F 0A82 5F5F 815F 8281"
	$"5F81 699C FE7F FF89 FE89 037F 8A81 81FD"
	$"82FE 5800 82FE 81FF 6D05 6C89 88A9 90A6"
	$"FEAB FDA6 01A7 A6FE A700 B3FE B4FF 9D0C"
	$"BDA0 71D8 D8F7 71A0 E0BD 9D9D B2FC B400"
	$"BCFC B401 36FF D900 73FD A0FF D91A A2E0"
	$"73BD E0D9 D9A2 A273 D9A2 E073 F4F4 BEB3"
	$"B15B 487D 5468 7D8E 6AFE 7D02 85B0 B7FE"
	$"D307 C8C6 C6B5 C6B5 B5D4 FECF 3BC6 CFB1"
	$"CFDB 9E19 1841 7365 B3A9 AA69 625C 5C89"
	$"9B8A 604B 4733 3336 2E25 3A29 0D0C 07FE"
	$"0D0C 0D07 0701 0D07 0D01 0D07 0D01 0C01"
	$"010C 010C 010F 0D01 01FE 0DFF 01FF 2904"
	$"0F29 290F 0D0F 2901 290F 0F10 1029 1010"
	$"2929 1010 293A FE29 1A10 2710 2727 4776"
	$"3A11 4391 B4BC BCB9 BEBE 9DB2 8850 3337"
	$"2713 2727 FE24 1225 2439 3930 442E 9638"
	$"3836 3833 4242 4751 6082 FD69 09AA 9BA9"
	$"B187 7F81 5F82 82FE 81FE 8A02 818A 6DFD"
	$"7FFF 6CFE 91FC 6D02 8183 81FD 5FFF 82FF"
	$"5FFE 81FF 6903 5C7F 7F87 FE89 03AD 8989"
	$"6DFE 81FF 8202 5882 58FE 8207 5F81 816D"
	$"916C 8888 FE90 FDAB 03A6 ABA6 A6FE A700"
	$"B3FE B406 D09D 65BD A0D8 71FE D806 A0BD"
	$"CC9D 9DB4 B2FC B400 BCFD B401 3AFF F60C"
	$"D935 3571 6B6B BDE0 D9E0 E0E3 A2FE 73FF"
	$"E0FE 6507 73E5 A786 5348 7D54 FE7D 4B61"
	$"7D6A 686A 8EB0 B7CF D4D4 CFCF C6C6 E1C6"
	$"C6B5 D4C9 CFCF C8CF B3D5 ECC0 D8A0 9D4E"
	$"AB88 9C69 6981 695C 5F50 5142 3338 4425"
	$"273A 100D 010D 070C 0D0C 0707 0D01 0C0F"
	$"070C 0D07 010D 0C0C 0D0F 0DFE 010E 0D01"
	$"010D 1001 0110 0D0F 0D10 0D29 2903 2910"
	$"2910 FE29 0210 3A29 FE10 2029 1029 123A"
	$"2729 1029 2776 5103 084D 58AD 92E6 E365"
	$"65B9 B3A6 8232 2113 243A 1313 FC27 0324"
	$"2524 30FE 4421 382E 3644 3638 8C42 514B"
	$"5062 6969 8686 879B B188 877F 8182 5F81"
	$"698A 8A6D 8A6D 6D7F FD91 09BB 6C6C 7F7F"
	$"6D91 6D91 8AFD 8101 5F82 FE5F 0C64 5F5F"
	$"8169 8A8A 7F6C 8989 8888 FF89 157F 5C8A"
	$"8181 5F82 8258 8258 8282 5F81 8A6D 7F89"
	$"8988 88FE 90FF AB03 A7AB A7AB FEA7 FEB3"
	$"FEB4 0B9D A2A0 7171 D8C1 C1A0 A0E3 9DFE"
	$"D7FC B400 BCFC B401 3909 F6E0 BDA0 A0D9"
	$"65A0 BDE0 FEA2 15E3 A273 6565 A2A2 7365"
	$"6B9D AC9C 6854 6854 687D 686A 68FD 6A0E"
	$"8E85 B6C6 CEB9 D6DB D4CA DED4 B5B5 C9FE"
	$"CF2F A7B4 8F9E D8F2 E39D BC92 887F 6962"
	$"6464 5050 5147 3333 4439 243A 1001 0107"
	$"0C0D 0C0C 070D 010D 070C 0107 0C07 0D01"
	$"070C FE01 0F07 0D01 0C01 0F0D 0D10 010D"
	$"1001 1001 10FE 2900 102B 010C 2901 0F29"
	$"0F3A 1010 2910 2910 2927 3A10 3A12 2912"
	$"4247 9708 3A60 88AC ACD0 BE65 9DB3 8858"
	$"4721 3A27 3A14 FD27 0214 2427 FE24 2525"
	$"4D25 304D 4D44 442E 2E44 4242 4747 5160"
	$"6469 8A86 AA87 B1B1 887F 5C8A 8A5C 6D8A"
	$"6D91 917F 7FFE 9101 BB6C FD7F 046D 9C6D"
	$"8A8A FE81 FF82 FC5F 0B82 8169 8A8A 7F6C"
	$"8989 8888 8901 8991 FE8A 0381 825F 5FFA"
	$"8209 818A 6D6C 8989 8888 9090 FEAB FFA7"
	$"00AB FEA7 14B3 A7B3 B3B4 B49D 9DBD A071"
	$"D871 41C1 D8BD CCD7 D0D0 FCB4 00BC FCB4"
	$"00D0 0137 00E0 FDBD 04E0 A2D9 BDE0 FDA2"
	$"11E0 BD65 9D65 E3E0 733F A769 6363 6855"
	$"635E 5EFE 68FF 6338 556A 8E85 B0B7 CAB9"
	$"CB8F 99B9 D6CA CAA7 C9B5 B5B3 D0D8 EFF7"
	$"D9BE 9D93 AC90 895C 6245 503B 5147 3336"
	$"2E30 2524 0329 290D 0D01 070C 070D 070D"
	$"07FE 0D1E 070D 010F 0D0C 0101 0D01 0F01"
	$"0F0C 1001 010D 0F0F 1001 2901 0129 290D"
	$"0110 3AFF 2904 1029 2910 10FD 2929 1027"
	$"3A29 1029 3A27 103A 9660 9709 FC76 A9B3"
	$"93BC D0BE D0B3 AD58 471B 2727 1413 2427"
	$"1324 2527 2724 1324 FE25 1421 3925 1E39"
	$"204D 3044 388C 4276 4247 4B60 5F81 8686"
	$"FE87 FF9B 0487 5C5C 8A6D FE91 057F 6C6C"
	$"8991 6CFD 7F05 6D8A 6D6D 8A8A FD81 FB5F"
	$"0582 818A 9C7F 89FC 8800 8914 7F8A 8A81"
	$"5F82 825F 5882 5882 5F82 5F81 818A 6D7F"
	$"89FE 88FF 90FE AB01 A7AB FEA7 01AC A7FE"
	$"B3FF B40E 9DCC BDA0 71D8 C041 F5A0 BDE0"
	$"BE9D D6FA B404 D6B4 D0B4 D001 3A01 D9BD"
	$"FD65 FFA2 FFA0 03A2 7365 D9FE E00A A28F"
	$"65DA D9AC 7F61 5455 68FE 5E60 635E 6363"
	$"5E63 6380 6A8E 8DB6 CFA8 9E34 6B6B 8FCC"
	$"D7D7 D6C7 99CB 9E75 7577 C1BE 93B4 B3A9"
	$"7F69 4550 3B51 3233 384D 4D25 3A3A 1001"
	$"0701 070C 0C01 070C 010D 0D07 0D0D 010C"
	$"0101 0D0D 0F01 0D01 0D0F 010F 0D10 0F10"
	$"0101 0D29 0F01 0D01 2929 0F10 10FF 2923"
	$"100F 3A29 0F29 1029 1229 0F10 273A 1229"
	$"2912 4D60 8C07 0B43 91A7 9FBC D0BC D0B4"
	$"AB82 332A FC27 0614 2713 2713 2725 FE24"
	$"0325 2424 39FE 24FF 3907 2521 3944 2D38"
	$"4242 FE47 034B 6469 5CFD 6906 AA87 8786"
	$"7F7F 91FE 6C0B 876C 6C89 BB6C 897F 9191"
	$"8A91 FD8A FE81 FE5F 0062 FE81 0A8A 916C"
	$"8989 88A9 A988 8989 197F 8A81 5F5F 8258"
	$"8264 8258 825F 5F82 8181 6D91 6C89 8988"
	$"AD90 90FE ABFB A7FE B3FE B40B 9DBD A0A0"
	$"D871 D8F5 71DF BDBD FE9D 0BD6 B4B4 D0B4"
	$"9DBC B4B4 D6D0 B401 3FFF DF00 C1FE 35FF"
	$"73FF 6501 BDE0 FEA2 5DBE A2DA 6565 E0D0"
	$"8861 7D7D 616A 635E 6363 5E5E 6357 4B57"
	$"6363 6A7E B0C8 D6D8 7541 F5C0 C0DF D871"
	$"D8C0 4040 6F41 77C1 A293 A7A9 9B69 5F50"
	$"3B47 3238 442E 9725 273A 2929 0601 0C07"
	$"0C0C 070D 0D0C 070C FE01 0D01 070C 0D01"
	$"010D 010D 0F01 0FFA 010B 290F 0D3A 0F01"
	$"290D 1029 290F 2A29 0F29 1029 1010 2929"
	$"3A29 2927 1029 1012 1027 7B60 7603 FD4D"
	$"58A7 BFBC BC9D E6B4 A76D 472A 3A25 1327"
	$"2425 FE27 2524 2727 1324 2713 2725 2425"
	$"2425 2413 3925 2530 202E 2E38 388C 4742"
	$"4757 5062 6962 6969 869A 86FE 8702 89AE"
	$"89FD 6C21 896C 917F 9191 8A91 8191 818A"
	$"818A 8181 5F82 5F5F 8181 8A91 9189 8988"
	$"A9A9 8888 897F FF8A 0881 825F 8282 585F"
	$"8282 FE5F FF81 098A 6D6D 6C87 89AD 88A9"
	$"90FD ABFE A7FF B311 ACB3 B3B4 B4D7 9DBD"
	$"A0D8 71D8 41F5 F5A0 BDBD FE9D 00D0 FEB4"
	$"049D B4D0 D0B4 FED0 0141 0CCC E3E0 A2C2"
	$"4CC1 7365 65BE E3DA FDA2 36DA A265 9DA6"
	$"8D7D 855B 8E6A 6A80 635E 805E 634B 634B"
	$"5763 5E7E B8B7 D4CC C0F9 F7F9 F9EF 751D"
	$"F9F9 7541 7171 C1C1 A2BC AB9B 8653 504B"
	$"4742 FE38 0D97 4D4D 3A29 2906 0D07 0D0C"
	$"070C 01FE 0700 01FE 0D1F 0C01 0F0D 0101"
	$"0D0D 010D 0D0F 0101 0D01 010F 0F0D 1001"
	$"010F 0129 1028 010F 2929 FF10 2629 100F"
	$"290F 293A 2910 2929 3A29 123A 2726 5176"
	$"4D0B 5A51 88D0 E4E6 BE95 D0AB 6D51 2A24"
	$"2713 2713 FE27 0224 2724 FE27 0613 2424"
	$"2725 2413 FE24 1325 2425 2425 254D 3020"
	$"3638 4276 4247 514B 5081 69FD 8605 9A9B"
	$"9B87 89BB FE6C 0389 6C7F 7FFD 6D05 818A"
	$"818A 8A6D FE81 FE82 0681 8A8A 917F 8988"
	$"FDA9 0388 897F 9102 9C81 5FFE 8213 645F"
	$"585F 825F 5F81 818A 6D8A 917F 6C89 8888"
	$"9090 FEAB 17A7 ACA7 A7AC A7AC B3B4 B4D0"
	$"D09D BDA0 71D8 C0D8 C1C1 A0BD CCFE 9DFE"
	$"B408 D0B4 9DD0 B4D0 D7D0 9D01 3915 90AD"
	$"90A7 B4D7 E0C1 73A2 E3E3 E473 7365 65A2"
	$"6565 A786 FD85 038E 858E 6AFD 68FF 63FF"
	$"5EFF 630E 808E 85B6 B1D6 D8F8 F9F9 EFEF"
	$"F90E F9FE 1A13 F9F5 F5BD 9392 9BAA 9A62"
	$"4B47 4242 4343 8C97 4D4D FE3A 2E01 0C0D"
	$"070D 0C07 0C0D 0D0C 0D0C 0701 0107 070D"
	$"010D 0D0C 0D0D 0101 0D0F 1001 0F0F 1001"
	$"0F01 0F29 1010 0F01 290F 2910 2229 0129"
	$"2910 290F 2912 1010 1210 2712 2927 2942"
	$"608C 0911 766C 92E6 E63F A2D0 B391 4736"
	$"FC27 0024 FE27 0214 2725 FD24 0213 2525"
	$"FC24 1C27 2424 1324 2425 2524 2130 2E36"
	$"3342 4247 514B 505F 8686 9A86 869A 9B9B"
	$"FE89 08AA BB6C 7F7F 6D5C 6D6D FE8A 0181"
	$"8AFE 8101 5F81 FE82 0681 8A6D 7F87 88A9"
	$"FE90 04A9 8889 BB8A FF81 FE82 FA5F 0E82"
	$"5F81 8A6D 6D7F 916C 8989 ADA9 9090 FEAB"
	$"FFA7 04AC B3AC B3B3 FEB4 18D0 CCBD A071"
	$"D8D8 F5F5 71A0 BDCC 9DD7 D6B4 D0B4 B49D"
	$"D0B4 9DD0 FE9D 0132 2262 6A53 5386 9B92"
	$"D065 D9E0 BEBE 3F35 3565 65A0 B487 8585"
	$"B0B0 B88D 8D85 858E 7D7D 6868 FC6A 2E8E"
	$"7E8D B0B7 C9DF F8F8 1D75 EFF9 F91A 771A"
	$"77C1 E0D0 BCA7 A988 9B86 5047 4276 4242"
	$"4338 3897 253A 0D01 0C07 070D 010C FE0D"
	$"1407 0D01 0D0D 010D 0F01 0D10 0101 FE0D"
	$"0F0C 0F01 FE10 FD01 0C10 0110 290D 2901"
	$"0F0F 1001 2910 FE10 0429 0F10 2910 FE29"
	$"1712 293A 2729 2944 6043 0A0B 386D A7E6"
	$"02BE 659D A691 7639 13FA 27FE 24FF 271C"
	$"2527 2413 3927 2424 2724 2724 2413 2439"
	$"2425 2224 2425 2130 2E38 3842 42FE 5102"
	$"605F 5CFC 86FF 9B06 A988 8889 BB91 6DFC"
	$"8AFD 8104 5F81 8182 82FD 810D 8A7F 8988"
	$"8890 A6AB 9088 89AE 918A 0081 FA82 0058"
	$"FD5F FF81 008A FE6D FF7F FF89 2CAD 8890"
	$"90AB AB92 A7AC A7B3 ACAC B3BC B4D0 9D9D"
	$"E0A0 A0D8 D8C0 C1C1 BDCC CC9D D79D D0B4"
	$"D0D0 B49D D79D D0D0 BEBE 0137 0056 FD5D"
	$"0668 69A9 B4E0 D9A2 FE65 FFA2 1665 A888"
	$"6185 85B6 B09A 8DB8 B08D 8D85 8E8E 858D"
	$"8DB8 B0B8 FDB0 4CB7 CFE5 F80E 0E41 C0C0"
	$"75C0 71D9 E0D0 9FA7 A6A9 A9B1 887F 6042"
	$"4747 7642 4338 9739 3A29 0107 0D0C 070C"
	$"0D07 0701 0D01 0D0D 0701 0C0D 0C0D 010D"
	$"010D 0F29 0D01 010F 0710 100D 0101 0F0F"
	$"2901 0F0F FA29 FF29 0210 290F FE29 0012"
	$"FE29 1412 1010 2724 5143 080B 2558 A7B4"
	$"E4DA E09D A69C 425A FD27 0113 27FE 130C"
	$"2713 1314 1324 2724 2527 2424 25FC 2400"
	$"25FD 2422 2524 2125 304D 2044 3636 3342"
	$"4751 514B 6082 6969 5C86 AAAA 9BA9 B1AD"
	$"BB91 916D 8A81 8AFD 8102 5F81 5FFE 8211"
	$"5F81 815C 7F6C 8988 90A6 90A6 A9AD AE91"
	$"8A81 FE82 0458 8258 8258 FD82 FE81 FF8A"
	$"FF7F 0391 6C6C 89FE AD00 90FE AB05 92A7"
	$"ACAC B39F FEB4 05D0 9DBE BDD9 D8FD 7112"
	$"D9E0 CCBE 9D9D D7D7 D09D 9DD7 9DD0 D0BE"
	$"9DBE BE01 33FF 6318 5649 6354 7D8D ABBC"
	$"BD65 659D 9DA2 D9A2 B386 7D85 B0B6 B79A"
	$"9AFE B004 9A8D 858D B0FC B613 B7B6 B7B6"
	$"B7CF D7F9 0E1A 41C0 6F41 C1E0 D0BC B3A7"
	$"FCA6 0187 81FE 5111 4776 4243 384D 3A10"
	$"010D 0C07 0D0D 0707 0D0C FE0D FF01 030C"
	$"0D01 0DFE 011B 0D0C 0D0C 0110 0101 0F0D"
	$"010F 0D29 0D29 0110 290F 1001 0F0D 2910"
	$"0F29 FD10 0529 1029 0F12 27FD 2927 2729"
	$"4243 030B FC76 89B3 93DA DABE C987 513A"
	$"0F27 2527 2427 2524 2724 2724 2724 2727"
	$"2424 2724 2524 FE25 0113 25FB 240D 1525"
	$"2524 2421 3930 302E 3833 7647 FE51 0160"
	$"50FD 69FF AA07 B1A9 A988 896D 8A8A FA81"
	$"FF5F FF82 125F 8169 8A7F 6C89 ADA9 90AB"
	$"AB90 88AE 918A 8181 FD82 0658 8264 5858"
	$"825F FD81 1F8A 6D7F 917F 7FBB 8989 ADAD"
	$"D190 ABAB A7A7 ACAC B3BC B3B4 D0D0 BECC"
	$"BDA0 A0C1 D8FE D9FF BD03 BEE3 9DD7 FE9D"
	$"00D7 FC9D FFBE 00A2 0136 0160 5EFE 5716"
	$"6354 7D8D A9B4 6565 A2BE 9DD9 93A9 7E8E"
	$"85B0 B7D3 B79A 9AFC B6FD B7FB D3FF B70C"
	$"C8BC 751A 77F3 A0BD CC9D BCAC A7FD A604"
	$"B19B 875C 58FD 5107 7642 4397 3910 FE07"
	$"FE0C 0907 0D0C 070C 0707 010C 0CFD 0D1F"
	$"0F0C 010D 0D01 010C 0F0C 010D 0F01 2910"
	$"3A01 1001 103A 0F0F 2910 2929 0F10 3A29"
	$"2010 3A29 1029 290F 273A 1029 103A 2712"
	$"4D38 3A08 088C 91AB 9D70 DAD0 A79B 604D"
	$"0F13 FC27 0F13 2724 2527 2413 2424 2527"
	$"2414 2427 25FB 2402 2524 25FE 2422 2521"
	$"2421 3921 2125 202D 2E43 4247 5151 4751"
	$"5045 6269 9C9C AA88 A690 A988 7F6D 8181"
	$"5FFE 8100 82FD 5FFF 81FF 8A0E 7F89 88A9"
	$"9090 ABA9 A9AE 918A 8182 82FF 5F2C 6482"
	$"5882 5882 825F 5F81 818A 818A 6D7F 7F91"
	$"7F6C 8989 ADAD 90D1 6E92 AB92 ACB3 9FB3"
	$"BCBC B49D 9DBE BDD9 7171 A0FE D904 A0BD"
	$"BDBE CCFE 9DFF CCFF BE05 9DBE CCBE A2A2"
	$"013B FE4B 1846 5749 6868 7D8D B1D0 DAA2"
	$"A265 65AC 9C8E 8E8D B6B7 C8D3 C8B1 FEB7"
	$"02C8 B7C8 FDD3 00E1 FEC6 FFD3 3AC8 CFD0"
	$"9EC0 DFE0 E3BC B4B3 A7A7 C9AB ABA6 A987"
	$"5C69 6260 5160 5151 7642 4D27 290C 010C"
	$"070C 070D 0D0C 0D0D 070C 0D0D 0601 0C07"
	$"0C07 0F0F 0D01 0D0D FD01 0F29 0D01 0F29"
	$"0D01 2910 100F 2929 0F29 10FE 2901 0F29"
	$"0012 FC29 FF10 1C27 1227 2927 103A 437C"
	$"080B 4474 C9BC E4BE E492 AA50 360C 2729"
	$"2727 1326 FD27 FF13 1024 2527 2414 2425"
	$"2413 2424 2524 2425 2423 FE24 FE25 FF22"
	$"FF24 0A21 2421 2139 301E 2E36 4342 FD51"
	$"074B 5062 8A8A 9C87 88FE A6FF 8802 7F8A"
	$"81FC 8209 5F62 6281 8A8A 7F89 88A9 FE90"
	$"08A9 ADAD AE91 8181 5F5F 0262 5F64 FE82"
	$"035F 825F 5FFD 81FF 8AFF 6DFF 7F0B 916C"
	$"AE89 ADAD A190 90AB 9292 FEAC 1D9F B4BC"
	$"BCD0 9DBD 65A0 D971 C1D9 A0D9 A0A0 BDBD"
	$"CCBE CCBE CC65 CCBE A2CC A2FE BE01 341B"
	$"634B 5757 4B4B 495E 6A8E 9AA7 E4C2 95BD"
	$"B9A6 8D8E 85B0 B6C8 C8C9 C6C6 FEC8 03D3"
	$"CFCF D3F9 CF16 C8A6 ACD7 9ED8 E0D0 BCB3"
	$"A7A7 ABAC A7A7 A6B1 879C 6969 5FFE 60FF"
	$"5117 4297 4D29 0107 0701 0707 0D0D 0C01"
	$"070C 0F0D 0701 010C 010C FB01 1A0D 010F"
	$"0D01 010D 0129 0D0D 2910 0F01 0110 0D29"
	$"0F0F 293A 2929 0F29 2429 100F 2912 2927"
	$"1010 2710 1229 2743 3807 0B01 5188 B2BE"
	$"DAE6 ACA9 5838 013A 1314 2627 2713 FE27"
	$"0713 247B 1327 2524 13FC 241E 1324 2423"
	$"2524 1324 2524 2521 2424 2524 2525 2025"
	$"2521 3930 2020 3836 4242 47FE 510E 6050"
	$"6986 879A 8788 ABA7 AB90 896D 81FE 82FF"
	$"5FFD 8110 91BB 8988 A990 D1A9 ADAD AE91"
	$"8181 825F 8204 5F64 8282 58FD 5FFD 810F"
	$"6D81 8A8A 9191 6C7F 89AE 89AD 8888 9090"
	$"FEAB 0F92 ACAC 9F9F BC93 D0BE BEE0 A0A0"
	$"D9A0 C1FD D907 E0BD A2BD A2BD BEA2 FBBE"
	$"01E4 BF01 3B1C 5E57 5157 5760 4B5E 487D"
	$"859B B4A2 A265 B4B1 8D85 B0B0 B6B7 CFD4"
	$"CAB5 B5FE CF07 B5C6 D4CF CFD4 CFD4 FDCF"
	$"21B3 B4BD BDE0 9DB4 ACA7 ABA6 A7AB ABA9"
	$"9B87 5C69 8181 644B 5860 5176 4339 100D"
	$"070D 07FE 0C0D 070C 0707 0C0C 070F 0C0C"
	$"0701 010F FD0D 1201 0C0F 010C 010F 0D01"
	$"0F0F 0D29 0F01 290F 0F01 FE0F 0610 0110"
	$"0F29 0F29 030F 2929 3AFD 292B 2712 2929"
	$"3A43 8C5A 0B0C 8C6D CA9D A2E3 BCAB 5843"
	$"1212 1412 2727 1427 2513 1314 2427 1324"
	$"2427 2424 2724 1424 FE25 FF24 1114 2525"
	$"2424 2125 2121 2421 2421 2124 2221 25FE"
	$"210B 201E 2D38 3876 4247 5151 4B50 FD69"
	$"1D87 8890 A792 90AD 9181 8258 8262 8181"
	$"8A91 6C89 A9A9 90AB D1A9 ADAE 9191 81FD"
	$"8207 8258 8258 5F82 825F FC81 2C8A 8191"
	$"8A6D 917F 916C 6C89 89AD 88A9 9090 AB92"
	$"AB92 ACAC 9FBC BCD0 9DBE E0A0 A0D9 C1C1"
	$"71D9 A0D9 A0A2 BDA2 BEA2 FABE 0293 BFBF"
	$"0139 235E 5751 574B 635E 5E68 7D85 9AA6"
	$"D773 A0B3 9A9A 8DB6 B6B7 C8CF DECE DBCA"
	$"A7C9 D4CA CEB5 C9FD D4FF B549 C9CA D6CC"
	$"BDCC 9DB4 B3B3 ABAB A6A6 A9B1 875C 5C86"
	$"6969 6264 5160 5151 4397 1001 010C 070D"
	$"0D0C 0701 0D07 0C0C 010D 0D0C 0D0D 0C07"
	$"010F 0F01 010C 0F06 0C10 0C10 0129 0110"
	$"0F29 0101 0F01 FB29 050F 2910 1029 2920"
	$"2910 103A 2910 2929 1229 2927 2EEB 06FD"
	$"0B38 58D1 BC93 A29D A78A 42FC 3A24 2724"
	$"25FC 27FF 24FF 27FF 240E 1324 2413 2524"
	$"2425 2424 2525 2439 24FE 2141 1321 1325"
	$"2425 2221 2521 2124 2521 2425 3930 302D"
	$"3838 3676 4247 5151 5E64 6281 9C9B 9B88"
	$"A9A7 ABA9 6C8A 8258 8281 818A 7F87 A990"
	$"90AB 90A9 AD89 916D 8A81 5F82 8258 FF58"
	$"0064 FE82 FF5F FC81 056D 9181 6D8A 6DFE"
	$"9107 8987 89AD AD90 A990 FEAB FF92 0BAC"
	$"9F9F BC93 D0BE A2D9 A0C1 71FC D904 A2E0"
	$"A2BE E3FC BEFF 93FE BF00 7201 3613 5E57"
	$"5151 5763 6063 615B 8585 B7B3 73A0 B39A"
	$"8D9A FEB7 0BCF CDCD C9A7 ACAC DBD6 C7B2"
	$"B2FE CAFF D4FF CA2A B2B9 A8A8 9D9D B4B4"
	$"B3A7 C9A6 A69B 875C 865C 8669 695F 5F50"
	$"6060 5143 2E3A 010C 070C 0C0D 070C 0707"
	$"0C01 07FD 0D1F 010D 100D 0C01 0D01 0C0D"
	$"010D 1001 0110 0101 0D01 0128 0D29 0F01"
	$"2910 0F0F 100F FC29 FF10 FE29 1A12 1029"
	$"2710 3A3A 274D 9703 080B 2759 A9AC BFE4"
	$"BEA7 7F47 7812 2713 FD27 2713 2723 2713"
	$"2713 2725 2427 2427 2427 2424 1324 2413"
	$"2513 2425 2425 2524 2425 2121 2521 2421"
	$"2521 25FD 2122 3025 2430 1E30 2E36 4342"
	$"4247 5151 6064 8186 9B87 88A9 90AB ABA9"
	$"AE8A 8181 699C 8788 88FD 900A AD89 7F8A"
	$"8A81 5F5F 6464 8203 8258 8258 FC5F FB81"
	$"FD8A 0D6D 9191 6CAE 89AD 88A9 A990 90AB"
	$"ABFE 9207 AC9F BCBC 93D0 BEE0 FED9 08A0"
	$"D9A0 A2A2 E0A2 BEA2 FEBE FE93 05D0 93BC"
	$"BC9F 9201 395A 5E57 4751 4B63 635E 685B"
	$"8585 9AA6 9D73 A7B0 85B0 B7D3 C6CF C6A6"
	$"B19B A9AB B4A8 8F8F 65A8 B9D6 D6B4 D6D7"
	$"CCBD A89D D0D0 BCAC B3A7 A6B1 9BAA 9C5C"
	$"5C5B 6969 625F 6250 6060 422E 2710 070D"
	$"0C0D 070D 0D0C 0D0C 070C 010D 070D 010C"
	$"0DFE 010B 0D0C 010F 0D0D 010F 010F 0F01"
	$"FE0F FF01 FD10 0C29 0F29 293A 2929 0F29"
	$"1010 2910 3329 1029 2927 1012 2712 294D"
	$"973A 08FD 0876 AEAC B4BE BFB3 AE76 7829"
	$"1327 3A25 1427 1324 2727 1325 2725 2427"
	$"2427 2424 1324 1324 25FD 24FF 2504 2425"
	$"2421 24FE 2102 2421 24FD 2117 2521 2130"
	$"2225 2121 3021 3030 4438 388C 4242 5151"
	$"6064 8AAA FE87 0B88 A9AB AB90 8889 6C7F"
	$"AA9B A9FD 9004 8889 876D 81FE 5F03 6458"
	$"8282 0058 FE82 045F 815F 815F F981 FF8A"
	$"096D 7F91 BBAE 8989 ADAD 88FC 90FE 920F"
	$"AC9F BCD0 93BE 65A2 A073 D9A2 A2BD A2A2"
	$"FDBE 0093 FED0 01BF BCFE 9F01 9294 0138"
	$"2C80 5747 5157 6360 6080 7E5B 8D8D C8BC"
	$"BEAB B0B8 B0B7 C6C6 B19B 9A86 879B A9AC"
	$"9D6B 9ED8 71A0 6B8F 8FE2 BDA0 BDBE FDBC"
	$"06B3 A7A6 B187 869C FD69 3D81 6282 6464"
	$"604B 4243 2529 0C07 0D0C 070D 0C07 070D"
	$"010D 0F07 0D0F 0C01 0D01 0D0D 0F01 0D0F"
	$"010F 0101 0D0D 0F01 290D 2929 010F 013A"
	$"2901 0C10 2910 2929 10FE 2902 0F28 2919"
	$"1229 1229 123A 2710 2725 977C 090B 0B4D"
	$"83AB 9F93 D0AC 8959 5A01 FE27 0224 3A25"
	$"FD27 0424 2727 2427 FD24 0D27 2427 2425"
	$"2424 1325 2424 2125 23FD 2500 24FD 2518"
	$"2125 2121 2421 2125 2125 3021 2130 2120"
	$"1E30 2D2D 3638 4247 51FE 601F 8A5C 9A87"
	$"8789 88A9 ABA6 AB90 8889 88A9 ABAB D1A9"
	$"8987 5C8A 5F82 8264 5882 5882 FE82 055F"
	$"815F 815F 5FF8 8105 8A6D 7F91 91AE FE89"
	$"0288 ADA9 FD90 04D1 AB92 ACAC FEBC 0893"
	$"BEA2 A265 A2E0 A2A2 FDBE 05D0 93D0 93BF"
	$"BCFE 9F03 9294 94A1 013C 1655 5747 4757"
	$"635E 6380 6A8D 8DB0 B7AB BCA7 B0B8 B89A"
	$"9A86 FE69 2286 9BB1 A6AB ACE3 D9C0 7575"
	$"6F9E 4F65 A2BE CCE3 BED0 B4B3 ABA6 A6A9"
	$"8786 9C69 8181 8262 FE64 FF60 0C42 4325"
	$"290D 070C 0C0D 070C 070C FE0D 2107 0C07"
	$"0C01 0D0D 0C01 010D 070C 0101 0D0D 0F0D"
	$"1001 0F01 0F01 010D 0F0F 100F 0D0F 3AFE"
	$"2901 3A0F FE29 0012 FE29 0010 FE29 1612"
	$"293A 1025 2E4D 0709 0B0D 76AE B39F BEB4"
	$"A974 78FE 1313 FE27 0E24 2727 2413 2713"
	$"2525 1324 1325 2427 FE24 0013 FE24 0D25"
	$"2413 2439 2525 2424 2524 2125 30FD 2100"
	$"25FE 2106 251E 2120 1521 20FE 2110 3021"
	$"212D 2D2E 3842 5159 6058 6062 5C87 87FE"
	$"8805 A9AB A7A7 ABAB FE90 08A9 8889 877F"
	$"8A81 5F82 FC58 0064 0058 FE82 025F 815F"
	$"FB81 0082 FE81 FE8A 1C6D 9191 6C89 AE89"
	$"89AD 88A9 A990 906E AB92 92AC AC9F BC93"
	$"93BE BEA2 BEA2 FDBE FF93 FEBF FFBC FE9F"
	$"FF92 02D1 A1AD 0138 396A 5747 5157 495E"
	$"5E80 7D85 B08D B0B1 B3A6 B07E 8E62 6280"
	$"5E62 699B B1A6 ABA6 ABAC BCA2 71D8 71C1"
	$"D9D9 A2CC D7D0 BCBC B3AB A6A9 A6A9 877F"
	$"6981 62FD 641E 5060 5147 4330 2901 0D0D"
	$"0C0D 070C 070D 0707 010C 010C 0101 0F01"
	$"010D 0D01 0CFC 011D 290D 010D 0D0F 0101"
	$"1001 290F 0129 3A29 0F0F 290D 100F 290F"
	$"2929 1010 2910 1712 2912 293A 1227 0317"
	$"1701 0809 0B8C 83D1 B4E6 D6AB 7496 FEFB"
	$"2706 1323 1327 2527 25FE 2701 2427 FE24"
	$"0714 1339 2424 2524 25FE 2408 2524 2521"
	$"2525 3025 21FD 25FE 2100 25FD 2100 25FE"
	$"210D 3021 3021 3020 301E 2E36 4342 4751"
	$"FE60 1D64 69AA 9BA9 8888 A990 A7B3 B4AC"
	$"AC90 A988 879C 8A81 8182 8258 6058 5882"
	$"58FE 820B 5F82 5F82 5F5F 8281 8282 8182"
	$"FE81 058A 6D8A 9191 7FFC 89FF AD02 A990"
	$"90FE ABFF 92FF AC03 9FBC BC93 FBBE 0670"
	$"BF70 BF93 BFBC FE9F FF92 0494 D1A1 AD8B"
	$"0133 2455 5747 4757 4963 686A 7D85 8DB0"
	$"B0C8 C9A6 7E53 5E5E 4B5E 4562 5C9B A6AB"
	$"D1A9 9B88 88A6 B4D0 FEE4 07E0 E2D7 D6AC"
	$"ACAB ABFD A62A 8887 7F69 6262 6450 5060"
	$"4B51 4238 4D3A 2907 0107 0C0D 0C07 0D0C"
	$"0C0D 070D 0107 010D 070F 0D0D 0101 100D"
	$"0FFE 0D0B 0129 0129 0D10 0F29 0110 1029"
	$"FE10 000F FE29 033A 290F 10FA 2937 1029"
	$"2912 273A 2917 1701 0909 084D 59A9 9FE4"
	$"D0A7 822E 0829 1327 2713 2727 2524 2714"
	$"2724 2727 2425 2724 1324 1325 2524 2425"
	$"2514 2439 2421 FD24 0521 2421 2124 24FE"
	$"2100 24FD 2103 3025 2030 FE21 0025 FD21"
	$"151E 2121 202E 3643 4276 7659 5160 6469"
	$"9BB1 A9A9 9090 6EFE B405 B3A7 9088 878A"
	$"FD82 0658 8258 5882 5882 FD82 0581 5F81"
	$"8282 81FC 82FE 8106 8A91 916D 9191 6CFC"
	$"8903 88AD A990 FDAB FF92 FFAC FF9F FFBC"
	$"FE93 0170 BFFE 9301 BCBF FD9F 0792 94D1"
	$"90A1 ADAE AE01 3311 6857 5146 5763 5E6A"
	$"617D 8585 8D9A B7B1 5C45 FA50 2081 87A9"
	$"A988 B19B 8686 5C88 A7B4 E3E3 E2CC B4AC"
	$"ABB1 B1A6 A6A9 8888 9B9B 8669 6245 FE50"
	$"1B51 4742 8C30 2701 010C 0C0D FE0D 0C0D"
	$"0701 010D 0C01 070F 0C07 0101 0DFE 0103"
	$"0C07 100D FE01 FF0D 0110 29FE 01FF 0F13"
	$"010D 2901 2910 100F 290F 2912 2929 1029"
	$"103A 3A10 1929 273A 2929 2725 2503 0509"
	$"0B08 768A A772 E3B4 8776 0C0F 2725 13FE"
	$"2702 1327 13FE 2405 1314 2523 2425 FE24"
	$"1C25 2424 2524 1321 2425 2114 2524 2421"
	$"2125 2425 2125 3025 2125 2124 2125 F821"
	$"251E 3021 2021 3120 2120 2D36 8C43 4247"
	$"5951 6064 5C88 90AB AC9F AC92 ACAC B4B4"
	$"ACD1 AE8A 6482 82FD 5803 6458 8258 FE82"
	$"0581 5F5F 825F 5FFC 82FE 81FF 8A01 916D"
	$"FE91 FF6C FD89 03AD 88AD A9FE 90FF AB00"
	$"92FE ACFE 9FFF BC04 93BC BFBC BFFC 9FFF"
	$"9207 D16E A1A1 ADAD AE8B 0134 0F54 5747"
	$"4657 4B55 686A 7D85 7E8D 8D69 5FFE 5008"
	$"5E50 6450 6060 585C 87FE 86FF 9AFF 8608"
	$"B1A7 B4BC B4B3 A7A6 A9FE B102 9B88 88FE"
	$"9BFF 860E 6962 4550 5147 4242 3630 7B01"
	$"070D 0DFE 07FE 0D25 0107 0C0C 0D0C 010D"
	$"0F10 0F0D 070F 0C01 0C0F 0C10 0F01 0D29"
	$"0F01 0C10 0129 0F29 0F0F 0129 0F01 FD29"
	$"013A 12FE 2904 1012 2910 261E 2810 2927"
	$"2925 2E7C 0605 0908 4D58 909F D7BC AD51"
	$"5A0C 2724 273A 2427 2427 25FC 270D 2427"
	$"2413 2713 1324 2524 1413 2425 FB24 0025"
	$"FE24 0921 2521 2124 2124 2121 25FD 210C"
	$"3025 2130 2121 2020 2520 2130 30FE 2121"
	$"201E 442E 3638 4347 7651 5158 6DA9 ACBC"
	$"D0BC 9F92 AC9F D0D0 BC92 886D 5F50 6060"
	$"5864 FE58 0082 FC82 0181 5FFE 8204 5882"
	$"5882 82FE 8107 916D 9191 6D91 7F7F FE6C"
	$"0489 ADAD 88AD FE90 03AB 9292 ABFE 9200"
	$"ACF7 9FFE 9205 946E A1A1 ADAD FEAE 008B"
	$"0130 0F63 5751 464B 6363 5555 6A61 7E53"
	$"6280 4BFC 60FF 58FF 6011 505F 5353 5B86"
	$"869B B1B1 A7B3 AC90 8887 9A9B FEB1 0488"
	$"9B9B 879B FE86 FF69 3462 5046 4233 4236"
	$"4D25 2907 0F07 070D 0D0C 010D 070C 0C01"
	$"070D 0D0C 010D 010D 0101 0C01 0D01 010C"
	$"0D01 1001 0F10 0129 010F 280F 0F01 FE0F"
	$"0F10 2910 100F 2910 2910 1212 2912 2910"
	$"2914 1027 1229 293A 1797 EB06 0703 76AD"
	$"B4B4 99A9 5978 FEFB 2716 2425 1427 2413"
	$"2724 2425 2325 1325 2424 1313 2525 2425"
	$"13FD 240B 2524 2125 2124 2124 2521 2124"
	$"FE21 0430 2521 2024 FE21 081E 3025 2130"
	$"2120 2120 FE21 1330 1E1E 302D 2E2E 3838"
	$"4242 7647 5174 ADAC 9393 BCFE 9F09 BFBE"
	$"CC9D B490 6C81 6464 FD58 FF82 FE82 FF5F"
	$"FF82 005F FB82 FC81 088A 916D 917F 6D6D"
	$"9191 FD89 FEAD FF90 FEAB FE92 03AC 9292"
	$"ACFC 9FFD 9203 94D1 90A1 FEAD 04AE ADAE"
	$"AD8B 0135 FE57 044B 5763 6868 FE6A FF62"
	$"0050 FD60 0059 FD60 0251 4B60 FE62 1253"
	$"869B A6A7 A7A9 8887 9C81 8A86 8787 9B9B"
	$"87AA FC86 058A 6962 6051 42FE 8C03 443A"
	$"0101 FE0D FF0C 0B07 0C07 0C01 0C01 0D01"
	$"0C0D 01FE 0D09 010D 0D01 0C01 0F0D 0129"
	$"FE01 0C0F 010F 1010 290F 2910 2910 2901"
	$"FE29 0410 2929 0F10 FE29 040F 293A 3A29"
	$"1327 100D 100A 0A3A 9743 977C 4374 D1D7"
	$"D0AB 7478 01FE 2707 1427 1327 2413 2714"
	$"FD27 0313 2425 27FE 2402 2524 25FE 240C"
	$"3925 2524 2524 2125 2125 2125 25FE 2130"
	$"2515 2121 2421 3021 2530 2121 2530 211E"
	$"211E 3021 1E21 2021 201E 301E 3020 302D"
	$"2E38 3843 4243 7642 7683 ABB4 BCBC BFBF"
	$"93FC 9D09 9F90 9182 6060 645F 625F FE58"
	$"0582 5F5F 8282 58FC 82FF 8101 8A81 FD8A"
	$"FF6D FE91 0A6C 8989 AD89 8888 A9A9 9090"
	$"FEAB FA92 0F6E 9492 946E 6E94 94A1 A1AD"
	$"AD89 AEAE 6CFE AD00 A101 3617 574B 574B"
	$"5763 5555 6A80 6262 8258 5874 6074 6059"
	$"6060 5050 FD60 0E64 86AA B1AB 9088 9C62"
	$"6280 6462 8181 FD69 FF9C 2569 5C69 6962"
	$"4560 5176 4242 3644 2501 0F07 070D 0C01"
	$"0CFE 070D 0107 0C0D 0107 0101 0D0C 0107"
	$"0FFA 0121 0F0D 100F 0101 0D10 0129 0F29"
	$"0129 1029 2910 2929 3A0F 2929 1029 1012"
	$"1027 1229 1027 1329 0710 1009 0908 034D"
	$"4376 59AE BCDC AC83 3698 3AFB 2707 1324"
	$"2725 2713 2725 FC24 0113 24FD 2500 13FD"
	$"2400 21FC 240B 2521 2124 3025 2125 2125"
	$"3920 FE21 0025 FE21 0530 2120 2121 30FE"
	$"2101 1E20 FE21 FF30 0920 301E 302F 1E2E"
	$"3836 36FD 3816 7674 ADAC ACBC D0CC BEA2"
	$"65A0 D96B 9D9F AD8A 8264 645F 580A 8258"
	$"8258 5F82 5858 825F 5FFE 8202 816D 81FD"
	$"8A02 6D91 6DFE 9108 AEBB 8989 8789 8888"
	$"A9FE 900C 6EAB 92AB AB6E AB6E D1A1 6ED1"
	$"90FE A1FF AD00 89FE AEFF 6C04 AEAD ADA1"
	$"9401 3C01 4B49 FE57 0880 6464 8050 6482"
	$"8258 FE60 07E7 6050 4B50 5064 60FE 510A"
	$"82AA 9BB1 868A 6445 5E5E 60FC 64FF 62FF"
	$"82FF 6237 6962 6460 4B51 4747 428C 4425"
	$"2906 0D0C 0D0D 070C 0D07 0D0D 070D 0701"
	$"0D10 070F FE0D 0C0F 0701 0C10 010D 0F01"
	$"0D01 100D 290D 0F01 0F3A 0F01 FD10 0B29"
	$"0F29 1010 0F29 2912 0F3A 10FD 2901 2729"
	$"0308 2929 FEFE 0820 0B07 4476 82D1 BCB4"
	$"6C43 2629 1427 2713 2427 2725 2727 2413"
	$"2724 2414 2427 2427 25FE 2411 2514 2424"
	$"2524 2421 2521 2125 2121 2425 2425 FE21"
	$"0325 2130 25FD 2107 3020 2121 1E21 2130"
	$"FE21 0330 1E30 21FC 1E23 201E 211E 1E30"
	$"2D2D 2E2D 2D2E 2E38 4359 8390 ACBC BED9"
	$"C1C1 4CC2 71D8 71BE D1BB 8182 5882 FF82"
	$"0158 82FE 58FF 82FF 5FFF 82FD 8104 6D8A"
	$"6D6D 7FFE 6DFE 9100 6CFD 8915 AD88 9090"
	$"D190 AB90 90AB 6ED1 6EA1 90A1 ADA1 ADA1"
	$"ADAD FEAE 006C FE91 05AE 89AD AB92 9F01"
	$"30FE 4BFF 5712 808A 8A5F 5050 6458 6060"
	$"5860 4B3B 3D5F 6258 51FE 4210 4750 9C9C"
	$"6964 5E5E 605E 605E 5050 6060 80FE 5005"
	$"6064 5058 6060 FE51 FF47 4536 4D27 2901"
	$"0D0D 070D 0C01 0C07 0D07 0D01 0710 0C07"
	$"0D01 0C01 010F 0D10 0DFE 0C0C 0F0D 0F01"
	$"0F01 290C 100F 1001 1029 0101 2901 290F"
	$"290F 1029 2912 3A29 1029 2912 1012 3A29"
	$"0A02 1427 FCFC 0826 0B05 5A59 ACC7 9059"
	$"3728 2727 1327 2427 2725 2727 2513 2525"
	$"2727 1327 1324 2413 2413 2424 3913 25FA"
	$"2402 2124 25FD 2102 2425 25FE 2108 2025"
	$"2221 2125 2130 20FE 2130 1E30 1E1E 2120"
	$"3020 2121 2021 1E21 1E30 1E30 201E 202D"
	$"202D 2E1E 2D38 4359 7466 D1AC BE71 C077"
	$"FBD9 C1F5 F5D9 936E 6D5F 5800 58FB 8207"
	$"5882 5F82 825F 815F FE81 FE8A FE6D FD91"
	$"006C FC89 FFAD 0BA9 90D1 90D1 6E90 6E90"
	$"90A1 A1FE ADFC AEFC 9106 BB89 AD90 D1BC"
	$"E601 3401 4B57 FE60 1A64 818A 6250 6060"
	$"5860 5146 4B3D 3D5E 5060 7638 3616 3636"
	$"7660 5850 FD4B FF60 0150 4BFC 6000 50FE"
	$"6400 50FE 6009 4B51 4742 4439 2529 060C"
	$"FC07 0E0D 0C0D 010D 0D01 0D0C 0D0F 010C"
	$"0C0D FE01 060D 0110 100D 290D FE01 0D0D"
	$"0F01 0F29 1001 010F 0F10 2929 10FE 290E"
	$"0F29 0F29 1029 2927 1029 1229 290C 0D23"
	$"203A 0508 0809 0B08 0BFD 5A83 D090 5923"
	$"FE29 1314 2713 2713 2727 1313 2427 2527"
	$"2424 2725 FD24 FF25 0024 FE25 0124 25FC"
	$"2413 2125 2125 2424 2124 2121 2025 2124"
	$"3021 3020 2130 FE21 3330 2030 2121 3021"
	$"201E 3020 2021 301E 211E 2020 1E20 2031"
	$"1E1E 3020 1E20 3020 302E 7659 83AD ABB4"
	$"A2C1 7777 C1F5 D8C0 7165 9F88 6D01 8258"
	$"FD82 0358 8258 82FE 5FFE 81F9 8A09 6D91"
	$"7F91 7F6C 6C89 8988 FDAD 0790 A190 90A1"
	$"90A1 A1FD ADFE AEFF 910C 6D91 916D 9191"
	$"89AD D1D1 9FBC E601 3321 6360 6064 6250"
	$"505E 504B 514B 5947 4232 464B 3D51 434D"
	$"311E 2017 277A 1F38 514B 514B FE51 0160"
	$"4BFE 51FF 4B19 5E45 6264 6050 6051 5147"
	$"4238 444D 3A3A 0F07 0C07 0D07 0D0D 010C"
	$"FE0D 0807 0D0C 0D01 010D 010D FE01 130F"
	$"100C 0101 070F 0D01 290D 0F01 0D29 0129"
	$"0129 10FE 2913 1001 1029 290F 2910 2929"
	$"1029 1027 1027 1029 0125 0120 29FE 08FF"
	$"0908 08FD 0376 A1AC 7478 08FE 2702 2427"
	$"24FD 270E 2524 2727 1324 2524 2425 2413"
	$"2424 23FB 2410 2524 2525 2421 2521 2521"
	$"2421 2421 2521 25FB 21FF 25FF 20FD 2116"
	$"1E21 1E30 1E1E 211E 2121 1E21 3020 1E1E"
	$"3020 1E30 1E20 31FE 2017 2D1E 2020 2E38"
	$"4359 748B ADAB 93BA 41C0 BAA0 73C1 C16B"
	$"659F 0E89 815F 8264 5882 5882 825F 8283"
	$"8181 FE8A 0081 FE8A 066D 8A6D 9191 6C91"
	$"FE6C FF89 FEAD 0590 ADA9 90AD 90FC ADFD"
	$"AEF9 91FF 8905 A9AB 9FE6 E6E3 0132 083C"
	$"6450 8064 4550 5132 FC33 1142 474B 4642"
	$"2E27 FC29 2424 1207 0807 2538 51FE 6003"
	$"514B 514B FE51 4360 6253 6450 4B60 5151"
	$"4742 4238 4D25 3A01 0107 0C07 0C0C 0D0D"
	$"070D 0D01 0C0D 0D01 0D07 0101 0D0D 0101"
	$"0D0D 010D 010D 0D29 0F01 0D0F 2901 1029"
	$"100F 0F01 1029 290D 2929 10FB 290B 1229"
	$"1012 2929 1029 1025 4296 270A 0B08 0809"
	$"090B FD7A 51D1 C96D 4223 2913 2724 253A"
	$"2727 1327 1424 2725 2524 2413 2427 2413"
	$"2423 13FD 240A 2524 2425 1524 2124 2121"
	$"25F9 2102 3025 20FC 211C 1E30 2521 2021"
	$"2030 2020 2130 2130 201E 1E20 1E20 1E31"
	$"2120 1E20 1E20 30FC 1E16 2D1E 201E 1E2E"
	$"4376 5974 8BA9 B365 7171 DFE2 E0D9 77C1"
	$"A206 B492 AE82 5850 64FD 8206 8182 8181"
	$"6D81 81FE 8A00 6DFE 8A0D 916D 7F91 7F91"
	$"9189 89AD 88AD AD90 F9AD 03AE 896C AEFE"
	$"910D 6D91 6D91 9189 89A9 ABAC BCD0 E3E0"
	$"012C 223C 6264 6450 4B47 422B 161B 2E36"
	$"4247 4742 3813 0C0C 0807 010F 0707 0A0A"
	$"0D13 4351 5160 FB4B 2D60 805E 4B60 5151"
	$"4747 4242 3839 393A 3A07 010D 0D0C 070D"
	$"0D0C 0C0D 0D0C 0D06 0D0D FE0D FE0D 0C01"
	$"010C 010D 010D 10FE 0F0F 010F 0F29 0D10"
	$"0101 0F01 1029 1029 0D0F FE10 1229 1029"
	$"1029 1010 2910 2929 2729 1039 3633 4642"
	$"013A 08FC 0B0B 2959 A9A7 AE47 1B27 2725"
	$"2713 FE27 FF24 0B27 2413 2724 2413 2425"
	$"2424 13FE 2402 3913 25FE 2400 25FE 241B"
	$"2124 2525 2421 2521 2521 2124 214D 2121"
	$"2430 2120 2121 2021 1E39 211F FB21 0820"
	$"1E20 3021 1E30 1E20 FC1E 1E20 1E20 301E"
	$"1E30 1E1E 202D 2020 1E20 2E38 7659 74AD"
	$"92BC BEBD BDCC E0C2 F6D9 07D9 BD9F A16D"
	$"5F62 62FE 82F9 8106 8A6D 8A6D 8A81 91FE"
	$"6D02 916C 6CFE 89F8 AD06 89AE 89AE AE91"
	$"6CFA 9109 6C89 A9AB ACBC D0E3 BDD9 0133"
	$"2245 8045 624B 422D 1E44 2D2E 3342 4742"
	$"332E 150D 0701 070A 0A0C 0103 010F 0A07"
	$"2538 4247 FE51 064B 4646 6051 4747 FE42"
	$"088C 3844 4D3A 290D 060D FE07 290D 070D"
	$"010D 070C 0707 0C01 0D01 0C0D 0707 100D"
	$"0C0C 0F01 010F 0F0D 0101 0D0D 290D 1001"
	$"0F10 100F 2929 01FD 2900 0FFB 290E 1229"
	$"2912 2927 1029 272D 3332 463B 5702 474D"
	$"08FE 0B11 2976 ADAC 8343 1E15 2727 2927"
	$"2713 2713 2713 FE27 0324 2725 27FE 2406"
	$"1327 2424 2513 39FE 24FF 250B 2114 2125"
	$"2125 2125 2124 2415 FE21 0C25 2020 251F"
	$"2521 4D1E 2521 1E30 FD21 FE20 FE21 FF20"
	$"0421 1E1E 2030 FC1E 0830 1E1F 1E20 301E"
	$"1E20 FE1E 0E2D 201E 201E 2020 4359 748B"
	$"6E92 BC9D FDBE 00E4 07DA F4DF D094 AD8A"
	$"5FFD 8201 6D5F FB81 FE8A 1091 8191 8A6D"
	$"6D91 6C91 9189 89AD ADA9 AD88 FEAD FF89"
	$"036C 8991 6CF9 910A BBAD AD90 ACAC BCBE"
	$"E0E0 D901 3108 6450 604B 4744 1B20 38FD"
	$"420B 3830 2113 1327 2901 2901 0F07 FE0A"
	$"FF0F FF07 025A 968C FD42 1533 428C 4238"
	$"968C 444D 4D3A 273A 030D 0701 070C 0D0F"
	$"07FE 0D0A 070C 010F 0701 0D01 070D 0FFD"
	$"0DFF 012E 0C01 0D01 0F0D 010D 0128 0C10"
	$"010D 0110 2901 290F 290F 290F 1029 2910"
	$"2910 2910 2910 1012 2910 2939 3842 3232"
	$"4746 3B0B 4960 420F FDFC 7690 D159 A53A"
	$"FE27 FF14 F927 0624 2724 2724 2427 FE24"
	$"0013 FD24 0325 2425 24FE 2508 2125 2124"
	$"2524 2121 25FD 2125 2430 2113 3021 2120"
	$"2130 2121 3025 1E21 3020 211E 2030 1E1E"
	$"2030 1E30 1E20 3020 1E30 1E20 201E FE20"
	$"1A1E 202D 1E20 301E 201B 301B 201B 2D2E"
	$"3876 5983 A1A9 924E 9DBE D093 08D0 BEBD"
	$"BDE3 D092 898A FE82 015F 83FE 8102 8281"
	$"81FD 8AFE 9104 6D91 7F91 91FD 8902 88AD"
	$"88FE ADFF 89FF AEF7 910B 89AD ADAB ACB3"
	$"B4BE A2E0 A0D9 0134 2C60 5142 422E 2D36"
	$"3342 4742 422E 2514 2929 2727 2929 0D0F"
	$"0D0D 0A0C 0C07 FC01 0805 2939 4D4D 4444"
	$"974D 304D 3924 FE27 0529 0301 0D01 0DFE"
	$"0C1A 0D07 0C0D 0D07 0D0D 0707 0C0D 0C0D"
	$"070D 010D 070D 2901 010F 0C0D 10FE 01FF"
	$"0F12 010F 0F28 2901 290F 0129 2901 2910"
	$"290F 2929 0FFD 2901 1210 FB29 0736 4751"
	$"4732 463B 3D1C 3D55 4B42 3659 AEA1 747C"
	$"FC27 1313 143A 2414 2424 2727 2524 2724"
	$"2524 27FE 2407 2524 2439 2425 2413 FD25"
	$"0524 2124 2124 24FD 21FF 2502 2125 25FE"
	$"2100 20FD 2100 25FC 2100 1EFE 2100 1EFE"
	$"210E 1E30 211E 1E21 201E 1E30 201E 2030"
	$"21FD 1E00 20FD 1E03 2D1E 1E20 FD1E FE20"
	$"0B2E 4376 5983 8366 90AC 93D0 930B D0BC"
	$"9DA2 F3F3 CC9F 6EAE 6D5F FE82 0181 82FD"
	$"81FE 8AFF 6DFC 9102 7F6C 6CFE 89FE ADFF"
	$"89FF AE17 6C91 AE91 916C 9191 6CBB 8989"
	$"ADA9 ABAC BCD0 D0E3 E0E0 D9C1 013C 1751"
	$"3316 2D2E 3842 4747 4238 3025 1327 1001"
	$"0701 0D01 0D0D 0FFB 07FF 010A 0A0C 0807"
	$"3A3A 2729 3A29 10FE 0105 0D07 070C 0C0D"
	$"FB07 0D0D 0C07 070F 0C0C 070D 0C07 070C"
	$"0DFE 0134 0C0D 010C 010D 2901 0D0F 0F10"
	$"0101 0F01 010C 2910 0101 290D 2910 2901"
	$"2929 0F29 2910 2912 2929 1029 2927 1001"
	$"3042 574B 4646 3B3B 4909 4957 4968 6287"
	$"9459 3A0F FB27 1713 2727 2413 2427 2724"
	$"2427 1325 2413 2413 3927 1324 1324 39FE"
	$"240D 2124 2524 2124 2124 2125 2521 2224"
	$"FE21 3524 2124 2121 3021 3025 211E 2130"
	$"2121 201E 3021 1E1E 2020 1E1E 2030 1E20"
	$"3020 2120 1E1E 2D20 301E 201E 201E 1E20"
	$"1E2D 201E 2D1E 2D20 2DFE 1EFF 2E08 4376"
	$"5959 74AD ACB4 D0FF BC02 93BE E0FE A009"
	$"BE9F 906D 8182 8281 8182 FE81 028A 818A"
	$"FE6D 0191 6DFE 91FF 6CFF 8901 AD88 FC89"
	$"06AE 916C 916C AE91 FE89 FFAD 0CA9 90AB"
	$"ACAC B4D0 E3E0 E0D9 D9C1 0139 0333 2B33"
	$"2CFE 4708 3338 2E30 2524 1010 29FB 0102"
	$"0C0D 01F9 0735 0C07 0C0D 0C01 0D01 010D"
	$"0D01 0D0C 070C 070C 0D0C 0D07 0C0C 070D"
	$"070F 0D07 0C0D 070C 0101 0C01 010D 0F0F"
	$"0D07 100D 010C 0D01 1001 010F FE01 040D"
	$"2901 0129 FD0F 0010 FE29 010F 29FD 0F12"
	$"2910 2912 2927 1010 0724 3351 5E80 5E3D"
	$"3D3B 460E 323B 3D55 9A91 797C 0D27 2724"
	$"3A27 13FE 270A 2427 2713 2427 2427 2427"
	$"25FE 240B 2513 2424 2524 2413 2124 2425"
	$"FE24 0B15 2525 2125 2521 2125 3021 25FE"
	$"2120 3025 2121 201E 2120 3030 201E 2121"
	$"3021 301E 2030 2021 211E 201E 1E20 1E30"
	$"201E 30FE 1E0C 301E 1E2D 1E2D 1E20 1E2D"
	$"1E20 20FD 1E0C 2F20 1B20 2E38 3843 4359"
	$"8390 ACFF B40F 9F93 CCA0 D9C1 C173 709F"
	$"AD8A 5F5F 8282 FD81 008A FD6D 0691 8A91"
	$"917F BB6C FD89 FFAD 1B89 AE89 89AE 91AE"
	$"9191 89AE 89AD 8890 9092 ACBC BCBE D7CC"
	$"BDBD A0D9 A001 3309 3342 4751 5142 382E"
	$"2021 FE27 FF29 FE01 1707 0101 0701 0707"
	$"010C 0D07 0C0C FE0D 070D 0D07 0107 0D0C"
	$"0DFE 07FE 0DFD 0701 0D07 FD0C 2E07 0C07"
	$"0D0C 0707 010D 010D 0D01 0C0C 0D07 0D01"
	$"0F01 0C01 0F0F 0D0D 010C 0D01 100F 010F"
	$"1001 290F 0F10 2929 0D29 2910 FB29 0212"
	$"2910 FE29 0A12 3651 457E 7E61 6148 5E57"
	$"FF3B 223D 629C 593A 2914 2727 1227 1327"
	$"2724 1327 1324 2713 2414 2424 2524 2724"
	$"2425 2424 1325 FD24 0E39 1524 2125 2121"
	$"2530 2125 2120 2124 FD21 1B25 2121 3030"
	$"211E 2530 2121 1E21 2130 2030 1E1E 201E"
	$"1E30 1E30 1E30 30FD 1E0A 2030 1E1E 301E"
	$"1E20 201E 2FFE 1E00 2DFC 1EFF 2D0D 202D"
	$"1E20 1E20 1E20 2E38 3876 74A1 0E92 ACAC"
	$"BC9D A2D9 C1C1 F771 CC4E 9089 FE81 0082"
	$"FE81 FE6D 098A 6D91 8A91 9C91 9189 6CF9"
	$"8911 AE6C 896C AE89 AE89 ADA9 90AB ACAC"
	$"BCBC BEBE FEBD 00DF FEA0 013B 0B47 5151"
	$"4743 3644 3924 2729 29FB 0106 070D 0707"
	$"0C0D 0CFD 0705 0D07 0C0D 070C FE07 040D"
	$"070C 070D FE0C FF07 FF0D 030C 0707 0DFE"
	$"071F 0C07 0D01 070C 0D01 0D07 0C0D 010D"
	$"070C FE0F 0C01 0C0C 0F0D 010D 290F 0129"
	$"0110 FE0F 0601 2910 0110 290F FD29 FE10"
	$"013A 0FFD 290F 1229 2910 392D 4780 B87E"
	$"8EB8 B88E 7E62 1E80 5E69 9C74 9729 2713"
	$"2727 1313 2513 2725 3A24 2724 2713 2724"
	$"1324 2713 1425 FB24 0313 2424 25FD 2408"
	$"2125 2121 2521 2521 25FE 2100 25FE 2101"
	$"3025 FE21 1E39 2121 3030 1E20 211E 3020"
	$"1E21 211E 2120 3020 3020 1E30 1E20 1E30"
	$"201E 3020 FE1E 002D FE1E 0A30 201E 1E2D"
	$"1E1E 201E 1E20 FE1E 092D 201E 1E2E 202E"
	$"3876 741D 8B90 92AC BC93 A2C1 7777 F5C1"
	$"A09D 9FAD 9181 8281 8191 818A 9C8A 916D"
	$"6D9C FE7F 0C89 BB89 89AE 8989 ADAE 89AE"
	$"AE91 FE89 0AAD 8890 ABAB ACB4 B4D0 9DCC"
	$"FDBD 03A0 D9F3 A001 3300 47FE 4206 3836"
	$"3039 2703 29FE 01FF 0713 0D0C 0D0D 070C"
	$"0707 0D07 0C0C 070C 070D 070C 070D FD0C"
	$"FE07 020C 0707 FE0C 1C08 010D 070C 070D"
	$"0707 0C07 0D07 0C0C 0D0D 0F0D 0D01 010D"
	$"0C0F FE0D 0F0D FE01 120D 010D 010D 010D"
	$"010F 0129 0F01 0F29 0F3A 2929 FE10 F829"
	$"0B07 0C21 2A2B 4760 8E7E 7E6A 7EFE B800"
	$"9A21 8D9A 9A8A 8C10 2713 3A24 133A 243A"
	$"2427 2724 2724 1325 2425 2727 2413 2424"
	$"1339 1313 FC24 0821 2424 2124 2521 2125"
	$"FE21 0025 FD21 0115 20FA 211B 201E 3020"
	$"2120 2030 211E 2021 2130 1E20 201E 2020"
	$"1E1E 3020 1E31 2030 FE1E 1220 1E1E 201E"
	$"1E2D 201E 2D2D 201E 2D30 1E20 1E2D FE20"
	$"001B FE1E 052D 1B2E 2038 761B 5983 66AB"
	$"ACBC 9D73 C177 77F7 7171 A2BC 6EAD 8A81"
	$"8281 8381 8A8A 6D6D FC7F 006C FD89 00AE"
	$"FE89 00AE FE89 FFAE 0A89 ADA9 ABAB ACB4"
	$"BC9D 9DCC FDBD 04A0 DFD9 D9F3 0142 7F42"
	$"9644 202D 2025 3927 2729 290D 070D 0C07"
	$"0C0D 070D 070D 0D07 0C07 0C0D 0707 0C07"
	$"070C 070C 070D 0C07 0D0D 0707 0C07 070C"
	$"070C 070D 0C07 0D0C 0107 0C0C 0D07 0107"
	$"0C07 0107 0D0D 0C0F 0601 0FFE 0F01 0D0F"
	$"0D0F 290D 0F10 0F29 0F29 0F01 2929 1029"
	$"290D 2910 2910 0F29 0F0F 2910 2929 0C3A"
	$"2E38 2C47 80B8 B88E 806A 7EB8 F09A B735"
	$"B7C6 BB79 3A25 2513 243A 1327 1324 2724"
	$"2413 2725 2427 2527 2524 2724 2725 2425"
	$"2524 2524 2524 2513 2124 2521 2521 2521"
	$"2125 2121 2422 FD21 0030 FE21 0B1E 251E"
	$"2520 1E21 2130 2120 30FE 21FF 1E07 2120"
	$"201E 211E 3020 FE1E 0020 FD1E FF20 071E"
	$"2D1E 1E20 2D1E 20FC 1E00 2DFD 1E0C 202D"
	$"302D 1E20 1E1E 301B 2020 2E14 4376 748B"
	$"A16E 9F93 E0D9 77F7 F777 71D9 BF9F A1AE"
	$"8AFE 812B 8A6D 7F7F 6D91 7F7F 897F 8989"
	$"AE89 89AE 89AE 89BB AE6C 8989 ADA9 90AB"
	$"ACBC D0D0 9DBD BDE0 BDA0 E2BD A0D9 C1D9"
	$"0138 0444 2D20 3025 FD13 1027 100D 0701"
	$"0D0C 070C 0707 0C0C 0DFE 080D FC07 010C"
	$"0DFD 073D 0D07 070C 0D07 0C07 0C07 0D07"
	$"0D07 0C07 070D 0C0C 070C 0C01 0701 0D0F"
	$"0D0D 0C0D 0F0C 010C 0D0F 070F 070F 0F0D"
	$"0101 0F01 100D 010F 010F 290F 290D 2929"
	$"0F10 FC29 FF3A 0E29 3A29 100D 0C2E 5146"
	$"5180 B8B8 8E80 FEB8 03AA B6B7 9B1A B1CF"
	$"593A 177C 2513 3A13 2725 2713 2713 1324"
	$"2513 2424 2527 1424 13FC 2403 2524 2525"
	$"FE24 3525 3924 2421 2417 2121 2421 2521"
	$"2521 2530 2530 2124 2120 2121 3021 1E25"
	$"1E21 2020 2120 301E 1E31 201E 301E 301E"
	$"2020 1E1E 2020 1E1E 20FD 1E03 301E 1E2D"
	$"FE1E 0120 2DFD 1EFF 2002 2D20 2DFE 2009"
	$"1E2D 1E2D 1E1E 202D 1B20 1720 3876 5983"
	$"666E ACBC BED9 C177 F777 71A0 A2BC 6EAD"
	$"918A 81FE 6D04 7F91 91BB 91F9 8910 AE89"
	$"AE89 89BB 89AD A9A9 ABAC BCD0 BEE3 BEFE"
	$"BD07 E0A0 A0DF A0F3 D9D8 012D 0138 36FE"
	$"20FF 1319 2701 0707 0C0D 0C0C 070D 070D"
	$"0C07 0C0D 0D07 0C07 0D07 0D07 0D07 FD0C"
	$"0207 0C07 FE0D 0808 0D0C 0D07 0C0C 070D"
	$"FE0C 0007 FE0D FE0C FF0D 0D0C 0701 0D01"
	$"010C 010F 0101 0CFE 0FFE 0110 0F10 0C0F"
	$"0129 1029 100F 010F 1029 290D 3AFE 2903"
	$"100F 2910 FE29 0812 0101 2133 4663 B8B0"
	$"FDB8 01F1 B0FE B601 BBE1 05D3 7476 A576"
	$"A5FE 17FF 2516 1327 2427 2725 2427 2725"
	$"2427 2324 2413 2413 2413 2524 25FE 2411"
	$"2124 2421 2125 2139 2121 4D4D 2039 3039"
	$"3021 FC8C 0296 8C21 FAE8 0020 FAED 0021"
	$"FAF1 001E FAF1 002E FAF0 191E 8C42 8C8C"
	$"428C 8C2D 2E44 2E2E 442E 2E20 201E 201E"
	$"2D20 1E1E 2F22 1C20 3876 5983 8BA1 929F"
	$"BCBE D9C1 77C1 C1D9 A293 9F90 8991 8A81"
	$"8A91 91BB AEBB AE91 6CFE 8900 AEFD 8900"
	$"BBFE 8914 88A9 ABAC ACBC D0BE E0E0 BDBD"
	$"D9E0 A0BD A0D8 C1F5 C101 310F 3836 2E1B"
	$"1329 0D07 0D0D 070C 0C07 0C0C FE07 130D"
	$"0C07 0C07 0C07 0D07 0C0C 0D07 080C 0C07"
	$"0C07 0DFD 0700 01FE 0737 0D07 0D0C 0C0D"
	$"0C07 0C07 0D0C 010D 0C06 010D 010D 010D"
	$"0101 0D0C 0D01 0D0C 0D10 0D0F 0101 0F01"
	$"0D29 0129 1029 1029 293A 100F 0F10 2910"
	$"1029 FE10 0C29 1029 2930 3647 63B8 B6B6"
	$"B8B8 FDB0 FFB6 02D3 CFCF 09BB 7979 5979"
	$"76EB EB17 17FE 250B 1324 1325 1313 2427"
	$"1324 2514 FE24 0214 2525 FB24 FE25 0321"
	$"2525 21FE 2503 304D 204D FE30 0321 968C"
	$"96FD 8C00 21FA E810 1EED F0ED EDF0 EDED"
	$"1EF1 F0F1 F0F1 F1F0 30FA F100 2DFA F003"
	$"2D8C 8C42 FE8C 1276 2D2E 442E 4444 2E44"
	$"1E1E 201E 201E 1E2D 1E1E 1E1E 2020 3843"
	$"5974 838B A192 9FD0 A2D9 C171 C1D9 A270"
	$"9F6E A16C 916D 8A6D 91BB FDAE 056C AE6C"
	$"8989 BBFD 8908 ADA9 90D1 ACAC D0D0 E3FD"
	$"E009 A0D9 A0A0 DFA0 A0C1 71D8 0136 312E"
	$"3027 0F07 070D 0707 0D0C 0707 0D07 070C"
	$"0C07 0D07 0C0C 0D07 0D08 070C 0C07 0D0D"
	$"0707 0C07 0C07 0D0C 0D07 070D 0C0C 0D07"
	$"08FE 07FE 0D04 0CFE 0C0C 0DFE 0C0A 010D"
	$"FE0D 0C0D 0F0D 010F 0FFD 01FF 0F00 0DFE"
	$"0113 1001 1029 010F 1001 1029 103A 1029"
	$"2910 1029 100F FD29 1230 4747 578E B8B0"
	$"B6B8 B8B0 F1B8 F1B6 B7B1 DED1 08C5 59C5"
	$"C559 79A5 A5EB FE17 FE25 0524 2727 2414"
	$"27FE 2407 2527 2424 2524 2425 FE24 0825"
	$"1322 2421 2521 3025 FE21 FF30 054D 3030"
	$"4D30 25FC 8C02 968C 20FD E80B E7E8 E81E"
	$"F0ED F0ED EDF0 ED20 FAF1 002E FAF1 0020"
	$"FDF0 07F1 F0F0 1E76 8C8C 76FE 8C11 2044"
	$"3644 2E2E 442E 1E1E 202E 301E 2F20 1E1E"
	$"1B1E 1B1B 2E38 4376 5974 8366 A192 9FD0"
	$"BE73 A073 D9A2 BE9F 926E AD89 6CFE 91FF"
	$"AE05 89AE AE89 BBBB FD89 11AD 88A9 D192"
	$"ACBC D0D0 BEE0 E0BD D9E0 BDBD D9FE A003"
	$"DFD9 C1C1 0124 0827 0707 0C0C 070C 070D"
	$"FE07 000C FE07 120D 070C 0D07 0C07 0C0D"
	$"070C 0707 0C0D 0707 0D07 FE0C 0607 0C07"
	$"0C0D 070D FE07 FF0D 2C0F 070C 0D07 0107"
	$"0D0C 0107 0F07 0C07 010D 0C0D 0C01 0D0C"
	$"010D 1001 010F 0D0F 010F 0D29 0110 010F"
	$"0F29 010F 2910 FA29 0A10 2927 0F12 120F"
	$"8C63 6A8E FDB8 0AB0 B6B6 B8B8 B0B7 CFDE"
	$"DCAD 06C5 74AF 74C5 C579 FEA5 FE17 2913"
	$"2513 2425 2724 2425 1324 2425 2524 1325"
	$"2425 2439 1521 2525 2421 2521 2425 2121"
	$"2430 3930 3025 3030 21FA 8C00 21FA E800"
	$"30FD ED0B F0ED ED21 F1F1 F0F1 F1F0 F12D"
	$"FAF1 002E FAF0 192D 8C8C 768C 4276 8C1E"
	$"442E 382E 4444 2E1E 2D20 2D1E 1E2D 1E30"
	$"1E00 1EFE 2017 2E38 4376 5959 7483 6694"
	$"929F D0BE E0A2 A2BE BEBC 9F6E 6E88 F489"
	$"0BAD 88A9 90AB ACAC BCD0 D0BE E3FC E009"
	$"BDD9 A0A0 E0A0 D9C1 F571 012E 26FE 0C07"
	$"0C07 010C 070D 0D07 0C0D 070D 0C0C 0D0C"
	$"0707 0D07 0C0C 070C 0D0C 070C 070D 070D"
	$"0D07 070D FE0C 460D 0C0C 070C 0C0D 070D"
	$"0D07 0C07 0D01 070C 070F 060D 010C 0D0D"
	$"0C0D 0F0D 0D29 0D01 0C01 0D01 0F01 0129"
	$"0D29 0110 1001 1010 290F 2810 2929 0F29"
	$"2910 3A29 2910 3A29 2910 4DE7 B0B6 FDB8"
	$"0AB0 B6B0 B8B6 D3B1 DEEA C78B FEC4 05AF"
	$"7474 7979 A5FD 1710 2513 2713 2524 1324"
	$"2414 2524 2414 2425 25FE 2415 2524 2421"
	$"2124 2421 3921 2139 2121 3930 4D30 304D"
	$"2021 FA8C 0021 FAE8 0A20 EDF0 EDF0 EDED"
	$"F01E F1F0 FCF1 001E FAF1 0044 FAF0 032D"
	$"8C8C 42FD 8C11 2D44 2D44 442E 2E2D 2020"
	$"1E1E 301E 1E2D 1B1E 0530 201B 2E2E 38FE"
	$"4309 7659 5974 8366 9492 BFBF FDBE FF93"
	$"059F AC92 9090 88FD AD0E 88AD AD88 A9A9"
	$"90AB 92AC ACBC D09D 9DFE CC00 BDFD E0FF"
	$"A000 BDFE A003 DF71 C1D8 0130 FF07 160D"
	$"0C07 070C 0C07 0C0D 0707 0C07 0C07 070D"
	$"0C08 0C0C 0707 FE0C FE07 FF0D FE07 020C"
	$"070C FD07 090C 0707 0D0D 0C07 0D0D 07FE"
	$"0D25 0C0D 070F 0D0D 0F0C 0D0C 0D28 070D"
	$"0101 0D0F 010F 0129 0D01 0F01 290F 0F29"
	$"010F 2910 1029 2910 FE29 0F0F 1229 0F29"
	$"2910 1229 2910 3A12 96F0 D3FE B60B B0B6"
	$"B8F1 B6B7 CFE1 DBDB D1C4 05C4 83C4 C4AF"
	$"AFFE 7902 A5EB 17FE 250B 1325 2524 2425"
	$"2427 2424 1339 FD24 0313 2524 25FE 2410"
	$"2124 2125 2521 2139 2130 4D20 4D30 204D"
	$"30FD 8C03 968C 8C1E FDE8 03E7 E8E8 1EFD"
	$"ED03 F0ED ED1E FEF1 00F0 FEF1 001E FAF1"
	$"002D FAF0 0020 FC8C 1342 8C2D 2E44 2D44"
	$"2E2E 382D 1E20 201B 2020 3020 2D07 2E20"
	$"2E2E 3843 4376 FD59 FE74 0E8B 66A1 929F"
	$"BFBF 9393 D0BC BC9F AC92 FEAB FE90 FFAB"
	$"02D1 ABAB FEAC FFBC 07D0 9DA2 BDE0 CCE0"
	$"BDFD E005 BDE0 BDA0 A0DF FDD8 0121 210D"
	$"0C0C 070C 0C0D 070C 0707 0C0D 070D 070D"
	$"0D07 0D0D 070C 070D 070C 0D07 0D0D 0707"
	$"0DFD 07FF 0C0C 070D 0C0C 070D 0C07 070C"
	$"0707 0FFE 072B 0D0F 0701 0C0D 0101 0D06"
	$"0D01 0F01 0F01 010D 0101 1001 100D 1010"
	$"0101 0F29 1001 0F10 2910 2928 0F10 0F10"
	$"2910 FC29 0912 2729 1029 39E7 F1D3 D3FD"
	$"B608 F1B7 D3CF EADB C3C4 8B15 A4C4 83AF"
	$"74AF C579 A5A5 EB17 2525 2424 2727 1427"
	$"2427 F624 0621 2424 2521 2539 FE21 0C25"
	$"2125 2130 204D 304D 3030 2096 FB8C 001E"
	$"FAE8 0820 F0ED F0ED EDF0 ED21 FCF1 02F0"
	$"F12E FAF1 002E FEF0 00F1 FEF0 1144 428C"
	$"428C 8C76 8C1E 2E44 442E 2E44 441E 20FE"
	$"1E04 2D20 2D2E 2E05 2E38 3843 4376 FE59"
	$"FE74 0059 FE74 0783 8B66 9492 9F9F BFFB"
	$"BC00 9FF8 ACFF 9FFF BCFE D0FF BE03 CCBD"
	$"BDCC FCBD FFE0 FFA0 01D9 DFFE D800 7101"
	$"2E0A 0D0C 070D 0D07 070C 0707 0DFE 071C"
	$"0D0C 0D08 070D 0707 0C0D 0C0C 0707 0D07"
	$"070D 070C 0D0C 0C0D 070D 0C07 07FE 0D18"
	$"070D 070C 0C0D 0C07 0F0C 0107 0F07 0F0D"
	$"010F 0DFE 0C0D 0C0D 0CFD 010E 0D3A 0F0D"
	$"0110 290D 290F 1001 2901 0FFD 2907 1029"
	$"3A3A 1029 1010 FC29 0812 273A 1096 E7B6"
	$"D3D3 FEB7 05D3 D1E1 DED6 C3FE C4FF C4FF"
	$"AFFF C5FF 79FF A5FF 1702 1325 13FE 2400"
	$"25FE 2421 1324 1324 2514 2425 2425 2424"
	$"2525 2124 2524 3921 2420 2121 2521 2530"
	$"2120 3025 2130 FC21 0330 201E 20FB 1EFF"
	$"20FF 1E03 201E 2020 FC1E FF20 0530 2044"
	$"3844 38FE 2E16 201B 201E 1E20 2E20 3044"
	$"442F 302F 2D20 1B20 1E2D 2F1E 20FD 1E05"
	$"2D20 2E38 4343 FF43 FF76 FF59 FE74 FC83"
	$"FF74 FF83 078B 6666 9494 929F 9FF8 BCFF"
	$"B4FF BCFD D00B BE9D BECC BEBD BDE0 BDA2"
	$"BDE0 FEBD 04E0 A0A0 F3A0 FED8 01C0 7101"
	$"2608 070D 0C0C 070D 0C07 07FE 0D06 070C"
	$"0707 0D0C 07FE 0CFF 0DFF 0703 0C07 070C"
	$"FE0D 0307 0D07 07FE 0D00 0CFE 0DFF 0733"
	$"0D07 0C0C 0707 0D0D 0C07 0D0C 070D 0D0C"
	$"0101 0C0F 0701 0C29 0101 0D10 0C0F 0F06"
	$"290F 0110 2910 1001 290F 1001 1029 1029"
	$"1029 1010 FE29 0D12 3A3A 2729 2729 2927"
	$"2703 97E7 B6FD D304 CFD3 DEDB A1FE C400"
	$"BB0A F1F0 F1F0 F1F0 7979 A543 A5FE 9701"
	$"2427 FD24 0013 FE24 0039 FD24 0121 24FE"
	$"2514 2421 2524 2144 4D4D 2E4D 4D44 2076"
	$"E876 E876 E876 31FA F008 20F1 F0F1 F0F1"
	$"F0F1 1EFA F100 20FA F001 1E2E FE44 022D"
	$"4444 FE1E 002D FE1E 012D 1BFD 1E06 201E"
	$"1E2D 202D 20FC 1E08 302D 2D20 2E43 4376"
	$"59FD 59FF 74FF 83FA 8BFD 83FF 8B09 66A1"
	$"9494 9272 9FBC BC93 FED0 009D FED0 049D"
	$"D79D BE9D FECC FCBD FFE0 FFBD FCA0 07D8"
	$"DFDF F5D8 D8C0 C101 2AFF 07FF 0D1B 070D"
	$"0D07 0C08 0D07 070C 0707 0D0D 0707 0D0D"
	$"0707 0D0C 0707 0C07 070C FE07 180C 0D07"
	$"0C0C 070C 0D07 070D 070D 0D07 0F07 0C07"
	$"0C0F 0D01 010C FD0D FF01 3D0C 1001 0D0C"
	$"0F0D 0D0F 010F 0D01 010D 290F 0F01 2929"
	$"0129 290F 2929 1029 1029 1012 2929 103A"
	$"2729 1027 1027 2927 4D25 97E8 F0D2 D2E1"
	$"CFDE DBAC C4C4 AFAF F11A BBF1 BBF1 BBF0"
	$"A543 A543 9797 4D97 1325 2724 2427 2425"
	$"1324 2413 25FD 24FF 2515 2425 3024 2113"
	$"4D30 4D4D 3030 9637 E88C E88C E88C E821"
	$"FAF0 0830 F0F1 F0F1 F0F1 F020 FAF1 0030"
	$"FAF0 121E 2E2E 2D2E 442E 441B 2D20 2D20"
	$"2E20 202D 2020 FE1E 1030 1E20 2D1E 1E20"
	$"1E20 1E2D 2020 2D2E 4376 FE59 FD74 FF83"
	$"038B AE66 ADFE A1FE 66FC 8BFF 6607 A194"
	$"9492 9F9F BFD0 FCBE 08E3 BDE3 BDE3 E0BD"
	$"BDA2 FBBD FCE0 0BA0 DFDF A0D8 C1C1 F5D8"
	$"7771 C101 27FF 0D0C 080D 0807 0C07 070C"
	$"070D 0D07 0DFB 0CFF 0710 0D0C 070C 070D"
	$"070D 0D07 0C0D 0D07 0D07 0CFE 0714 0D07"
	$"0D07 0107 070D 0C07 0107 0C0D 070D 0107"
	$"0F01 0DFE 01FF 0D18 0F01 0110 0110 0101"
	$"0F0D 2901 0D29 0129 2910 2910 2929 1029"
	$"12FE 2904 1029 2927 10FE 2916 2729 273A"
	$"2910 4D4D 2539 76F0 D3D2 D2D4 D1C4 AFAF"
	$"C579 F101 F0F1 FDF0 01EB A5FB 9705 2514"
	$"2413 2413 FC24 0225 2425 FE24 FE21 1425"
	$"2125 2521 304D 4D44 304D 4424 76E8 76E8"
	$"8CE8 7630 FAF0 081E F1F0 F1F0 F1F0 F120"
	$"FAF1 0021 FAF0 0D1E 2E2D 2E2E 442D 2D1E"
	$"2D20 2D1B 20FD 1E17 2D20 2D1E 2D1E 201E"
	$"2030 1E1E 201E 1E2D 2D2E 3843 7659 7474"
	$"0074 FE83 028B AE66 FEA1 0C6E D194 A1A1"
	$"9494 A194 94A1 C3A1 FE94 0792 72BC BCD0"
	$"BEBE BDFB E002 BDE0 E0FA BDFD E00D A0D9"
	$"D9A0 DFD8 71D8 71F5 C077 C0C1 0125 000C"
	$"FD07 090C 0D07 070C 0D07 0C07 0CFC 0708"
	$"0C07 070D 0C0C 070C 0CFE 0700 0DFE 0707"
	$"0C0D 0C0C 0D0C 0D07 FC0C 1E0D 0107 0C01"
	$"0D0D 070C 010C 0D0F 0D01 010D 0F0D 0101"
	$"0D0F 0110 1001 1001 2910 FE0F 2C29 0F0D"
	$"290F 2929 1029 2910 293A 0F29 1012 2927"
	$"3A27 2929 2729 3A27 273A 4D7C 7C3A 8C82"
	$"D3CF AE74 79C5 5979 79F0 FBF0 0117 8CFE"
	$"9704 4D96 4D25 13FE 2403 2524 1324 FD25"
	$"FE24 0225 2424 FE21 1225 2121 962E 3097"
	$"4444 4D22 E88C E88C E876 E820 FAF0 0821"
	$"F0F1 F1F0 F1F0 F130 FAF1 001E FAF0 002D"
	$"FB44 032E 202D 1EFD 2004 2D1E 1E20 2DFE"
	$"1EFF 2010 1E2D 1E20 301E 2D2D 3020 3843"
	$"7659 7474 8304 838B 8B66 AEFE A100 D1FC"
	$"92FE 9400 72FC 9409 7294 9F72 BCBC E4BE"
	$"BEE3 FEE0 03BD E0E0 A0FE E000 A0FD BDFE"
	$"E010 BDE0 A0D9 F2D9 DFDF 71C1 D8F5 F5C0"
	$"F7C0 7701 2D16 070D 0C07 0C07 0D07 0D0D"
	$"0707 0D0C 0707 0D07 0D0C 070D 0CFE 07FF"
	$"0C00 07FE 0C00 07FE 0CFF 0737 0D07 070D"
	$"0D0C 070D 0707 0101 0C0C 0D07 0C0D 0F0D"
	$"0C0D 010D 0101 0D0D 010D 1010 0D01 010F"
	$"0101 2901 0F0F 010F 3A0D 290F 3A10 1210"
	$"2910 2910 FE29 1E10 2629 1010 293A 2927"
	$"2729 2729 274D 2539 4D97 EBA5 A579 79A5"
	$"7679 7976 EBF0 FBF0 FF17 0697 9696 4D4D"
	$"9725 FA24 FF25 0424 2124 2425 FE21 1613"
	$"2424 2125 2025 4497 4D44 204D 4420 76E8"
	$"76E8 E88C E822 FAF0 0820 F1F0 F0F1 F0F1"
	$"F01E FAF1 0020 FAF0 181E 2E44 442E 2D44"
	$"442D 1E20 2E2E 1E1E 2D30 1E1E 201E 1E20"
	$"1E1E FE20 0D2D 2020 1E20 2D2E 4376 5959"
	$"7483 8303 8BAE 8BAD FEA1 FC92 1D9F 9272"
	$"9272 9272 BF72 BF9F 9FBF 72BC BFBF BEBE"
	$"E0BD E0BD E0D9 D9A0 E0D9 A0FE E000 A0FD"
	$"E007 BDD9 D9DF DFD9 DFDF FCD8 FFC0 02F7"
	$"C077 0130 050C 070D 070D 0DFB 0CFF 0733"
	$"0D0C 070C 070D 070D 070D 0C0D 0D07 0D07"
	$"0C0D 0707 0D07 0D07 070C 070D 0C07 010C"
	$"0C0D 070D 010C 0101 0D07 010F 0D0D 0101"
	$"0F0D 0F0D FD01 0E29 0F01 0D29 010D 290D"
	$"1001 0110 290F FE29 0010 FE29 1B10 2912"
	$"1229 2910 1029 2927 1027 1027 2927 3A10"
	$"393A 4D4D 7C4D 97EB 43FE A504 8CA5 97EB"
	$"F0FB F00C 1397 974D 974D 964D 2724 2524"
	$"25FB 2400 13FE 25FE 24FF 2100 24FD 2100"
	$"4DFE 300B 4D30 4425 8CE8 8CE8 8CE8 7630"
	$"FAF0 0820 F0F1 F1F0 F1F0 F11E FAF1 0020"
	$"FCF0 06ED F020 2E2E 4436 FE44 091E 2D20"
	$"1B2D 2D1E 201E 20FE 1E00 20FE 1E01 2D20"
	$"FE1E 0B2D 1E2D 2E38 4376 5974 7483 8309"
	$"8B66 66A1 A1D1 6E92 92AC FE9F 06BC 9FBC"
	$"9FE6 BCE6 FEBF 03E6 93D0 BFFE BE08 CCE0"
	$"BDBD E0A0 E0D9 D9FE E019 D9BD E0E0 A0D9"
	$"A0A0 D9A0 F3A0 A0F3 D9C1 D8D8 C0C0 F5C0"
	$"C0F7 C077 012A 050C 0D07 070C 0CFC 0706"
	$"0D0C 070C 0C07 0DFE 0732 0C0D 0C0D 070C"
	$"0C07 070C 0707 0D0C 070C 070C 0707 0D07"
	$"0D0C 0701 0D07 0C0C 070C 0D01 0D0D 060C"
	$"010C 0D01 010D 0F01 010F 0F01 0DFD 01FF"
	$"2908 0129 290F 100F 0F10 0FFE 290C 1012"
	$"2910 293A 1229 2729 1029 29FD 2700 3AFE"
	$"2702 394D 25FD 4D01 1797 FE8C 0497 8C97"
	$"17F0 FBF0 0827 964D 4D96 4D4D 9627 FD24"
	$"0325 2425 13FE 240F 2215 2422 2521 2425"
	$"2121 2521 244D 4430 FE44 094D 31E8 76E8"
	$"76E8 76E8 21FA F008 20F0 F1F0 F1F0 F1F0"
	$"30FA F100 1EFA F001 1E2D FC44 222E 1E20"
	$"201E 2D20 2D20 2D30 1E2D 1E1E 2D20 201E"
	$"2D2D 1E1E 2D20 2E2E 4343 5959 7474 838B"
	$"058B 66A1 A1D1 94FE 9200 ACFC BC04 BFBC"
	$"BFBF 93FD D0FD BE0A CCA2 BDE0 E0BD BDE0"
	$"BDE0 A0FE D9FF E00F D9E0 E0DF E0DF BDD9"
	$"D9A0 C1F3 A0D9 D8D8 FEC0 04F7 C0F7 F777"
	$"0139 200D 0C0C 070D 0707 0C0D 0D0C 070D"
	$"070D 0C07 0C07 0D0D 0707 0D07 0C07 0C07"
	$"0C07 0C0C FD07 060C 0707 0D0C 010D FC0C"
	$"2F0D 0C01 0D01 010D 0101 0D0C 010C 010F"
	$"0D01 010D 010F 0110 0F0D 290F 0F10 010F"
	$"2929 0129 2910 2929 1029 3A3A 290F 2929"
	$"3AFE 2913 2729 1027 1029 2727 1227 1229"
	$"273A 2727 1013 2727 FE3A 047C 253A 1325"
	$"2413 3A13 3A25 1327 2725 2527 2513 2424"
	$"1314 2423 1324 2524 2421 2524 2521 2521"
	$"2521 2425 2124 FD21 0A4D 2121 2520 3021"
	$"3131 2131 FE21 081E 301E 1E21 2120 2030"
	$"FE20 001E FD20 0944 2044 2E2E 201E 2020"
	$"1EFD 2006 2D1E 1E20 1E20 1BFE 20FE 1E08"
	$"201E 1E20 202D 2030 2DFE 1E00 2DFE 1E0C"
	$"301E 202E 3843 7659 5974 8383 8B00 66FE"
	$"A100 94FE 92FF 9FFF BC01 D0BF FCD0 FBBE"
	$"03E3 BECC E0FE BD0F E0BD E0A0 E0A0 E0A0"
	$"E0E0 D9D9 E0E0 A0E0 FEA0 FED9 0DA0 71F3"
	$"C171 D8C0 C0D8 F5C0 F7C0 7701 1F03 070C"
	$"0707 FE0C FF07 010D 07FE 0D17 0C07 0D07"
	$"0C07 070C 0C0D 070C 0D0C 0D0C 0D07 0D07"
	$"0D07 0D07 FD0D FF07 040C 0107 0107 FE0C"
	$"3207 0D01 010C 0D0D 010D 010D 0110 0F01"
	$"010D 0F01 0129 0F10 0101 2901 290F 2910"
	$"010F 0F10 103A 1012 100F 123A 3A12 2910"
	$"2710 273A FE27 0C12 2729 2727 4D97 9796"
	$"9796 9727 FAF0 0113 EEFB EE00 24FA F010"
	$"1396 8C8C 978C 9696 2539 4D39 394D 4D30"
	$"24FA 8C00 25FA EE00 25FA F000 20FA F004"
	$"21ED EDF0 EDFE F014 1E2D 2044 2D30 4430"
	$"1E20 1E1E 201B 202D 2020 1E1E 2DFE 1E04"
	$"201B 2D1E 1EFE 2019 2D20 1E20 1E20 2D1E"
	$"3020 1E2D 1E1E 302D 3843 4376 5959 7474"
	$"838B 0366 A1A1 94FE 92FF 9FFE BCFE D002"
	$"93D0 D0F9 BE05 CCE0 A2BD E0E0 FBBD 18D9"
	$"E0D9 E0E0 D9E0 D9E0 E0A0 D9A0 D9A0 D9D8"
	$"7171 D871 D8C0 D8D8 FDC0 0077 0125 FD0C"
	$"3607 0C07 0C07 0C0C 0707 0C07 0C07 070C"
	$"0C07 070D 0707 0C07 0D07 0D07 0D0D 0707"
	$"0D07 0C0D 0C07 070D 0107 070C 0C0D 0701"
	$"0D0C 0C0D 010D 010F FD01 FF0D 2901 0D10"
	$"0101 0D10 2901 2929 1029 100F 2929 1010"
	$"293A 1029 1210 2929 3A10 0F27 2927 2910"
	$"2927 273A 1027 29FD 27FF 9701 964D FE97"
	$"0025 FAF0 0127 EEFB EE00 13FA F004 2596"
	$"978C 97FE 8C08 2430 4D4D 3030 4D30 21FA"
	$"8C00 21FA EE00 1EFE F01D F1F0 F1F0 21F0"
	$"F1F0 F1F0 F1F0 1EF0 F0ED F0ED F0ED 1E44"
	$"302D 3044 2D2E 1E30 FC1E 0520 1E2D 2D1E"
	$"20FE 1EFE 2002 1E2D 1EFE 2003 2F20 201B"
	$"FE20 FC1E 0C30 202E 2E43 4379 5959 7483"
	$"838B 2F66 A194 9492 72AC 9F9F BCBF D0D0"
	$"BE9D BEBE 9D9D BEE3 BECC BEE3 A2E0 BDE0"
	$"E0BD E0BD E0BD E0E2 BDBD E0BD D9A0 E0D9"
	$"D9E0 E0FB A000 71FE D802 71D8 D8FD C002"
	$"F7C0 7701 2BFE 071B 0D0C 0D07 070C 0707"
	$"0C07 070D 070C 0C0D 0707 0C0D 0C07 0D0C"
	$"0D0C 070D FE07 0C0D 0C07 070C 0D0F 0701"
	$"0C0D 0D01 FE0D 4D01 0D01 0C01 0C0F 0D06"
	$"0F0D 0F0C 010F 0101 100D 0F0F 0D29 0D10"
	$"0F10 2901 2929 1029 290F 100F 1029 103A"
	$"3A0F 2929 1229 3A27 2927 1012 2929 273A"
	$"273A 2727 4D97 9796 964D 9610 F0ED F0ED"
	$"F0ED F013 EEFB EE00 27FA F010 138C 9796"
	$"968C 9697 244D 4D44 4D4D 304D 39FA 8C03"
	$"20EE EEED FDEE 0230 F0F1 FCF0 0030 FAF0"
	$"0130 EDFE F006 EDF0 F020 4430 44FD 2D09"
	$"201E 201E 1E20 302D 2D20 FE1E 072D 201E"
	$"1E2D 1E1E 30FC 1EFE 2014 2D1E 1E30 1B2D"
	$"2D1E 2D20 2E38 4343 7659 5974 7483 8B09"
	$"8BA1 9494 9292 9F9F BCBC FDD0 0EBE D0BE"
	$"BECC BECC CCBE E3BE BDBD E0BD FCE0 FEBD"
	$"1ED9 A0E0 D9E0 D9D9 E0D9 D9A0 A0DF DFA0"
	$"D9F3 71C1 D8C0 D877 F5C0 F7C0 EF75 75F7"
	$"0135 FF0C 030D 0707 0DFE 0700 0CFE 07FE"
	$"0CFF 071D 0C07 0D07 0C0C 0D07 070C 0D07"
	$"0D0C 0D07 0D07 0C0D 0C07 0C07 0D07 0D07"
	$"070D FE01 100D 0C01 010D 0D01 0F01 010F"
	$"0101 0F01 0F01 FE10 0F29 010F 0129 3A0D"
	$"290F 2910 1001 1029 10FE 290E 1012 2729"
	$"290F 2912 2929 1027 3A27 26FE 270A 1227"
	$"2996 974D 9797 4D96 27FA F001 27EE FBEE"
	$"0013 FDF0 13ED F0F0 2596 8C96 8C97 978C"
	$"2139 4D30 4D30 3930 25FA 8C00 25FC EE02"
	$"EDEE 21FE F000 F1FE F01B 21F1 F0F1 F0F1"
	$"F0F1 20F0 F0ED EDF0 EDF0 1E2E 2D2D 3030"
	$"2D44 1E20 301E FD20 291E 2020 301E 1E2D"
	$"201E 301E 2D1B 1E30 1E20 1E20 1B30 1B1E"
	$"301E 1B30 1E1E 2D20 2E38 4343 7659 59AF"
	$"7483 8BFF 66FE 9403 929F 9FBC FED0 FF9D"
	$"35BE 9DE3 9DCC BECC BEE3 BDE3 BDBD E0BD"
	$"E0E0 BDD9 E0BD D9E0 A0E2 A0A0 E0D9 A0E0"
	$"D9D9 A0A0 DFA0 D871 71F5 C1D8 C0F5 F5F7"
	$"C0C0 EFF9 75F7 F701 2C05 070C 0C0D 0C07"
	$"FE0D 0407 0C0D 0C0C FE07 0C0C 0D07 0C0C"
	$"070C 0C07 0D07 0C0C FE07 030D 070C 07FD"
	$"0C0A 0701 0D0C 010C 070F 0D0C 0CFD 0D32"
	$"010F 0101 0D01 010F 010C 0110 0F01 2910"
	$"3A0D 1001 103A 0F0F 2910 2929 0F10 3A29"
	$"103A 2910 2929 1227 1027 1027 3A27 2927"
	$"2927 29FD 2702 9796 97FE 960A 9727 F0F0"
	$"EDF0 EDF0 F013 EEFB EE00 27FE F000 EDFE"
	$"F010 248C 9796 968C 8C96 394D 3039 4D30"
	$"304D 21FA 8C08 39ED EDEE EEED EEED 21FC"
	$"F002 F1F0 1EFA F00A 1EF0 EDF0 F0ED F0ED"
	$"1E44 2EFE 2DFF 44FE 1E00 2EFE 1EFF 2028"
	$"1E20 2D1B 2020 1E1E 1F20 1E20 1E1B 2D20"
	$"1E20 2D20 1E20 1E30 201E 2D2D 2020 2E2E"
	$"4343 7976 5959 7483 8310 8B66 9494 9272"
	$"9FBC BFD0 D0BE 9DBE CCBE 9DFD CC05 BDE3"
	$"BDA2 BDBE FBE0 FCBD FFA0 0EE0 A0D9 BDD9"
	$"A0DF A0DF A0D8 71DF C1C1 FED8 FDC0 0575"
	$"F7F7 EFF9 F701 2C03 0D0C 070D F907 1D0D"
	$"070D 0C0C 0D0C 070C 0707 0C07 0D0C 0D07"
	$"0D07 0D07 070D 070D 0C0D 070D 0CFE 0D05"
	$"0701 0C0C 010D FE01 070D 010D 010D 100D"
	$"0FFE 011B 100D 0F0D 1003 0110 2929 1029"
	$"1029 2910 3A29 2928 1012 2912 2928 3A27"
	$"FE29 043A 293A 2710 FD27 003A FE27 FF3A"
	$"0297 964D FE97 034D 27F0 EDFC F001 27EE"
	$"FBEE 0013 FAF0 0425 978C 8C97 FE96 0821"
	$"304D 4D30 4D4D 3039 FA8C 0021 FAEE 0221"
	$"F0F1 FCF0 0B20 F0F1 F0F1 F0F1 F020 F0F0"
	$"EDFD F014 1E2D 2D30 2E2E 2D2D 201E 1E2D"
	$"1E1E 2F20 1B2D 1E1E 2DFE 1E00 20FE 1E00"
	$"30FE 1E0D 2D1E 1E20 1E2D 1B30 1E1E 2D30"
	$"202D FE2E FF43 FF76 0059 FE74 0083 FF8B"
	$"0BA1 9494 9F9F BFBC D09D 9DCC BEFE CC18"
	$"BECC CCE3 CCCC BDE3 BDBD E0BD E0BD E0F2"
	$"E0E0 E2E0 BDD9 A0A0 BDFE D900 DFFE A000"
	$"DFFE D8FF 7101 C1F5 FEC0 0775 C0EF 75F7"
	$"F7C0 F701 2CFF 07FF 0C0B 070C 0D07 0C0D"
	$"0C07 0C0C 070D FE07 410C 0D0C 0D07 0C0C"
	$"0707 0C07 070D 0C07 0C07 0C07 070D 0701"
	$"0C01 010D 010C 0C07 0C0D 010D 0D10 0C01"
	$"010D 0101 0D0F 0101 0F0F 0129 0D01 0129"
	$"0D29 0F29 2901 3A0F 0F10 12FE 2907 1029"
	$"1210 293A 1229 FE27 0212 2729 FE27 023A"
	$"273A FE27 0196 97FE 9602 9796 10FA F001"
	$"27EE FBEE 0027 FCF0 12ED F024 8C96 8C96"
	$"8C8C 9624 4D39 3930 3920 4D39 FA8C 0021"
	$"FEEE 00ED FEEE 081E F0F0 F1F0 F1F0 F030"
	$"FAF0 031E F0ED F0FD ED0A 1E44 2D44 2E44"
	$"2D44 201E 1EFE 20FA 1E24 201E 2D20 1E2D"
	$"202D 202D 1E1E 2030 1E2D 2020 1E20 2D30"
	$"2D2D 202E 2E38 3843 7659 5974 7483 830E"
	$"8B66 6694 9472 9FBC D0D0 BE9D CCCC BEFD"
	$"CC06 BDCC CCBD E0E0 BDFC E014 BDE0 BDD9"
	$"BDA0 BDE0 E0D9 A0A0 D9A0 F3A0 DF71 71D8"
	$"71FE D80C 71F5 C0C0 EFC0 75F7 EF75 F9F7"
	$"F701 3305 070C 0C07 0C07 FE0C 0A07 0D0C"
	$"0C07 0C08 0C0C 070D FD07 110D 070D 070C"
	$"0C0D 0C07 0D0C 0D07 0D0C 010C 07FE 0C13"
	$"0D07 0701 0D0C 01FE 0D01 010C 010F 070F"
	$"0D0F 0F0D FE01 0A3A 0F01 120D 290F 0110"
	$"280F FB29 0112 10FE 290C 123A 2929 123A"
	$"1012 2729 2727 10FC 2703 1312 2727 FE29"
	$"FD27 0813 1027 1327 1213 2724 0127 14FD"
	$"27FF 1304 2427 1325 25FE 240E 2725 2425"
	$"2539 3921 2521 3921 2421 20FE 4D17 394D"
	$"4D24 2121 3021 211E 211E 3030 2021 1E25"
	$"201E 2120 1E30 FE20 0030 FE1E 0B20 1E20"
	$"1E20 2030 2020 1E20 20FE 1E0E 201E 301E"
	$"2D1E 2030 2020 2D1E 3020 2DFD 1E08 2E20"
	$"301E 2D20 1E20 1EFD 2D0A 202D 202E 2E38"
	$"3843 7676 59FE 7401 838B 098B 66A1 9492"
	$"9FBC 93D0 9DFA CC00 BDFD CC01 BDCC FBBD"
	$"00E0 FEBD 15E2 BDD9 DFD9 E0A0 DFA0 D9A0"
	$"DF71 A0D8 DF71 D8D8 71C0 F5FD C007 75F7"
	$"EF75 F9F9 75F7 0110 090C 0707 0D07 0C07"
	$"070C 0DFE 07FF 0C02 0D07 0DFD 070E 0D0C"
	$"0D0D 0707 0D07 0C0D 0D07 0101 07FE 0D05"
	$"0701 070D 0D01 FE0D 070C 0D01 0C10 0D0C"
	$"0DFD 010C 0F01 0129 0101 0F10 0D29 1029"
	$"3AFE 2901 1029 FE10 0012 FE29 200F 2910"
	$"2929 2727 293A 2727 1229 2729 2729 1327"
	$"273A 273A 1325 2539 4D4D 394D 4D27 FAF0"
	$"0127 EEFB EE00 24FA ED00 24FA F008 13EE"
	$"EEED EEEE EDEE 24FA F000 30FA F100 20FA"
	$"F100 1EFA E7FF 2006 2F20 2E30 2D2D 20FC"
	$"1E02 301E 2DFE 2008 2F20 1E20 1B1E 1E2D"
	$"20FD 1EFE 20FE 1EFF 20FF 1E07 302D 1E20"
	$"3020 2D2D FD2E 0A38 4343 7659 7474 8383"
	$"8BA4 0066 FE94 0A72 9FE6 D0D0 BECC CCBE"
	$"CC9D FDCC F2BD 0FE0 A0DF A0BD D9A0 D9F3"
	$"D9DF 71D9 D871 71FE D801 C0D8 FDC0 08F7"
	$"C075 75F9 7575 EFF7 0116 FF07 0D0D 070D"
	$"070D 070C 0C07 0C0D 070C 07FE 0D03 0C07"
	$"0C0C FE07 170C 070C 0D07 0C0D 0707 0C0C"
	$"070C 0107 0D0D 0C07 0D01 0C01 01FE 0D08"
	$"FE0F 0FFE 010D 010D 01FE 0F26 2901 1029"
	$"0F29 1001 1010 2929 103A 2910 3A29 120F"
	$"103A 1227 1010 293A 1029 1029 2710 2710"
	$"2727 29FE 2707 1327 3A13 4D4D 394D FE39"
	$"0027 FAF0 0124 EEFB EE00 24FA ED00 24FA"
	$"F008 25ED EDEE EEED EEED 21FA F000 21FA"
	$"F100 21FA F100 1EFA E729 3020 2D20 3030"
	$"202D 1E20 301E 1E20 1B1E 201E 1E20 201B"
	$"1E20 201E 2D20 201E 1E20 201B 202E 2020"
	$"1F2D 2F2D FE1E 0330 202D 20FD 2EFF 38FF"
	$"43FE 5905 7483 838B 66A1 08A1 9494 729F"
	$"BCBC D0BE FCCC 05E3 CCCC BDBD CCF4 BD13"
	$"A0BD BDA0 DFA0 A0DF A0DF A0D8 71D9 71D8"
	$"7171 D8D8 FBC0 0875 EFF9 75EF F975 F9F7"
	$"0111 4C07 0C07 070D 070C 0707 0D07 070C"
	$"0D0C 0D07 070C 070D 0C07 070C 0D07 0D07"
	$"0D07 070D 070C 0D07 010D 0D0C 010D 0F0C"
	$"0C01 010D 0D0F 010D 010D 0101 0C01 1001"
	$"010C 1001 1001 0110 290D 290F 2801 0F29"
	$"FE0F 0C10 2910 3A12 2910 2910 2912 2912"
	$"FE27 023A 2712 FC27 0213 3A13 FD27 074D"
	$"394D 4D39 4D4D 27FA F001 27EE FBEE 0013"
	$"FAED 0025 FAF0 0821 EEEE EDEE EEED EE25"
	$"FAF0 0025 FAF1 0025 FAF1 0030 FAE7 0020"
	$"FE30 1E2D 1E2D 2D20 2D20 1E2D 2D20 2D1E"
	$"1E1B 1E20 2D20 2D20 1E2D 1E20 1E2D 201E"
	$"1E2D FE1E 0920 1E1E 201E 2D30 1E20 20FE"
	$"2EFF 38FF 43FF 7608 5974 7483 8BA4 A1A1"
	$"94FF 940E 729F 9FBC 93D0 BE9D CCBE CCBE"
	$"CCE3 CCEF BD11 A0DF A0D9 DFA0 DFA0 D9DF"
	$"71F3 D871 D8D8 71D8 FAC0 0775 EFF9 75F9"
	$"EF75 F701 0823 0D07 0D0C 070D 070D 0C0C"
	$"070D 0707 0C07 0C0C 0707 0C0D 070D 0D07"
	$"0C07 0C0D 070D 010D 0707 FE0C 0407 010D"
	$"0701 FE0D FE01 150D 010F 0101 0D0F 2901"
	$"0D01 0F01 0F0D 0F29 2901 290F 0FFE 2900"
	$"10FC 29FE 1001 2912 FE29 0D12 2912 1227"
	$"1029 2927 273A 273A 29FC 2704 1227 2739"
	$"39FD 4D01 3927 FAF0 0127 EEFB EE00 27FA"
	$"ED00 24FA F008 21ED EEED EEED EEEE 30FA"
	$"F000 21FA F100 21FA F100 1EFA E713 1E20"
	$"2D30 1E2D 301E 3020 2D1E 1E2D 1E2D 2020"
	$"1E2D FC1E 032D 201E 2DFE 1E02 2D1E 1EFD"
	$"200A 1E30 1E2D 201B 2D20 2E38 38FC 430A"
	$"7659 5974 838B 66A1 9494 9208 729F 9FBC"
	$"BCE6 D09D 9DFA CCFC BDFF E0F9 BDFB A00E"
	$"D9DF A0DF A0C1 D871 C1D8 71D8 D8C0 D8FC"
	$"C00A 75C0 F9EF 7575 EF75 F875 F901 14FE"
	$"0C1B 0D0C 0C07 070C 0D07 070D 070C 070D"
	$"0707 0C07 070D 0707 0C0D 0D0C 0D0C FD0D"
	$"FF0C 2407 0D07 0C01 0F01 0D01 010D 0D0F"
	$"0D0D 010F 0C10 010D 0F01 0110 1001 2910"
	$"1001 2910 0129 290F FC29 0210 2910 FD29"
	$"0B12 1027 293A 2727 3A27 2927 12F9 270C"
	$"3A24 3A24 2739 4D4D 2539 394D 13FA F001"
	$"13EE FBEE 0024 FAED 0025 FAF0 0225 EEED"
	$"FEEE FFED 0021 FAF0 0020 FAF1 0021 FAF1"
	$"0021 FAE7 FF30 071E 2D2E 201E 2D20 20FE"
	$"1E05 3020 201E 2D20 FC1E 172D 201E 1E20"
	$"1E20 1E20 2D2D 1E20 1E1B 301B 1E30 1B30"
	$"2D2E 38FC 43FF 76FF 59FF 74FF 8B04 A194"
	$"929F 9F0F 9FBC E6BC D0D0 9DBE D7E3 CCE3"
	$"E0CC E0BD FEE0 02BD E0A0 FDE0 FCD9 11A0"
	$"D9A0 D9DF D9BD A0DF A0F3 71A0 D9F3 71D8"
	$"D8FD C00E D8C0 C075 75EF C0F7 7575 F9F8"
	$"F9EF F901 1D0B 070D 0707 0C07 070D 0C07"
	$"0C0C FD07 080C 070D 070D 0C0C 070C FE07"
	$"060C 070D 070C 0107 FE0D 3C07 0D0D 010C"
	$"010C 0D01 010D 0101 0C01 0F0D 0D29 0F0D"
	$"1001 1001 0F29 010F 1001 290F 1029 0F10"
	$"0F12 103A 2929 1010 1229 103A 1229 273A"
	$"293A 133A 1312 2712 FE27 0810 1427 1327"
	$"1313 2714 FD39 FE4D 0027 FAF0 0124 EEFB"
	$"EE00 13FA ED00 24FA F008 25EE EDEE EDEE"
	$"EEED 21FA F000 20FA F100 21FA F100 20FA"
	$"E721 3020 2D30 2D20 3030 1E2D 1E2D 201E"
	$"2D20 1E20 1E30 1E30 202D 1E1E 201E 201E"
	$"1E20 2D20 FB1E 0C30 1E30 2D20 2D2E 4343"
	$"7659 5976 FE59 FF74 0783 8BA1 9492 9F9F"
	$"BCFF BC0F 93D0 BE9D BE9D CCBE BDCC CCBD"
	$"CCE0 CCBE FEE0 FFA0 1AD9 E0D9 E0A0 F2A0"
	$"F3A0 DFDF A0A0 D9D9 A0A0 DFA0 DFD8 D9C1"
	$"F371 D8D8 FBC0 FE75 08C0 F975 EF75 EF1D"
	$"75F9 0116 200C 070D 070C 0D0C 070C 0C07"
	$"0D0C 0C07 0C07 0D07 070C 0D07 0C07 0D0D"
	$"070D 070C 0D07 FE0C 3C01 FE01 0D0C 0C0D"
	$"0101 0D0D 0F01 010C 0101 0D01 0F01 0110"
	$"0101 2910 0F01 010F 290F 0110 1029 2910"
	$"1029 1010 3A29 1229 2912 2927 2929 1027"
	$"1210 2710 2712 FE27 0110 13FE 2700 3AFD"
	$"2708 3A39 4D4D 3939 4D4D 13FA F001 13EE"
	$"FBEE 0024 FAED 0013 FAF0 0021 FEEE FFED"
	$"FFEE 0020 FAF0 0024 FAF1 0020 FAF1 0030"
	$"FAE7 FE30 032D 3030 2DFE 2005 2D20 2D2D"
	$"1E2F FE1E 022D 1E20 FE1E FF20 011E 2DFE"
	$"2011 1E2D 2D30 1B30 1E30 1E1E 1B2D 2D20"
	$"3843 7679 FC59 FF74 FF83 0666 A194 929F"
	$"BCBC 00BC FED0 FD9D FFCC 00E0 F9BD 05E0"
	$"BDE0 BDA0 D9FB A00E DFD9 A0D9 BDA0 DFA0"
	$"DFD9 A0D9 71D8 71FE D801 41D8 FBC0 0175"
	$"EFFE 7505 F91D F9F8 75F9 0124 0C07 0D0D"
	$"0C07 0D0C 0707 0C07 070C FE07 180C 0D07"
	$"0C0C 070C 070D 070D 070D 0D01 0701 0C01"
	$"0707 0D0D 0107 FC0D 3401 0C0D 0D01 0C0F"
	$"100D 0F01 0F0D 010F 0D29 0F0F 0129 2901"
	$"2929 0F29 1010 2910 1029 1210 2910 3A29"
	$"2910 1027 2929 143A 2727 3A27 2710 FC27"
	$"0913 2727 1313 2724 2727 3AFE 2700 13FD"
	$"27FF 1303 2527 2427 0314 2425 13FE 2400"
	$"13FD 24FF 2505 2425 2524 2413 FB21 0B30"
	$"1530 2420 2520 3020 2130 1EFA 2100 1EFE"
	$"21FF 20FE 1E02 2030 20FD 30FE 1E0E 3020"
	$"1E1E 2020 1E2D 1E2D 1E20 3020 1EFD 20FF"
	$"2D02 2030 1BFE 1E12 202D 1E1E 201E 1B30"
	$"1E30 1E1E 2030 2D20 2E43 43FD 5901 7459"
	$"FE74 0883 8B66 D194 9F9F BCBC FED0 029D"
	$"CCBE FDCC FFBD 03CC E0BD BDFE A0FD BD03"
	$"DFA0 A0DF FEA0 00BD FBA0 FFDF 07D8 A071"
	$"A0D8 71D8 D8F9 C0FB 7500 F9FD 7501 1DF7"
	$"0116 0408 0D0C 070D FE07 FF0D 0A07 0D0C"
	$"0C07 0D07 070C 070C FE07 000C FD0D FF07"
	$"070F 0C0D 070D 010D 07FD 0CFE 0117 0F01"
	$"0D29 0D01 010D 2901 0F01 2910 0129 0129"
	$"290F 290F 290F FD29 000F FD29 1110 2929"
	$"2710 2710 273A 1212 2727 1212 2912 12FB"
	$"2702 1327 25FD 2708 3A24 2724 2427 2425"
	$"24FA E801 13ED FBED 0025 FAEE 0021 FAED"
	$"0024 FAED 0030 FAF1 0020 FBF0 08ED 208C"
	$"968C 968C 8C96 FE20 0330 1E1E 20FE 1E03"
	$"2030 1E20 FE1E 0E30 1E1E 2D20 1B1E 301B"
	$"302D 2020 1E2D FD1E 1430 2D20 1E30 1E30"
	$"201E 201E 2D1B 1E2D 202E 2E43 7659 FA74"
	$"FF83 FF8B 05A1 94AC 9FBC BCFF D0FD 9D04"
	$"CC9D BDE0 E0FC BD08 A0BD A0BD BDE0 DFA0"
	$"DFFA A00A D9A0 E0A0 DFDF D8A0 D871 71FE"
	$"D8FF C002 D8C0 F5FE C0FF 750B C075 EF75"
	$"EFF9 EFF9 F8F9 EFF9 0117 FE0C 2A07 0D0C"
	$"0707 0D06 070D 0707 0D0C 0C07 0D07 070C"
	$"0D0D 0C01 0D07 0D0C 0D0C 010D 0D01 0D0D"
	$"010C 010C 010C 010C FD01 080D 0F01 010D"
	$"0F01 1001 FD0F 3710 0F29 1029 2910 2929"
	$"100F 290F 290F 3A29 2910 1229 293A 2927"
	$"2729 123A 2729 2727 2927 273A 2727 3A27"
	$"253A 2714 2724 2524 2427 3924 3925 24FA"
	$"E801 39ED FBED 0024 FAEE 0021 FAED 0025"
	$"FAED 0015 FAF1 0421 F0ED F0ED FEF0 041E"
	$"968C 8C38 FE8C 101E 2030 1E20 202D 1E30"
	$"301E 1E2D 301E 1E30 FD1E FF20 251E 2020"
	$"2D1E 2020 2D20 1E30 1E2D 201E 3020 2D1B"
	$"2D30 2D1E 201E 2D20 202D 2E38 4359 5974"
	$"74C4 74FC 8307 8B66 A1D1 929F BCBC FED0"
	$"029D E39D FECC 02E0 BDE0 FEBD FBA0 FFBD"
	$"01DF A0FE DF03 A0DF A0DF FBA0 07D8 71D8"
	$"71D8 71D8 D8F8 C0FB 7506 EF1D EF75 F875"
	$"F901 2418 0D0C 070D 070D 0C07 0D0D 0C07"
	$"0C0D 070D 0707 0C0C 0D0C 070C 07FD 0D1A"
	$"0F07 0C07 0F07 0C07 0C0C 0D01 010D 0101"
	$"0D01 0D0F 0F0C 0F0F 0101 0FFC 011C 1001"
	$"2901 1001 3A0F 1029 1010 0110 1229 1229"
	$"1012 3A29 2910 2927 103A 12FC 2703 1227"
	$"2714 FB27 0325 133A 13FE 27FE 2503 2427"
	$"3925 FAE8 0113 EDFB ED00 14FA EE03 24ED"
	$"EDEE FDED 0421 EDED EEEE FEED 0021 FAF1"
	$"0021 FDF0 05ED F0F0 1E8C 36FE 8C04 368C"
	$"2120 1EFE 301B 1E2D 1E1E 301E 1E20 2D1E"
	$"202F 201E 1B20 302D 1E2D 202D 201E 1E2D"
	$"202D FE1E 1430 1B30 201E 202D 201E 301B"
	$"302D 2D20 2E43 4359 7474 FA83 FF8B 0666"
	$"A194 929F BCD0 FFD0 02D7 9D9D FECC 02BD"
	$"E0E0 FDBD 1FA0 BDA0 A0BD DFA0 BDDF A0DF"
	$"A0A0 DFA0 A0DF A0D9 A0D9 A0DF 71A0 D8D8"
	$"71D8 71D8 D8FB C00E 75C0 7575 F975 EFEF"
	$"75EF F975 F975 F901 21FF 0703 0C07 070D"
	$"FD07 250D 0C0C 070C 0C07 0D07 070C 070C"
	$"0D0C 0D0C 0D07 010D 0D07 010D 0C0C 070D"
	$"0F07 0101 0F0D 0101 0DFE 010E 0D01 010F"
	$"0101 3A10 010F 2910 0F10 01FD 1003 290F"
	$"2910 FD29 1610 2729 2927 3A27 3A10 2927"
	$"263A 1027 2910 2727 3A27 2713 FE27 0325"
	$"2727 24FD 2706 3927 3924 2524 27FA E801"
	$"24ED FBED 0024 FAEE 0021 FAED 0015 FCED"
	$"02EE ED21 FAF1 041E EDF0 F0ED FEF0 001E"
	$"FE8C 0096 FE8C 0520 1E30 2030 20FE 1EFF"
	$"2004 1E20 1E1E 20FE 1E0B 201E 2D20 1E20"
	$"201E 202D 1E20 FE1E 0920 2D1E 1E2D 202D"
	$"2D20 1BFE 2D01 202D FE20 072E 4343 5974"
	$"C483 83FC 8BFF 66FF A104 D192 9FBC BC0E"
	$"D0BE 9D9D CCBD 9DA2 BDBD E0BD BDA0 BDFE"
	$"A014 BDA0 A0E2 D9A0 DFA0 A0DF A0DF A0DF"
	$"A0DF DFA0 D8A0 71FC D801 C1D8 F9C0 FC75"
	$"08F8 7575 F9F8 75F8 EFF9 012A FF0C 0B07"
	$"0C0C 070D 0C0C 0D07 0C06 0DFE 0CFF 07FF"
	$"0C04 0D07 0C0D 07FE 0D11 070C 0D0D 0C01"
	$"010F 010F 070F 0C01 0C01 0F01 FC0F FF01"
	$"110D 0F0D 2910 1001 0F01 290F 290F 2929"
	$"0F0F 10FD 2910 0F12 2912 2912 1012 1012"
	$"2729 2912 2727 3AFC 270F 1227 2713 2713"
	$"2927 2713 1324 2725 2539 FE25 0139 27FA"
	$"E801 25ED FBED 0024 FAEE 0025 FEED 00EE"
	$"FEED 0021 FDED 03EE EDED 21FA F103 21F0"
	$"EDED FEF0 04ED 2096 8C96 FD8C 3A20 2D20"
	$"1E30 1E30 2D30 1E30 1E30 2D1E 2D20 1E2D"
	$"2020 1E20 1E1E 2D1E 1B1E 202D 1E2D 2D1E"
	$"201E 2D20 202E 202D 202D 202D 202D 202D"
	$"202E 3843 5974 7483 FE8B FF66 FDA1 FF94"
	$"039F ACBC D00E 7CEB AFCC C57C C5CC BDE0"
	$"E0BD E0BD D9FD A000 D9FC A017 DFC4 EBC5"
	$"DFDF 71DF 71A0 71C1 D8F5 D8D8 C0D8 D867"
	$"7459 C341 FDC0 0EDD 7443 4274 FA75 EFF8"
	$"7575 F9F8 75F9 010F FE07 090D 070D 0D07"
	$"0C0C 070C 0CFE 0713 0D0C 0D0C 070C 070D"
	$"070C 0C06 010C 0C07 0D0C 0D0D F901 130D"
	$"010D 010F 060F 010C 2929 0F29 1001 1029"
	$"1029 3AFD 2908 1029 1029 1012 103A 10FE"
	$"2902 1229 3AFE 2705 3A27 3A27 2713 FC27"
	$"0013 FE27 113A 1327 1327 2713 2725 2724"
	$"2525 2427 5A25 27FA E801 24ED FBED 0024"
	$"FAEE 0025 FAED 0221 EDEE FCED 0021 FAF1"
	$"0020 FAF0 1420 8C8C 388C 3896 8C1E 3030"
	$"201E 1E20 1E1E 2020 1E2D FB1E 0420 1E2D"
	$"1E20 FE1E 0520 1E1E 2D20 20FC 2DFA 2EFB"
	$"20FF 2E08 3843 7959 838B A466 A1FB 9405"
	$"92AC 9FBC BCD0 0698 0079 CCFC 00A5 FDBD"
	$"04D9 E0E0 A0D9 FEA0 0FDF A0A0 DFA0 DFD9"
	$"C4EB C5D9 D871 D9DF D9FC D8FE C004 A476"
	$"4342 A4FE C0FF 750E 7643 7459 4374 1D75"
	$"75F9 F81D F91D F701 26FF 0D07 070D 0D07"
	$"0D0C 070C FE07 0D0C 0D07 0C0C 070D 0C0D"
	$"0707 0D07 07FD 0D14 0F0C 0D0C 0D0C 010D"
	$"0C0D 010D 010D 0D01 010F 010C 0FFE 0113"
	$"100F 2901 290F 0110 290F 0F3A 2928 0F29"
	$"1029 2910 FE29 2210 2927 2927 1010 2727"
	$"1213 2927 2910 2729 133A 2713 2713 2725"
	$"2727 1327 2427 3A24 2527 FE25 0224 3927"
	$"FAE8 0124 EDFB ED00 21FA EE00 21FA ED00"
	$"21FD ED03 EEED ED21 FAF1 001E FDF0 04ED"
	$"F0F0 1E38 FB8C FF20 051E 2D20 201E 30FE"
	$"1EFF 2005 1E30 1E1E 2D1E FE20 032D 2020"
	$"30FE 2009 1E20 2D1B 202D 2020 2E2E FD38"
	$"FA2E 0A20 2E2E 3843 7659 AF83 8BA1 FE94"
	$"0292 94AC FD9F 02BC D0D0 437C 00EB CC00"
	$"00AF BDA4 A5EB C5E4 84AF AFC3 EBC5 A0A0"
	$"AFEB EBAF DAA4 AFC4 D8C3 79EB 79C3 C1C4"
	$"AFA4 C5A5 84C0 4242 4342 A4C0 75C0 C067"
	$"4342 A3A4 4243 75F8 EFF8 75F8 1D1D F901"
	$"350C 0D07 070C 0707 0D0D 0C07 0D07 0DFE"
	$"0CFF 0D0E 0C0D 0C07 0D0F 070C 0D07 0101"
	$"070D 0DFE 0121 070D 0107 0F0D 010F 010C"
	$"100D 0D01 0F01 0F0D 1029 0F0D 2910 010F"
	$"0129 1010 0F10 100F FD29 0827 2912 2910"
	$"1210 123A FE27 013A 29FE 2700 12F8 271A"
	$"133A 2727 2424 1313 2424 2724 2727 2424"
	$"1324 2425 2527 1324 2524 1302 2425 13FE"
	$"2503 2125 2125 FD21 0124 25FE 2113 2521"
	$"2521 2125 1E21 2120 2125 2020 251E 211E"
	$"2520 FE1E 1C20 2120 1F1E 201E 1E21 201E"
	$"1E20 1E30 201E 2030 1E20 1E1E 301B 201E"
	$"202D FE20 011B 20FE 1E04 2D1E 2D1E 1EFE"
	$"2D02 202E 2EFE 38FE 4303 3843 3838 F92E"
	$"FF43 0359 7483 66FE 9400 92FD 9FFE BCFE"
	$"D043 EB00 EBBD 0000 AFC3 00FE 3A00 EBA4"
	$"0000 FE00 00C3 AF00 FEFE 00C5 AF00 EBDA"
	$"FE00 0100 FEC2 EB00 FE00 00A5 F5C0 F742"
	$"42A4 6FC0 7575 8442 4384 A442 4375 75F9"
	$"751D F9F8 1DF9 0121 040D 070D 070D FE0C"
	$"1A0D 070C 070D 0707 0D07 070C 070C 0D07"
	$"0D01 0D0C 0D0D 0701 070C 0D0D FE01 150C"
	$"0F01 0F0C 0C0D 0F01 0F01 2901 0F01 290F"
	$"010F 290F 01FE 2900 0FF7 290C 1229 2927"
	$"2927 2729 2710 2710 12FE 2706 3A13 3A12"
	$"3A13 12FD 2700 25FE 270D 253A 2727 2427"
	$"2527 2724 2413 2424 FD25 0439 2539 24E8"
	$"FBE8 0825 EDED F0ED EDF0 ED21 FAED 0021"
	$"FAF0 001F FA8C 1630 211E 2020 3020 1E21"
	$"301E 1E30 2030 301E 1E20 1E1E 201B FE1E"
	$"0F2D 2020 1E20 2D1E 201E 2020 2D20 201E"
	$"2FFC 1E05 202D 2E2E 3838 F743 FF38 FF2E"
	$"FF38 FF43 0876 5974 C4A1 9472 9F9F FCBC"
	$"FED0 FF9D 3B79 0000 A400 00C4 AF00 EBA4"
	$"0000 A400 00C4 0000 A4EB 00C5 AF00 EBAF"
	$"00EB A400 00D8 0000 A4EB 00A5 A500 EBF7"
	$"C0C0 4343 6675 C075 C084 4342 84A4 4243"
	$"EFFE 1D04 F81D F91D F901 2F04 080C 070C"
	$"0CFC 07FF 0C0D 070C 070C 070C 070D 0D0C"
	$"0D0D 070C FE0D 0A01 0C0C 070F 070F 0D0F"
	$"0D0D FD01 190D 2901 0F01 0D01 2910 100F"
	$"2901 0F29 1029 0129 0F10 0F29 1029 29FE"
	$"10FF 2909 1029 1027 1010 2710 273A FE27"
	$"0D3A 2727 2914 2725 2727 1427 2713 26FD"
	$"2715 2413 2413 2724 1424 2527 2524 2425"
	$"3924 2539 3725 24E8 02E7 E8E7 FEE8 0821"
	$"F0ED EDF0 EDED F025 FAED 0A21 F0F0 EDF0"
	$"EDF0 F025 8C43 FC8C 0320 1E20 30FE 2001"
	$"301E FD20 FE1E 2230 1E30 1E1E 201E 1E30"
	$"201E 1B30 2020 1E30 202D 2020 1E1E 201E"
	$"201E 2D20 1E2D 2D2E 3838 FE43 FE76 0059"
	$"FE76 F743 0779 5983 8B94 949F 9FFE BCFC"
	$"D0FF 9D00 CC29 AF00 00A4 0000 A4AF 0001"
	$"7900 00A4 0000 D900 00A4 7900 FEA5 AFC4"
	$"AF00 EBA4 0000 F500 00A4 EB00 AFAF 00EB"
	$"FEC0 0342 43A4 6FFE 750F 8442 4384 A442"
	$"42F9 1DF9 1D1D F81D F8F9 0123 0A07 0D0C"
	$"070D 0C0D 070D 070D FC07 0D0C 0D0D 010C"
	$"010D 0D0C 0107 0C07 0DFE 0125 0D01 0D01"
	$"0D06 0D0F 0F0D 010D 0D0F 290D 1001 1001"
	$"0110 2910 0129 103A 2929 2810 2912 2910"
	$"283A FE29 1627 1029 3A27 1027 2929 143A"
	$"2910 2713 3A27 2714 3A27 3A12 FE27 0229"
	$"2513 FD27 0824 2713 2513 2425 2424 FE25"
	$"0024 FE25 FF39 0225 24E8 FDE8 0AE7 E824"
	$"F0ED F0ED F0F0 ED21 FAED 0021 FAF0 0221"
	$"8C76 FC8C 0321 3021 20FE 3007 201E 2020"
	$"3030 1E30 FE20 041E 301E 1E30 FD1E 0830"
	$"1B1B 1E20 2D1E 202D FA1E 062D 1E1B 202D"
	$"2E38 FE43 FF76 FA59 FE76 FD43 0976 5959"
	$"74C4 6694 9FBC BCFB D0FE 9D01 CC9D 07AF"
	$"0000 AF00 00A4 AFFC 001C A400 00A0 0000"
	$"A4DA 3A00 00A5 DAAF 00EB A400 00C1 0000"
	$"C3EB 00AF AF00 EBFE C0FF 4200 A4FD 750A"
	$"8443 4284 A443 43F8 1D1D F8FD 1D00 F901"
	$"331C 0D07 070D 0C07 0C07 0D07 070D 070D"
	$"010D 0C0C 0707 0D07 0C07 0C07 0F07 0FFD"
	$"0DFE 0106 0F0D 010D 0110 01FD 0F0A 0D01"
	$"290F 0129 1029 2901 10FE 2903 0D29 100F"
	$"FB29 0C12 1012 1029 2910 1229 2729 273A"
	$"FC27 0213 3A13 FC27 1312 2727 1427 2427"
	$"2713 2713 2425 2727 2424 1324 14FD 2406"
	$"4D39 2539 2439 E8FF E800 E7FE E800 24FE"
	$"ED00 F0FE ED00 21FA ED00 21FE F000 EDFE"
	$"F000 1EFE 8C00 76FE 8C00 20FE 3004 201E"
	$"301E 30FE 1E08 2D20 1E2D 1E1E 201E 2DFE"
	$"2009 301E 1E2D 1E30 1E30 1B20 FE1E 0D30"
	$"1E1E 2D2D 201E 1E2D 2D36 3843 42FE 76FE"
	$"5902 7459 74FD 5900 79FC 59FF 7408 8B66"
	$"949F BCBC D093 D0FD 9D04 CCBE CCBD CC0A"
	$"A400 00EB 0000 E0AF 00EB 95FE A4FF 0019"
	$"DFA0 DFA0 84A4 7900 0079 AF00 EBA4 0000"
	$"D800 00A4 EB00 AFAF 00EB FEC0 0243 42A4"
	$"FE75 10F9 8442 4384 A442 4275 F81D 1D75"
	$"F81D 1DF9 0136 1407 0C0C 0707 0D0C 070C"
	$"080D 0D07 070C 0D07 070D 070D FE07 0A0F"
	$"0707 0107 010F 010C 0D0D FE01 030D 1001"
	$"0DFD 0118 0D29 0D10 0129 100F 0D01 1029"
	$"100F 2910 0F29 1029 290F 2929 12FD 291F"
	$"1229 2727 2910 3A27 1227 3A27 1027 2714"
	$"273A 2727 1327 1327 2527 1327 2413 2424"
	$"FE25 0313 2424 27FB 2407 3924 2539 3924"
	$"25E7 0EE8 E7E8 E8E7 E724 F0ED F0ED F0ED"
	$"F021 FEED 00F0 FEED 0321 F0F0 EDFD F000"
	$"30FC 8C12 768C 1E30 2020 1E20 2030 301E"
	$"301E 301E 1E2E 20FD 1E10 301B 2D20 2D1E"
	$"1E30 1E2D 1E20 1E2D 1E1E 1BFC 2007 1E20"
	$"1E2D 2E38 4276 FD59 0174 59F9 740E 5974"
	$"AF74 83C4 8B94 949F BCD0 D09D D7FE 9D06"
	$"E39D BECC BDBD CC29 A400 00EB 0000 A0AF"
	$"00EB A400 00A4 0000 A0DF 71DF EB00 AFC5"
	$"00EB AF00 EBA4 0000 D800 00C3 EB00 AFAF"
	$"00EB FEC0 1642 43A4 C0C2 A4A4 8443 4284"
	$"A442 43F8 1D1D F81D 1D75 F8F9 012A FF07"
	$"140D 0707 0C07 0C07 0C07 0D0D 0C07 070C"
	$"0C0D 0D07 0D0D FE0C 1001 0D0F 0D07 010C"
	$"0101 0F0C 0C0F 0101 0F0D FD0F FF10 0301"
	$"2910 10FE 29FF 1000 01FD 2906 1029 2912"
	$"2910 12FE 2906 273A 1027 1027 29FE 270A"
	$"2927 1227 1327 273A 2727 13FD 2700 12FB"
	$"2700 13FE 2712 2524 1327 2524 2527 1324"
	$"2525 2425 2439 2424 E8FF E800 E7FE E802"
	$"21ED F0FE ED02 F0ED 21FA ED00 21FA F000"
	$"21FA 8CFF 200D 2120 1E20 1E20 1E20 1E2D"
	$"1E30 2F30 FE1E 1230 2020 301E 1E20 301E"
	$"1E1B 1E20 1E20 1E2D 1E30 FE1E FF20 FF2D"
	$"FF2E 0338 4376 76FE 59FD 74FF 8300 8BFA"
	$"830C 8B66 A194 72BC BCD0 9DD0 9DD7 9DFA"
	$"CCFF BD10 C300 00FE 00FE BDAF 0001 AF00"
	$"FEA4 0000 DFFE A02F EB00 A5A5 0079 AF00"
	$"EB84 0000 C400 00C3 EB00 AFAF 00EB C0C0"
	$"7543 42A4 7584 4242 7742 43A4 7443 591D"
	$"1DF8 1DF8 1DF8 1DF9 0131 FF07 020D 070D"
	$"FE07 FF0D 040C 070C 0D0C FE07 390D 010C"
	$"0C01 0D01 0D01 0D01 0C01 0F0C 010F 010D"
	$"0C01 0F01 010D 010D 0107 0F29 0C0F 0128"
	$"1029 0110 2929 1029 290F 290F 2929 1029"
	$"123A 2929 1027 27FD 2904 2610 2729 12FB"
	$"2702 1227 12FC 2706 1324 2724 1327 27FE"
	$"250B 2414 2724 2724 2413 2413 2524 FE39"
	$"FF25 0139 E80E E7E8 E8E7 E8E7 24F0 EDED"
	$"F0F0 EDF0 25FD ED03 F0ED ED1E FAF0 0330"
	$"8C8C 76FD 8C0F 1E30 201E 301E 1E30 2030"
	$"1E1E 2D30 202F FD1E 032D 201E 20FE 1E09"
	$"301E 1E30 1B1E 301E 201B FE1E 0C30 1B20"
	$"1B20 2D2E 3833 7659 5960 FD74 FF83 FF8B"
	$"FB66 FE94 0272 9FBC FED0 FFD7 FF9D FECC"
	$"06E3 CCCC BDBD CCBD 00E2 FD00 03EB A0E4"
	$"3AFE 0012 C4A4 0000 A071 DF71 C4FE 0000"
	$"01A3 AF00 EBC1 79FE 001C 7975 EBFD AFAF"
	$"00EB 75C0 C042 42A4 7584 4343 75C3 4242"
	$"4376 67EF 1D1D F8FD 1D00 F901 30FF 0711"
	$"0C07 0C07 0D0C 0C07 0C0D 0707 0D0D 0C07"
	$"0D0C FE0D 2407 010C 0D01 0D01 0D01 0D0C"
	$"0DFE 0110 0F01 0F0D 010F 0D29 0D29 0F3A"
	$"290F 1001 0F29 2910 0F29 FD10 1829 1029"
	$"2912 2929 1229 2910 2927 2927 3A27 273A"
	$"1212 3A12 3A12 FC27 0825 2713 2725 3A27"
	$"2427 FE24 FE27 FE24 0125 24FC 25FE 2400"
	$"13FE 2401 2125 FD24 2F25 2121 2521 2521"
	$"2421 2421 3025 211E 2521 2125 2121 2015"
	$"251E 2121 3030 2130 3020 301E 1E30 1E20"
	$"1E30 1E30 201E 201E 1EFE 2015 3020 1E1E"
	$"2D1E 201E 301E 1E20 301B 1E20 1E1B 301E"
	$"1E30 FE1E FD2D 0436 3876 7659 FE74 0758"
	$"7483 838B 8BA1 A1FE 9400 92FE 9FFF BCFE"
	$"D0FF 9D03 D09D D7D7 FECC 01BD CCFE BD01"
	$"E0BD FFBD 00DF FBA0 03C3 A4DA A0FE DF11"
	$"71DF 71DF A0DA A4A4 71D8 D8C0 D8C0 F5A3"
	$"C3A3 FEC0 FC75 FEC0 FF75 00C0 FB75 0DFA"
	$"8484 75F9 1D1D F81D F81D F81D F901 2C11"
	$"0C07 0C0D 0707 0C07 0C07 0D07 0CFE 0C0C"
	$"0107 FE0C 3B07 0101 0D0D 0107 010C 010C"
	$"0F01 010F 0C01 010D 1001 0110 290F 1029"
	$"100F 0D0F 0129 1029 0F3A 0F10 0129 1029"
	$"2910 2929 1229 1027 2912 2927 2912 2729"
	$"12FC 2700 13FE 2713 1227 2714 2727 2427"
	$"2724 1325 2713 2525 1314 2413 F824 0013"
	$"FE24 0425 2424 2524 FF25 2F21 2421 2425"
	$"2125 2025 2121 2521 2421 2125 1E21 211E"
	$"2120 2021 201E 1E21 3021 1E20 2030 1E30"
	$"1E1E 2020 1E30 201E 201E 30FC 1E03 2D20"
	$"1E30 FE20 022D 1E30 FE1E 1630 1B1B 2D20"
	$"202D 301B 1E2D 1E2D 202D 3638 4276 5960"
	$"7458 FD83 FF8B 0566 A16E 929F 9FFE BC03"
	$"93D0 9DD0 FE9D 03BE D79D 9DFE CCF9 BD16"
	$"BDA0 A0DF A0A0 DFA0 DFA0 DFA0 DFA0 71A0"
	$"DF71 A0A0 D8A0 71FC D801 C0D8 F7C0 0575"
	$"C075 C075 EFFE 750B EF75 75EF F975 1DF9"
	$"1D75 1DF8 FE1D 03F8 1D1D F901 3305 070C"
	$"070D 070C FE0D 0007 FD0C 2807 0C0D 0C0D"
	$"0D0C 010D 010D 010F 0701 010F 0106 0D0F"
	$"0D01 0C01 0D01 0F01 0F0D 0101 0D01 2929"
	$"1029 100F FC29 0410 2929 1010 FE29 0F10"
	$"2729 1212 273A 2729 1227 1027 1227 29FE"
	$"2711 3A27 1312 2712 2725 2713 2727 2527"
	$"2713 2726 FE24 FF25 0513 2723 2724 13FD"
	$"2407 1323 2524 2521 2521 FE21 0B24 2121"
	$"2424 2125 2121 2021 30FE 210F 3021 3021"
	$"2030 251E 2130 2030 2021 1E21 FC1E 0B20"
	$"211E 1E20 1E20 1E30 201E 1EFD 20FF 1E0E"
	$"201E 2D1E 2D20 1E2D 1E2D 1E20 3030 1BFE"
	$"1EFF 200B 1E30 1B1B 2D2E 3838 4276 5974"
	$"FE83 1F6D 8391 8B66 A16E 929F BCBC B4D0"
	$"D09D D09D 9DCC BECC BE9D E3CC 9DCC BDCC"
	$"BDBD E0FD BD04 A0BD A0A0 DFFE A00F DFD9"
	$"DFA0 71DF A071 A0DF 71DF 71D8 A071 FBD8"
	$"FBC0 0375 C075 C0FB 7500 EFFE 7511 EF75"
	$"1D75 F975 F875 75F8 1DF8 1DF8 1DF8 1DF9"
	$"012A 2A0D 070D 070C 0707 0C07 0C07 070D"
	$"0107 070D 0D07 070D 0107 0101 0C0D 010C"
	$"0107 0C0D 1001 0D10 010F 0D10 0110 FE01"
	$"1D10 2929 0110 2929 1029 1010 2912 2910"
	$"0F10 293A 1010 2912 2910 2929 1027 10FD"
	$"2700 29F8 2700 24FE 2700 13FD 2706 1425"
	$"2727 2424 27FE 2405 2524 2524 1325 FE24"
	$"0925 2415 2524 2525 2425 2505 2124 2521"
	$"2422 FD21 0025 FE21 0325 2121 25FE 2108"
	$"3025 1E1E 3021 201E 21FE 200A 1E21 301E"
	$"301E 2030 1E20 1EFC 2011 301E 3020 1E1E"
	$"201E 201E 311E 201E 201E 2D2D FE1E 211B"
	$"2030 1B30 1B1B 202D 202D 2E36 3843 7651"
	$"5958 836D 8B8B AE8B 66A1 A192 ACBC BCB4"
	$"D0FA 9DFD CC00 BEFE CC08 E0BD E0E0 BDA0"
	$"A0DF A01B A0DF A0DF A0DF A0A0 DFA0 F3A0"
	$"D9A0 D8A0 DF71 A0D8 A071 D871 D8D8 C0D8"
	$"F8C0 FD75 00C0 FB75 04EF F81D EFF9 FD75"
	$"06F8 7575 1D1D F81D FEF8 00F9 0135 FE07"
	$"160D 0C07 0C0C 070C 0C0D 0D07 070D 0D07"
	$"0D0D 1007 0C0F 0D0C FE01 170F 0D01 0F01"
	$"0D29 010F 0129 010D 100D 2901 1029 0F10"
	$"2910 0FFE 2903 1229 2910 FD29 0A12 2927"
	$"3A12 2612 2927 2726 FE29 0627 1027 3A27"
	$"2710 FD27 0013 FC27 FF13 FF27 1C25 2427"
	$"1313 2427 1327 2424 2524 2725 1425 2424"
	$"1324 3925 2421 1525 2121 1224 1521 3924"
	$"2125 2121 3921 3025 2130 1E21 1E15 FE21"
	$"FF1E 0030 FE21 0330 201E 21FE 2004 211E"
	$"201E 30FD 1E03 301E 1E30 FE1E 0720 1E30"
	$"201E 2020 2DFE 1E01 202D FE20 2630 2D20"
	$"1E30 1E20 1B30 1E2D 202D 2D2E 3638 4247"
	$"5974 8383 AE66 AD66 66A1 A16E 929F BCB4"
	$"D0D0 9DD0 FE9D 12CC 9DE3 CCBE E3CC CCBD"
	$"E0BD E0E0 BDA0 DFA0 A0DF 00DF F9A0 10F3"
	$"D9F3 71A0 D871 D871 D871 71D8 71D8 C0D8"
	$"F8C0 0375 C075 C0FD 7518 F9EF 7575 EF1D"
	$"75EF F875 F875 F9F8 75F9 1D1D F81D 1DF8"
	$"F81D F901 2100 07FE 0DFE 0706 0C0D 070D"
	$"070D 07FD 0CFF 011E 0D0C 010D 0D01 0D0F"
	$"0D0D 0F0F 0101 0D0F 0101 0D01 0F29 0F29"
	$"0F10 0101 290F 01FE 2900 10FE 2901 1029"
	$"FE10 0C29 1229 1012 1229 1212 2910 2729"
	$"FD27 013A 14F7 2711 2513 2427 2724 1327"
	$"1324 2725 2427 2427 2513 FD24 0439 1324"
	$"2439 FE24 0521 2425 2421 2505 2521 3921"
	$"2525 FE21 0025 FE21 0030 FA21 0E1E 2521"
	$"3021 2120 211E 3020 301E 1E20 FE1E 0330"
	$"201E 20FE 1E0E 301E 1E30 2030 1E1E 1B30"
	$"2D20 201E 2DFC 1E08 2D20 1E1E 2D1E 2D1B"
	$"30FC 2D1D 2036 3843 7659 745F 83AE 66AD"
	$"A1A1 90A1 9092 ACBC B4B4 9D9D D09D 9DD7"
	$"9D9D FDCC FFBD 01E0 BDFE E000 BDFB A001"
	$"A0DF FCA0 0EDF D9F3 DFD9 A0D8 71DF 71DF"
	$"71DF 7171 FDD8 01C0 D8FD C001 EFC0 F575"
	$"03EF F9EF 1DFE F804 F975 F81D F8FD 1D05"
	$"F81D F81D F8F9 011D FE07 0008 FE0C FF07"
	$"070D 0C0C 010D 0D07 01FE 0D00 0CFC 0123"
	$"0F01 0C01 010F 0D0F 0F01 0D01 290D 010D"
	$"100D 0101 0F29 1029 103A 0F29 1029 0F29"
	$"2910 2912 FD29 023A 293A FE29 0527 1229"
	$"273A 10FC 2705 1327 2713 2713 FB27 0B24"
	$"2713 1424 1325 1327 2424 27FB 2403 1324"
	$"2425 FB24 FF21 FF25 0021 1124 2125 2421"
	$"2120 2530 1521 2115 2139 2125 1EFE 2110"
	$"301E 201E 2130 301E 2020 1E20 3020 1E20"
	$"20FE 1EFF 200C 1E30 2020 1E20 1E1E 2D1E"
	$"2030 20FD 1E04 2D20 1E20 2DFE 2003 2D1E"
	$"2D20 FE2D 2020 1B2D 2D2E 2E36 3842 7651"
	$"7483 AE66 90A1 906E 9092 92AC 9FB4 B4D0"
	$"B49D 9DD0 9D9D FECC 0ABE CCCC BDCC A2E0"
	$"BDE0 BDD9 FBA0 00DF FAA0 FEDF 0EA0 D9A0"
	$"D871 D871 D871 D871 71D8 C0D8 FAC0 01EF"
	$"C0F1 7509 EFF8 7575 1DF8 1D1D 75F8 FE1D"
	$"FFF8 011D F901 374A 0C0D 0D01 0D07 0D01"
	$"0C07 0C0C 070C 070D 0C07 0701 070D 0C0D"
	$"0D0C 0C01 0C0C 0FFE 0D0D 0F0D 2901 1029"
	$"0F0F 010F 0129 100F 0F10 0129 2910 1029"
	$"2912 2928 2910 2912 1027 2927 2912 1227"
	$"1227 12FE 270B 1327 1227 3A27 2713 3A25"
	$"2714 FC27 0413 2724 2527 FE24 0013 FE24"
	$"0013 FE24 FF25 0124 25FE 2406 2521 2421"
	$"2413 24FE 2105 2125 2121 2524 FE21 0639"
	$"2130 2530 2120 FE21 0130 1EFE 2122 3020"
	$"1E21 211E 1E30 311E 211E 1E30 2030 301E"
	$"1E21 1E20 1E20 1E2D 201E 1E20 1E2F 2D30"
	$"1EFE 2008 1E2F 1E1E 201B 2020 2EFE 2D11"
	$"2E2D 2E2D 2E36 2E38 4243 5159 5883 AEA1"
	$"D1AB FE92 FFAC 049F B4B4 D09D FED0 069D"
	$"D09D 9DBE 9DCC FEE3 FFE0 0ABD E0BD A0DF"
	$"A0A0 D9E0 A0DF 04A0 DFA0 A0DF FEA0 05DF"
	$"A0D8 71DF F5FE D800 F3FD D801 71D8 F9C0"
	$"FF75 00C0 FD75 06EF 75F9 EF75 75EF FA75"
	$"05F8 1DF8 1DF8 1DFC F8FF 1D01 F875 00FF"
};

resource 'PICT' (2051, "Graycale Picker") {
	22792,
	{0, 0, 129, 129},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0081 0081 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0081"
	$"0081 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0081 0081 009A 0000 00FF 8204 0000"
	$"0000 0081 0081 0000 0004 0000 0000 0048"
	$"0000 0048 0000 0010 0020 0003 0008 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0081"
	$"0081 0000 0000 0081 0081 0040 000A 8101"
	$"0001 8200 8100 FE00 00BC 0001 FA00 F801"
	$"FA02 0001 FA03 0001 FA04 0001 FA05 0001"
	$"FA06 0001 FA07 0001 FA08 0001 FA09 0001"
	$"FA0A 0001 FA0B 0001 FA0C 0001 FA0D 0001"
	$"FA0E 0001 FA0F 0001 F800 FA01 0000 FA02"
	$"0000 FA03 0000 FA04 0000 FA05 0000 FA06"
	$"0000 FA07 0000 FA08 0000 FA09 0000 FA0A"
	$"0000 FA0B 0000 FA0C 0000 FA0D 0000 FA0E"
	$"0000 FB0F 000F F700 FA01 0000 FA02 0000"
	$"FA03 0000 FA04 0000 FA05 0000 FA06 0000"
	$"FA07 0000 FA08 0000 FA09 0000 FA0A 0000"
	$"FA0B 0000 FA0C 0000 FA0D 0000 FA0E 0000"
	$"FC0F FF0F 0000 00BC 0001 FA00 F801 FA02"
	$"0001 FA03 0001 FA04 0001 FA05 0001 FA06"
	$"0001 FA07 0001 FA08 0001 FA09 0001 FA0A"
	$"0001 FA0B 0001 FA0C 0001 FA0D 0001 FA0E"
	$"0001 FA0F 0001 F800 FA01 0000 FA02 0000"
	$"FA03 0000 FA04 0000 FA05 0000 FA06 0000"
	$"FA07 0000 FA08 0000 FA09 0000 FA0A 0000"
	$"FA0B 0000 FA0C 0000 FA0D 0000 FA0E 0000"
	$"FB0F 000F F700 FA01 0000 FA02 0000 FA03"
	$"0000 FA04 0000 FA05 0000 FA06 0000 FA07"
	$"0000 FA08 0000 FA09 0000 FA0A 0000 FA0B"
	$"0000 FA0C 0000 FA0D 0000 FA0E 0000 FC0F"
	$"FF0F 0000 00BC 0001 FA00 F801 FA02 0001"
	$"FA03 0001 FA04 0001 FA05 0001 FA06 0001"
	$"FA07 0001 FA08 0001 FA09 0001 FA0A 0001"
	$"FA0B 0001 FA0C 0001 FA0D 0001 FA0E 0001"
	$"FA0F 0001 F800 FA01 0000 FA02 0000 FA03"
	$"0000 FA04 0000 FA05 0000 FA06 0000 FA07"
	$"0000 FA08 0000 FA09 0000 FA0A 0000 FA0B"
	$"0000 FA0C 0000 FA0D 0000 FA0E 0000 FB0F"
	$"000F F700 FA01 0000 FA02 0000 FA03 0000"
	$"FA04 0000 FA05 0000 FA06 0000 FA07 0000"
	$"FA08 0000 FA09 0000 FA0A 0000 FA0B 0000"
	$"FA0C 0000 FA0D 0000 FA0E 0000 FC0F FF0F"
	$"0000 00BC 0001 FA00 F801 FA02 0001 FA03"
	$"0001 FA04 0001 FA05 0001 FA06 0001 FA07"
	$"0001 FA08 0001 FA09 0001 FA0A 0001 FA0B"
	$"0001 FA0C 0001 FA0D 0001 FA0E 0001 FA0F"
	$"0001 F800 FA01 0000 FA02 0000 FA03 0000"
	$"FA04 0000 FA05 0000 FA06 0000 FA07 0000"
	$"FA08 0000 FA09 0000 FA0A 0000 FA0B 0000"
	$"FA0C 0000 FA0D 0000 FA0E 0000 FB0F 000F"
	$"F700 FA01 0000 FA02 0000 FA03 0000 FA04"
	$"0000 FA05 0000 FA06 0000 FA07 0000 FA08"
	$"0000 FA09 0000 FA0A 0000 FA0B 0000 FA0C"
	$"0000 FA0D 0000 FA0E 0000 FC0F FF0F 0000"
	$"00BC 0001 FA00 F801 FA02 0001 FA03 0001"
	$"FA04 0001 FA05 0001 FA06 0001 FA07 0001"
	$"FA08 0001 FA09 0001 FA0A 0001 FA0B 0001"
	$"FA0C 0001 FA0D 0001 FA0E 0001 FA0F 0001"
	$"F800 FA01 0000 FA02 0000 FA03 0000 FA04"
	$"0000 FA05 0000 FA06 0000 FA07 0000 FA08"
	$"0000 FA09 0000 FA0A 0000 FA0B 0000 FA0C"
	$"0000 FA0D 0000 FA0E 0000 FB0F 000F F700"
	$"FA01 0000 FA02 0000 FA03 0000 FA04 0000"
	$"FA05 0000 FA06 0000 FA07 0000 FA08 0000"
	$"FA09 0000 FA0A 0000 FA0B 0000 FA0C 0000"
	$"FA0D 0000 FA0E 0000 FC0F FF0F 0000 00BC"
	$"0001 FA00 F801 FA02 0001 FA03 0001 FA04"
	$"0001 FA05 0001 FA06 0001 FA07 0001 FA08"
	$"0001 FA09 0001 FA0A 0001 FA0B 0001 FA0C"
	$"0001 FA0D 0001 FA0E 0001 FA0F 0001 F800"
	$"FA01 0000 FA02 0000 FA03 0000 FA04 0000"
	$"FA05 0000 FA06 0000 FA07 0000 FA08 0000"
	$"FA09 0000 FA0A 0000 FA0B 0000 FA0C 0000"
	$"FA0D 0000 FA0E 0000 FB0F 000F F700 FA01"
	$"0000 FA02 0000 FA03 0000 FA04 0000 FA05"
	$"0000 FA06 0000 FA07 0000 FA08 0000 FA09"
	$"0000 FA0A 0000 FA0B 0000 FA0C 0000 FA0D"
	$"0000 FA0E 0000 FC0F FF0F 0000 00BC 0001"
	$"FA00 F801 FA02 0001 FA03 0001 FA04 0001"
	$"FA05 0001 FA06 0001 FA07 0001 FA08 0001"
	$"FA09 0001 FA0A 0001 FA0B 0001 FA0C 0001"
	$"FA0D 0001 FA0E 0001 FA0F 0001 F800 FA01"
	$"0000 FA02 0000 FA03 0000 FA04 0000 FA05"
	$"0000 FA06 0000 FA07 0000 FA08 0000 FA09"
	$"0000 FA0A 0000 FA0B 0000 FA0C 0000 FA0D"
	$"0000 FA0E 0000 FB0F 000F F700 FA01 0000"
	$"FA02 0000 FA03 0000 FA04 0000 FA05 0000"
	$"FA06 0000 FA07 0000 FA08 0000 FA09 0000"
	$"FA0A 0000 FA0B 0000 FA0C 0000 FA0D 0000"
	$"FA0E 0000 FC0F FF0F 0000 000A 8101 0001"
	$"8200 8100 FE00 00C7 0001 FA10 0001 FA11"
	$"0001 FA12 0001 FA13 0001 FA14 0001 FA15"
	$"0001 FA16 0001 FA17 0001 FA18 0001 FA19"
	$"0001 FA1A 0001 FA1B 0001 FA1C 0001 FA1D"
	$"0001 FA1E 0001 FA1F 0101 00FA 1000 00FA"
	$"1100 00FA 1200 00FA 1300 00FA 1400 00FA"
	$"1500 00FA 1600 00FA 1700 00FA 1800 00FA"
	$"1900 00FA 1A00 00FA 1B00 00FA 1C00 00FA"
	$"1D00 00FA 1E00 00FB 1F02 1F00 00FA 1000"
	$"00FA 1100 00FA 1200 00FA 1300 00FA 1400"
	$"00FA 1500 00FA 1600 00FA 1700 00FA 1800"
	$"00FA 1900 00FA 1A00 00FA 1B00 00FA 1C00"
	$"00FA 1D00 00FA 1E00 00FC 1FFF 1F00 0000"
	$"C700 01FA 1000 01FA 1100 01FA 1200 01FA"
	$"1300 01FA 1400 01FA 1500 01FA 1600 01FA"
	$"1700 01FA 1800 01FA 1900 01FA 1A00 01FA"
	$"1B00 01FA 1C00 01FA 1D00 01FA 1E00 01FA"
	$"1F01 0100 FA10 0000 FA11 0000 FA12 0000"
	$"FA13 0000 FA14 0000 FA15 0000 FA16 0000"
	$"FA17 0000 FA18 0000 FA19 0000 FA1A 0000"
	$"FA1B 0000 FA1C 0000 FA1D 0000 FA1E 0000"
	$"FB1F 021F 0000 FA10 0000 FA11 0000 FA12"
	$"0000 FA13 0000 FA14 0000 FA15 0000 FA16"
	$"0000 FA17 0000 FA18 0000 FA19 0000 FA1A"
	$"0000 FA1B 0000 FA1C 0000 FA1D 0000 FA1E"
	$"0000 FC1F FF1F 0000 00C7 0001 FA10 0001"
	$"FA11 0001 FA12 0001 FA13 0001 FA14 0001"
	$"FA15 0001 FA16 0001 FA17 0001 FA18 0001"
	$"FA19 0001 FA1A 0001 FA1B 0001 FA1C 0001"
	$"FA1D 0001 FA1E 0001 FA1F 0101 00FA 1000"
	$"00FA 1100 00FA 1200 00FA 1300 00FA 1400"
	$"00FA 1500 00FA 1600 00FA 1700 00FA 1800"
	$"00FA 1900 00FA 1A00 00FA 1B00 00FA 1C00"
	$"00FA 1D00 00FA 1E00 00FB 1F02 1F00 00FA"
	$"1000 00FA 1100 00FA 1200 00FA 1300 00FA"
	$"1400 00FA 1500 00FA 1600 00FA 1700 00FA"
	$"1800 00FA 1900 00FA 1A00 00FA 1B00 00FA"
	$"1C00 00FA 1D00 00FA 1E00 00FC 1FFF 1F00"
	$"0000 C700 01FA 1000 01FA 1100 01FA 1200"
	$"01FA 1300 01FA 1400 01FA 1500 01FA 1600"
	$"01FA 1700 01FA 1800 01FA 1900 01FA 1A00"
	$"01FA 1B00 01FA 1C00 01FA 1D00 01FA 1E00"
	$"01FA 1F01 0100 FA10 0000 FA11 0000 FA12"
	$"0000 FA13 0000 FA14 0000 FA15 0000 FA16"
	$"0000 FA17 0000 FA18 0000 FA19 0000 FA1A"
	$"0000 FA1B 0000 FA1C 0000 FA1D 0000 FA1E"
	$"0000 FB1F 021F 0000 FA10 0000 FA11 0000"
	$"FA12 0000 FA13 0000 FA14 0000 FA15 0000"
	$"FA16 0000 FA17 0000 FA18 0000 FA19 0000"
	$"FA1A 0000 FA1B 0000 FA1C 0000 FA1D 0000"
	$"FA1E 0000 FC1F FF1F 0000 00C7 0001 FA10"
	$"0001 FA11 0001 FA12 0001 FA13 0001 FA14"
	$"0001 FA15 0001 FA16 0001 FA17 0001 FA18"
	$"0001 FA19 0001 FA1A 0001 FA1B 0001 FA1C"
	$"0001 FA1D 0001 FA1E 0001 FA1F 0101 00FA"
	$"1000 00FA 1100 00FA 1200 00FA 1300 00FA"
	$"1400 00FA 1500 00FA 1600 00FA 1700 00FA"
	$"1800 00FA 1900 00FA 1A00 00FA 1B00 00FA"
	$"1C00 00FA 1D00 00FA 1E00 00FB 1F02 1F00"
	$"00FA 1000 00FA 1100 00FA 1200 00FA 1300"
	$"00FA 1400 00FA 1500 00FA 1600 00FA 1700"
	$"00FA 1800 00FA 1900 00FA 1A00 00FA 1B00"
	$"00FA 1C00 00FA 1D00 00FA 1E00 00FC 1FFF"
	$"1F00 0000 C700 01FA 1000 01FA 1100 01FA"
	$"1200 01FA 1300 01FA 1400 01FA 1500 01FA"
	$"1600 01FA 1700 01FA 1800 01FA 1900 01FA"
	$"1A00 01FA 1B00 01FA 1C00 01FA 1D00 01FA"
	$"1E00 01FA 1F01 0100 FA10 0000 FA11 0000"
	$"FA12 0000 FA13 0000 FA14 0000 FA15 0000"
	$"FA16 0000 FA17 0000 FA18 0000 FA19 0000"
	$"FA1A 0000 FA1B 0000 FA1C 0000 FA1D 0000"
	$"FA1E 0000 FB1F 021F 0000 FA10 0000 FA11"
	$"0000 FA12 0000 FA13 0000 FA14 0000 FA15"
	$"0000 FA16 0000 FA17 0000 FA18 0000 FA19"
	$"0000 FA1A 0000 FA1B 0000 FA1C 0000 FA1D"
	$"0000 FA1E 0000 FC1F FF1F 0000 00C7 0001"
	$"FA10 0001 FA11 0001 FA12 0001 FA13 0001"
	$"FA14 0001 FA15 0001 FA16 0001 FA17 0001"
	$"FA18 0001 FA19 0001 FA1A 0001 FA1B 0001"
	$"FA1C 0001 FA1D 0001 FA1E 0001 FA1F 0101"
	$"00FA 1000 00FA 1100 00FA 1200 00FA 1300"
	$"00FA 1400 00FA 1500 00FA 1600 00FA 1700"
	$"00FA 1800 00FA 1900 00FA 1A00 00FA 1B00"
	$"00FA 1C00 00FA 1D00 00FA 1E00 00FB 1F02"
	$"1F00 00FA 1000 00FA 1100 00FA 1200 00FA"
	$"1300 00FA 1400 00FA 1500 00FA 1600 00FA"
	$"1700 00FA 1800 00FA 1900 00FA 1A00 00FA"
	$"1B00 00FA 1C00 00FA 1D00 00FA 1E00 00FC"
	$"1FFF 1F00 0000 0A81 0100 0182 0081 00FE"
	$"0000 C700 01FA 2000 01FA 2100 01FA 2200"
	$"01FA 2300 01FA 2400 01FA 2500 01FA 2600"
	$"01FA 2700 01FA 2800 01FA 2900 01FA 2A00"
	$"01FA 2B00 01FA 2C00 01FA 2D00 01FA 2E00"
	$"01FA 2F01 0100 FA20 0000 FA21 0000 FA22"
	$"0000 FA23 0000 FA24 0000 FA25 0000 FA26"
	$"0000 FA27 0000 FA28 0000 FA29 0000 FA2A"
	$"0000 FA2B 0000 FA2C 0000 FA2D 0000 FA2E"
	$"0000 FB2F 022F 0000 FA20 0000 FA21 0000"
	$"FA22 0000 FA23 0000 FA24 0000 FA25 0000"
	$"FA26 0000 FA27 0000 FA28 0000 FA29 0000"
	$"FA2A 0000 FA2B 0000 FA2C 0000 FA2D 0000"
	$"FA2E 0000 FC2F FF2F 0000 00C7 0001 FA20"
	$"0001 FA21 0001 FA22 0001 FA23 0001 FA24"
	$"0001 FA25 0001 FA26 0001 FA27 0001 FA28"
	$"0001 FA29 0001 FA2A 0001 FA2B 0001 FA2C"
	$"0001 FA2D 0001 FA2E 0001 FA2F 0101 00FA"
	$"2000 00FA 2100 00FA 2200 00FA 2300 00FA"
	$"2400 00FA 2500 00FA 2600 00FA 2700 00FA"
	$"2800 00FA 2900 00FA 2A00 00FA 2B00 00FA"
	$"2C00 00FA 2D00 00FA 2E00 00FB 2F02 2F00"
	$"00FA 2000 00FA 2100 00FA 2200 00FA 2300"
	$"00FA 2400 00FA 2500 00FA 2600 00FA 2700"
	$"00FA 2800 00FA 2900 00FA 2A00 00FA 2B00"
	$"00FA 2C00 00FA 2D00 00FA 2E00 00FC 2FFF"
	$"2F00 0000 C700 01FA 2000 01FA 2100 01FA"
	$"2200 01FA 2300 01FA 2400 01FA 2500 01FA"
	$"2600 01FA 2700 01FA 2800 01FA 2900 01FA"
	$"2A00 01FA 2B00 01FA 2C00 01FA 2D00 01FA"
	$"2E00 01FA 2F01 0100 FA20 0000 FA21 0000"
	$"FA22 0000 FA23 0000 FA24 0000 FA25 0000"
	$"FA26 0000 FA27 0000 FA28 0000 FA29 0000"
	$"FA2A 0000 FA2B 0000 FA2C 0000 FA2D 0000"
	$"FA2E 0000 FB2F 022F 0000 FA20 0000 FA21"
	$"0000 FA22 0000 FA23 0000 FA24 0000 FA25"
	$"0000 FA26 0000 FA27 0000 FA28 0000 FA29"
	$"0000 FA2A 0000 FA2B 0000 FA2C 0000 FA2D"
	$"0000 FA2E 0000 FC2F FF2F 0000 00C7 0001"
	$"FA20 0001 FA21 0001 FA22 0001 FA23 0001"
	$"FA24 0001 FA25 0001 FA26 0001 FA27 0001"
	$"FA28 0001 FA29 0001 FA2A 0001 FA2B 0001"
	$"FA2C 0001 FA2D 0001 FA2E 0001 FA2F 0101"
	$"00FA 2000 00FA 2100 00FA 2200 00FA 2300"
	$"00FA 2400 00FA 2500 00FA 2600 00FA 2700"
	$"00FA 2800 00FA 2900 00FA 2A00 00FA 2B00"
	$"00FA 2C00 00FA 2D00 00FA 2E00 00FB 2F02"
	$"2F00 00FA 2000 00FA 2100 00FA 2200 00FA"
	$"2300 00FA 2400 00FA 2500 00FA 2600 00FA"
	$"2700 00FA 2800 00FA 2900 00FA 2A00 00FA"
	$"2B00 00FA 2C00 00FA 2D00 00FA 2E00 00FC"
	$"2FFF 2F00 0000 C700 01FA 2000 01FA 2100"
	$"01FA 2200 01FA 2300 01FA 2400 01FA 2500"
	$"01FA 2600 01FA 2700 01FA 2800 01FA 2900"
	$"01FA 2A00 01FA 2B00 01FA 2C00 01FA 2D00"
	$"01FA 2E00 01FA 2F01 0100 FA20 0000 FA21"
	$"0000 FA22 0000 FA23 0000 FA24 0000 FA25"
	$"0000 FA26 0000 FA27 0000 FA28 0000 FA29"
	$"0000 FA2A 0000 FA2B 0000 FA2C 0000 FA2D"
	$"0000 FA2E 0000 FB2F 022F 0000 FA20 0000"
	$"FA21 0000 FA22 0000 FA23 0000 FA24 0000"
	$"FA25 0000 FA26 0000 FA27 0000 FA28 0000"
	$"FA29 0000 FA2A 0000 FA2B 0000 FA2C 0000"
	$"FA2D 0000 FA2E 0000 FC2F FF2F 0000 00C7"
	$"0001 FA20 0001 FA21 0001 FA22 0001 FA23"
	$"0001 FA24 0001 FA25 0001 FA26 0001 FA27"
	$"0001 FA28 0001 FA29 0001 FA2A 0001 FA2B"
	$"0001 FA2C 0001 FA2D 0001 FA2E 0001 FA2F"
	$"0101 00FA 2000 00FA 2100 00FA 2200 00FA"
	$"2300 00FA 2400 00FA 2500 00FA 2600 00FA"
	$"2700 00FA 2800 00FA 2900 00FA 2A00 00FA"
	$"2B00 00FA 2C00 00FA 2D00 00FA 2E00 00FB"
	$"2F02 2F00 00FA 2000 00FA 2100 00FA 2200"
	$"00FA 2300 00FA 2400 00FA 2500 00FA 2600"
	$"00FA 2700 00FA 2800 00FA 2900 00FA 2A00"
	$"00FA 2B00 00FA 2C00 00FA 2D00 00FA 2E00"
	$"00FC 2FFF 2F00 0000 C700 01FA 2000 01FA"
	$"2100 01FA 2200 01FA 2300 01FA 2400 01FA"
	$"2500 01FA 2600 01FA 2700 01FA 2800 01FA"
	$"2900 01FA 2A00 01FA 2B00 01FA 2C00 01FA"
	$"2D00 01FA 2E00 01FA 2F01 0100 FA20 0000"
	$"FA21 0000 FA22 0000 FA23 0000 FA24 0000"
	$"FA25 0000 FA26 0000 FA27 0000 FA28 0000"
	$"FA29 0000 FA2A 0000 FA2B 0000 FA2C 0000"
	$"FA2D 0000 FA2E 0000 FB2F 022F 0000 FA20"
	$"0000 FA21 0000 FA22 0000 FA23 0000 FA24"
	$"0000 FA25 0000 FA26 0000 FA27 0000 FA28"
	$"0000 FA29 0000 FA2A 0000 FA2B 0000 FA2C"
	$"0000 FA2D 0000 FA2E 0000 FC2F FF2F 0000"
	$"000A 8101 0001 8200 8100 FE00 00C7 0001"
	$"FA30 0001 FA31 0001 FA32 0001 FA33 0001"
	$"FA34 0001 FA35 0001 FA36 0001 FA37 0001"
	$"FA38 0001 FA39 0001 FA3A 0001 FA3B 0001"
	$"FA3C 0001 FA3D 0001 FA3E 0001 FA3F 0101"
	$"00FA 3000 00FA 3100 00FA 3200 00FA 3300"
	$"00FA 3400 00FA 3500 00FA 3600 00FA 3700"
	$"00FA 3800 00FA 3900 00FA 3A00 00FA 3B00"
	$"00FA 3C00 00FA 3D00 00FA 3E00 00FB 3F02"
	$"3F00 00FA 3000 00FA 3100 00FA 3200 00FA"
	$"3300 00FA 3400 00FA 3500 00FA 3600 00FA"
	$"3700 00FA 3800 00FA 3900 00FA 3A00 00FA"
	$"3B00 00FA 3C00 00FA 3D00 00FA 3E00 00FC"
	$"3FFF 3F00 0000 C700 01FA 3000 01FA 3100"
	$"01FA 3200 01FA 3300 01FA 3400 01FA 3500"
	$"01FA 3600 01FA 3700 01FA 3800 01FA 3900"
	$"01FA 3A00 01FA 3B00 01FA 3C00 01FA 3D00"
	$"01FA 3E00 01FA 3F01 0100 FA30 0000 FA31"
	$"0000 FA32 0000 FA33 0000 FA34 0000 FA35"
	$"0000 FA36 0000 FA37 0000 FA38 0000 FA39"
	$"0000 FA3A 0000 FA3B 0000 FA3C 0000 FA3D"
	$"0000 FA3E 0000 FB3F 023F 0000 FA30 0000"
	$"FA31 0000 FA32 0000 FA33 0000 FA34 0000"
	$"FA35 0000 FA36 0000 FA37 0000 FA38 0000"
	$"FA39 0000 FA3A 0000 FA3B 0000 FA3C 0000"
	$"FA3D 0000 FA3E 0000 FC3F FF3F 0000 00C7"
	$"0001 FA30 0001 FA31 0001 FA32 0001 FA33"
	$"0001 FA34 0001 FA35 0001 FA36 0001 FA37"
	$"0001 FA38 0001 FA39 0001 FA3A 0001 FA3B"
	$"0001 FA3C 0001 FA3D 0001 FA3E 0001 FA3F"
	$"0101 00FA 3000 00FA 3100 00FA 3200 00FA"
	$"3300 00FA 3400 00FA 3500 00FA 3600 00FA"
	$"3700 00FA 3800 00FA 3900 00FA 3A00 00FA"
	$"3B00 00FA 3C00 00FA 3D00 00FA 3E00 00FB"
	$"3F02 3F00 00FA 3000 00FA 3100 00FA 3200"
	$"00FA 3300 00FA 3400 00FA 3500 00FA 3600"
	$"00FA 3700 00FA 3800 00FA 3900 00FA 3A00"
	$"00FA 3B00 00FA 3C00 00FA 3D00 00FA 3E00"
	$"00FC 3FFF 3F00 0000 C700 01FA 3000 01FA"
	$"3100 01FA 3200 01FA 3300 01FA 3400 01FA"
	$"3500 01FA 3600 01FA 3700 01FA 3800 01FA"
	$"3900 01FA 3A00 01FA 3B00 01FA 3C00 01FA"
	$"3D00 01FA 3E00 01FA 3F01 0100 FA30 0000"
	$"FA31 0000 FA32 0000 FA33 0000 FA34 0000"
	$"FA35 0000 FA36 0000 FA37 0000 FA38 0000"
	$"FA39 0000 FA3A 0000 FA3B 0000 FA3C 0000"
	$"FA3D 0000 FA3E 0000 FB3F 023F 0000 FA30"
	$"0000 FA31 0000 FA32 0000 FA33 0000 FA34"
	$"0000 FA35 0000 FA36 0000 FA37 0000 FA38"
	$"0000 FA39 0000 FA3A 0000 FA3B 0000 FA3C"
	$"0000 FA3D 0000 FA3E 0000 FC3F FF3F 0000"
	$"00C7 0001 FA30 0001 FA31 0001 FA32 0001"
	$"FA33 0001 FA34 0001 FA35 0001 FA36 0001"
	$"FA37 0001 FA38 0001 FA39 0001 FA3A 0001"
	$"FA3B 0001 FA3C 0001 FA3D 0001 FA3E 0001"
	$"FA3F 0101 00FA 3000 00FA 3100 00FA 3200"
	$"00FA 3300 00FA 3400 00FA 3500 00FA 3600"
	$"00FA 3700 00FA 3800 00FA 3900 00FA 3A00"
	$"00FA 3B00 00FA 3C00 00FA 3D00 00FA 3E00"
	$"00FB 3F02 3F00 00FA 3000 00FA 3100 00FA"
	$"3200 00FA 3300 00FA 3400 00FA 3500 00FA"
	$"3600 00FA 3700 00FA 3800 00FA 3900 00FA"
	$"3A00 00FA 3B00 00FA 3C00 00FA 3D00 00FA"
	$"3E00 00FC 3FFF 3F00 0000 C700 01FA 3000"
	$"01FA 3100 01FA 3200 01FA 3300 01FA 3400"
	$"01FA 3500 01FA 3600 01FA 3700 01FA 3800"
	$"01FA 3900 01FA 3A00 01FA 3B00 01FA 3C00"
	$"01FA 3D00 01FA 3E00 01FA 3F01 0100 FA30"
	$"0000 FA31 0000 FA32 0000 FA33 0000 FA34"
	$"0000 FA35 0000 FA36 0000 FA37 0000 FA38"
	$"0000 FA39 0000 FA3A 0000 FA3B 0000 FA3C"
	$"0000 FA3D 0000 FA3E 0000 FB3F 023F 0000"
	$"FA30 0000 FA31 0000 FA32 0000 FA33 0000"
	$"FA34 0000 FA35 0000 FA36 0000 FA37 0000"
	$"FA38 0000 FA39 0000 FA3A 0000 FA3B 0000"
	$"FA3C 0000 FA3D 0000 FA3E 0000 FC3F FF3F"
	$"0000 00C7 0001 FA30 0001 FA31 0001 FA32"
	$"0001 FA33 0001 FA34 0001 FA35 0001 FA36"
	$"0001 FA37 0001 FA38 0001 FA39 0001 FA3A"
	$"0001 FA3B 0001 FA3C 0001 FA3D 0001 FA3E"
	$"0001 FA3F 0101 00FA 3000 00FA 3100 00FA"
	$"3200 00FA 3300 00FA 3400 00FA 3500 00FA"
	$"3600 00FA 3700 00FA 3800 00FA 3900 00FA"
	$"3A00 00FA 3B00 00FA 3C00 00FA 3D00 00FA"
	$"3E00 00FB 3F02 3F00 00FA 3000 00FA 3100"
	$"00FA 3200 00FA 3300 00FA 3400 00FA 3500"
	$"00FA 3600 00FA 3700 00FA 3800 00FA 3900"
	$"00FA 3A00 00FA 3B00 00FA 3C00 00FA 3D00"
	$"00FA 3E00 00FC 3FFF 3F00 0000 0A81 0100"
	$"0182 0081 00FE 0000 C700 01FA 4000 01FA"
	$"4100 01FA 4200 01FA 4300 01FA 4400 01FA"
	$"4500 01FA 4600 01FA 4700 01FA 4800 01FA"
	$"4900 01FA 4A00 01FA 4B00 01FA 4C00 01FA"
	$"4D00 01FA 4E00 01FA 4F01 0100 FA40 0000"
	$"FA41 0000 FA42 0000 FA43 0000 FA44 0000"
	$"FA45 0000 FA46 0000 FA47 0000 FA48 0000"
	$"FA49 0000 FA4A 0000 FA4B 0000 FA4C 0000"
	$"FA4D 0000 FA4E 0000 FB4F 024F 0000 FA40"
	$"0000 FA41 0000 FA42 0000 FA43 0000 FA44"
	$"0000 FA45 0000 FA46 0000 FA47 0000 FA48"
	$"0000 FA49 0000 FA4A 0000 FA4B 0000 FA4C"
	$"0000 FA4D 0000 FA4E 0000 FC4F FF4F 0000"
	$"00C7 0001 FA40 0001 FA41 0001 FA42 0001"
	$"FA43 0001 FA44 0001 FA45 0001 FA46 0001"
	$"FA47 0001 FA48 0001 FA49 0001 FA4A 0001"
	$"FA4B 0001 FA4C 0001 FA4D 0001 FA4E 0001"
	$"FA4F 0101 00FA 4000 00FA 4100 00FA 4200"
	$"00FA 4300 00FA 4400 00FA 4500 00FA 4600"
	$"00FA 4700 00FA 4800 00FA 4900 00FA 4A00"
	$"00FA 4B00 00FA 4C00 00FA 4D00 00FA 4E00"
	$"00FB 4F02 4F00 00FA 4000 00FA 4100 00FA"
	$"4200 00FA 4300 00FA 4400 00FA 4500 00FA"
	$"4600 00FA 4700 00FA 4800 00FA 4900 00FA"
	$"4A00 00FA 4B00 00FA 4C00 00FA 4D00 00FA"
	$"4E00 00FC 4FFF 4F00 0000 C700 01FA 4000"
	$"01FA 4100 01FA 4200 01FA 4300 01FA 4400"
	$"01FA 4500 01FA 4600 01FA 4700 01FA 4800"
	$"01FA 4900 01FA 4A00 01FA 4B00 01FA 4C00"
	$"01FA 4D00 01FA 4E00 01FA 4F01 0100 FA40"
	$"0000 FA41 0000 FA42 0000 FA43 0000 FA44"
	$"0000 FA45 0000 FA46 0000 FA47 0000 FA48"
	$"0000 FA49 0000 FA4A 0000 FA4B 0000 FA4C"
	$"0000 FA4D 0000 FA4E 0000 FB4F 024F 0000"
	$"FA40 0000 FA41 0000 FA42 0000 FA43 0000"
	$"FA44 0000 FA45 0000 FA46 0000 FA47 0000"
	$"FA48 0000 FA49 0000 FA4A 0000 FA4B 0000"
	$"FA4C 0000 FA4D 0000 FA4E 0000 FC4F FF4F"
	$"0000 00C7 0001 FA40 0001 FA41 0001 FA42"
	$"0001 FA43 0001 FA44 0001 FA45 0001 FA46"
	$"0001 FA47 0001 FA48 0001 FA49 0001 FA4A"
	$"0001 FA4B 0001 FA4C 0001 FA4D 0001 FA4E"
	$"0001 FA4F 0101 00FA 4000 00FA 4100 00FA"
	$"4200 00FA 4300 00FA 4400 00FA 4500 00FA"
	$"4600 00FA 4700 00FA 4800 00FA 4900 00FA"
	$"4A00 00FA 4B00 00FA 4C00 00FA 4D00 00FA"
	$"4E00 00FB 4F02 4F00 00FA 4000 00FA 4100"
	$"00FA 4200 00FA 4300 00FA 4400 00FA 4500"
	$"00FA 4600 00FA 4700 00FA 4800 00FA 4900"
	$"00FA 4A00 00FA 4B00 00FA 4C00 00FA 4D00"
	$"00FA 4E00 00FC 4FFF 4F00 0000 C700 01FA"
	$"4000 01FA 4100 01FA 4200 01FA 4300 01FA"
	$"4400 01FA 4500 01FA 4600 01FA 4700 01FA"
	$"4800 01FA 4900 01FA 4A00 01FA 4B00 01FA"
	$"4C00 01FA 4D00 01FA 4E00 01FA 4F01 0100"
	$"FA40 0000 FA41 0000 FA42 0000 FA43 0000"
	$"FA44 0000 FA45 0000 FA46 0000 FA47 0000"
	$"FA48 0000 FA49 0000 FA4A 0000 FA4B 0000"
	$"FA4C 0000 FA4D 0000 FA4E 0000 FB4F 024F"
	$"0000 FA40 0000 FA41 0000 FA42 0000 FA43"
	$"0000 FA44 0000 FA45 0000 FA46 0000 FA47"
	$"0000 FA48 0000 FA49 0000 FA4A 0000 FA4B"
	$"0000 FA4C 0000 FA4D 0000 FA4E 0000 FC4F"
	$"FF4F 0000 00C7 0001 FA40 0001 FA41 0001"
	$"FA42 0001 FA43 0001 FA44 0001 FA45 0001"
	$"FA46 0001 FA47 0001 FA48 0001 FA49 0001"
	$"FA4A 0001 FA4B 0001 FA4C 0001 FA4D 0001"
	$"FA4E 0001 FA4F 0101 00FA 4000 00FA 4100"
	$"00FA 4200 00FA 4300 00FA 4400 00FA 4500"
	$"00FA 4600 00FA 4700 00FA 4800 00FA 4900"
	$"00FA 4A00 00FA 4B00 00FA 4C00 00FA 4D00"
	$"00FA 4E00 00FB 4F02 4F00 00FA 4000 00FA"
	$"4100 00FA 4200 00FA 4300 00FA 4400 00FA"
	$"4500 00FA 4600 00FA 4700 00FA 4800 00FA"
	$"4900 00FA 4A00 00FA 4B00 00FA 4C00 00FA"
	$"4D00 00FA 4E00 00FC 4FFF 4F00 0000 C700"
	$"01FA 4000 01FA 4100 01FA 4200 01FA 4300"
	$"01FA 4400 01FA 4500 01FA 4600 01FA 4700"
	$"01FA 4800 01FA 4900 01FA 4A00 01FA 4B00"
	$"01FA 4C00 01FA 4D00 01FA 4E00 01FA 4F01"
	$"0100 FA40 0000 FA41 0000 FA42 0000 FA43"
	$"0000 FA44 0000 FA45 0000 FA46 0000 FA47"
	$"0000 FA48 0000 FA49 0000 FA4A 0000 FA4B"
	$"0000 FA4C 0000 FA4D 0000 FA4E 0000 FB4F"
	$"024F 0000 FA40 0000 FA41 0000 FA42 0000"
	$"FA43 0000 FA44 0000 FA45 0000 FA46 0000"
	$"FA47 0000 FA48 0000 FA49 0000 FA4A 0000"
	$"FA4B 0000 FA4C 0000 FA4D 0000 FA4E 0000"
	$"FC4F FF4F 0000 000A 8101 0001 8200 8100"
	$"FE00 00C7 0001 FA50 0001 FA51 0001 FA52"
	$"0001 FA53 0001 FA54 0001 FA55 0001 FA56"
	$"0001 FA57 0001 FA58 0001 FA59 0001 FA5A"
	$"0001 FA5B 0001 FA5C 0001 FA5D 0001 FA5E"
	$"0001 FA5F 0101 00FA 5000 00FA 5100 00FA"
	$"5200 00FA 5300 00FA 5400 00FA 5500 00FA"
	$"5600 00FA 5700 00FA 5800 00FA 5900 00FA"
	$"5A00 00FA 5B00 00FA 5C00 00FA 5D00 00FA"
	$"5E00 00FB 5F02 5F00 00FA 5000 00FA 5100"
	$"00FA 5200 00FA 5300 00FA 5400 00FA 5500"
	$"00FA 5600 00FA 5700 00FA 5800 00FA 5900"
	$"00FA 5A00 00FA 5B00 00FA 5C00 00FA 5D00"
	$"00FA 5E00 00FC 5FFF 5F00 0000 C700 01FA"
	$"5000 01FA 5100 01FA 5200 01FA 5300 01FA"
	$"5400 01FA 5500 01FA 5600 01FA 5700 01FA"
	$"5800 01FA 5900 01FA 5A00 01FA 5B00 01FA"
	$"5C00 01FA 5D00 01FA 5E00 01FA 5F01 0100"
	$"FA50 0000 FA51 0000 FA52 0000 FA53 0000"
	$"FA54 0000 FA55 0000 FA56 0000 FA57 0000"
	$"FA58 0000 FA59 0000 FA5A 0000 FA5B 0000"
	$"FA5C 0000 FA5D 0000 FA5E 0000 FB5F 025F"
	$"0000 FA50 0000 FA51 0000 FA52 0000 FA53"
	$"0000 FA54 0000 FA55 0000 FA56 0000 FA57"
	$"0000 FA58 0000 FA59 0000 FA5A 0000 FA5B"
	$"0000 FA5C 0000 FA5D 0000 FA5E 0000 FC5F"
	$"FF5F 0000 00C7 0001 FA50 0001 FA51 0001"
	$"FA52 0001 FA53 0001 FA54 0001 FA55 0001"
	$"FA56 0001 FA57 0001 FA58 0001 FA59 0001"
	$"FA5A 0001 FA5B 0001 FA5C 0001 FA5D 0001"
	$"FA5E 0001 FA5F 0101 00FA 5000 00FA 5100"
	$"00FA 5200 00FA 5300 00FA 5400 00FA 5500"
	$"00FA 5600 00FA 5700 00FA 5800 00FA 5900"
	$"00FA 5A00 00FA 5B00 00FA 5C00 00FA 5D00"
	$"00FA 5E00 00FB 5F02 5F00 00FA 5000 00FA"
	$"5100 00FA 5200 00FA 5300 00FA 5400 00FA"
	$"5500 00FA 5600 00FA 5700 00FA 5800 00FA"
	$"5900 00FA 5A00 00FA 5B00 00FA 5C00 00FA"
	$"5D00 00FA 5E00 00FC 5FFF 5F00 0000 C700"
	$"01FA 5000 01FA 5100 01FA 5200 01FA 5300"
	$"01FA 5400 01FA 5500 01FA 5600 01FA 5700"
	$"01FA 5800 01FA 5900 01FA 5A00 01FA 5B00"
	$"01FA 5C00 01FA 5D00 01FA 5E00 01FA 5F01"
	$"0100 FA50 0000 FA51 0000 FA52 0000 FA53"
	$"0000 FA54 0000 FA55 0000 FA56 0000 FA57"
	$"0000 FA58 0000 FA59 0000 FA5A 0000 FA5B"
	$"0000 FA5C 0000 FA5D 0000 FA5E 0000 FB5F"
	$"025F 0000 FA50 0000 FA51 0000 FA52 0000"
	$"FA53 0000 FA54 0000 FA55 0000 FA56 0000"
	$"FA57 0000 FA58 0000 FA59 0000 FA5A 0000"
	$"FA5B 0000 FA5C 0000 FA5D 0000 FA5E 0000"
	$"FC5F FF5F 0000 00C7 0001 FA50 0001 FA51"
	$"0001 FA52 0001 FA53 0001 FA54 0001 FA55"
	$"0001 FA56 0001 FA57 0001 FA58 0001 FA59"
	$"0001 FA5A 0001 FA5B 0001 FA5C 0001 FA5D"
	$"0001 FA5E 0001 FA5F 0101 00FA 5000 00FA"
	$"5100 00FA 5200 00FA 5300 00FA 5400 00FA"
	$"5500 00FA 5600 00FA 5700 00FA 5800 00FA"
	$"5900 00FA 5A00 00FA 5B00 00FA 5C00 00FA"
	$"5D00 00FA 5E00 00FB 5F02 5F00 00FA 5000"
	$"00FA 5100 00FA 5200 00FA 5300 00FA 5400"
	$"00FA 5500 00FA 5600 00FA 5700 00FA 5800"
	$"00FA 5900 00FA 5A00 00FA 5B00 00FA 5C00"
	$"00FA 5D00 00FA 5E00 00FC 5FFF 5F00 0000"
	$"C700 01FA 5000 01FA 5100 01FA 5200 01FA"
	$"5300 01FA 5400 01FA 5500 01FA 5600 01FA"
	$"5700 01FA 5800 01FA 5900 01FA 5A00 01FA"
	$"5B00 01FA 5C00 01FA 5D00 01FA 5E00 01FA"
	$"5F01 0100 FA50 0000 FA51 0000 FA52 0000"
	$"FA53 0000 FA54 0000 FA55 0000 FA56 0000"
	$"FA57 0000 FA58 0000 FA59 0000 FA5A 0000"
	$"FA5B 0000 FA5C 0000 FA5D 0000 FA5E 0000"
	$"FB5F 025F 0000 FA50 0000 FA51 0000 FA52"
	$"0000 FA53 0000 FA54 0000 FA55 0000 FA56"
	$"0000 FA57 0000 FA58 0000 FA59 0000 FA5A"
	$"0000 FA5B 0000 FA5C 0000 FA5D 0000 FA5E"
	$"0000 FC5F FF5F 0000 00C7 0001 FA50 0001"
	$"FA51 0001 FA52 0001 FA53 0001 FA54 0001"
	$"FA55 0001 FA56 0001 FA57 0001 FA58 0001"
	$"FA59 0001 FA5A 0001 FA5B 0001 FA5C 0001"
	$"FA5D 0001 FA5E 0001 FA5F 0101 00FA 5000"
	$"00FA 5100 00FA 5200 00FA 5300 00FA 5400"
	$"00FA 5500 00FA 5600 00FA 5700 00FA 5800"
	$"00FA 5900 00FA 5A00 00FA 5B00 00FA 5C00"
	$"00FA 5D00 00FA 5E00 00FB 5F02 5F00 00FA"
	$"5000 00FA 5100 00FA 5200 00FA 5300 00FA"
	$"5400 00FA 5500 00FA 5600 00FA 5700 00FA"
	$"5800 00FA 5900 00FA 5A00 00FA 5B00 00FA"
	$"5C00 00FA 5D00 00FA 5E00 00FC 5FFF 5F00"
	$"0000 0A81 0100 0182 0081 00FE 0000 C700"
	$"01FA 6000 01FA 6100 01FA 6200 01FA 6300"
	$"01FA 6400 01FA 6500 01FA 6600 01FA 6700"
	$"01FA 6800 01FA 6900 01FA 6A00 01FA 6B00"
	$"01FA 6C00 01FA 6D00 01FA 6E00 01FA 6F01"
	$"0100 FA60 0000 FA61 0000 FA62 0000 FA63"
	$"0000 FA64 0000 FA65 0000 FA66 0000 FA67"
	$"0000 FA68 0000 FA69 0000 FA6A 0000 FA6B"
	$"0000 FA6C 0000 FA6D 0000 FA6E 0000 FB6F"
	$"026F 0000 FA60 0000 FA61 0000 FA62 0000"
	$"FA63 0000 FA64 0000 FA65 0000 FA66 0000"
	$"FA67 0000 FA68 0000 FA69 0000 FA6A 0000"
	$"FA6B 0000 FA6C 0000 FA6D 0000 FA6E 0000"
	$"FC6F FF6F 0000 00C7 0001 FA60 0001 FA61"
	$"0001 FA62 0001 FA63 0001 FA64 0001 FA65"
	$"0001 FA66 0001 FA67 0001 FA68 0001 FA69"
	$"0001 FA6A 0001 FA6B 0001 FA6C 0001 FA6D"
	$"0001 FA6E 0001 FA6F 0101 00FA 6000 00FA"
	$"6100 00FA 6200 00FA 6300 00FA 6400 00FA"
	$"6500 00FA 6600 00FA 6700 00FA 6800 00FA"
	$"6900 00FA 6A00 00FA 6B00 00FA 6C00 00FA"
	$"6D00 00FA 6E00 00FB 6F02 6F00 00FA 6000"
	$"00FA 6100 00FA 6200 00FA 6300 00FA 6400"
	$"00FA 6500 00FA 6600 00FA 6700 00FA 6800"
	$"00FA 6900 00FA 6A00 00FA 6B00 00FA 6C00"
	$"00FA 6D00 00FA 6E00 00FC 6FFF 6F00 0000"
	$"C700 01FA 6000 01FA 6100 01FA 6200 01FA"
	$"6300 01FA 6400 01FA 6500 01FA 6600 01FA"
	$"6700 01FA 6800 01FA 6900 01FA 6A00 01FA"
	$"6B00 01FA 6C00 01FA 6D00 01FA 6E00 01FA"
	$"6F01 0100 FA60 0000 FA61 0000 FA62 0000"
	$"FA63 0000 FA64 0000 FA65 0000 FA66 0000"
	$"FA67 0000 FA68 0000 FA69 0000 FA6A 0000"
	$"FA6B 0000 FA6C 0000 FA6D 0000 FA6E 0000"
	$"FB6F 026F 0000 FA60 0000 FA61 0000 FA62"
	$"0000 FA63 0000 FA64 0000 FA65 0000 FA66"
	$"0000 FA67 0000 FA68 0000 FA69 0000 FA6A"
	$"0000 FA6B 0000 FA6C 0000 FA6D 0000 FA6E"
	$"0000 FC6F FF6F 0000 00C7 0001 FA60 0001"
	$"FA61 0001 FA62 0001 FA63 0001 FA64 0001"
	$"FA65 0001 FA66 0001 FA67 0001 FA68 0001"
	$"FA69 0001 FA6A 0001 FA6B 0001 FA6C 0001"
	$"FA6D 0001 FA6E 0001 FA6F 0101 00FA 6000"
	$"00FA 6100 00FA 6200 00FA 6300 00FA 6400"
	$"00FA 6500 00FA 6600 00FA 6700 00FA 6800"
	$"00FA 6900 00FA 6A00 00FA 6B00 00FA 6C00"
	$"00FA 6D00 00FA 6E00 00FB 6F02 6F00 00FA"
	$"6000 00FA 6100 00FA 6200 00FA 6300 00FA"
	$"6400 00FA 6500 00FA 6600 00FA 6700 00FA"
	$"6800 00FA 6900 00FA 6A00 00FA 6B00 00FA"
	$"6C00 00FA 6D00 00FA 6E00 00FC 6FFF 6F00"
	$"0000 C700 01FA 6000 01FA 6100 01FA 6200"
	$"01FA 6300 01FA 6400 01FA 6500 01FA 6600"
	$"01FA 6700 01FA 6800 01FA 6900 01FA 6A00"
	$"01FA 6B00 01FA 6C00 01FA 6D00 01FA 6E00"
	$"01FA 6F01 0100 FA60 0000 FA61 0000 FA62"
	$"0000 FA63 0000 FA64 0000 FA65 0000 FA66"
	$"0000 FA67 0000 FA68 0000 FA69 0000 FA6A"
	$"0000 FA6B 0000 FA6C 0000 FA6D 0000 FA6E"
	$"0000 FB6F 026F 0000 FA60 0000 FA61 0000"
	$"FA62 0000 FA63 0000 FA64 0000 FA65 0000"
	$"FA66 0000 FA67 0000 FA68 0000 FA69 0000"
	$"FA6A 0000 FA6B 0000 FA6C 0000 FA6D 0000"
	$"FA6E 0000 FC6F FF6F 0000 00C7 0001 FA60"
	$"0001 FA61 0001 FA62 0001 FA63 0001 FA64"
	$"0001 FA65 0001 FA66 0001 FA67 0001 FA68"
	$"0001 FA69 0001 FA6A 0001 FA6B 0001 FA6C"
	$"0001 FA6D 0001 FA6E 0001 FA6F 0101 00FA"
	$"6000 00FA 6100 00FA 6200 00FA 6300 00FA"
	$"6400 00FA 6500 00FA 6600 00FA 6700 00FA"
	$"6800 00FA 6900 00FA 6A00 00FA 6B00 00FA"
	$"6C00 00FA 6D00 00FA 6E00 00FB 6F02 6F00"
	$"00FA 6000 00FA 6100 00FA 6200 00FA 6300"
	$"00FA 6400 00FA 6500 00FA 6600 00FA 6700"
	$"00FA 6800 00FA 6900 00FA 6A00 00FA 6B00"
	$"00FA 6C00 00FA 6D00 00FA 6E00 00FC 6FFF"
	$"6F00 0000 C700 01FA 6000 01FA 6100 01FA"
	$"6200 01FA 6300 01FA 6400 01FA 6500 01FA"
	$"6600 01FA 6700 01FA 6800 01FA 6900 01FA"
	$"6A00 01FA 6B00 01FA 6C00 01FA 6D00 01FA"
	$"6E00 01FA 6F01 0100 FA60 0000 FA61 0000"
	$"FA62 0000 FA63 0000 FA64 0000 FA65 0000"
	$"FA66 0000 FA67 0000 FA68 0000 FA69 0000"
	$"FA6A 0000 FA6B 0000 FA6C 0000 FA6D 0000"
	$"FA6E 0000 FB6F 026F 0000 FA60 0000 FA61"
	$"0000 FA62 0000 FA63 0000 FA64 0000 FA65"
	$"0000 FA66 0000 FA67 0000 FA68 0000 FA69"
	$"0000 FA6A 0000 FA6B 0000 FA6C 0000 FA6D"
	$"0000 FA6E 0000 FC6F FF6F 0000 000A 8101"
	$"0001 8200 8100 FE00 00C7 0001 FA70 0001"
	$"FA71 0001 FA72 0001 FA73 0001 FA74 0001"
	$"FA75 0001 FA76 0001 FA77 0001 FA78 0001"
	$"FA79 0001 FA7A 0001 FA7B 0001 FA7C 0001"
	$"FA7D 0001 FA7E 0001 FA7F 0101 00FA 7000"
	$"00FA 7100 00FA 7200 00FA 7300 00FA 7400"
	$"00FA 7500 00FA 7600 00FA 7700 00FA 7800"
	$"00FA 7900 00FA 7A00 00FA 7B00 00FA 7C00"
	$"00FA 7D00 00FA 7E00 00FB 7F02 7F00 00FA"
	$"7000 00FA 7100 00FA 7200 00FA 7300 00FA"
	$"7400 00FA 7500 00FA 7600 00FA 7700 00FA"
	$"7800 00FA 7900 00FA 7A00 00FA 7B00 00FA"
	$"7C00 00FA 7D00 00FA 7E00 00FC 7FFF 7F00"
	$"0000 C700 01FA 7000 01FA 7100 01FA 7200"
	$"01FA 7300 01FA 7400 01FA 7500 01FA 7600"
	$"01FA 7700 01FA 7800 01FA 7900 01FA 7A00"
	$"01FA 7B00 01FA 7C00 01FA 7D00 01FA 7E00"
	$"01FA 7F01 0100 FA70 0000 FA71 0000 FA72"
	$"0000 FA73 0000 FA74 0000 FA75 0000 FA76"
	$"0000 FA77 0000 FA78 0000 FA79 0000 FA7A"
	$"0000 FA7B 0000 FA7C 0000 FA7D 0000 FA7E"
	$"0000 FB7F 027F 0000 FA70 0000 FA71 0000"
	$"FA72 0000 FA73 0000 FA74 0000 FA75 0000"
	$"FA76 0000 FA77 0000 FA78 0000 FA79 0000"
	$"FA7A 0000 FA7B 0000 FA7C 0000 FA7D 0000"
	$"FA7E 0000 FC7F FF7F 0000 00C7 0001 FA70"
	$"0001 FA71 0001 FA72 0001 FA73 0001 FA74"
	$"0001 FA75 0001 FA76 0001 FA77 0001 FA78"
	$"0001 FA79 0001 FA7A 0001 FA7B 0001 FA7C"
	$"0001 FA7D 0001 FA7E 0001 FA7F 0101 00FA"
	$"7000 00FA 7100 00FA 7200 00FA 7300 00FA"
	$"7400 00FA 7500 00FA 7600 00FA 7700 00FA"
	$"7800 00FA 7900 00FA 7A00 00FA 7B00 00FA"
	$"7C00 00FA 7D00 00FA 7E00 00FB 7F02 7F00"
	$"00FA 7000 00FA 7100 00FA 7200 00FA 7300"
	$"00FA 7400 00FA 7500 00FA 7600 00FA 7700"
	$"00FA 7800 00FA 7900 00FA 7A00 00FA 7B00"
	$"00FA 7C00 00FA 7D00 00FA 7E00 00FC 7FFF"
	$"7F00 0000 C700 01FA 7000 01FA 7100 01FA"
	$"7200 01FA 7300 01FA 7400 01FA 7500 01FA"
	$"7600 01FA 7700 01FA 7800 01FA 7900 01FA"
	$"7A00 01FA 7B00 01FA 7C00 01FA 7D00 01FA"
	$"7E00 01FA 7F01 0100 FA70 0000 FA71 0000"
	$"FA72 0000 FA73 0000 FA74 0000 FA75 0000"
	$"FA76 0000 FA77 0000 FA78 0000 FA79 0000"
	$"FA7A 0000 FA7B 0000 FA7C 0000 FA7D 0000"
	$"FA7E 0000 FB7F 027F 0000 FA70 0000 FA71"
	$"0000 FA72 0000 FA73 0000 FA74 0000 FA75"
	$"0000 FA76 0000 FA77 0000 FA78 0000 FA79"
	$"0000 FA7A 0000 FA7B 0000 FA7C 0000 FA7D"
	$"0000 FA7E 0000 FC7F FF7F 0000 00C7 0001"
	$"FA70 0001 FA71 0001 FA72 0001 FA73 0001"
	$"FA74 0001 FA75 0001 FA76 0001 FA77 0001"
	$"FA78 0001 FA79 0001 FA7A 0001 FA7B 0001"
	$"FA7C 0001 FA7D 0001 FA7E 0001 FA7F 0101"
	$"00FA 7000 00FA 7100 00FA 7200 00FA 7300"
	$"00FA 7400 00FA 7500 00FA 7600 00FA 7700"
	$"00FA 7800 00FA 7900 00FA 7A00 00FA 7B00"
	$"00FA 7C00 00FA 7D00 00FA 7E00 00FB 7F02"
	$"7F00 00FA 7000 00FA 7100 00FA 7200 00FA"
	$"7300 00FA 7400 00FA 7500 00FA 7600 00FA"
	$"7700 00FA 7800 00FA 7900 00FA 7A00 00FA"
	$"7B00 00FA 7C00 00FA 7D00 00FA 7E00 00FC"
	$"7FFF 7F00 0000 C700 01FA 7000 01FA 7100"
	$"01FA 7200 01FA 7300 01FA 7400 01FA 7500"
	$"01FA 7600 01FA 7700 01FA 7800 01FA 7900"
	$"01FA 7A00 01FA 7B00 01FA 7C00 01FA 7D00"
	$"01FA 7E00 01FA 7F01 0100 FA70 0000 FA71"
	$"0000 FA72 0000 FA73 0000 FA74 0000 FA75"
	$"0000 FA76 0000 FA77 0000 FA78 0000 FA79"
	$"0000 FA7A 0000 FA7B 0000 FA7C 0000 FA7D"
	$"0000 FA7E 0000 FB7F 027F 0000 FA70 0000"
	$"FA71 0000 FA72 0000 FA73 0000 FA74 0000"
	$"FA75 0000 FA76 0000 FA77 0000 FA78 0000"
	$"FA79 0000 FA7A 0000 FA7B 0000 FA7C 0000"
	$"FA7D 0000 FA7E 0000 FC7F FF7F 0000 00C7"
	$"0001 FA70 0001 FA71 0001 FA72 0001 FA73"
	$"0001 FA74 0001 FA75 0001 FA76 0001 FA77"
	$"0001 FA78 0001 FA79 0001 FA7A 0001 FA7B"
	$"0001 FA7C 0001 FA7D 0001 FA7E 0001 FA7F"
	$"0101 00FA 7000 00FA 7100 00FA 7200 00FA"
	$"7300 00FA 7400 00FA 7500 00FA 7600 00FA"
	$"7700 00FA 7800 00FA 7900 00FA 7A00 00FA"
	$"7B00 00FA 7C00 00FA 7D00 00FA 7E00 00FB"
	$"7F02 7F00 00FA 7000 00FA 7100 00FA 7200"
	$"00FA 7300 00FA 7400 00FA 7500 00FA 7600"
	$"00FA 7700 00FA 7800 00FA 7900 00FA 7A00"
	$"00FA 7B00 00FA 7C00 00FA 7D00 00FA 7E00"
	$"00FC 7FFF 7F00 0000 0A81 0100 0182 0081"
	$"00FE 0000 C700 01FA 8000 01FA 8100 01FA"
	$"8200 01FA 8300 01FA 8400 01FA 8500 01FA"
	$"8600 01FA 8700 01FA 8800 01FA 8900 01FA"
	$"8A00 01FA 8B00 01FA 8C00 01FA 8D00 01FA"
	$"8E00 01FA 8F01 0100 FA80 0000 FA81 0000"
	$"FA82 0000 FA83 0000 FA84 0000 FA85 0000"
	$"FA86 0000 FA87 0000 FA88 0000 FA89 0000"
	$"FA8A 0000 FA8B 0000 FA8C 0000 FA8D 0000"
	$"FA8E 0000 FB8F 028F 0000 FA80 0000 FA81"
	$"0000 FA82 0000 FA83 0000 FA84 0000 FA85"
	$"0000 FA86 0000 FA87 0000 FA88 0000 FA89"
	$"0000 FA8A 0000 FA8B 0000 FA8C 0000 FA8D"
	$"0000 FA8E 0000 FC8F FF8F 0000 00C7 0001"
	$"FA80 0001 FA81 0001 FA82 0001 FA83 0001"
	$"FA84 0001 FA85 0001 FA86 0001 FA87 0001"
	$"FA88 0001 FA89 0001 FA8A 0001 FA8B 0001"
	$"FA8C 0001 FA8D 0001 FA8E 0001 FA8F 0101"
	$"00FA 8000 00FA 8100 00FA 8200 00FA 8300"
	$"00FA 8400 00FA 8500 00FA 8600 00FA 8700"
	$"00FA 8800 00FA 8900 00FA 8A00 00FA 8B00"
	$"00FA 8C00 00FA 8D00 00FA 8E00 00FB 8F02"
	$"8F00 00FA 8000 00FA 8100 00FA 8200 00FA"
	$"8300 00FA 8400 00FA 8500 00FA 8600 00FA"
	$"8700 00FA 8800 00FA 8900 00FA 8A00 00FA"
	$"8B00 00FA 8C00 00FA 8D00 00FA 8E00 00FC"
	$"8FFF 8F00 0000 C700 01FA 8000 01FA 8100"
	$"01FA 8200 01FA 8300 01FA 8400 01FA 8500"
	$"01FA 8600 01FA 8700 01FA 8800 01FA 8900"
	$"01FA 8A00 01FA 8B00 01FA 8C00 01FA 8D00"
	$"01FA 8E00 01FA 8F01 0100 FA80 0000 FA81"
	$"0000 FA82 0000 FA83 0000 FA84 0000 FA85"
	$"0000 FA86 0000 FA87 0000 FA88 0000 FA89"
	$"0000 FA8A 0000 FA8B 0000 FA8C 0000 FA8D"
	$"0000 FA8E 0000 FB8F 028F 0000 FA80 0000"
	$"FA81 0000 FA82 0000 FA83 0000 FA84 0000"
	$"FA85 0000 FA86 0000 FA87 0000 FA88 0000"
	$"FA89 0000 FA8A 0000 FA8B 0000 FA8C 0000"
	$"FA8D 0000 FA8E 0000 FC8F FF8F 0000 00C7"
	$"0001 FA80 0001 FA81 0001 FA82 0001 FA83"
	$"0001 FA84 0001 FA85 0001 FA86 0001 FA87"
	$"0001 FA88 0001 FA89 0001 FA8A 0001 FA8B"
	$"0001 FA8C 0001 FA8D 0001 FA8E 0001 FA8F"
	$"0101 00FA 8000 00FA 8100 00FA 8200 00FA"
	$"8300 00FA 8400 00FA 8500 00FA 8600 00FA"
	$"8700 00FA 8800 00FA 8900 00FA 8A00 00FA"
	$"8B00 00FA 8C00 00FA 8D00 00FA 8E00 00FB"
	$"8F02 8F00 00FA 8000 00FA 8100 00FA 8200"
	$"00FA 8300 00FA 8400 00FA 8500 00FA 8600"
	$"00FA 8700 00FA 8800 00FA 8900 00FA 8A00"
	$"00FA 8B00 00FA 8C00 00FA 8D00 00FA 8E00"
	$"00FC 8FFF 8F00 0000 C700 01FA 8000 01FA"
	$"8100 01FA 8200 01FA 8300 01FA 8400 01FA"
	$"8500 01FA 8600 01FA 8700 01FA 8800 01FA"
	$"8900 01FA 8A00 01FA 8B00 01FA 8C00 01FA"
	$"8D00 01FA 8E00 01FA 8F01 0100 FA80 0000"
	$"FA81 0000 FA82 0000 FA83 0000 FA84 0000"
	$"FA85 0000 FA86 0000 FA87 0000 FA88 0000"
	$"FA89 0000 FA8A 0000 FA8B 0000 FA8C 0000"
	$"FA8D 0000 FA8E 0000 FB8F 028F 0000 FA80"
	$"0000 FA81 0000 FA82 0000 FA83 0000 FA84"
	$"0000 FA85 0000 FA86 0000 FA87 0000 FA88"
	$"0000 FA89 0000 FA8A 0000 FA8B 0000 FA8C"
	$"0000 FA8D 0000 FA8E 0000 FC8F FF8F 0000"
	$"00C7 0001 FA80 0001 FA81 0001 FA82 0001"
	$"FA83 0001 FA84 0001 FA85 0001 FA86 0001"
	$"FA87 0001 FA88 0001 FA89 0001 FA8A 0001"
	$"FA8B 0001 FA8C 0001 FA8D 0001 FA8E 0001"
	$"FA8F 0101 00FA 8000 00FA 8100 00FA 8200"
	$"00FA 8300 00FA 8400 00FA 8500 00FA 8600"
	$"00FA 8700 00FA 8800 00FA 8900 00FA 8A00"
	$"00FA 8B00 00FA 8C00 00FA 8D00 00FA 8E00"
	$"00FB 8F02 8F00 00FA 8000 00FA 8100 00FA"
	$"8200 00FA 8300 00FA 8400 00FA 8500 00FA"
	$"8600 00FA 8700 00FA 8800 00FA 8900 00FA"
	$"8A00 00FA 8B00 00FA 8C00 00FA 8D00 00FA"
	$"8E00 00FC 8FFF 8F00 0000 C700 01FA 8000"
	$"01FA 8100 01FA 8200 01FA 8300 01FA 8400"
	$"01FA 8500 01FA 8600 01FA 8700 01FA 8800"
	$"01FA 8900 01FA 8A00 01FA 8B00 01FA 8C00"
	$"01FA 8D00 01FA 8E00 01FA 8F01 0100 FA80"
	$"0000 FA81 0000 FA82 0000 FA83 0000 FA84"
	$"0000 FA85 0000 FA86 0000 FA87 0000 FA88"
	$"0000 FA89 0000 FA8A 0000 FA8B 0000 FA8C"
	$"0000 FA8D 0000 FA8E 0000 FB8F 028F 0000"
	$"FA80 0000 FA81 0000 FA82 0000 FA83 0000"
	$"FA84 0000 FA85 0000 FA86 0000 FA87 0000"
	$"FA88 0000 FA89 0000 FA8A 0000 FA8B 0000"
	$"FA8C 0000 FA8D 0000 FA8E 0000 FC8F FF8F"
	$"0000 000A 8101 0001 8200 8100 FE00 00C7"
	$"0001 FA90 0001 FA91 0001 FA92 0001 FA93"
	$"0001 FA94 0001 FA95 0001 FA96 0001 FA97"
	$"0001 FA98 0001 FA99 0001 FA9A 0001 FA9B"
	$"0001 FA9C 0001 FA9D 0001 FA9E 0001 FA9F"
	$"0101 00FA 9000 00FA 9100 00FA 9200 00FA"
	$"9300 00FA 9400 00FA 9500 00FA 9600 00FA"
	$"9700 00FA 9800 00FA 9900 00FA 9A00 00FA"
	$"9B00 00FA 9C00 00FA 9D00 00FA 9E00 00FB"
	$"9F02 9F00 00FA 9000 00FA 9100 00FA 9200"
	$"00FA 9300 00FA 9400 00FA 9500 00FA 9600"
	$"00FA 9700 00FA 9800 00FA 9900 00FA 9A00"
	$"00FA 9B00 00FA 9C00 00FA 9D00 00FA 9E00"
	$"00FC 9FFF 9F00 0000 C700 01FA 9000 01FA"
	$"9100 01FA 9200 01FA 9300 01FA 9400 01FA"
	$"9500 01FA 9600 01FA 9700 01FA 9800 01FA"
	$"9900 01FA 9A00 01FA 9B00 01FA 9C00 01FA"
	$"9D00 01FA 9E00 01FA 9F01 0100 FA90 0000"
	$"FA91 0000 FA92 0000 FA93 0000 FA94 0000"
	$"FA95 0000 FA96 0000 FA97 0000 FA98 0000"
	$"FA99 0000 FA9A 0000 FA9B 0000 FA9C 0000"
	$"FA9D 0000 FA9E 0000 FB9F 029F 0000 FA90"
	$"0000 FA91 0000 FA92 0000 FA93 0000 FA94"
	$"0000 FA95 0000 FA96 0000 FA97 0000 FA98"
	$"0000 FA99 0000 FA9A 0000 FA9B 0000 FA9C"
	$"0000 FA9D 0000 FA9E 0000 FC9F FF9F 0000"
	$"00C7 0001 FA90 0001 FA91 0001 FA92 0001"
	$"FA93 0001 FA94 0001 FA95 0001 FA96 0001"
	$"FA97 0001 FA98 0001 FA99 0001 FA9A 0001"
	$"FA9B 0001 FA9C 0001 FA9D 0001 FA9E 0001"
	$"FA9F 0101 00FA 9000 00FA 9100 00FA 9200"
	$"00FA 9300 00FA 9400 00FA 9500 00FA 9600"
	$"00FA 9700 00FA 9800 00FA 9900 00FA 9A00"
	$"00FA 9B00 00FA 9C00 00FA 9D00 00FA 9E00"
	$"00FB 9F02 9F00 00FA 9000 00FA 9100 00FA"
	$"9200 00FA 9300 00FA 9400 00FA 9500 00FA"
	$"9600 00FA 9700 00FA 9800 00FA 9900 00FA"
	$"9A00 00FA 9B00 00FA 9C00 00FA 9D00 00FA"
	$"9E00 00FC 9FFF 9F00 0000 C700 01FA 9000"
	$"01FA 9100 01FA 9200 01FA 9300 01FA 9400"
	$"01FA 9500 01FA 9600 01FA 9700 01FA 9800"
	$"01FA 9900 01FA 9A00 01FA 9B00 01FA 9C00"
	$"01FA 9D00 01FA 9E00 01FA 9F01 0100 FA90"
	$"0000 FA91 0000 FA92 0000 FA93 0000 FA94"
	$"0000 FA95 0000 FA96 0000 FA97 0000 FA98"
	$"0000 FA99 0000 FA9A 0000 FA9B 0000 FA9C"
	$"0000 FA9D 0000 FA9E 0000 FB9F 029F 0000"
	$"FA90 0000 FA91 0000 FA92 0000 FA93 0000"
	$"FA94 0000 FA95 0000 FA96 0000 FA97 0000"
	$"FA98 0000 FA99 0000 FA9A 0000 FA9B 0000"
	$"FA9C 0000 FA9D 0000 FA9E 0000 FC9F FF9F"
	$"0000 00C7 0001 FA90 0001 FA91 0001 FA92"
	$"0001 FA93 0001 FA94 0001 FA95 0001 FA96"
	$"0001 FA97 0001 FA98 0001 FA99 0001 FA9A"
	$"0001 FA9B 0001 FA9C 0001 FA9D 0001 FA9E"
	$"0001 FA9F 0101 00FA 9000 00FA 9100 00FA"
	$"9200 00FA 9300 00FA 9400 00FA 9500 00FA"
	$"9600 00FA 9700 00FA 9800 00FA 9900 00FA"
	$"9A00 00FA 9B00 00FA 9C00 00FA 9D00 00FA"
	$"9E00 00FB 9F02 9F00 00FA 9000 00FA 9100"
	$"00FA 9200 00FA 9300 00FA 9400 00FA 9500"
	$"00FA 9600 00FA 9700 00FA 9800 00FA 9900"
	$"00FA 9A00 00FA 9B00 00FA 9C00 00FA 9D00"
	$"00FA 9E00 00FC 9FFF 9F00 0000 C700 01FA"
	$"9000 01FA 9100 01FA 9200 01FA 9300 01FA"
	$"9400 01FA 9500 01FA 9600 01FA 9700 01FA"
	$"9800 01FA 9900 01FA 9A00 01FA 9B00 01FA"
	$"9C00 01FA 9D00 01FA 9E00 01FA 9F01 0100"
	$"FA90 0000 FA91 0000 FA92 0000 FA93 0000"
	$"FA94 0000 FA95 0000 FA96 0000 FA97 0000"
	$"FA98 0000 FA99 0000 FA9A 0000 FA9B 0000"
	$"FA9C 0000 FA9D 0000 FA9E 0000 FB9F 029F"
	$"0000 FA90 0000 FA91 0000 FA92 0000 FA93"
	$"0000 FA94 0000 FA95 0000 FA96 0000 FA97"
	$"0000 FA98 0000 FA99 0000 FA9A 0000 FA9B"
	$"0000 FA9C 0000 FA9D 0000 FA9E 0000 FC9F"
	$"FF9F 0000 00C7 0001 FA90 0001 FA91 0001"
	$"FA92 0001 FA93 0001 FA94 0001 FA95 0001"
	$"FA96 0001 FA97 0001 FA98 0001 FA99 0001"
	$"FA9A 0001 FA9B 0001 FA9C 0001 FA9D 0001"
	$"FA9E 0001 FA9F 0101 00FA 9000 00FA 9100"
	$"00FA 9200 00FA 9300 00FA 9400 00FA 9500"
	$"00FA 9600 00FA 9700 00FA 9800 00FA 9900"
	$"00FA 9A00 00FA 9B00 00FA 9C00 00FA 9D00"
	$"00FA 9E00 00FB 9F02 9F00 00FA 9000 00FA"
	$"9100 00FA 9200 00FA 9300 00FA 9400 00FA"
	$"9500 00FA 9600 00FA 9700 00FA 9800 00FA"
	$"9900 00FA 9A00 00FA 9B00 00FA 9C00 00FA"
	$"9D00 00FA 9E00 00FC 9FFF 9F00 0000 0A81"
	$"0100 0182 0081 00FE 0000 C700 01FA A000"
	$"01FA A100 01FA A200 01FA A300 01FA A400"
	$"01FA A500 01FA A600 01FA A700 01FA A800"
	$"01FA A900 01FA AA00 01FA AB00 01FA AC00"
	$"01FA AD00 01FA AE00 01FA AF01 0100 FAA0"
	$"0000 FAA1 0000 FAA2 0000 FAA3 0000 FAA4"
	$"0000 FAA5 0000 FAA6 0000 FAA7 0000 FAA8"
	$"0000 FAA9 0000 FAAA 0000 FAAB 0000 FAAC"
	$"0000 FAAD 0000 FAAE 0000 FBAF 02AF 0000"
	$"FAA0 0000 FAA1 0000 FAA2 0000 FAA3 0000"
	$"FAA4 0000 FAA5 0000 FAA6 0000 FAA7 0000"
	$"FAA8 0000 FAA9 0000 FAAA 0000 FAAB 0000"
	$"FAAC 0000 FAAD 0000 FAAE 0000 FCAF FFAF"
	$"0000 00C7 0001 FAA0 0001 FAA1 0001 FAA2"
	$"0001 FAA3 0001 FAA4 0001 FAA5 0001 FAA6"
	$"0001 FAA7 0001 FAA8 0001 FAA9 0001 FAAA"
	$"0001 FAAB 0001 FAAC 0001 FAAD 0001 FAAE"
	$"0001 FAAF 0101 00FA A000 00FA A100 00FA"
	$"A200 00FA A300 00FA A400 00FA A500 00FA"
	$"A600 00FA A700 00FA A800 00FA A900 00FA"
	$"AA00 00FA AB00 00FA AC00 00FA AD00 00FA"
	$"AE00 00FB AF02 AF00 00FA A000 00FA A100"
	$"00FA A200 00FA A300 00FA A400 00FA A500"
	$"00FA A600 00FA A700 00FA A800 00FA A900"
	$"00FA AA00 00FA AB00 00FA AC00 00FA AD00"
	$"00FA AE00 00FC AFFF AF00 0000 C700 01FA"
	$"A000 01FA A100 01FA A200 01FA A300 01FA"
	$"A400 01FA A500 01FA A600 01FA A700 01FA"
	$"A800 01FA A900 01FA AA00 01FA AB00 01FA"
	$"AC00 01FA AD00 01FA AE00 01FA AF01 0100"
	$"FAA0 0000 FAA1 0000 FAA2 0000 FAA3 0000"
	$"FAA4 0000 FAA5 0000 FAA6 0000 FAA7 0000"
	$"FAA8 0000 FAA9 0000 FAAA 0000 FAAB 0000"
	$"FAAC 0000 FAAD 0000 FAAE 0000 FBAF 02AF"
	$"0000 FAA0 0000 FAA1 0000 FAA2 0000 FAA3"
	$"0000 FAA4 0000 FAA5 0000 FAA6 0000 FAA7"
	$"0000 FAA8 0000 FAA9 0000 FAAA 0000 FAAB"
	$"0000 FAAC 0000 FAAD 0000 FAAE 0000 FCAF"
	$"FFAF 0000 00C7 0001 FAA0 0001 FAA1 0001"
	$"FAA2 0001 FAA3 0001 FAA4 0001 FAA5 0001"
	$"FAA6 0001 FAA7 0001 FAA8 0001 FAA9 0001"
	$"FAAA 0001 FAAB 0001 FAAC 0001 FAAD 0001"
	$"FAAE 0001 FAAF 0101 00FA A000 00FA A100"
	$"00FA A200 00FA A300 00FA A400 00FA A500"
	$"00FA A600 00FA A700 00FA A800 00FA A900"
	$"00FA AA00 00FA AB00 00FA AC00 00FA AD00"
	$"00FA AE00 00FB AF02 AF00 00FA A000 00FA"
	$"A100 00FA A200 00FA A300 00FA A400 00FA"
	$"A500 00FA A600 00FA A700 00FA A800 00FA"
	$"A900 00FA AA00 00FA AB00 00FA AC00 00FA"
	$"AD00 00FA AE00 00FC AFFF AF00 0000 C700"
	$"01FA A000 01FA A100 01FA A200 01FA A300"
	$"01FA A400 01FA A500 01FA A600 01FA A700"
	$"01FA A800 01FA A900 01FA AA00 01FA AB00"
	$"01FA AC00 01FA AD00 01FA AE00 01FA AF01"
	$"0100 FAA0 0000 FAA1 0000 FAA2 0000 FAA3"
	$"0000 FAA4 0000 FAA5 0000 FAA6 0000 FAA7"
	$"0000 FAA8 0000 FAA9 0000 FAAA 0000 FAAB"
	$"0000 FAAC 0000 FAAD 0000 FAAE 0000 FBAF"
	$"02AF 0000 FAA0 0000 FAA1 0000 FAA2 0000"
	$"FAA3 0000 FAA4 0000 FAA5 0000 FAA6 0000"
	$"FAA7 0000 FAA8 0000 FAA9 0000 FAAA 0000"
	$"FAAB 0000 FAAC 0000 FAAD 0000 FAAE 0000"
	$"FCAF FFAF 0000 00C7 0001 FAA0 0001 FAA1"
	$"0001 FAA2 0001 FAA3 0001 FAA4 0001 FAA5"
	$"0001 FAA6 0001 FAA7 0001 FAA8 0001 FAA9"
	$"0001 FAAA 0001 FAAB 0001 FAAC 0001 FAAD"
	$"0001 FAAE 0001 FAAF 0101 00FA A000 00FA"
	$"A100 00FA A200 00FA A300 00FA A400 00FA"
	$"A500 00FA A600 00FA A700 00FA A800 00FA"
	$"A900 00FA AA00 00FA AB00 00FA AC00 00FA"
	$"AD00 00FA AE00 00FB AF02 AF00 00FA A000"
	$"00FA A100 00FA A200 00FA A300 00FA A400"
	$"00FA A500 00FA A600 00FA A700 00FA A800"
	$"00FA A900 00FA AA00 00FA AB00 00FA AC00"
	$"00FA AD00 00FA AE00 00FC AFFF AF00 0000"
	$"C700 01FA A000 01FA A100 01FA A200 01FA"
	$"A300 01FA A400 01FA A500 01FA A600 01FA"
	$"A700 01FA A800 01FA A900 01FA AA00 01FA"
	$"AB00 01FA AC00 01FA AD00 01FA AE00 01FA"
	$"AF01 0100 FAA0 0000 FAA1 0000 FAA2 0000"
	$"FAA3 0000 FAA4 0000 FAA5 0000 FAA6 0000"
	$"FAA7 0000 FAA8 0000 FAA9 0000 FAAA 0000"
	$"FAAB 0000 FAAC 0000 FAAD 0000 FAAE 0000"
	$"FBAF 02AF 0000 FAA0 0000 FAA1 0000 FAA2"
	$"0000 FAA3 0000 FAA4 0000 FAA5 0000 FAA6"
	$"0000 FAA7 0000 FAA8 0000 FAA9 0000 FAAA"
	$"0000 FAAB 0000 FAAC 0000 FAAD 0000 FAAE"
	$"0000 FCAF FFAF 0000 000A 8101 0001 8200"
	$"8100 FE00 00C7 0001 FAB0 0001 FAB1 0001"
	$"FAB2 0001 FAB3 0001 FAB4 0001 FAB5 0001"
	$"FAB6 0001 FAB7 0001 FAB8 0001 FAB9 0001"
	$"FABA 0001 FABB 0001 FABC 0001 FABD 0001"
	$"FABE 0001 FABF 0101 00FA B000 00FA B100"
	$"00FA B200 00FA B300 00FA B400 00FA B500"
	$"00FA B600 00FA B700 00FA B800 00FA B900"
	$"00FA BA00 00FA BB00 00FA BC00 00FA BD00"
	$"00FA BE00 00FB BF02 BF00 00FA B000 00FA"
	$"B100 00FA B200 00FA B300 00FA B400 00FA"
	$"B500 00FA B600 00FA B700 00FA B800 00FA"
	$"B900 00FA BA00 00FA BB00 00FA BC00 00FA"
	$"BD00 00FA BE00 00FC BFFF BF00 0000 C700"
	$"01FA B000 01FA B100 01FA B200 01FA B300"
	$"01FA B400 01FA B500 01FA B600 01FA B700"
	$"01FA B800 01FA B900 01FA BA00 01FA BB00"
	$"01FA BC00 01FA BD00 01FA BE00 01FA BF01"
	$"0100 FAB0 0000 FAB1 0000 FAB2 0000 FAB3"
	$"0000 FAB4 0000 FAB5 0000 FAB6 0000 FAB7"
	$"0000 FAB8 0000 FAB9 0000 FABA 0000 FABB"
	$"0000 FABC 0000 FABD 0000 FABE 0000 FBBF"
	$"02BF 0000 FAB0 0000 FAB1 0000 FAB2 0000"
	$"FAB3 0000 FAB4 0000 FAB5 0000 FAB6 0000"
	$"FAB7 0000 FAB8 0000 FAB9 0000 FABA 0000"
	$"FABB 0000 FABC 0000 FABD 0000 FABE 0000"
	$"FCBF FFBF 0000 00C7 0001 FAB0 0001 FAB1"
	$"0001 FAB2 0001 FAB3 0001 FAB4 0001 FAB5"
	$"0001 FAB6 0001 FAB7 0001 FAB8 0001 FAB9"
	$"0001 FABA 0001 FABB 0001 FABC 0001 FABD"
	$"0001 FABE 0001 FABF 0101 00FA B000 00FA"
	$"B100 00FA B200 00FA B300 00FA B400 00FA"
	$"B500 00FA B600 00FA B700 00FA B800 00FA"
	$"B900 00FA BA00 00FA BB00 00FA BC00 00FA"
	$"BD00 00FA BE00 00FB BF02 BF00 00FA B000"
	$"00FA B100 00FA B200 00FA B300 00FA B400"
	$"00FA B500 00FA B600 00FA B700 00FA B800"
	$"00FA B900 00FA BA00 00FA BB00 00FA BC00"
	$"00FA BD00 00FA BE00 00FC BFFF BF00 0000"
	$"C700 01FA B000 01FA B100 01FA B200 01FA"
	$"B300 01FA B400 01FA B500 01FA B600 01FA"
	$"B700 01FA B800 01FA B900 01FA BA00 01FA"
	$"BB00 01FA BC00 01FA BD00 01FA BE00 01FA"
	$"BF01 0100 FAB0 0000 FAB1 0000 FAB2 0000"
	$"FAB3 0000 FAB4 0000 FAB5 0000 FAB6 0000"
	$"FAB7 0000 FAB8 0000 FAB9 0000 FABA 0000"
	$"FABB 0000 FABC 0000 FABD 0000 FABE 0000"
	$"FBBF 02BF 0000 FAB0 0000 FAB1 0000 FAB2"
	$"0000 FAB3 0000 FAB4 0000 FAB5 0000 FAB6"
	$"0000 FAB7 0000 FAB8 0000 FAB9 0000 FABA"
	$"0000 FABB 0000 FABC 0000 FABD 0000 FABE"
	$"0000 FCBF FFBF 0000 00C7 0001 FAB0 0001"
	$"FAB1 0001 FAB2 0001 FAB3 0001 FAB4 0001"
	$"FAB5 0001 FAB6 0001 FAB7 0001 FAB8 0001"
	$"FAB9 0001 FABA 0001 FABB 0001 FABC 0001"
	$"FABD 0001 FABE 0001 FABF 0101 00FA B000"
	$"00FA B100 00FA B200 00FA B300 00FA B400"
	$"00FA B500 00FA B600 00FA B700 00FA B800"
	$"00FA B900 00FA BA00 00FA BB00 00FA BC00"
	$"00FA BD00 00FA BE00 00FB BF02 BF00 00FA"
	$"B000 00FA B100 00FA B200 00FA B300 00FA"
	$"B400 00FA B500 00FA B600 00FA B700 00FA"
	$"B800 00FA B900 00FA BA00 00FA BB00 00FA"
	$"BC00 00FA BD00 00FA BE00 00FC BFFF BF00"
	$"0000 C700 01FA B000 01FA B100 01FA B200"
	$"01FA B300 01FA B400 01FA B500 01FA B600"
	$"01FA B700 01FA B800 01FA B900 01FA BA00"
	$"01FA BB00 01FA BC00 01FA BD00 01FA BE00"
	$"01FA BF01 0100 FAB0 0000 FAB1 0000 FAB2"
	$"0000 FAB3 0000 FAB4 0000 FAB5 0000 FAB6"
	$"0000 FAB7 0000 FAB8 0000 FAB9 0000 FABA"
	$"0000 FABB 0000 FABC 0000 FABD 0000 FABE"
	$"0000 FBBF 02BF 0000 FAB0 0000 FAB1 0000"
	$"FAB2 0000 FAB3 0000 FAB4 0000 FAB5 0000"
	$"FAB6 0000 FAB7 0000 FAB8 0000 FAB9 0000"
	$"FABA 0000 FABB 0000 FABC 0000 FABD 0000"
	$"FABE 0000 FCBF FFBF 0000 00C7 0001 FAB0"
	$"0001 FAB1 0001 FAB2 0001 FAB3 0001 FAB4"
	$"0001 FAB5 0001 FAB6 0001 FAB7 0001 FAB8"
	$"0001 FAB9 0001 FABA 0001 FABB 0001 FABC"
	$"0001 FABD 0001 FABE 0001 FABF 0101 00FA"
	$"B000 00FA B100 00FA B200 00FA B300 00FA"
	$"B400 00FA B500 00FA B600 00FA B700 00FA"
	$"B800 00FA B900 00FA BA00 00FA BB00 00FA"
	$"BC00 00FA BD00 00FA BE00 00FB BF02 BF00"
	$"00FA B000 00FA B100 00FA B200 00FA B300"
	$"00FA B400 00FA B500 00FA B600 00FA B700"
	$"00FA B800 00FA B900 00FA BA00 00FA BB00"
	$"00FA BC00 00FA BD00 00FA BE00 00FC BFFF"
	$"BF00 0000 0A81 0100 0182 0081 00FE 0000"
	$"C700 01FA C000 01FA C100 01FA C200 01FA"
	$"C300 01FA C400 01FA C500 01FA C600 01FA"
	$"C700 01FA C800 01FA C900 01FA CA00 01FA"
	$"CB00 01FA CC00 01FA CD00 01FA CE00 01FA"
	$"CF01 0100 FAC0 0000 FAC1 0000 FAC2 0000"
	$"FAC3 0000 FAC4 0000 FAC5 0000 FAC6 0000"
	$"FAC7 0000 FAC8 0000 FAC9 0000 FACA 0000"
	$"FACB 0000 FACC 0000 FACD 0000 FACE 0000"
	$"FBCF 02CF 0000 FAC0 0000 FAC1 0000 FAC2"
	$"0000 FAC3 0000 FAC4 0000 FAC5 0000 FAC6"
	$"0000 FAC7 0000 FAC8 0000 FAC9 0000 FACA"
	$"0000 FACB 0000 FACC 0000 FACD 0000 FACE"
	$"0000 FCCF FFCF 0000 00C7 0001 FAC0 0001"
	$"FAC1 0001 FAC2 0001 FAC3 0001 FAC4 0001"
	$"FAC5 0001 FAC6 0001 FAC7 0001 FAC8 0001"
	$"FAC9 0001 FACA 0001 FACB 0001 FACC 0001"
	$"FACD 0001 FACE 0001 FACF 0101 00FA C000"
	$"00FA C100 00FA C200 00FA C300 00FA C400"
	$"00FA C500 00FA C600 00FA C700 00FA C800"
	$"00FA C900 00FA CA00 00FA CB00 00FA CC00"
	$"00FA CD00 00FA CE00 00FB CF02 CF00 00FA"
	$"C000 00FA C100 00FA C200 00FA C300 00FA"
	$"C400 00FA C500 00FA C600 00FA C700 00FA"
	$"C800 00FA C900 00FA CA00 00FA CB00 00FA"
	$"CC00 00FA CD00 00FA CE00 00FC CFFF CF00"
	$"0000 C700 01FA C000 01FA C100 01FA C200"
	$"01FA C300 01FA C400 01FA C500 01FA C600"
	$"01FA C700 01FA C800 01FA C900 01FA CA00"
	$"01FA CB00 01FA CC00 01FA CD00 01FA CE00"
	$"01FA CF01 0100 FAC0 0000 FAC1 0000 FAC2"
	$"0000 FAC3 0000 FAC4 0000 FAC5 0000 FAC6"
	$"0000 FAC7 0000 FAC8 0000 FAC9 0000 FACA"
	$"0000 FACB 0000 FACC 0000 FACD 0000 FACE"
	$"0000 FBCF 02CF 0000 FAC0 0000 FAC1 0000"
	$"FAC2 0000 FAC3 0000 FAC4 0000 FAC5 0000"
	$"FAC6 0000 FAC7 0000 FAC8 0000 FAC9 0000"
	$"FACA 0000 FACB 0000 FACC 0000 FACD 0000"
	$"FACE 0000 FCCF FFCF 0000 00C7 0001 FAC0"
	$"0001 FAC1 0001 FAC2 0001 FAC3 0001 FAC4"
	$"0001 FAC5 0001 FAC6 0001 FAC7 0001 FAC8"
	$"0001 FAC9 0001 FACA 0001 FACB 0001 FACC"
	$"0001 FACD 0001 FACE 0001 FACF 0101 00FA"
	$"C000 00FA C100 00FA C200 00FA C300 00FA"
	$"C400 00FA C500 00FA C600 00FA C700 00FA"
	$"C800 00FA C900 00FA CA00 00FA CB00 00FA"
	$"CC00 00FA CD00 00FA CE00 00FB CF02 CF00"
	$"00FA C000 00FA C100 00FA C200 00FA C300"
	$"00FA C400 00FA C500 00FA C600 00FA C700"
	$"00FA C800 00FA C900 00FA CA00 00FA CB00"
	$"00FA CC00 00FA CD00 00FA CE00 00FC CFFF"
	$"CF00 0000 C700 01FA C000 01FA C100 01FA"
	$"C200 01FA C300 01FA C400 01FA C500 01FA"
	$"C600 01FA C700 01FA C800 01FA C900 01FA"
	$"CA00 01FA CB00 01FA CC00 01FA CD00 01FA"
	$"CE00 01FA CF01 0100 FAC0 0000 FAC1 0000"
	$"FAC2 0000 FAC3 0000 FAC4 0000 FAC5 0000"
	$"FAC6 0000 FAC7 0000 FAC8 0000 FAC9 0000"
	$"FACA 0000 FACB 0000 FACC 0000 FACD 0000"
	$"FACE 0000 FBCF 02CF 0000 FAC0 0000 FAC1"
	$"0000 FAC2 0000 FAC3 0000 FAC4 0000 FAC5"
	$"0000 FAC6 0000 FAC7 0000 FAC8 0000 FAC9"
	$"0000 FACA 0000 FACB 0000 FACC 0000 FACD"
	$"0000 FACE 0000 FCCF FFCF 0000 00C7 0001"
	$"FAC0 0001 FAC1 0001 FAC2 0001 FAC3 0001"
	$"FAC4 0001 FAC5 0001 FAC6 0001 FAC7 0001"
	$"FAC8 0001 FAC9 0001 FACA 0001 FACB 0001"
	$"FACC 0001 FACD 0001 FACE 0001 FACF 0101"
	$"00FA C000 00FA C100 00FA C200 00FA C300"
	$"00FA C400 00FA C500 00FA C600 00FA C700"
	$"00FA C800 00FA C900 00FA CA00 00FA CB00"
	$"00FA CC00 00FA CD00 00FA CE00 00FB CF02"
	$"CF00 00FA C000 00FA C100 00FA C200 00FA"
	$"C300 00FA C400 00FA C500 00FA C600 00FA"
	$"C700 00FA C800 00FA C900 00FA CA00 00FA"
	$"CB00 00FA CC00 00FA CD00 00FA CE00 00FC"
	$"CFFF CF00 0000 C700 01FA C000 01FA C100"
	$"01FA C200 01FA C300 01FA C400 01FA C500"
	$"01FA C600 01FA C700 01FA C800 01FA C900"
	$"01FA CA00 01FA CB00 01FA CC00 01FA CD00"
	$"01FA CE00 01FA CF01 0100 FAC0 0000 FAC1"
	$"0000 FAC2 0000 FAC3 0000 FAC4 0000 FAC5"
	$"0000 FAC6 0000 FAC7 0000 FAC8 0000 FAC9"
	$"0000 FACA 0000 FACB 0000 FACC 0000 FACD"
	$"0000 FACE 0000 FBCF 02CF 0000 FAC0 0000"
	$"FAC1 0000 FAC2 0000 FAC3 0000 FAC4 0000"
	$"FAC5 0000 FAC6 0000 FAC7 0000 FAC8 0000"
	$"FAC9 0000 FACA 0000 FACB 0000 FACC 0000"
	$"FACD 0000 FACE 0000 FCCF FFCF 0000 000A"
	$"8101 0001 8200 8100 FE00 00C7 0001 FAD0"
	$"0001 FAD1 0001 FAD2 0001 FAD3 0001 FAD4"
	$"0001 FAD5 0001 FAD6 0001 FAD7 0001 FAD8"
	$"0001 FAD9 0001 FADA 0001 FADB 0001 FADC"
	$"0001 FADD 0001 FADE 0001 FADF 0101 00FA"
	$"D000 00FA D100 00FA D200 00FA D300 00FA"
	$"D400 00FA D500 00FA D600 00FA D700 00FA"
	$"D800 00FA D900 00FA DA00 00FA DB00 00FA"
	$"DC00 00FA DD00 00FA DE00 00FB DF02 DF00"
	$"00FA D000 00FA D100 00FA D200 00FA D300"
	$"00FA D400 00FA D500 00FA D600 00FA D700"
	$"00FA D800 00FA D900 00FA DA00 00FA DB00"
	$"00FA DC00 00FA DD00 00FA DE00 00FC DFFF"
	$"DF00 0000 C700 01FA D000 01FA D100 01FA"
	$"D200 01FA D300 01FA D400 01FA D500 01FA"
	$"D600 01FA D700 01FA D800 01FA D900 01FA"
	$"DA00 01FA DB00 01FA DC00 01FA DD00 01FA"
	$"DE00 01FA DF01 0100 FAD0 0000 FAD1 0000"
	$"FAD2 0000 FAD3 0000 FAD4 0000 FAD5 0000"
	$"FAD6 0000 FAD7 0000 FAD8 0000 FAD9 0000"
	$"FADA 0000 FADB 0000 FADC 0000 FADD 0000"
	$"FADE 0000 FBDF 02DF 0000 FAD0 0000 FAD1"
	$"0000 FAD2 0000 FAD3 0000 FAD4 0000 FAD5"
	$"0000 FAD6 0000 FAD7 0000 FAD8 0000 FAD9"
	$"0000 FADA 0000 FADB 0000 FADC 0000 FADD"
	$"0000 FADE 0000 FCDF FFDF 0000 00C7 0001"
	$"FAD0 0001 FAD1 0001 FAD2 0001 FAD3 0001"
	$"FAD4 0001 FAD5 0001 FAD6 0001 FAD7 0001"
	$"FAD8 0001 FAD9 0001 FADA 0001 FADB 0001"
	$"FADC 0001 FADD 0001 FADE 0001 FADF 0101"
	$"00FA D000 00FA D100 00FA D200 00FA D300"
	$"00FA D400 00FA D500 00FA D600 00FA D700"
	$"00FA D800 00FA D900 00FA DA00 00FA DB00"
	$"00FA DC00 00FA DD00 00FA DE00 00FB DF02"
	$"DF00 00FA D000 00FA D100 00FA D200 00FA"
	$"D300 00FA D400 00FA D500 00FA D600 00FA"
	$"D700 00FA D800 00FA D900 00FA DA00 00FA"
	$"DB00 00FA DC00 00FA DD00 00FA DE00 00FC"
	$"DFFF DF00 0000 C700 01FA D000 01FA D100"
	$"01FA D200 01FA D300 01FA D400 01FA D500"
	$"01FA D600 01FA D700 01FA D800 01FA D900"
	$"01FA DA00 01FA DB00 01FA DC00 01FA DD00"
	$"01FA DE00 01FA DF01 0100 FAD0 0000 FAD1"
	$"0000 FAD2 0000 FAD3 0000 FAD4 0000 FAD5"
	$"0000 FAD6 0000 FAD7 0000 FAD8 0000 FAD9"
	$"0000 FADA 0000 FADB 0000 FADC 0000 FADD"
	$"0000 FADE 0000 FBDF 02DF 0000 FAD0 0000"
	$"FAD1 0000 FAD2 0000 FAD3 0000 FAD4 0000"
	$"FAD5 0000 FAD6 0000 FAD7 0000 FAD8 0000"
	$"FAD9 0000 FADA 0000 FADB 0000 FADC 0000"
	$"FADD 0000 FADE 0000 FCDF FFDF 0000 00C7"
	$"0001 FAD0 0001 FAD1 0001 FAD2 0001 FAD3"
	$"0001 FAD4 0001 FAD5 0001 FAD6 0001 FAD7"
	$"0001 FAD8 0001 FAD9 0001 FADA 0001 FADB"
	$"0001 FADC 0001 FADD 0001 FADE 0001 FADF"
	$"0101 00FA D000 00FA D100 00FA D200 00FA"
	$"D300 00FA D400 00FA D500 00FA D600 00FA"
	$"D700 00FA D800 00FA D900 00FA DA00 00FA"
	$"DB00 00FA DC00 00FA DD00 00FA DE00 00FB"
	$"DF02 DF00 00FA D000 00FA D100 00FA D200"
	$"00FA D300 00FA D400 00FA D500 00FA D600"
	$"00FA D700 00FA D800 00FA D900 00FA DA00"
	$"00FA DB00 00FA DC00 00FA DD00 00FA DE00"
	$"00FC DFFF DF00 0000 C700 01FA D000 01FA"
	$"D100 01FA D200 01FA D300 01FA D400 01FA"
	$"D500 01FA D600 01FA D700 01FA D800 01FA"
	$"D900 01FA DA00 01FA DB00 01FA DC00 01FA"
	$"DD00 01FA DE00 01FA DF01 0100 FAD0 0000"
	$"FAD1 0000 FAD2 0000 FAD3 0000 FAD4 0000"
	$"FAD5 0000 FAD6 0000 FAD7 0000 FAD8 0000"
	$"FAD9 0000 FADA 0000 FADB 0000 FADC 0000"
	$"FADD 0000 FADE 0000 FBDF 02DF 0000 FAD0"
	$"0000 FAD1 0000 FAD2 0000 FAD3 0000 FAD4"
	$"0000 FAD5 0000 FAD6 0000 FAD7 0000 FAD8"
	$"0000 FAD9 0000 FADA 0000 FADB 0000 FADC"
	$"0000 FADD 0000 FADE 0000 FCDF FFDF 0000"
	$"00C7 0001 FAD0 0001 FAD1 0001 FAD2 0001"
	$"FAD3 0001 FAD4 0001 FAD5 0001 FAD6 0001"
	$"FAD7 0001 FAD8 0001 FAD9 0001 FADA 0001"
	$"FADB 0001 FADC 0001 FADD 0001 FADE 0001"
	$"FADF 0101 00FA D000 00FA D100 00FA D200"
	$"00FA D300 00FA D400 00FA D500 00FA D600"
	$"00FA D700 00FA D800 00FA D900 00FA DA00"
	$"00FA DB00 00FA DC00 00FA DD00 00FA DE00"
	$"00FB DF02 DF00 00FA D000 00FA D100 00FA"
	$"D200 00FA D300 00FA D400 00FA D500 00FA"
	$"D600 00FA D700 00FA D800 00FA D900 00FA"
	$"DA00 00FA DB00 00FA DC00 00FA DD00 00FA"
	$"DE00 00FC DFFF DF00 0000 0A81 0100 0182"
	$"0081 00FE 0000 C700 01FA E000 01FA E100"
	$"01FA E200 01FA E300 01FA E400 01FA E500"
	$"01FA E600 01FA E700 01FA E800 01FA E900"
	$"01FA EA00 01FA EB00 01FA EC00 01FA ED00"
	$"01FA EE00 01FA EF01 0100 FAE0 0000 FAE1"
	$"0000 FAE2 0000 FAE3 0000 FAE4 0000 FAE5"
	$"0000 FAE6 0000 FAE7 0000 FAE8 0000 FAE9"
	$"0000 FAEA 0000 FAEB 0000 FAEC 0000 FAED"
	$"0000 FAEE 0000 FBEF 02EF 0000 FAE0 0000"
	$"FAE1 0000 FAE2 0000 FAE3 0000 FAE4 0000"
	$"FAE5 0000 FAE6 0000 FAE7 0000 FAE8 0000"
	$"FAE9 0000 FAEA 0000 FAEB 0000 FAEC 0000"
	$"FAED 0000 FAEE 0000 FCEF FFEF 0000 00C7"
	$"0001 FAE0 0001 FAE1 0001 FAE2 0001 FAE3"
	$"0001 FAE4 0001 FAE5 0001 FAE6 0001 FAE7"
	$"0001 FAE8 0001 FAE9 0001 FAEA 0001 FAEB"
	$"0001 FAEC 0001 FAED 0001 FAEE 0001 FAEF"
	$"0101 00FA E000 00FA E100 00FA E200 00FA"
	$"E300 00FA E400 00FA E500 00FA E600 00FA"
	$"E700 00FA E800 00FA E900 00FA EA00 00FA"
	$"EB00 00FA EC00 00FA ED00 00FA EE00 00FB"
	$"EF02 EF00 00FA E000 00FA E100 00FA E200"
	$"00FA E300 00FA E400 00FA E500 00FA E600"
	$"00FA E700 00FA E800 00FA E900 00FA EA00"
	$"00FA EB00 00FA EC00 00FA ED00 00FA EE00"
	$"00FC EFFF EF00 0000 C700 01FA E000 01FA"
	$"E100 01FA E200 01FA E300 01FA E400 01FA"
	$"E500 01FA E600 01FA E700 01FA E800 01FA"
	$"E900 01FA EA00 01FA EB00 01FA EC00 01FA"
	$"ED00 01FA EE00 01FA EF01 0100 FAE0 0000"
	$"FAE1 0000 FAE2 0000 FAE3 0000 FAE4 0000"
	$"FAE5 0000 FAE6 0000 FAE7 0000 FAE8 0000"
	$"FAE9 0000 FAEA 0000 FAEB 0000 FAEC 0000"
	$"FAED 0000 FAEE 0000 FBEF 02EF 0000 FAE0"
	$"0000 FAE1 0000 FAE2 0000 FAE3 0000 FAE4"
	$"0000 FAE5 0000 FAE6 0000 FAE7 0000 FAE8"
	$"0000 FAE9 0000 FAEA 0000 FAEB 0000 FAEC"
	$"0000 FAED 0000 FAEE 0000 FCEF FFEF 0000"
	$"00C7 0001 FAE0 0001 FAE1 0001 FAE2 0001"
	$"FAE3 0001 FAE4 0001 FAE5 0001 FAE6 0001"
	$"FAE7 0001 FAE8 0001 FAE9 0001 FAEA 0001"
	$"FAEB 0001 FAEC 0001 FAED 0001 FAEE 0001"
	$"FAEF 0101 00FA E000 00FA E100 00FA E200"
	$"00FA E300 00FA E400 00FA E500 00FA E600"
	$"00FA E700 00FA E800 00FA E900 00FA EA00"
	$"00FA EB00 00FA EC00 00FA ED00 00FA EE00"
	$"00FB EF02 EF00 00FA E000 00FA E100 00FA"
	$"E200 00FA E300 00FA E400 00FA E500 00FA"
	$"E600 00FA E700 00FA E800 00FA E900 00FA"
	$"EA00 00FA EB00 00FA EC00 00FA ED00 00FA"
	$"EE00 00FC EFFF EF00 0000 C700 01FA E000"
	$"01FA E100 01FA E200 01FA E300 01FA E400"
	$"01FA E500 01FA E600 01FA E700 01FA E800"
	$"01FA E900 01FA EA00 01FA EB00 01FA EC00"
	$"01FA ED00 01FA EE00 01FA EF01 0100 FAE0"
	$"0000 FAE1 0000 FAE2 0000 FAE3 0000 FAE4"
	$"0000 FAE5 0000 FAE6 0000 FAE7 0000 FAE8"
	$"0000 FAE9 0000 FAEA 0000 FAEB 0000 FAEC"
	$"0000 FAED 0000 FAEE 0000 FBEF 02EF 0000"
	$"FAE0 0000 FAE1 0000 FAE2 0000 FAE3 0000"
	$"FAE4 0000 FAE5 0000 FAE6 0000 FAE7 0000"
	$"FAE8 0000 FAE9 0000 FAEA 0000 FAEB 0000"
	$"FAEC 0000 FAED 0000 FAEE 0000 FCEF FFEF"
	$"0000 00C7 0001 FAE0 0001 FAE1 0001 FAE2"
	$"0001 FAE3 0001 FAE4 0001 FAE5 0001 FAE6"
	$"0001 FAE7 0001 FAE8 0001 FAE9 0001 FAEA"
	$"0001 FAEB 0001 FAEC 0001 FAED 0001 FAEE"
	$"0001 FAEF 0101 00FA E000 00FA E100 00FA"
	$"E200 00FA E300 00FA E400 00FA E500 00FA"
	$"E600 00FA E700 00FA E800 00FA E900 00FA"
	$"EA00 00FA EB00 00FA EC00 00FA ED00 00FA"
	$"EE00 00FB EF02 EF00 00FA E000 00FA E100"
	$"00FA E200 00FA E300 00FA E400 00FA E500"
	$"00FA E600 00FA E700 00FA E800 00FA E900"
	$"00FA EA00 00FA EB00 00FA EC00 00FA ED00"
	$"00FA EE00 00FC EFFF EF00 0000 C700 01FA"
	$"E000 01FA E100 01FA E200 01FA E300 01FA"
	$"E400 01FA E500 01FA E600 01FA E700 01FA"
	$"E800 01FA E900 01FA EA00 01FA EB00 01FA"
	$"EC00 01FA ED00 01FA EE00 01FA EF01 0100"
	$"FAE0 0000 FAE1 0000 FAE2 0000 FAE3 0000"
	$"FAE4 0000 FAE5 0000 FAE6 0000 FAE7 0000"
	$"FAE8 0000 FAE9 0000 FAEA 0000 FAEB 0000"
	$"FAEC 0000 FAED 0000 FAEE 0000 FBEF 02EF"
	$"0000 FAE0 0000 FAE1 0000 FAE2 0000 FAE3"
	$"0000 FAE4 0000 FAE5 0000 FAE6 0000 FAE7"
	$"0000 FAE8 0000 FAE9 0000 FAEA 0000 FAEB"
	$"0000 FAEC 0000 FAED 0000 FAEE 0000 FCEF"
	$"FFEF 0000 000A 8101 0001 8200 8100 FE00"
	$"00C7 0001 FAF0 0001 FAF1 0001 FAF2 0001"
	$"FAF3 0001 FAF4 0001 FAF5 0001 FAF6 0001"
	$"FAF7 0001 FAF8 0001 FAF9 0001 FAFA 0001"
	$"FAFB 0001 FAFC 0001 FAFD 0001 FAFE 0001"
	$"FAFF 0101 00FA F000 00FA F100 00FA F200"
	$"00FA F300 00FA F400 00FA F500 00FA F600"
	$"00FA F700 00FA F800 00FA F900 00FA FA00"
	$"00FA FB00 00FA FC00 00FA FD00 00FA FE00"
	$"00FB FF02 FF00 00FA F000 00FA F100 00FA"
	$"F200 00FA F300 00FA F400 00FA F500 00FA"
	$"F600 00FA F700 00FA F800 00FA F900 00FA"
	$"FA00 00FA FB00 00FA FC00 00FA FD00 00FA"
	$"FE00 00FC FFFF FF00 0000 C700 01FA F000"
	$"01FA F100 01FA F200 01FA F300 01FA F400"
	$"01FA F500 01FA F600 01FA F700 01FA F800"
	$"01FA F900 01FA FA00 01FA FB00 01FA FC00"
	$"01FA FD00 01FA FE00 01FA FF01 0100 FAF0"
	$"0000 FAF1 0000 FAF2 0000 FAF3 0000 FAF4"
	$"0000 FAF5 0000 FAF6 0000 FAF7 0000 FAF8"
	$"0000 FAF9 0000 FAFA 0000 FAFB 0000 FAFC"
	$"0000 FAFD 0000 FAFE 0000 FBFF 02FF 0000"
	$"FAF0 0000 FAF1 0000 FAF2 0000 FAF3 0000"
	$"FAF4 0000 FAF5 0000 FAF6 0000 FAF7 0000"
	$"FAF8 0000 FAF9 0000 FAFA 0000 FAFB 0000"
	$"FAFC 0000 FAFD 0000 FAFE 0000 FCFF FFFF"
	$"0000 00C7 0001 FAF0 0001 FAF1 0001 FAF2"
	$"0001 FAF3 0001 FAF4 0001 FAF5 0001 FAF6"
	$"0001 FAF7 0001 FAF8 0001 FAF9 0001 FAFA"
	$"0001 FAFB 0001 FAFC 0001 FAFD 0001 FAFE"
	$"0001 FAFF 0101 00FA F000 00FA F100 00FA"
	$"F200 00FA F300 00FA F400 00FA F500 00FA"
	$"F600 00FA F700 00FA F800 00FA F900 00FA"
	$"FA00 00FA FB00 00FA FC00 00FA FD00 00FA"
	$"FE00 00FB FF02 FF00 00FA F000 00FA F100"
	$"00FA F200 00FA F300 00FA F400 00FA F500"
	$"00FA F600 00FA F700 00FA F800 00FA F900"
	$"00FA FA00 00FA FB00 00FA FC00 00FA FD00"
	$"00FA FE00 00FC FFFF FF00 0000 C700 01FA"
	$"F000 01FA F100 01FA F200 01FA F300 01FA"
	$"F400 01FA F500 01FA F600 01FA F700 01FA"
	$"F800 01FA F900 01FA FA00 01FA FB00 01FA"
	$"FC00 01FA FD00 01FA FE00 01FA FF01 0100"
	$"FAF0 0000 FAF1 0000 FAF2 0000 FAF3 0000"
	$"FAF4 0000 FAF5 0000 FAF6 0000 FAF7 0000"
	$"FAF8 0000 FAF9 0000 FAFA 0000 FAFB 0000"
	$"FAFC 0000 FAFD 0000 FAFE 0000 FBFF 02FF"
	$"0000 FAF0 0000 FAF1 0000 FAF2 0000 FAF3"
	$"0000 FAF4 0000 FAF5 0000 FAF6 0000 FAF7"
	$"0000 FAF8 0000 FAF9 0000 FAFA 0000 FAFB"
	$"0000 FAFC 0000 FAFD 0000 FAFE 0000 FCFF"
	$"FFFF 0000 00C7 0001 FAF0 0001 FAF1 0001"
	$"FAF2 0001 FAF3 0001 FAF4 0001 FAF5 0001"
	$"FAF6 0001 FAF7 0001 FAF8 0001 FAF9 0001"
	$"FAFA 0001 FAFB 0001 FAFC 0001 FAFD 0001"
	$"FAFE 0001 FAFF 0101 00FA F000 00FA F100"
	$"00FA F200 00FA F300 00FA F400 00FA F500"
	$"00FA F600 00FA F700 00FA F800 00FA F900"
	$"00FA FA00 00FA FB00 00FA FC00 00FA FD00"
	$"00FA FE00 00FB FF02 FF00 00FA F000 00FA"
	$"F100 00FA F200 00FA F300 00FA F400 00FA"
	$"F500 00FA F600 00FA F700 00FA F800 00FA"
	$"F900 00FA FA00 00FA FB00 00FA FC00 00FA"
	$"FD00 00FA FE00 00FC FFFF FF00 0000 C700"
	$"01FA F000 01FA F100 01FA F200 01FA F300"
	$"01FA F400 01FA F500 01FA F600 01FA F700"
	$"01FA F800 01FA F900 01FA FA00 01FA FB00"
	$"01FA FC00 01FA FD00 01FA FE00 01FA FF01"
	$"0100 FAF0 0000 FAF1 0000 FAF2 0000 FAF3"
	$"0000 FAF4 0000 FAF5 0000 FAF6 0000 FAF7"
	$"0000 FAF8 0000 FAF9 0000 FAFA 0000 FAFB"
	$"0000 FAFC 0000 FAFD 0000 FAFE 0000 FBFF"
	$"02FF 0000 FAF0 0000 FAF1 0000 FAF2 0000"
	$"FAF3 0000 FAF4 0000 FAF5 0000 FAF6 0000"
	$"FAF7 0000 FAF8 0000 FAF9 0000 FAFA 0000"
	$"FAFB 0000 FAFC 0000 FAFD 0000 FAFE 0000"
	$"FCFF FFFF 0000 00C7 0001 FAF0 0001 FAF1"
	$"0001 FAF2 0001 FAF3 0001 FAF4 0001 FAF5"
	$"0001 FAF6 0001 FAF7 0001 FAF8 0001 FAF9"
	$"0001 FAFA 0001 FAFB 0001 FAFC 0001 FAFD"
	$"0001 FAFE 0001 FAFF 0101 00FA F000 00FA"
	$"F100 00FA F200 00FA F300 00FA F400 00FA"
	$"F500 00FA F600 00FA F700 00FA F800 00FA"
	$"F900 00FA FA00 00FA FB00 00FA FC00 00FA"
	$"FD00 00FA FE00 00FB FF02 FF00 00FA F000"
	$"00FA F100 00FA F200 00FA F300 00FA F400"
	$"00FA F500 00FA F600 00FA F700 00FA F800"
	$"00FA F900 00FA FA00 00FA FB00 00FA FC00"
	$"00FA FD00 00FA FE00 00FC FFFF FF00 0000"
	$"0A81 0100 0182 0081 00FE 0000 00FF"
};

resource 'PICT' (2053, "1 Bit Picker") {
	390,
	{0, 0, 17, 33},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0011 0021 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0011"
	$"0021 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0011 0021 0098 800C 0000 0000 0011"
	$"0021 0000 0000 0000 0000 0048 0000 0048"
	$"0000 0000 0002 0001 0002 0000 0000 0000"
	$"0000 0000 0000 004A 5686 0000 0002 0000"
	$"FFFF FFFF FFFF 0001 0101 0000 0000 0002"
	$"0000 0000 0000 0000 0000 0011 0021 0000"
	$"0000 0011 0021 0000 06F9 5500 01FE 000C"
	$"0040 FE00 006A FEAA 0001 FE00 0C00 40FE"
	$"0000 6AFE AA00 01FE 000C 0040 FE00 006A"
	$"FEAA 0001 FE00 0C00 40FE 0000 6AFE AA00"
	$"01FE 000C 0040 FE00 006A FEAA 0001 FE00"
	$"0C00 40FE 0000 6AFE AA00 01FE 000C 0040"
	$"FE00 006A FEAA 0001 FE00 0C00 40FE 0000"
	$"6AFE AA00 01FE 000C 0040 FE00 006A FEAA"
	$"0001 FE00 0C00 40FE 0000 6AFE AA00 01FE"
	$"000C 0040 FE00 006A FEAA 0001 FE00 0C00"
	$"40FE 0000 6AFE AA00 01FE 000C 0040 FE00"
	$"006A FEAA 0001 FE00 0C00 40FE 0000 6AFE"
	$"AA00 01FE 000C 0040 FE00 006A FEAA 0001"
	$"FE00 06F9 5500 01FE 0000 00FF"
};

resource 'PICT' (2052, "4 Bit Picker") {
	1242,
	{0, 0, 49, 49},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0031 0031 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0031"
	$"0031 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0031 0031 0098 8034 0000 0000 0031"
	$"0031 0000 0000 0000 0000 0048 0000 0048"
	$"0000 0000 0008 0001 0008 0000 0000 0000"
	$"0000 0000 0000 004A A7F0 0000 0010 0000"
	$"FFFF FFFF FFFF 0001 F2F2 0808 8484 0002"
	$"4646 0000 A5A5 0003 0000 0000 D4D4 0004"
	$"0202 ABAB EAEA 0005 0000 6464 1111 0006"
	$"1F1F B7B7 1414 0007 FCFC F3F3 0505 0008"
	$"9090 7171 3A3A 0009 5656 2C2C 0505 000A"
	$"FFFF 6464 0202 000B 0101 0000 0000 000C"
	$"DDDD 0808 0606 000D C0C0 C0C0 C0C0 000E"
	$"8080 8080 8080 000F 4040 4040 4040 0010"
	$"0000 0000 0000 0000 0000 0031 0031 0000"
	$"0000 0031 0031 0000 04D0 0BFE 0014 000B"
	$"F600 000B F607 000B F60A 000B F60C 000B"
	$"FE00 1400 0BF6 0000 0BF6 0700 0BF6 0A00"
	$"0BF6 0C00 0BFE 0014 000B F600 000B F607"
	$"000B F60A 000B F60C 000B FE00 1400 0BF6"
	$"0000 0BF6 0700 0BF6 0A00 0BF6 0C00 0BFE"
	$"0014 000B F600 000B F607 000B F60A 000B"
	$"F60C 000B FE00 1400 0BF6 0000 0BF6 0700"
	$"0BF6 0A00 0BF6 0C00 0BFE 0014 000B F600"
	$"000B F607 000B F60A 000B F60C 000B FE00"
	$"1400 0BF6 0000 0BF6 0700 0BF6 0A00 0BF6"
	$"0C00 0BFE 0014 000B F600 000B F607 000B"
	$"F60A 000B F60C 000B FE00 1400 0BF6 0000"
	$"0BF6 0700 0BF6 0A00 0BF6 0C00 0BFE 0014"
	$"000B F600 000B F607 000B F60A 000B F60C"
	$"000B FE00 04D0 0BFE 0014 000B F601 000B"
	$"F602 000B F603 000B F604 000B FE00 1400"
	$"0BF6 0100 0BF6 0200 0BF6 0300 0BF6 0400"
	$"0BFE 0014 000B F601 000B F602 000B F603"
	$"000B F604 000B FE00 1400 0BF6 0100 0BF6"
	$"0200 0BF6 0300 0BF6 0400 0BFE 0014 000B"
	$"F601 000B F602 000B F603 000B F604 000B"
	$"FE00 1400 0BF6 0100 0BF6 0200 0BF6 0300"
	$"0BF6 0400 0BFE 0014 000B F601 000B F602"
	$"000B F603 000B F604 000B FE00 1400 0BF6"
	$"0100 0BF6 0200 0BF6 0300 0BF6 0400 0BFE"
	$"0014 000B F601 000B F602 000B F603 000B"
	$"F604 000B FE00 1400 0BF6 0100 0BF6 0200"
	$"0BF6 0300 0BF6 0400 0BFE 0014 000B F601"
	$"000B F602 000B F603 000B F604 000B FE00"
	$"04D0 0BFE 0014 000B F606 000B F605 000B"
	$"F609 000B F608 000B FE00 1400 0BF6 0600"
	$"0BF6 0500 0BF6 0900 0BF6 0800 0BFE 0014"
	$"000B F606 000B F605 000B F609 000B F608"
	$"000B FE00 1400 0BF6 0600 0BF6 0500 0BF6"
	$"0900 0BF6 0800 0BFE 0014 000B F606 000B"
	$"F605 000B F609 000B F608 000B FE00 1400"
	$"0BF6 0600 0BF6 0500 0BF6 0900 0BF6 0800"
	$"0BFE 0014 000B F606 000B F605 000B F609"
	$"000B F608 000B FE00 1400 0BF6 0600 0BF6"
	$"0500 0BF6 0900 0BF6 0800 0BFE 0014 000B"
	$"F606 000B F605 000B F609 000B F608 000B"
	$"FE00 1400 0BF6 0600 0BF6 0500 0BF6 0900"
	$"0BF6 0800 0BFE 0014 000B F606 000B F605"
	$"000B F609 000B F608 000B FE00 04D0 0BFE"
	$"0014 000B F60D 000B F60E 000B F60F 000B"
	$"F610 000B FE00 1400 0BF6 0D00 0BF6 0E00"
	$"0BF6 0F00 0BF6 1000 0BFE 0014 000B F60D"
	$"000B F60E 000B F60F 000B F610 000B FE00"
	$"1400 0BF6 0D00 0BF6 0E00 0BF6 0F00 0BF6"
	$"1000 0BFE 0014 000B F60D 000B F60E 000B"
	$"F60F 000B F610 000B FE00 1400 0BF6 0D00"
	$"0BF6 0E00 0BF6 0F00 0BF6 1000 0BFE 0014"
	$"000B F60D 000B F60E 000B F60F 000B F610"
	$"000B FE00 1400 0BF6 0D00 0BF6 0E00 0BF6"
	$"0F00 0BF6 1000 0BFE 0014 000B F60D 000B"
	$"F60E 000B F60F 000B F610 000B FE00 1400"
	$"0BF6 0D00 0BF6 0E00 0BF6 0F00 0BF6 1000"
	$"0BFE 0014 000B F60D 000B F60E 000B F60F"
	$"000B F610 000B FE00 04D0 0BFE 0000 00FF"
};

resource 'PICT' (2050, "System Palette Picker") {
	23472,
	{0, 0, 145, 129},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0091 0081 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0091"
	$"0081 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0091 0081 8201 0000 0854 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 4000"
	$"0000 0000 0821 0000 0000 0091 0081 0000"
	$"0056 726C 6520 0000 0000 0000 0000 0001"
	$"0001 6170 706C 0000 0000 0000 0400 0081"
	$"0091 0048 0000 0048 0000 0000 07CB 0001"
	$"0941 6E69 6D61 7469 6F6E 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0028 0028 4000 07CB 0008 0000 0000 0091"
	$"0000 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01F4"
	$"FFFF FFFF 01FF 0000 00F9 0000 0000 F4FF"
	$"FFFF FF01 FF00 0000 FF01 F4FF FFFF FF01"
	$"FF00 0000 F900 0000 00F4 FFFF FFFF 01FF"
	$"0000 00FF 01F4 FFFF FFFF 01FF 0000 00F9"
	$"0000 0000 F4FF FFFF FF01 FF00 0000 FF01"
	$"F4FF FFFF FF01 FF00 0000 F900 0000 00F4"
	$"FFFF FFFF 01FF 0000 00FF 01F4 FFFF FFFF"
	$"01FF 0000 00F9 0000 0000 F4FF FFFF FF01"
	$"FF00 0000 FF01 F4FF FFFF FF01 FF00 0000"
	$"F900 0000 00F4 FFFF FFFF 01FF 0000 00FF"
	$"01F4 FFFF FFFF 01FF 0000 00F9 0000 0000"
	$"F4FF FFFF FF01 FF00 0000 FF01 F4FF FFFF"
	$"FF01 FF00 0000 F900 0000 00F4 FFFF FFFF"
	$"01FF 0000 00FF 01F4 FFFF FFFF 01FF 0000"
	$"00F9 0000 0000 F4FF FFFF FF01 FF00 0000"
	$"FF01 F4FF FFFF FF01 FF00 0000 F900 0000"
	$"00F4 FFFF FFFF 01FF 0000 00FF 01F4 FFFF"
	$"FFFF 01FF 0000 00F9 0000 0000 F4FF FFFF"
	$"FF01 FF00 0000 FF01 F4FF FFFF FF01 FF00"
	$"0000 F900 0000 00F4 FFFF FFFF 01FF 0000"
	$"00FF 01F4 FFFF FFFF 01FF 0000 00F9 0000"
	$"0000 F4FF FFFF FF01 FF00 0000 FF01 F4FF"
	$"FFFF FF01 FF00 0000 F900 0000 00F4 FFFF"
	$"FFFF 01FF 0000 00FF 01F4 FFFF FFFF 01FF"
	$"0000 00F9 0000 0000 F4FF FFFF FF01 FF00"
	$"0000 FF01 F4FF FFFF FF01 FF00 0000 F900"
	$"0000 00F4 FFFF FFFF 01FF 0000 00FF 0000"
	$"009A 0000 00FF 8204 0000 0000 0091 0081"
	$"0000 0004 0000 0000 0048 0000 0048 0000"
	$"0010 0020 0003 0008 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0091 0081 0000 0000"
	$"0091 0081 0040 000A 8101 0001 8200 8100"
	$"FE00 0097 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FA00 0001 FA00 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0101 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FFF8 00FA"
	$"FFF8 00FA FFD2 00FE 00FA FF00 00FA CC00"
	$"00FA 9900 00FA 6600 00FA 33E8 00FA FF00"
	$"00FA FFF8 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FC FFFF FF00 0000 9700 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA 0000 01FA"
	$"0000 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA FF01 0100"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF F800 FAFF F800 FAFF D200"
	$"FE00 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 E800 FAFF 0000 FAFF F800 FA33"
	$"0000 FA66 0000 FA99 0000 FACC 0000 FCFF"
	$"FFFF 0000 0097 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FA00 0001 FA00 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0101 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FFF8"
	$"00FA FFF8 00FA FFD2 00FE 00FA FF00 00FA"
	$"CC00 00FA 9900 00FA 6600 00FA 33E8 00FA"
	$"FF00 00FA FFF8 00FA 3300 00FA 6600 00FA"
	$"9900 00FA CC00 00FC FFFF FF00 0000 9700"
	$"01FA FF00 01FA FF00 01FA FF00 01FA FF00"
	$"01FA FF00 01FA FF00 01FA FF00 01FA 0000"
	$"01FA 0000 01FA FF00 01FA FF00 01FA FF00"
	$"01FA FF00 01FA FF00 01FA FF00 01FA FF01"
	$"0100 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FAFF F800 FAFF F800 FAFF"
	$"D200 FE00 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 E800 FAFF 0000 FAFF F800"
	$"FA33 0000 FA66 0000 FA99 0000 FACC 0000"
	$"FCFF FFFF 0000 0097 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FA00 0001 FA00 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0101 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FFF8 00FA FFF8 00FA FFD2 00FE 00FA FF00"
	$"00FA CC00 00FA 9900 00FA 6600 00FA 33E8"
	$"00FA FF00 00FA FFF8 00FA 3300 00FA 6600"
	$"00FA 9900 00FA CC00 00FC FFFF FF00 0000"
	$"9700 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"0000 01FA 0000 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"FF01 0100 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FAFF F800 FAFF F800"
	$"FAFF D200 FE00 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 E800 FAFF 0000 FAFF"
	$"F800 FA33 0000 FA66 0000 FA99 0000 FACC"
	$"0000 FCFF FFFF 0000 0097 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FA00 0001 FA00 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0101 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FFF8 00FA FFF8 00FA FFD2 00FE 00FA"
	$"FF00 00FA CC00 00FA 9900 00FA 6600 00FA"
	$"33E8 00FA FF00 00FA FFF8 00FA 3300 00FA"
	$"6600 00FA 9900 00FA CC00 00FC FFFF FF00"
	$"0000 0A81 0100 0182 0081 00FE 0000 9700"
	$"01FA CC00 01FA CC00 01FA CC00 01FA CC00"
	$"01FA CC00 01FA CC00 01FA EE00 01FA 0000"
	$"01FA 0000 01FA EE00 01FA CC00 01FA CC00"
	$"01FA CC00 01FA CC00 01FA CC00 01FA CC01"
	$"0100 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FAFF F800 FAEE F800 FAEE"
	$"D200 FE00 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 E800 FAEE 0000 FAEE F800"
	$"FA33 0000 FA66 0000 FA99 0000 FACC 0000"
	$"FCFF FFFF 0000 0097 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FAEE 0001 FA00 0001 FA00 0001 FAEE"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0101 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FFF8 00FA EEF8 00FA EED2 00FE 00FA FF00"
	$"00FA CC00 00FA 9900 00FA 6600 00FA 33E8"
	$"00FA EE00 00FA EEF8 00FA 3300 00FA 6600"
	$"00FA 9900 00FA CC00 00FC FFFF FF00 0000"
	$"9700 01FA CC00 01FA CC00 01FA CC00 01FA"
	$"CC00 01FA CC00 01FA CC00 01FA EE00 01FA"
	$"0000 01FA 0000 01FA EE00 01FA CC00 01FA"
	$"CC00 01FA CC00 01FA CC00 01FA CC00 01FA"
	$"CC01 0100 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FAFF F800 FAEE F800"
	$"FAEE D200 FE00 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 E800 FAEE 0000 FAEE"
	$"F800 FA33 0000 FA66 0000 FA99 0000 FACC"
	$"0000 FCFF FFFF 0000 0097 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FAEE 0001 FA00 0001 FA00 0001"
	$"FAEE 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0101 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FFF8 00FA EEF8 00FA EED2 00FE 00FA"
	$"FF00 00FA CC00 00FA 9900 00FA 6600 00FA"
	$"33E8 00FA EE00 00FA EEF8 00FA 3300 00FA"
	$"6600 00FA 9900 00FA CC00 00FC FFFF FF00"
	$"0000 9700 01FA CC00 01FA CC00 01FA CC00"
	$"01FA CC00 01FA CC00 01FA CC00 01FA EE00"
	$"01FA 0000 01FA 0000 01FA EE00 01FA CC00"
	$"01FA CC00 01FA CC00 01FA CC00 01FA CC00"
	$"01FA CC01 0100 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF F800 FAEE"
	$"F800 FAEE D200 FE00 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 E800 FAEE 0000"
	$"FAEE F800 FA33 0000 FA66 0000 FA99 0000"
	$"FACC 0000 FCFF FFFF 0000 0097 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FAEE 0001 FA00 0001 FA00"
	$"0001 FAEE 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0101 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FFF8 00FA EEF8 00FA EED2 00FE"
	$"00FA FF00 00FA CC00 00FA 9900 00FA 6600"
	$"00FA 33E8 00FA EE00 00FA EEF8 00FA 3300"
	$"00FA 6600 00FA 9900 00FA CC00 00FC FFFF"
	$"FF00 0000 9700 01FA CC00 01FA CC00 01FA"
	$"CC00 01FA CC00 01FA CC00 01FA CC00 01FA"
	$"EE00 01FA 0000 01FA 0000 01FA EE00 01FA"
	$"CC00 01FA CC00 01FA CC00 01FA CC00 01FA"
	$"CC00 01FA CC01 0100 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FAFF F800"
	$"FAEE F800 FAEE D200 FE00 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 E800 FAEE"
	$"0000 FAEE F800 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FCFF FFFF 0000 000A 8101"
	$"0001 8200 8100 FE00 0097 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FADD 0001 FA00 0001 FA00 0001"
	$"FADD 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0101 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FFF8 00FA DDF8 00FA DDD2 00FE 00FA"
	$"FF00 00FA CC00 00FA 9900 00FA 6600 00FA"
	$"33E8 00FA DD00 00FA DDF8 00FA 3300 00FA"
	$"6600 00FA 9900 00FA CC00 00FC FFFF FF00"
	$"0000 9700 01FA 9900 01FA 9900 01FA 9900"
	$"01FA 9900 01FA 9900 01FA 9900 01FA DD00"
	$"01FA 0000 01FA 0000 01FA DD00 01FA 9900"
	$"01FA 9900 01FA 9900 01FA 9900 01FA 9900"
	$"01FA 9901 0100 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF F800 FADD"
	$"F800 FADD D200 FE00 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 E800 FADD 0000"
	$"FADD F800 FA33 0000 FA66 0000 FA99 0000"
	$"FACC 0000 FCFF FFFF 0000 0097 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FADD 0001 FA00 0001 FA00"
	$"0001 FADD 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0101 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FFF8 00FA DDF8 00FA DDD2 00FE"
	$"00FA FF00 00FA CC00 00FA 9900 00FA 6600"
	$"00FA 33E8 00FA DD00 00FA DDF8 00FA 3300"
	$"00FA 6600 00FA 9900 00FA CC00 00FC FFFF"
	$"FF00 0000 9700 01FA 9900 01FA 9900 01FA"
	$"9900 01FA 9900 01FA 9900 01FA 9900 01FA"
	$"DD00 01FA 0000 01FA 0000 01FA DD00 01FA"
	$"9900 01FA 9900 01FA 9900 01FA 9900 01FA"
	$"9900 01FA 9901 0100 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FAFF F800"
	$"FADD F800 FADD D200 FE00 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 E800 FADD"
	$"0000 FADD F800 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FCFF FFFF 0000 0097 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FADD 0001 FA00 0001"
	$"FA00 0001 FADD 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0101"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FFF8 00FA DDF8 00FA DDD2"
	$"00FE 00FA FF00 00FA CC00 00FA 9900 00FA"
	$"6600 00FA 33E8 00FA DD00 00FA DDF8 00FA"
	$"3300 00FA 6600 00FA 9900 00FA CC00 00FC"
	$"FFFF FF00 0000 9700 01FA 9900 01FA 9900"
	$"01FA 9900 01FA 9900 01FA 9900 01FA 9900"
	$"01FA DD00 01FA 0000 01FA 0000 01FA DD00"
	$"01FA 9900 01FA 9900 01FA 9900 01FA 9900"
	$"01FA 9900 01FA 9901 0100 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"F800 FADD F800 FADD D200 FE00 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 E800"
	$"FADD 0000 FADD F800 FA33 0000 FA66 0000"
	$"FA99 0000 FACC 0000 FCFF FFFF 0000 0097"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FADD 0001 FA00"
	$"0001 FA00 0001 FADD 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0101 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FFF8 00FA DDF8 00FA"
	$"DDD2 00FE 00FA FF00 00FA CC00 00FA 9900"
	$"00FA 6600 00FA 33E8 00FA DD00 00FA DDF8"
	$"00FA 3300 00FA 6600 00FA 9900 00FA CC00"
	$"00FC FFFF FF00 0000 0A81 0100 0182 0081"
	$"00FE 0000 9700 01FA 6600 01FA 6600 01FA"
	$"6600 01FA 6600 01FA 6600 01FA 6600 01FA"
	$"CC00 01FA 0000 01FA 0000 01FA CC00 01FA"
	$"6600 01FA 6600 01FA 6600 01FA 6600 01FA"
	$"6600 01FA 6601 0100 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FAFF F800"
	$"FACC F800 FACC D200 FE00 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 E800 FACC"
	$"0000 FACC F800 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FCFF FFFF 0000 0097 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FACC 0001 FA00 0001"
	$"FA00 0001 FACC 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0101"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FFF8 00FA CCF8 00FA CCD2"
	$"00FE 00FA FF00 00FA CC00 00FA 9900 00FA"
	$"6600 00FA 33E8 00FA CC00 00FA CCF8 00FA"
	$"3300 00FA 6600 00FA 9900 00FA CC00 00FC"
	$"FFFF FF00 0000 9700 01FA 6600 01FA 6600"
	$"01FA 6600 01FA 6600 01FA 6600 01FA 6600"
	$"01FA CC00 01FA 0000 01FA 0000 01FA CC00"
	$"01FA 6600 01FA 6600 01FA 6600 01FA 6600"
	$"01FA 6600 01FA 6601 0100 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"F800 FACC F800 FACC D200 FE00 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 E800"
	$"FACC 0000 FACC F800 FA33 0000 FA66 0000"
	$"FA99 0000 FACC 0000 FCFF FFFF 0000 0097"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FACC 0001 FA00"
	$"0001 FA00 0001 FACC 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0101 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FFF8 00FA CCF8 00FA"
	$"CCD2 00FE 00FA FF00 00FA CC00 00FA 9900"
	$"00FA 6600 00FA 33E8 00FA CC00 00FA CCF8"
	$"00FA 3300 00FA 6600 00FA 9900 00FA CC00"
	$"00FC FFFF FF00 0000 9700 01FA 6600 01FA"
	$"6600 01FA 6600 01FA 6600 01FA 6600 01FA"
	$"6600 01FA CC00 01FA 0000 01FA 0000 01FA"
	$"CC00 01FA 6600 01FA 6600 01FA 6600 01FA"
	$"6600 01FA 6600 01FA 6601 0100 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FAFF F800 FACC F800 FACC D200 FE00 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"E800 FACC 0000 FACC F800 FA33 0000 FA66"
	$"0000 FA99 0000 FACC 0000 FCFF FFFF 0000"
	$"0097 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FACC 0001"
	$"FA00 0001 FA00 0001 FACC 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0101 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FFF8 00FA CCF8"
	$"00FA CCD2 00FE 00FA FF00 00FA CC00 00FA"
	$"9900 00FA 6600 00FA 33E8 00FA CC00 00FA"
	$"CCF8 00FA 3300 00FA 6600 00FA 9900 00FA"
	$"CC00 00FC FFFF FF00 0000 9700 01FA 6600"
	$"01FA 6600 01FA 6600 01FA 6600 01FA 6600"
	$"01FA 6600 01FA CC00 01FA 0000 01FA 0000"
	$"01FA CC00 01FA 6600 01FA 6600 01FA 6600"
	$"01FA 6600 01FA 6600 01FA 6601 0100 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FAFF F800 FACC F800 FACC D200 FE00"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 E800 FACC 0000 FACC F800 FA33 0000"
	$"FA66 0000 FA99 0000 FACC 0000 FCFF FFFF"
	$"0000 000A 8101 0001 8200 8100 FE00 0097"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FABB 0001 FA00"
	$"0001 FA00 0001 FABB 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0101 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FFF8 00FA BBF8 00FA"
	$"BBD2 00FE 00FA FF00 00FA CC00 00FA 9900"
	$"00FA 6600 00FA 33E8 00FA BB00 00FA BBF8"
	$"00FA 3300 00FA 6600 00FA 9900 00FA CC00"
	$"00FC FFFF FF00 0000 9700 01FA 3300 01FA"
	$"3300 01FA 3300 01FA 3300 01FA 3300 01FA"
	$"3300 01FA BB00 01FA 0000 01FA 0000 01FA"
	$"BB00 01FA 3300 01FA 3300 01FA 3300 01FA"
	$"3300 01FA 3300 01FA 3301 0100 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FAFF F800 FABB F800 FABB D200 FE00 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"E800 FABB 0000 FABB F800 FA33 0000 FA66"
	$"0000 FA99 0000 FACC 0000 FCFF FFFF 0000"
	$"0097 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FABB 0001"
	$"FA00 0001 FA00 0001 FABB 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0101 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FFF8 00FA BBF8"
	$"00FA BBD2 00FE 00FA FF00 00FA CC00 00FA"
	$"9900 00FA 6600 00FA 33E8 00FA BB00 00FA"
	$"BBF8 00FA 3300 00FA 6600 00FA 9900 00FA"
	$"CC00 00FC FFFF FF00 0000 9700 01FA 3300"
	$"01FA 3300 01FA 3300 01FA 3300 01FA 3300"
	$"01FA 3300 01FA BB00 01FA 0000 01FA 0000"
	$"01FA BB00 01FA 3300 01FA 3300 01FA 3300"
	$"01FA 3300 01FA 3300 01FA 3301 0100 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FAFF F800 FABB F800 FABB D200 FE00"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 E800 FABB 0000 FABB F800 FA33 0000"
	$"FA66 0000 FA99 0000 FACC 0000 FCFF FFFF"
	$"0000 0097 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FABB"
	$"0001 FA00 0001 FA00 0001 FABB 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0101 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FFF8 00FA"
	$"BBF8 00FA BBD2 00FE 00FA FF00 00FA CC00"
	$"00FA 9900 00FA 6600 00FA 33E8 00FA BB00"
	$"00FA BBF8 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FC FFFF FF00 0000 9700 01FA"
	$"3300 01FA 3300 01FA 3300 01FA 3300 01FA"
	$"3300 01FA 3300 01FA BB00 01FA 0000 01FA"
	$"0000 01FA BB00 01FA 3300 01FA 3300 01FA"
	$"3300 01FA 3300 01FA 3300 01FA 3301 0100"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF F800 FABB F800 FABB D200"
	$"FE00 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 E800 FABB 0000 FABB F800 FA33"
	$"0000 FA66 0000 FA99 0000 FACC 0000 FCFF"
	$"FFFF 0000 0097 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FABB 0001 FA00 0001 FA00 0001 FABB 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0101 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FFF8"
	$"00FA BBF8 00FA BBD2 00FE 00FA FF00 00FA"
	$"CC00 00FA 9900 00FA 6600 00FA 33E8 00FA"
	$"BB00 00FA BBF8 00FA 3300 00FA 6600 00FA"
	$"9900 00FA CC00 00FC FFFF FF00 0000 0A81"
	$"0100 0182 0081 00FE 0000 9700 01FA 0000"
	$"01FA 0000 01FA 0000 01FA 0000 01FA 0000"
	$"01FA 0000 01FA AA00 01FA 0000 01FA 0000"
	$"01FA AA00 01FA 0000 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 0000 01FA 0001 0100 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FAFF F800 FAAA F800 FAAA D200 FE00"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 E800 FAAA 0000 FAAA F800 FA33 0000"
	$"FA66 0000 FA99 0000 FACC 0000 FCFF FFFF"
	$"0000 0097 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FAAA"
	$"0001 FA00 0001 FA00 0001 FAAA 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0101 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FFF8 00FA"
	$"AAF8 00FA AAD2 00FE 00FA FF00 00FA CC00"
	$"00FA 9900 00FA 6600 00FA 33E8 00FA AA00"
	$"00FA AAF8 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FC FFFF FF00 0000 9700 01FA"
	$"0000 01FA 0000 01FA 0000 01FA 0000 01FA"
	$"0000 01FA 0000 01FA AA00 01FA 0000 01FA"
	$"0000 01FA AA00 01FA 0000 01FA 0000 01FA"
	$"0000 01FA 0000 01FA 0000 01FA 0001 0100"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF F800 FAAA F800 FAAA D200"
	$"FE00 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 E800 FAAA 0000 FAAA F800 FA33"
	$"0000 FA66 0000 FA99 0000 FACC 0000 FCFF"
	$"FFFF 0000 0097 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FAAA 0001 FA00 0001 FA00 0001 FAAA 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0101 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FFF8"
	$"00FA AAF8 00FA AAD2 00FE 00FA FF00 00FA"
	$"CC00 00FA 9900 00FA 6600 00FA 33E8 00FA"
	$"AA00 00FA AAF8 00FA 3300 00FA 6600 00FA"
	$"9900 00FA CC00 00FC FFFF FF00 0000 9700"
	$"01FA 0000 01FA 0000 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 0000 01FA AA00 01FA 0000"
	$"01FA 0000 01FA AA00 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 0000 01FA 0000 01FA 0001"
	$"0100 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FAFF F800 FAAA F800 FAAA"
	$"D200 FE00 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 E800 FAAA 0000 FAAA F800"
	$"FA33 0000 FA66 0000 FA99 0000 FACC 0000"
	$"FCFF FFFF 0000 0097 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FAAA 0001 FA00 0001 FA00 0001 FAAA"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0101 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FFF8 00FA AAF8 00FA AAD2 00FE 00FA FF00"
	$"00FA CC00 00FA 9900 00FA 6600 00FA 33E8"
	$"00FA AA00 00FA AAF8 00FA 3300 00FA 6600"
	$"00FA 9900 00FA CC00 00FC FFFF FF00 0000"
	$"9700 01FA 0000 01FA 0000 01FA 0000 01FA"
	$"0000 01FA 0000 01FA 0000 01FA AA00 01FA"
	$"0000 01FA 0000 01FA AA00 01FA 0000 01FA"
	$"0000 01FA 0000 01FA 0000 01FA 0000 01FA"
	$"0001 0100 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FAFF F800 FAAA F800"
	$"FAAA D200 FE00 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 E800 FAAA 0000 FAAA"
	$"F800 FA33 0000 FA66 0000 FA99 0000 FACC"
	$"0000 FCFF FFFF 0000 000A 8101 0001 8200"
	$"8100 FE00 00AF 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA99 0001 FA00 0001 FA00 0001 FA99 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0101 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CCF8"
	$"00FA 99F8 00FA 9900 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 3300 00FB 3302"
	$"3300 00FA FF00 00FA CC00 00FA 9900 00FA"
	$"6600 00FA 33E8 00FA 9900 00FA 99F8 00FA"
	$"3300 00FA 6600 00FA 9900 00FA CC00 00FC"
	$"FFFF FF00 0000 AF00 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 0000 01FA 0000 01FA 0000"
	$"01FA 9900 01FA 0000 01FA 0000 01FA 9900"
	$"01FA 0000 01FA 0000 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 0001 0100 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"F800 FA99 F800 FA99 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FB33"
	$"0233 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 E800 FA99 0000 FA99 F800"
	$"FA33 0000 FA66 0000 FA99 0000 FACC 0000"
	$"FCFF FFFF 0000 00AF 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA99 0001 FA00 0001 FA00 0001 FA99"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0101 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CCF8 00FA 99F8 00FA 9900 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FB"
	$"3302 3300 00FA FF00 00FA CC00 00FA 9900"
	$"00FA 6600 00FA 33E8 00FA 9900 00FA 99F8"
	$"00FA 3300 00FA 6600 00FA 9900 00FA CC00"
	$"00FC FFFF FF00 0000 AF00 01FA 0000 01FA"
	$"0000 01FA 0000 01FA 0000 01FA 0000 01FA"
	$"0000 01FA 9900 01FA 0000 01FA 0000 01FA"
	$"9900 01FA 0000 01FA 0000 01FA 0000 01FA"
	$"0000 01FA 0000 01FA 0001 0100 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC F800 FA99 F800 FA99 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FB33 0233 0000 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 E800 FA99 0000 FA99"
	$"F800 FA33 0000 FA66 0000 FA99 0000 FACC"
	$"0000 FCFF FFFF 0000 00AF 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA99 0001 FA00 0001 FA00 0001"
	$"FA99 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0101 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CCF8 00FA 99F8 00FA 9900 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FB 3302 3300 00FA FF00 00FA CC00 00FA"
	$"9900 00FA 6600 00FA 33E8 00FA 9900 00FA"
	$"99F8 00FA 3300 00FA 6600 00FA 9900 00FA"
	$"CC00 00FC FFFF FF00 0000 AF00 01FA 0000"
	$"01FA 0000 01FA 0000 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 9900 01FA 0000 01FA 0000"
	$"01FA 9900 01FA 0000 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 0000 01FA 0001 0100 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC F800 FA99 F800 FA99 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FB33 0233 0000 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 E800 FA99 0000"
	$"FA99 F800 FA33 0000 FA66 0000 FA99 0000"
	$"FACC 0000 FCFF FFFF 0000 00AF 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA99 0001 FA00 0001 FA00"
	$"0001 FA99 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0101 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CCF8 00FA 99F8 00FA 9900 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FB 3302 3300 00FA FF00 00FA CC00"
	$"00FA 9900 00FA 6600 00FA 33E8 00FA 9900"
	$"00FA 99F8 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FC FFFF FF00 0000 0A81 0100"
	$"0182 0081 00FE 0000 AF00 01FA 3300 01FA"
	$"3300 01FA 3300 01FA 3300 01FA 3300 01FA"
	$"3300 01FA 8800 01FA 0000 01FA 0000 01FA"
	$"8800 01FA 3300 01FA 3300 01FA 3300 01FA"
	$"3300 01FA 3300 01FA 3301 0100 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC F800 FA88 F800 FA88 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FB33 0233 0000 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 E800 FA88 0000 FA88"
	$"F800 FA33 0000 FA66 0000 FA99 0000 FACC"
	$"0000 FCFF FFFF 0000 00AF 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA88 0001 FA00 0001 FA00 0001"
	$"FA88 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0101 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CCF8 00FA 88F8 00FA 8800 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FB 3302 3300 00FA FF00 00FA CC00 00FA"
	$"9900 00FA 6600 00FA 33E8 00FA 8800 00FA"
	$"88F8 00FA 3300 00FA 6600 00FA 9900 00FA"
	$"CC00 00FC FFFF FF00 0000 AF00 01FA 3300"
	$"01FA 3300 01FA 3300 01FA 3300 01FA 3300"
	$"01FA 3300 01FA 8800 01FA 0000 01FA 0000"
	$"01FA 8800 01FA 3300 01FA 3300 01FA 3300"
	$"01FA 3300 01FA 3300 01FA 3301 0100 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC F800 FA88 F800 FA88 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FB33 0233 0000 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 E800 FA88 0000"
	$"FA88 F800 FA33 0000 FA66 0000 FA99 0000"
	$"FACC 0000 FCFF FFFF 0000 00AF 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA88 0001 FA00 0001 FA00"
	$"0001 FA88 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0101 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CCF8 00FA 88F8 00FA 8800 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FB 3302 3300 00FA FF00 00FA CC00"
	$"00FA 9900 00FA 6600 00FA 33E8 00FA 8800"
	$"00FA 88F8 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FC FFFF FF00 0000 AF00 01FA"
	$"3300 01FA 3300 01FA 3300 01FA 3300 01FA"
	$"3300 01FA 3300 01FA 8800 01FA 0000 01FA"
	$"0000 01FA 8800 01FA 3300 01FA 3300 01FA"
	$"3300 01FA 3300 01FA 3300 01FA 3301 0100"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC F800 FA88 F800 FA88 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FB33 0233 0000 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 E800 FA88"
	$"0000 FA88 F800 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FCFF FFFF 0000 00AF 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA88 0001 FA00 0001"
	$"FA00 0001 FA88 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0101"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CCF8 00FA 88F8 00FA 8800"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FB 3302 3300 00FA FF00 00FA"
	$"CC00 00FA 9900 00FA 6600 00FA 33E8 00FA"
	$"8800 00FA 88F8 00FA 3300 00FA 6600 00FA"
	$"9900 00FA CC00 00FC FFFF FF00 0000 AF00"
	$"01FA 3300 01FA 3300 01FA 3300 01FA 3300"
	$"01FA 3300 01FA 3300 01FA 8800 01FA 0000"
	$"01FA 0000 01FA 8800 01FA 3300 01FA 3300"
	$"01FA 3300 01FA 3300 01FA 3300 01FA 3301"
	$"0100 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC F800 FA88 F800 FA88"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FB33 0233 0000 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 E800"
	$"FA88 0000 FA88 F800 FA33 0000 FA66 0000"
	$"FA99 0000 FACC 0000 FCFF FFFF 0000 000A"
	$"8101 0001 8200 8100 FE00 00AF 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA77 0001 FA00 0001 FA00"
	$"0001 FA77 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0101 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CCF8 00FA 77F8 00FA 7700 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FB 3302 3300 00FA FF00 00FA CC00"
	$"00FA 9900 00FA 6600 00FA 33E8 00FA 7700"
	$"00FA 77F8 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FC FFFF FF00 0000 AF00 01FA"
	$"6600 01FA 6600 01FA 6600 01FA 6600 01FA"
	$"6600 01FA 6600 01FA 7700 01FA 0000 01FA"
	$"0000 01FA 7700 01FA 6600 01FA 6600 01FA"
	$"6600 01FA 6600 01FA 6600 01FA 6601 0100"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC F800 FA77 F800 FA77 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FB33 0233 0000 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 E800 FA77"
	$"0000 FA77 F800 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FCFF FFFF 0000 00AF 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA77 0001 FA00 0001"
	$"FA00 0001 FA77 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0101"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CCF8 00FA 77F8 00FA 7700"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FB 3302 3300 00FA FF00 00FA"
	$"CC00 00FA 9900 00FA 6600 00FA 33E8 00FA"
	$"7700 00FA 77F8 00FA 3300 00FA 6600 00FA"
	$"9900 00FA CC00 00FC FFFF FF00 0000 AF00"
	$"01FA 6600 01FA 6600 01FA 6600 01FA 6600"
	$"01FA 6600 01FA 6600 01FA 7700 01FA 0000"
	$"01FA 0000 01FA 7700 01FA 6600 01FA 6600"
	$"01FA 6600 01FA 6600 01FA 6600 01FA 6601"
	$"0100 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC F800 FA77 F800 FA77"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FB33 0233 0000 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 E800"
	$"FA77 0000 FA77 F800 FA33 0000 FA66 0000"
	$"FA99 0000 FACC 0000 FCFF FFFF 0000 00AF"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA77 0001 FA00"
	$"0001 FA00 0001 FA77 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0101 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CCF8 00FA 77F8 00FA"
	$"7700 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FB 3302 3300 00FA FF00"
	$"00FA CC00 00FA 9900 00FA 6600 00FA 33E8"
	$"00FA 7700 00FA 77F8 00FA 3300 00FA 6600"
	$"00FA 9900 00FA CC00 00FC FFFF FF00 0000"
	$"AF00 01FA 6600 01FA 6600 01FA 6600 01FA"
	$"6600 01FA 6600 01FA 6600 01FA 7700 01FA"
	$"0000 01FA 0000 01FA 7700 01FA 6600 01FA"
	$"6600 01FA 6600 01FA 6600 01FA 6600 01FA"
	$"6601 0100 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC F800 FA77 F800"
	$"FA77 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FB33 0233 0000 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"E800 FA77 0000 FA77 F800 FA33 0000 FA66"
	$"0000 FA99 0000 FACC 0000 FCFF FFFF 0000"
	$"00AF 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA77 0001"
	$"FA00 0001 FA00 0001 FA77 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0101 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CCF8 00FA 77F8"
	$"00FA 7700 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FB 3302 3300 00FA"
	$"FF00 00FA CC00 00FA 9900 00FA 6600 00FA"
	$"33E8 00FA 7700 00FA 77F8 00FA 3300 00FA"
	$"6600 00FA 9900 00FA CC00 00FC FFFF FF00"
	$"0000 0A81 0100 0182 0081 00FE 0000 B300"
	$"01FA 9900 01FA 9900 01FA 9900 01FA 9900"
	$"01FA 9900 01FA 9900 01FA 6600 01FA 0000"
	$"01FA 0000 01FA 6600 01FA 9900 01FA 9900"
	$"01FA 9900 01FA 9900 01FA 9900 01FA 9901"
	$"0100 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC F800 FA66 F800 FA66"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FB33 0233 0000 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F000"
	$"FA33 0000 FA66 0000 FA66 F800 FA33 0000"
	$"FA66 0000 FA99 0000 FACC 0000 FCFF FFFF"
	$"0000 00B3 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA66"
	$"0001 FA00 0001 FA00 0001 FA66 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0101 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CCF8 00FA"
	$"66F8 00FA 6600 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FB 3302 3300"
	$"00FA FF00 00FA CC00 00FA 9900 00FA 6600"
	$"00FA 33F0 00FA 3300 00FA 6600 00FA 66F8"
	$"00FA 3300 00FA 6600 00FA 9900 00FA CC00"
	$"00FC FFFF FF00 0000 B300 01FA 9900 01FA"
	$"9900 01FA 9900 01FA 9900 01FA 9900 01FA"
	$"9900 01FA 6600 01FA 0000 01FA 0000 01FA"
	$"6600 01FA 9900 01FA 9900 01FA 9900 01FA"
	$"9900 01FA 9900 01FA 9901 0100 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC F800 FA66 F800 FA66 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FB33 0233 0000 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F000 FA33 0000 FA66"
	$"0000 FA66 F800 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FCFF FFFF 0000 00B3 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA66 0001 FA00 0001"
	$"FA00 0001 FA66 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0101"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CCF8 00FA 66F8 00FA 6600"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FB 3302 3300 00FA FF00 00FA"
	$"CC00 00FA 9900 00FA 6600 00FA 33F0 00FA"
	$"3300 00FA 6600 00FA 66F8 00FA 3300 00FA"
	$"6600 00FA 9900 00FA CC00 00FC FFFF FF00"
	$"0000 B300 01FA 9900 01FA 9900 01FA 9900"
	$"01FA 9900 01FA 9900 01FA 9900 01FA 6600"
	$"01FA 0000 01FA 0000 01FA 6600 01FA 9900"
	$"01FA 9900 01FA 9900 01FA 9900 01FA 9900"
	$"01FA 9901 0100 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC F800 FA66"
	$"F800 FA66 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FB33 0233 0000"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F000 FA33 0000 FA66 0000 FA66 F800"
	$"FA33 0000 FA66 0000 FA99 0000 FACC 0000"
	$"FCFF FFFF 0000 00B3 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA66 0001 FA00 0001 FA00 0001 FA66"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0101 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CCF8 00FA 66F8 00FA 6600 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FB"
	$"3302 3300 00FA FF00 00FA CC00 00FA 9900"
	$"00FA 6600 00FA 33F0 00FA 3300 00FA 6600"
	$"00FA 66F8 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FC FFFF FF00 0000 B300 01FA"
	$"9900 01FA 9900 01FA 9900 01FA 9900 01FA"
	$"9900 01FA 9900 01FA 6600 01FA 0000 01FA"
	$"0000 01FA 6600 01FA 9900 01FA 9900 01FA"
	$"9900 01FA 9900 01FA 9900 01FA 9901 0100"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC F800 FA66 F800 FA66 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FB33 0233 0000 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F000 FA33"
	$"0000 FA66 0000 FA66 F800 FA33 0000 FA66"
	$"0000 FA99 0000 FACC 0000 FCFF FFFF 0000"
	$"000A 8101 0001 8200 8100 FE00 00AF 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FA55 0001 FA00 0001"
	$"FA00 0001 FA55 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0101"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CCF8 00FA 55F8 00FA 5500"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FB 3302 3300 00FA FF00 00FA"
	$"CC00 00FA 9900 00FA 6600 00FA 33E8 00FA"
	$"5500 00FA 55F8 00FA 3300 00FA 6600 00FA"
	$"9900 00FA CC00 00FC FFFF FF00 0000 AF00"
	$"01FA CC00 01FA CC00 01FA CC00 01FA CC00"
	$"01FA CC00 01FA CC00 01FA 5500 01FA 0000"
	$"01FA 0000 01FA 5500 01FA CC00 01FA CC00"
	$"01FA CC00 01FA CC00 01FA CC00 01FA CC01"
	$"0100 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC F800 FA55 F800 FA55"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FB33 0233 0000 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 E800"
	$"FA55 0000 FA55 F800 FA33 0000 FA66 0000"
	$"FA99 0000 FACC 0000 FCFF FFFF 0000 00AF"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FA55 0001 FA00"
	$"0001 FA00 0001 FA55 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0101 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CCF8 00FA 55F8 00FA"
	$"5500 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FB 3302 3300 00FA FF00"
	$"00FA CC00 00FA 9900 00FA 6600 00FA 33E8"
	$"00FA 5500 00FA 55F8 00FA 3300 00FA 6600"
	$"00FA 9900 00FA CC00 00FC FFFF FF00 0000"
	$"AF00 01FA CC00 01FA CC00 01FA CC00 01FA"
	$"CC00 01FA CC00 01FA CC00 01FA 5500 01FA"
	$"0000 01FA 0000 01FA 5500 01FA CC00 01FA"
	$"CC00 01FA CC00 01FA CC00 01FA CC00 01FA"
	$"CC01 0100 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC F800 FA55 F800"
	$"FA55 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FB33 0233 0000 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"E800 FA55 0000 FA55 F800 FA33 0000 FA66"
	$"0000 FA99 0000 FACC 0000 FCFF FFFF 0000"
	$"00AF 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FA55 0001"
	$"FA00 0001 FA00 0001 FA55 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0101 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CCF8 00FA 55F8"
	$"00FA 5500 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FB 3302 3300 00FA"
	$"FF00 00FA CC00 00FA 9900 00FA 6600 00FA"
	$"33E8 00FA 5500 00FA 55F8 00FA 3300 00FA"
	$"6600 00FA 9900 00FA CC00 00FC FFFF FF00"
	$"0000 AF00 01FA CC00 01FA CC00 01FA CC00"
	$"01FA CC00 01FA CC00 01FA CC00 01FA 5500"
	$"01FA 0000 01FA 0000 01FA 5500 01FA CC00"
	$"01FA CC00 01FA CC00 01FA CC00 01FA CC00"
	$"01FA CC01 0100 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC F800 FA55"
	$"F800 FA55 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FB33 0233 0000"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 E800 FA55 0000 FA55 F800 FA33 0000"
	$"FA66 0000 FA99 0000 FACC 0000 FCFF FFFF"
	$"0000 00AF 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FA55"
	$"0001 FA00 0001 FA00 0001 FA55 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0101 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CCF8 00FA"
	$"55F8 00FA 5500 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FB 3302 3300"
	$"00FA FF00 00FA CC00 00FA 9900 00FA 6600"
	$"00FA 33E8 00FA 5500 00FA 55F8 00FA 3300"
	$"00FA 6600 00FA 9900 00FA CC00 00FC FFFF"
	$"FF00 0000 0A81 0100 0182 0081 00FE 0000"
	$"AF00 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA 4400 01FA"
	$"0000 01FA 0000 01FA 4400 01FA FF00 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"FF01 0100 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC F800 FA44 F800"
	$"FA44 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FB33 0233 0000 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"E800 FA44 0000 FA44 F800 FA33 0000 FA66"
	$"0000 FA99 0000 FACC 0000 FCFF FFFF 0000"
	$"00AF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FA44 0001"
	$"FA00 0001 FA00 0001 FA44 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0101 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CCF8 00FA 44F8"
	$"00FA 4400 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FB 3302 3300 00FA"
	$"FF00 00FA CC00 00FA 9900 00FA 6600 00FA"
	$"33E8 00FA 4400 00FA 44F8 00FA 3300 00FA"
	$"6600 00FA 9900 00FA CC00 00FC FFFF FF00"
	$"0000 AF00 01FA FF00 01FA FF00 01FA FF00"
	$"01FA FF00 01FA FF00 01FA FF00 01FA 4400"
	$"01FA 0000 01FA 0000 01FA 4400 01FA FF00"
	$"01FA FF00 01FA FF00 01FA FF00 01FA FF00"
	$"01FA FF01 0100 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC F800 FA44"
	$"F800 FA44 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FB33 0233 0000"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 E800 FA44 0000 FA44 F800 FA33 0000"
	$"FA66 0000 FA99 0000 FACC 0000 FCFF FFFF"
	$"0000 00AF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FA44"
	$"0001 FA00 0001 FA00 0001 FA44 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0101 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CCF8 00FA"
	$"44F8 00FA 4400 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FB 3302 3300"
	$"00FA FF00 00FA CC00 00FA 9900 00FA 6600"
	$"00FA 33E8 00FA 4400 00FA 44F8 00FA 3300"
	$"00FA 6600 00FA 9900 00FA CC00 00FC FFFF"
	$"FF00 0000 AF00 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"4400 01FA 0000 01FA 0000 01FA 4400 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA FF01 0100 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC F800"
	$"FA44 F800 FA44 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FB33 0233"
	$"0000 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 E800 FA44 0000 FA44 F800 FA33"
	$"0000 FA66 0000 FA99 0000 FACC 0000 FCFF"
	$"FFFF 0000 00AF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FA44 0001 FA00 0001 FA00 0001 FA44 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0101 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CCF8"
	$"00FA 44F8 00FA 4400 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 3300 00FB 3302"
	$"3300 00FA FF00 00FA CC00 00FA 9900 00FA"
	$"6600 00FA 33E8 00FA 4400 00FA 44F8 00FA"
	$"3300 00FA 6600 00FA 9900 00FA CC00 00FC"
	$"FFFF FF00 0000 AF00 01FA FF00 01FA FF00"
	$"01FA FF00 01FA FF00 01FA FF00 01FA FF00"
	$"01FA 4400 01FA 0000 01FA 0000 01FA 4400"
	$"01FA FF00 01FA FF00 01FA FF00 01FA FF00"
	$"01FA FF00 01FA FF01 0100 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"F800 FA44 F800 FA44 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FB33"
	$"0233 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 E800 FA44 0000 FA44 F800"
	$"FA33 0000 FA66 0000 FA99 0000 FACC 0000"
	$"FCFF FFFF 0000 000A 8101 0001 8200 8100"
	$"FE00 00AF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FA33"
	$"0001 FA00 0001 FA00 0001 FA33 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0101 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 99F8 00FA"
	$"33F8 00FA 3300 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FB 6602 6600"
	$"00FA FF00 00FA CC00 00FA 9900 00FA 6600"
	$"00FA 33E8 00FA 3300 00FA 33F8 00FA 3300"
	$"00FA 6600 00FA 9900 00FA CC00 00FC FFFF"
	$"FF00 0000 AF00 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"3300 01FA 0000 01FA 0000 01FA 3300 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA FF01 0100 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 F800"
	$"FA33 F800 FA33 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FB66 0266"
	$"0000 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 E800 FA33 0000 FA33 F800 FA33"
	$"0000 FA66 0000 FA99 0000 FACC 0000 FCFF"
	$"FFFF 0000 00AF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FA33 0001 FA00 0001 FA00 0001 FA33 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0101 00FA 9900 00FA 9900"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 99F8"
	$"00FA 33F8 00FA 3300 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FB 6602"
	$"6600 00FA FF00 00FA CC00 00FA 9900 00FA"
	$"6600 00FA 33E8 00FA 3300 00FA 33F8 00FA"
	$"3300 00FA 6600 00FA 9900 00FA CC00 00FC"
	$"FFFF FF00 0000 AF00 01FA FF00 01FA FF00"
	$"01FA FF00 01FA FF00 01FA FF00 01FA FF00"
	$"01FA 3300 01FA 0000 01FA 0000 01FA 3300"
	$"01FA FF00 01FA FF00 01FA FF00 01FA FF00"
	$"01FA FF00 01FA FF01 0100 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"F800 FA33 F800 FA33 0000 FA66 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FB66"
	$"0266 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 E800 FA33 0000 FA33 F800"
	$"FA33 0000 FA66 0000 FA99 0000 FACC 0000"
	$"FCFF FFFF 0000 00AF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FA33 0001 FA00 0001 FA00 0001 FA33"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0101 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"99F8 00FA 33F8 00FA 3300 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FB"
	$"6602 6600 00FA FF00 00FA CC00 00FA 9900"
	$"00FA 6600 00FA 33E8 00FA 3300 00FA 33F8"
	$"00FA 3300 00FA 6600 00FA 9900 00FA CC00"
	$"00FC FFFF FF00 0000 AF00 01FA FF00 01FA"
	$"FF00 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA 3300 01FA 0000 01FA 0000 01FA"
	$"3300 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA FF00 01FA FF01 0100 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 F800 FA33 F800 FA33 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FB66 0266 0000 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 E800 FA33 0000 FA33"
	$"F800 FA33 0000 FA66 0000 FA99 0000 FACC"
	$"0000 FCFF FFFF 0000 00AF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FA33 0001 FA00 0001 FA00 0001"
	$"FA33 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0101 00FA 9900"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 99F8 00FA 33F8 00FA 3300 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FB 6602 6600 00FA FF00 00FA CC00 00FA"
	$"9900 00FA 6600 00FA 33E8 00FA 3300 00FA"
	$"33F8 00FA 3300 00FA 6600 00FA 9900 00FA"
	$"CC00 00FC FFFF FF00 0000 0A81 0100 0182"
	$"0081 00FE 0000 AF00 01FA CC00 01FA CC00"
	$"01FA CC00 01FA CC00 01FA CC00 01FA CC00"
	$"01FA 2200 01FA 0000 01FA 0000 01FA 2200"
	$"01FA CC00 01FA CC00 01FA CC00 01FA CC00"
	$"01FA CC00 01FA CC01 0100 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"F800 FA22 F800 FA22 0000 FA66 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FB66"
	$"0266 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 E800 FA22 0000 FA22 F800"
	$"FA33 0000 FA66 0000 FA99 0000 FACC 0000"
	$"FCFF FFFF 0000 00AF 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FA22 0001 FA00 0001 FA00 0001 FA22"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0101 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"99F8 00FA 22F8 00FA 2200 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FB"
	$"6602 6600 00FA FF00 00FA CC00 00FA 9900"
	$"00FA 6600 00FA 33E8 00FA 2200 00FA 22F8"
	$"00FA 3300 00FA 6600 00FA 9900 00FA CC00"
	$"00FC FFFF FF00 0000 AF00 01FA CC00 01FA"
	$"CC00 01FA CC00 01FA CC00 01FA CC00 01FA"
	$"CC00 01FA 2200 01FA 0000 01FA 0000 01FA"
	$"2200 01FA CC00 01FA CC00 01FA CC00 01FA"
	$"CC00 01FA CC00 01FA CC01 0100 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 F800 FA22 F800 FA22 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FB66 0266 0000 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 E800 FA22 0000 FA22"
	$"F800 FA33 0000 FA66 0000 FA99 0000 FACC"
	$"0000 FCFF FFFF 0000 00AF 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FA22 0001 FA00 0001 FA00 0001"
	$"FA22 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0101 00FA 9900"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 99F8 00FA 22F8 00FA 2200 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FB 6602 6600 00FA FF00 00FA CC00 00FA"
	$"9900 00FA 6600 00FA 33E8 00FA 2200 00FA"
	$"22F8 00FA 3300 00FA 6600 00FA 9900 00FA"
	$"CC00 00FC FFFF FF00 0000 AF00 01FA CC00"
	$"01FA CC00 01FA CC00 01FA CC00 01FA CC00"
	$"01FA CC00 01FA 2200 01FA 0000 01FA 0000"
	$"01FA 2200 01FA CC00 01FA CC00 01FA CC00"
	$"01FA CC00 01FA CC00 01FA CC01 0100 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 F800 FA22 F800 FA22 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FA66"
	$"0000 FB66 0266 0000 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 E800 FA22 0000"
	$"FA22 F800 FA33 0000 FA66 0000 FA99 0000"
	$"FACC 0000 FCFF FFFF 0000 00AF 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FA22 0001 FA00 0001 FA00"
	$"0001 FA22 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0101 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 99F8 00FA 22F8 00FA 2200 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FB 6602 6600 00FA FF00 00FA CC00"
	$"00FA 9900 00FA 6600 00FA 33E8 00FA 2200"
	$"00FA 22F8 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FC FFFF FF00 0000 AF00 01FA"
	$"CC00 01FA CC00 01FA CC00 01FA CC00 01FA"
	$"CC00 01FA CC00 01FA 2200 01FA 0000 01FA"
	$"0000 01FA 2200 01FA CC00 01FA CC00 01FA"
	$"CC00 01FA CC00 01FA CC00 01FA CC01 0100"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 F800 FA22 F800 FA22 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FB66 0266 0000 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 E800 FA22"
	$"0000 FA22 F800 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FCFF FFFF 0000 000A 8101"
	$"0001 8200 8100 FE00 00AF 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA11 0001 FA00 0001 FA00 0001"
	$"FA11 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0101 00FA 9900"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 99F8 00FA 11F8 00FA 1100 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FB 6602 6600 00FA FF00 00FA CC00 00FA"
	$"9900 00FA 6600 00FA 33E8 00FA 1100 00FA"
	$"11F8 00FA 3300 00FA 6600 00FA 9900 00FA"
	$"CC00 00FC FFFF FF00 0000 AF00 01FA 9900"
	$"01FA 9900 01FA 9900 01FA 9900 01FA 9900"
	$"01FA 9900 01FA 1100 01FA 0000 01FA 0000"
	$"01FA 1100 01FA 9900 01FA 9900 01FA 9900"
	$"01FA 9900 01FA 9900 01FA 9901 0100 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 F800 FA11 F800 FA11 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FA66"
	$"0000 FB66 0266 0000 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 E800 FA11 0000"
	$"FA11 F800 FA33 0000 FA66 0000 FA99 0000"
	$"FACC 0000 FCFF FFFF 0000 00AF 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA11 0001 FA00 0001 FA00"
	$"0001 FA11 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0101 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 99F8 00FA 11F8 00FA 1100 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FB 6602 6600 00FA FF00 00FA CC00"
	$"00FA 9900 00FA 6600 00FA 33E8 00FA 1100"
	$"00FA 11F8 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FC FFFF FF00 0000 AF00 01FA"
	$"9900 01FA 9900 01FA 9900 01FA 9900 01FA"
	$"9900 01FA 9900 01FA 1100 01FA 0000 01FA"
	$"0000 01FA 1100 01FA 9900 01FA 9900 01FA"
	$"9900 01FA 9900 01FA 9900 01FA 9901 0100"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 F800 FA11 F800 FA11 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FB66 0266 0000 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 E800 FA11"
	$"0000 FA11 F800 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FCFF FFFF 0000 00AF 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA11 0001 FA00 0001"
	$"FA00 0001 FA11 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0101"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 9900 00FA 99F8 00FA 11F8 00FA 1100"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FB 6602 6600 00FA FF00 00FA"
	$"CC00 00FA 9900 00FA 6600 00FA 33E8 00FA"
	$"1100 00FA 11F8 00FA 3300 00FA 6600 00FA"
	$"9900 00FA CC00 00FC FFFF FF00 0000 AF00"
	$"01FA 9900 01FA 9900 01FA 9900 01FA 9900"
	$"01FA 9900 01FA 9900 01FA 1100 01FA 0000"
	$"01FA 0000 01FA 1100 01FA 9900 01FA 9900"
	$"01FA 9900 01FA 9900 01FA 9900 01FA 9901"
	$"0100 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 F800 FA11 F800 FA11"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FA66"
	$"0000 FA66 0000 FB66 0266 0000 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 E800"
	$"FA11 0000 FA11 F800 FA33 0000 FA66 0000"
	$"FA99 0000 FACC 0000 FCFF FFFF 0000 00AF"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA11 0001 FA00"
	$"0001 FA00 0001 FA11 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0101 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 99F8 00FA 11F8 00FA"
	$"1100 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FB 6602 6600 00FA FF00"
	$"00FA CC00 00FA 9900 00FA 6600 00FA 33E8"
	$"00FA 1100 00FA 11F8 00FA 3300 00FA 6600"
	$"00FA 9900 00FA CC00 00FC FFFF FF00 0000"
	$"0A81 0100 0182 0081 00FE 0000 9F00 01FA"
	$"6600 01FA 6600 01FA 6600 01FA 6600 01FA"
	$"6600 01FA 6600 01FA 0000 01FA 0000 01FA"
	$"0000 01FA 0000 01FA 6600 01FA 6600 01FA"
	$"6600 01FA 6600 01FA 6600 01FA 6601 0100"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 E000 FA66 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FB66 0266"
	$"0000 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 D000 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FCFF FFFF 0000 009F 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0101"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 9900 00FA 99E0 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FB 6602"
	$"6600 00FA FF00 00FA CC00 00FA 9900 00FA"
	$"6600 00FA 33D0 00FA 3300 00FA 6600 00FA"
	$"9900 00FA CC00 00FC FFFF FF00 0000 9F00"
	$"01FA 6600 01FA 6600 01FA 6600 01FA 6600"
	$"01FA 6600 01FA 6600 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 0000 01FA 6600 01FA 6600"
	$"01FA 6600 01FA 6600 01FA 6600 01FA 6601"
	$"0100 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 E000 FA66 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FB66"
	$"0266 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 D000 FA33 0000 FA66 0000"
	$"FA99 0000 FACC 0000 FCFF FFFF 0000 009F"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0101 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 99E0 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FB"
	$"6602 6600 00FA FF00 00FA CC00 00FA 9900"
	$"00FA 6600 00FA 33D0 00FA 3300 00FA 6600"
	$"00FA 9900 00FA CC00 00FC FFFF FF00 0000"
	$"9F00 01FA 6600 01FA 6600 01FA 6600 01FA"
	$"6600 01FA 6600 01FA 6600 01FA 0000 01FA"
	$"0000 01FA 0000 01FA 0000 01FA 6600 01FA"
	$"6600 01FA 6600 01FA 6600 01FA 6600 01FA"
	$"6601 0100 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 E000 FA66 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FB66 0266 0000 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 D000 FA33 0000 FA66"
	$"0000 FA99 0000 FACC 0000 FCFF FFFF 0000"
	$"009F 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0101 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 9900 00FA 9900 00FA 99E0 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FB 6602 6600 00FA FF00 00FA CC00 00FA"
	$"9900 00FA 6600 00FA 33D0 00FA 3300 00FA"
	$"6600 00FA 9900 00FA CC00 00FC FFFF FF00"
	$"0000 9F00 01FA 6600 01FA 6600 01FA 6600"
	$"01FA 6600 01FA 6600 01FA 6600 01FA 0000"
	$"01FA 0000 01FA 0000 01FA 0000 01FA 6600"
	$"01FA 6600 01FA 6600 01FA 6600 01FA 6600"
	$"01FA 6601 0100 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 E000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FA66"
	$"0000 FB66 0266 0000 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 D000 FA33 0000"
	$"FA66 0000 FA99 0000 FACC 0000 FCFF FFFF"
	$"0000 000A 8101 0001 8200 8100 FE00 009B"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 E2FF 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0101 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00E2"
	$"FF00 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FB 6602 6600 00FA FF00"
	$"00FA CC00 00FA 9900 00FA 6600 00FA 33F8"
	$"00E2 FFF8 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FC FFFF FF00 0000 9B00 01FA"
	$"3300 01FA 3300 01FA 3300 01FA 3300 01FA"
	$"3300 01FA 3300 01E2 FF00 01FA 3300 01FA"
	$"3300 01FA 3300 01FA 3300 01FA 3300 01FA"
	$"3301 0100 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 E2FF 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FB66 0266 0000 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 E2FF"
	$"F800 FA33 0000 FA66 0000 FA99 0000 FACC"
	$"0000 FCFF FFFF 0000 009B 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 E2FF 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0101"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 9900 00FA 9900 00E2 FF00 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FB 6602 6600 00FA FF00 00FA CC00 00FA"
	$"9900 00FA 6600 00FA 33F8 00E2 FFF8 00FA"
	$"3300 00FA 6600 00FA 9900 00FA CC00 00FC"
	$"FFFF FF00 0000 9B00 01FA 3300 01FA 3300"
	$"01FA 3300 01FA 3300 01FA 3300 01FA 3300"
	$"01E2 FF00 01FA 3300 01FA 3300 01FA 3300"
	$"01FA 3300 01FA 3300 01FA 3301 0100 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 E2FF 0000 FA66 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FB66"
	$"0266 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 E2FF F800 FA33 0000"
	$"FA66 0000 FA99 0000 FACC 0000 FCFF FFFF"
	$"0000 009B 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 E2FF"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0101 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"9900 00E2 FF00 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FB 6602 6600"
	$"00FA FF00 00FA CC00 00FA 9900 00FA 6600"
	$"00FA 33F8 00E2 FFF8 00FA 3300 00FA 6600"
	$"00FA 9900 00FA CC00 00FC FFFF FF00 0000"
	$"9B00 01FA 3300 01FA 3300 01FA 3300 01FA"
	$"3300 01FA 3300 01FA 3300 01E2 FF00 01FA"
	$"3300 01FA 3300 01FA 3300 01FA 3300 01FA"
	$"3300 01FA 3301 0100 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"E2FF 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FB66 0266 0000 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 E2FF F800 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FCFF FFFF 0000 009B 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 E2FF 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0101 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 9900 00FA 9900 00FA 9900 00E2 FF00"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FB 6602 6600 00FA FF00 00FA"
	$"CC00 00FA 9900 00FA 6600 00FA 33F8 00E2"
	$"FFF8 00FA 3300 00FA 6600 00FA 9900 00FA"
	$"CC00 00FC FFFF FF00 0000 16D0 01E2 FFD1"
	$"0100 01D0 00E2 FFD2 00CE 00E2 FFD3 00FE"
	$"0000 9B00 01FA 0000 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 0000 01FA 0000 01E2 FF00"
	$"01FA 0000 01FA 0000 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 0001 0100 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 E2FF 0000 FA66 0000 FA66 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FB66 0266 0000"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 E2FF F800 FA33 0000 FA66 0000"
	$"FA99 0000 FACC 0000 FCFF FFFF 0000 009B"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 E2FF 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0101 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00E2"
	$"FF00 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FB 6602 6600 00FA FF00"
	$"00FA CC00 00FA 9900 00FA 6600 00FA 33F8"
	$"00E2 FFF8 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FC FFFF FF00 0000 9B00 01FA"
	$"0000 01FA 0000 01FA 0000 01FA 0000 01FA"
	$"0000 01FA 0000 01E2 FF00 01FA 0000 01FA"
	$"0000 01FA 0000 01FA 0000 01FA 0000 01FA"
	$"0001 0100 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 E2FF 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FB66 0266 0000 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 E2FF"
	$"F800 FA33 0000 FA66 0000 FA99 0000 FACC"
	$"0000 FCFF FFFF 0000 009B 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 E2FF 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0101"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 9900 00FA 9900 00E2 FF00 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FB 6602 6600 00FA FF00 00FA CC00 00FA"
	$"9900 00FA 6600 00FA 33F8 00E2 FFF8 00FA"
	$"3300 00FA 6600 00FA 9900 00FA CC00 00FC"
	$"FFFF FF00 0000 9B00 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 0000 01FA 0000 01FA 0000"
	$"01E2 FF00 01FA 0000 01FA 0000 01FA 0000"
	$"01FA 0000 01FA 0000 01FA 0001 0100 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 E2FF 0000 FA66 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FB66"
	$"0266 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 E2FF F800 FA33 0000"
	$"FA66 0000 FA99 0000 FACC 0000 FCFF FFFF"
	$"0000 009B 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 E2FF"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0101 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"9900 00E2 FF00 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FB 6602 6600"
	$"00FA FF00 00FA CC00 00FA 9900 00FA 6600"
	$"00FA 33F8 00E2 FFF8 00FA 3300 00FA 6600"
	$"00FA 9900 00FA CC00 00FC FFFF FF00 0000"
	$"9B00 01FA 0000 01FA 0000 01FA 0000 01FA"
	$"0000 01FA 0000 01FA 0000 01E2 FF00 01FA"
	$"0000 01FA 0000 01FA 0000 01FA 0000 01FA"
	$"0000 01FA 0001 0100 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"E2FF 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FB66 0266 0000 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 E2FF F800 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FCFF FFFF 0000 0016 D001"
	$"E2FF D101 0001 D000 E2FF D200 CE00 E2FF"
	$"D300 FE00 00FF"
};

resource 'PICT' (2054, "Windows 4-bit Picker") {
	1242,
	{0, 0, 49, 49},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0031 0031 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0031"
	$"0031 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0031 0031 0098 8034 0000 0000 0031"
	$"0031 0000 0000 0000 0000 0048 0000 0048"
	$"0000 0000 0008 0001 0008 0000 0000 0000"
	$"0000 0000 0000 0046 A411 0000 0010 0000"
	$"FFFF FFFF FFFF 0001 FFFF 0000 FFFF 0002"
	$"7B7B 0000 7B7B 0003 0000 0000 FFFF 0004"
	$"0000 0000 7B7B 0005 0000 FFFF FFFF 0006"
	$"0000 7B7B 7B7B 0007 0000 FFFF 0000 0008"
	$"0000 7B7B 0000 0009 FFFF FFFF 0000 000A"
	$"7B7B 7B7B 0000 000B FFFF 0000 0000 000C"
	$"7B7B 0000 0000 000D 0101 0000 0000 000E"
	$"BDBD BDBD BDBD 000F 7B7B 7B7B 7B7B 0010"
	$"0000 0000 0000 0000 0000 0031 0031 0000"
	$"0000 0031 0031 0000 04D0 0DFE 0014 000D"
	$"F609 000D F607 000D F60A 000D F608 000D"
	$"FE00 1400 0DF6 0900 0DF6 0700 0DF6 0A00"
	$"0DF6 0800 0DFE 0014 000D F609 000D F607"
	$"000D F60A 000D F608 000D FE00 1400 0DF6"
	$"0900 0DF6 0700 0DF6 0A00 0DF6 0800 0DFE"
	$"0014 000D F609 000D F607 000D F60A 000D"
	$"F608 000D FE00 1400 0DF6 0900 0DF6 0700"
	$"0DF6 0A00 0DF6 0800 0DFE 0014 000D F609"
	$"000D F607 000D F60A 000D F608 000D FE00"
	$"1400 0DF6 0900 0DF6 0700 0DF6 0A00 0DF6"
	$"0800 0DFE 0014 000D F609 000D F607 000D"
	$"F60A 000D F608 000D FE00 1400 0DF6 0900"
	$"0DF6 0700 0DF6 0A00 0DF6 0800 0DFE 0014"
	$"000D F609 000D F607 000D F60A 000D F608"
	$"000D FE00 04D0 0DFE 0014 000D F601 000D"
	$"F602 000D F60C 000D F60B 000D FE00 1400"
	$"0DF6 0100 0DF6 0200 0DF6 0C00 0DF6 0B00"
	$"0DFE 0014 000D F601 000D F602 000D F60C"
	$"000D F60B 000D FE00 1400 0DF6 0100 0DF6"
	$"0200 0DF6 0C00 0DF6 0B00 0DFE 0014 000D"
	$"F601 000D F602 000D F60C 000D F60B 000D"
	$"FE00 1400 0DF6 0100 0DF6 0200 0DF6 0C00"
	$"0DF6 0B00 0DFE 0014 000D F601 000D F602"
	$"000D F60C 000D F60B 000D FE00 1400 0DF6"
	$"0100 0DF6 0200 0DF6 0C00 0DF6 0B00 0DFE"
	$"0014 000D F601 000D F602 000D F60C 000D"
	$"F60B 000D FE00 1400 0DF6 0100 0DF6 0200"
	$"0DF6 0C00 0DF6 0B00 0DFE 0014 000D F601"
	$"000D F602 000D F60C 000D F60B 000D FE00"
	$"04D0 0DFE 0014 000D F605 000D F606 000D"
	$"F603 000D F604 000D FE00 1400 0DF6 0500"
	$"0DF6 0600 0DF6 0300 0DF6 0400 0DFE 0014"
	$"000D F605 000D F606 000D F603 000D F604"
	$"000D FE00 1400 0DF6 0500 0DF6 0600 0DF6"
	$"0300 0DF6 0400 0DFE 0014 000D F605 000D"
	$"F606 000D F603 000D F604 000D FE00 1400"
	$"0DF6 0500 0DF6 0600 0DF6 0300 0DF6 0400"
	$"0DFE 0014 000D F605 000D F606 000D F603"
	$"000D F604 000D FE00 1400 0DF6 0500 0DF6"
	$"0600 0DF6 0300 0DF6 0400 0DFE 0014 000D"
	$"F605 000D F606 000D F603 000D F604 000D"
	$"FE00 1400 0DF6 0500 0DF6 0600 0DF6 0300"
	$"0DF6 0400 0DFE 0014 000D F605 000D F606"
	$"000D F603 000D F604 000D FE00 04D0 0DFE"
	$"0014 000D F600 000D F60E 000D F60F 000D"
	$"F610 000D FE00 1400 0DF6 0000 0DF6 0E00"
	$"0DF6 0F00 0DF6 1000 0DFE 0014 000D F600"
	$"000D F60E 000D F60F 000D F610 000D FE00"
	$"1400 0DF6 0000 0DF6 0E00 0DF6 0F00 0DF6"
	$"1000 0DFE 0014 000D F600 000D F60E 000D"
	$"F60F 000D F610 000D FE00 1400 0DF6 0000"
	$"0DF6 0E00 0DF6 0F00 0DF6 1000 0DFE 0014"
	$"000D F600 000D F60E 000D F60F 000D F610"
	$"000D FE00 1400 0DF6 0000 0DF6 0E00 0DF6"
	$"0F00 0DF6 1000 0DFE 0014 000D F600 000D"
	$"F60E 000D F60F 000D F610 000D FE00 1400"
	$"0DF6 0000 0DF6 0E00 0DF6 0F00 0DF6 1000"
	$"0DFE 0014 000D F600 000D F60E 000D F60F"
	$"000D F610 000D FE00 04D0 0DFE 0000 00FF"
};

data 'Pref' (128) {
	$"0000 0001 0E4E 6F74 2072 6567 6973 7465"            /* .....Not registe */
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
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
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
	$"0DB1 1CD0 0000 0000 001E 8010 0DCF B6A0"            /* .±.–......Ä..œ∂† */
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
	$"0000 0000 0000 0024 0000 0007 0000 0000"            /* .......$........ */
};

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

resource 'ALRT' (3000) {
	{40, 40, 134, 416},
	3000,
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

data 'cicn' (200, "Swap Fore/Back Colors Enabled") {
	$"0000 0000 8002 0000 0000 000A 000A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 008E 0000"            /* .............é.. */
	$"0000 0000 0000 0002 0000 0000 000A 000A"            /* ................ */
	$"0000 0000 0002 0000 0000 000A 000A 0000"            /* ................ */
	$"0000 2000 6000 FC00 6200 2100 0100 0100"            /* .. .`.¸.b.!..... */
	$"07C0 0380 0100 2000 6000 FC00 6200 2100"            /* .¿.Ä.. .`.¸.b.!. */
	$"0100 0100 07C0 0380 0100 0000 F306 0000"            /* .....¿.Ä....Û... */
	$"0001 0000 FFFF FFFF FFFF 0001 0000 0000"            /* ....ˇˇˇˇˇˇ...... */
	$"0000 2000 6000 FC00 6200 2100 0100 0100"            /* .. .`.¸.b.!..... */
	$"07C0 0380 0100"                                     /* .¿.Ä.. */
};

data 'cicn' (201, "Swap Fore/Back Colors Disabled") {
	$"0000 0000 8002 0000 0000 000A 000A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 008E 0000"            /* .............é.. */
	$"0000 0000 0000 0002 0000 0000 000A 000A"            /* ................ */
	$"0000 0000 0002 0000 0000 000A 000A 0000"            /* ................ */
	$"0000 2000 4000 A800 4200 2000 0100 0000"            /* .. .@.®.B. ..... */
	$"0540 0280 0100 2000 6000 FC00 6200 2100"            /* .@.Ä.. .`.¸.b.!. */
	$"0100 0100 07C0 0380 0100 0000 F18C 0000"            /* .....¿.Ä....Òå.. */
	$"0001 0000 FFFF FFFF FFFF 0001 0000 0000"            /* ....ˇˇˇˇˇˇ...... */
	$"0000 2000 6000 FC00 6200 2100 0100 0100"            /* .. .`.¸.b.!..... */
	$"07C0 0380 0100"                                     /* .¿.Ä.. */
};

data 'cicn' (202, "Reset Fore/Back Colors Enabled") {
	$"0000 0000 8002 0000 0000 000A 000A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 008E 0000"            /* .............é.. */
	$"0000 0000 0000 0002 0000 0000 000A 000A"            /* ................ */
	$"0000 0000 0002 0000 0000 000A 000A 0000"            /* ................ */
	$"0000 FE00 FE00 FFC0 FFC0 FFC0 FFC0 FFC0"            /* ..˛.˛.ˇ¿ˇ¿ˇ¿ˇ¿ˇ¿ */
	$"3FC0 3FC0 3FC0 FE00 FE00 FFC0 FE40 FE40"            /* ?¿?¿?¿˛.˛.ˇ¿˛@˛@ */
	$"FE40 FE40 2040 2040 3FC0 0001 1B6D 0000"            /* ˛@˛@ @ @?¿...m.. */
	$"0001 0000 FFFF FFFF FFFF 0001 0000 0000"            /* ....ˇˇˇˇˇˇ...... */
	$"0000 FE00 FE00 FFC0 FE40 FE40 FE40 FE40"            /* ..˛.˛.ˇ¿˛@˛@˛@˛@ */
	$"2040 2040 3FC0"                                     /*  @ @?¿ */
};

data 'cicn' (203, "Reset Fore/Back Colors Disabled") {
	$"0000 0000 8002 0000 0000 000A 000A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 008E 0000"            /* .............é.. */
	$"0000 0000 0000 0002 0000 0000 000A 000A"            /* ................ */
	$"0000 0000 0002 0000 0000 000A 000A 0000"            /* ................ */
	$"0000 AA00 5400 AA80 5540 AA80 5540 AA80"            /* ..™.T.™ÄU@™ÄU@™Ä */
	$"1540 2A80 1540 FE00 FE00 FFC0 FE40 FE40"            /* .@*Ä.@˛.˛.ˇ¿˛@˛@ */
	$"FE40 FE40 2040 2040 3FC0 0001 1F19 0000"            /* ˛@˛@ @ @?¿...... */
	$"0001 0000 FFFF FFFF FFFF 0001 0000 0000"            /* ....ˇˇˇˇˇˇ...... */
	$"0000 FE00 FE00 FFC0 FE40 FE40 FE40 FE40"            /* ..˛.˛.ˇ¿˛@˛@˛@˛@ */
	$"2040 2040 3FC0"                                     /*  @ @?¿ */
};

data 'cicn' (128, "Pencil") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0007"            /* ................ */
	$"8000 0007 C000 000F C000 000F 8000 001F"            /* Ä...¿...¿...Ä... */
	$"8000 001F 0000 003F 0000 003E 0000 007E"            /* Ä......?...>...~ */
	$"0000 007C 0000 007C 0000 0078 0000 0070"            /* ...|...|...x...p */
	$"0000 0060 0000 0040 0000 0000 0000 0000"            /* ...`...@........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 8000 0004 4000 0008"            /* ........Ä...@... */
	$"4000 000C 8000 0013 8000 0011 0000 0021"            /* @...Ä...Ä......! */
	$"0000 0022 0000 0042 0000 0044 0000 0064"            /* ..."...B...D...d */
	$"0000 0078 0000 0070 0000 0060 0000 0040"            /* ...x...p...`...@ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0001 B5F4 0000 0001 0000 FFFF FFFF"            /* ....µÙ......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0007 8000 0004 4000 0008"            /* ........Ä...@... */
	$"4000 000C 8000 0013 8000 0011 0000 0021"            /* @...Ä...Ä......! */
	$"0000 0022 0000 0042 0000 0044 0000 0064"            /* ..."...B...D...d */
	$"0000 0078 0000 0070 0000 0060 0000 0040"            /* ...x...p...`...@ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (129, "Eyedropper") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"7000 0000 F800 0000 F800 0007 F800 0003"            /* p...¯...¯...¯... */
	$"F000 0007 C000 000F C000 001F 4000 003E"            /* ...¿...¿...@..> */
	$"0000 007C 0000 00F8 0000 01F0 0000 03E0"            /* ...|...¯......‡ */
	$"0000 03C0 0000 0780 0000 0200 0000 0000"            /* ...¿...Ä........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 7000 0000 F800 0000"            /* ........p...¯... */
	$"F800 0007 F800 0003 F000 0005 C000 0008"            /* ¯...¯......¿... */
	$"C000 0011 4000 0022 0000 0044 0000 0088"            /* ¿...@.."...D...à */
	$"0000 0110 0000 0220 0000 0240 0000 0580"            /* ....... ...@...Ä */
	$"0000 0200 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 33AC 0000 0001 0000 FFFF FFFF"            /* ....3¨......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 7000 0000 F800 0000"            /* ........p...¯... */
	$"F800 0007 F800 0003 F000 0005 C000 0008"            /* ¯...¯......¿... */
	$"C000 0011 4000 0022 0000 0044 0000 0088"            /* ¿...@.."...D...à */
	$"0000 0110 0000 0220 0000 0240 0000 0580"            /* ....... ...@...Ä */
	$"0000 0200 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (130, "Paint bucket") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0038"            /* ...............8 */
	$"0000 0044 0000 004C 0000 005E 0000 007F"            /* ...D...L...^.... */
	$"8000 007F E000 00FF F000 01FF F800 03FF"            /* Ä...‡..ˇ..ˇ¯..ˇ */
	$"F800 07FF F800 07FF B800 03FF 3800 01FE"            /* ¯..ˇ¯..ˇ∏..ˇ8..˛ */
	$"3800 00FC 3000 0078 2000 0030 0000 0000"            /* 8..¸0..x ..0.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0038 0000 0044 0000 004C"            /* .......8...D...L */
	$"0000 0056 0000 0065 8000 0044 E000 0084"            /* ...V...eÄ..D‡..Ñ */
	$"7000 010A 3800 0204 3800 0400 7800 0400"            /* p...8...8...x... */
	$"B800 0201 3800 0102 3800 0084 3000 0048"            /* ∏...8...8..Ñ0..H */
	$"2000 0030 0000 0000 0000 0000 0000 0000"            /*  ..0............ */
	$"0000 0000 3434 0000 0001 0000 FFFF FFFF"            /* ....44......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0038 0000 0044 0000 004C"            /* .......8...D...L */
	$"0000 0056 0000 0065 8000 0044 E000 0084"            /* ...V...eÄ..D‡..Ñ */
	$"7000 010A 3800 0204 3800 0400 7800 0400"            /* p...8...8...x... */
	$"B800 0201 3800 0102 3800 0084 3000 0048"            /* ∏...8...8..Ñ0..H */
	$"2000 0030 0000 0000 0000 0000 0000 0000"            /*  ..0............ */
	$"0000"                                               /* .. */
};

data 'cicn' (131, "Eraser") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0007 F800 000F"            /* ............¯... */
	$"F800 001F F800 003F F800 007F F000 00FF"            /* ¯...¯..?¯.....ˇ */
	$"E000 01FF C000 03FF 8000 03FF 0000 03FE"            /* ‡..ˇ¿..ˇÄ..ˇ...˛ */
	$"0000 03FC 0000 0000 0000 0000 0000 0000"            /* ...¸............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0007 F800 0008 1800 0010 2800 0020"            /* ....¯.......(..  */
	$"4800 0040 9000 0081 2000 0102 4000 03FC"            /* H..@ê..Å ...@..¸ */
	$"8000 0205 0000 0206 0000 03FC 0000 0000"            /* Ä..........¸.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0002 A809 0000 0001 0000 FFFF FFFF"            /* ....®.......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0007 F800 0008 1800 0010 2800 0020"            /* ....¯.......(..  */
	$"4800 0040 9000 0081 2000 0102 4000 03FC"            /* H..@ê..Å ...@..¸ */
	$"8000 0205 0000 0206 0000 03FC 0000 0000"            /* Ä..........¸.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (132, "Rectangular Marquee") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 073E 7000 0400 1000 0400 1000 0000"            /* ...>p........... */
	$"1000 0000 0000 0400 0000 0400 1000 0400"            /* ................ */
	$"1000 0000 1000 0000 0000 0400 0000 0400"            /* ................ */
	$"1000 0400 1000 073E 7000 0000 0000 0000"            /* .......>p....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 073E 7000 0400"            /* ...........>p... */
	$"1000 0400 1000 0000 1000 0000 0000 0400"            /* ................ */
	$"0000 0400 1000 0400 1000 0000 1000 0000"            /* ................ */
	$"0000 0400 0000 0400 1000 0400 1000 073E"            /* ...............> */
	$"7000 0000 0000 0000 0000 0000 0000 0000"            /* p............... */
	$"0000 0000 84AA 0000 0001 0000 FFFF FFFF"            /* ....Ñ™......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 073E 7000 0400"            /* ...........>p... */
	$"1000 0400 1000 0000 1000 0000 0000 0400"            /* ................ */
	$"0000 0400 1000 0400 1000 0000 1000 0000"            /* ................ */
	$"0000 0400 0000 0400 1000 0400 1000 073E"            /* ...............> */
	$"7000 0000 0000 0000 0000 0000 0000 0000"            /* p............... */
	$"0000"                                               /* .. */
};

data 'cicn' (133, "Move") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0200 0000 0300 0000 0380 0000 03C0"            /* ...........Ä...¿ */
	$"0000 03E0 0000 03F0 8000 03F9 C000 0380"            /* ...‡...Ä..˘¿..Ä */
	$"8000 0304 9000 020F F800 0004 9000 0000"            /* Ä...ê...¯...ê... */
	$"8000 0001 C000 0000 8000 0000 0000 0000"            /* Ä...¿...Ä....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0200 0000 0300"            /* ................ */
	$"0000 0380 0000 03C0 0000 03E0 0000 03F0"            /* ...Ä...¿...‡... */
	$"8000 03F9 C000 0380 8000 0304 9000 020F"            /* Ä..˘¿..ÄÄ...ê... */
	$"F800 0004 9000 0000 8000 0001 C000 0000"            /* ¯...ê...Ä...¿... */
	$"8000 0000 0000 0000 0000 0000 0000 0000"            /* Ä............... */
	$"0000 0001 2AC2 0000 0001 0000 FFFF FFFF"            /* ....*¬......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0200 0000 0300"            /* ................ */
	$"0000 0380 0000 03C0 0000 03E0 0000 03F0"            /* ...Ä...¿...‡... */
	$"8000 03F9 C000 0380 8000 0304 9000 020F"            /* Ä..˘¿..ÄÄ...ê... */
	$"F800 0004 9000 0000 8000 0001 C000 0000"            /* ¯...ê...Ä...¿... */
	$"8000 0000 0000 0000 0000 0000 0000 0000"            /* Ä............... */
	$"0000"                                               /* .. */
};

data 'cicn' (134, "Lasso") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 001F C000 00E0 3000 0100 0800 0200"            /* ....¿..‡0....... */
	$"0800 0400 0800 0400 3000 0401 C000 038E"            /* ........0...¿..é */
	$"0000 0670 0000 0540 0000 0380 0000 0080"            /* ...p...@...Ä...Ä */
	$"0000 0080 0000 0100 0000 0000 0000 0000"            /* ...Ä............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 001F C000 00E0"            /* ............¿..‡ */
	$"3000 0100 0800 0200 0800 0400 0800 0400"            /* 0............... */
	$"3000 0401 C000 038E 0000 0670 0000 0540"            /* 0...¿..é...p...@ */
	$"0000 0380 0000 0080 0000 0080 0000 0100"            /* ...Ä...Ä...Ä.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 60B7 0000 0001 0000 FFFF FFFF"            /* ....`∑......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 001F C000 00E0"            /* ............¿..‡ */
	$"3000 0100 0800 0200 0800 0400 0800 0400"            /* 0............... */
	$"3000 0401 C000 038E 0000 0670 0000 0540"            /* 0...¿..é...p...@ */
	$"0000 0380 0000 0080 0000 0080 0000 0100"            /* ...Ä...Ä...Ä.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (135, "Magic Wand") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0040 0000 0110 0000 00A0 0000 0248"            /* ...@.......†...H */
	$"0000 00A0 0000 0110 0000 0044 0000 000E"            /* ...†.......D.... */
	$"0000 0007 0000 0003 8000 0001 C000 0000"            /* ........Ä...¿... */
	$"E000 0000 7000 0000 2000 0000 0000 0000"            /* ‡...p... ....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0040 0000 0110"            /* ...........@.... */
	$"0000 00A0 0000 0248 0000 00A0 0000 0110"            /* ...†...H...†.... */
	$"0000 0044 0000 000A 0000 0005 0000 0003"            /* ...D............ */
	$"8000 0001 C000 0000 E000 0000 7000 0000"            /* Ä...¿...‡...p... */
	$"2000 0000 0000 0000 0000 0000 0000 0000"            /*  ............... */
	$"0000 0003 68BB 0000 0001 0000 FFFF FFFF"            /* ....hª......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0040 0000 0110"            /* ...........@.... */
	$"0000 00A0 0000 0248 0000 00A0 0000 0110"            /* ...†...H...†.... */
	$"0000 0044 0000 000A 0000 0005 0000 0003"            /* ...D............ */
	$"8000 0001 C000 0000 E000 0000 7000 0000"            /* Ä...¿...‡...p... */
	$"2000 0000 0000 0000 0000 0000 0000 0000"            /*  ............... */
	$"0000"                                               /* .. */
};

data 'cicn' (136, "Line") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0180 0000 00C0"            /* ...........Ä...¿ */
	$"0000 0060 0000 0030 0000 0018 0000 000C"            /* ...`...0........ */
	$"0000 0006 0000 0003 0000 0001 8000 0000"            /* ............Ä... */
	$"C000 0000 6000 0000 3000 0000 0000 0000"            /* ¿...`...0....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0180 0000 00C0 0000 0060 0000 0030"            /* ...Ä...¿...`...0 */
	$"0000 0018 0000 000C 0000 0006 0000 0003"            /* ................ */
	$"0000 0001 8000 0000 C000 0000 6000 0000"            /* ....Ä...¿...`... */
	$"3000 0000 0000 0000 0000 0000 0000 0000"            /* 0............... */
	$"0000 0000 17D0 0000 0001 0000 FFFF FFFF"            /* .....–......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0180 0000 00C0 0000 0060 0000 0030"            /* ...Ä...¿...`...0 */
	$"0000 0018 0000 000C 0000 0006 0000 0003"            /* ................ */
	$"0000 0001 8000 0000 C000 0000 6000 0000"            /* ....Ä...¿...`... */
	$"3000 0000 0000 0000 0000 0000 0000 0000"            /* 0............... */
	$"0000"                                               /* .. */
};

data 'cicn' (137, "Rectangle") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 03FF F000 0200 1000 0200"            /* .......ˇ....... */
	$"1000 0200 1000 0200 1000 0200 1000 0200"            /* ................ */
	$"1000 0200 1000 0200 1000 0200 1000 0200"            /* ................ */
	$"1000 03FF F000 0000 0000 0000 0000 0000"            /* ...ˇ........... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 03FF"            /* ...............ˇ */
	$"F000 0200 1000 0200 1000 0200 1000 0200"            /* ............... */
	$"1000 0200 1000 0200 1000 0200 1000 0200"            /* ................ */
	$"1000 0200 1000 0200 1000 03FF F000 0000"            /* ...........ˇ... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 FB47 0000 0001 0000 FFFF FFFF"            /* ....˚G......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 03FF"            /* ...............ˇ */
	$"F000 0200 1000 0200 1000 0200 1000 0200"            /* ............... */
	$"1000 0200 1000 0200 1000 0200 1000 0200"            /* ................ */
	$"1000 0200 1000 0200 1000 03FF F000 0000"            /* ...........ˇ... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (138, "Oval") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 003F 0000 00C0 C000 0100"            /* .......?...¿¿... */
	$"2000 0100 2000 0200 1000 0200 1000 0200"            /*  ... ........... */
	$"1000 0200 1000 0100 2000 0100 2000 00C0"            /* ........ ... ..¿ */
	$"C000 003F 0000 0000 0000 0000 0000 0000"            /* ¿..?............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 003F"            /* ...............? */
	$"0000 00C0 C000 0100 2000 0100 2000 0200"            /* ...¿¿... ... ... */
	$"1000 0200 1000 0200 1000 0200 1000 0100"            /* ................ */
	$"2000 0100 2000 00C0 C000 003F 0000 0000"            /*  ... ..¿¿..?.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0001 07C2 0000 0001 0000 FFFF FFFF"            /* .....¬......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 003F"            /* ...............? */
	$"0000 00C0 C000 0100 2000 0100 2000 0200"            /* ...¿¿... ... ... */
	$"1000 0200 1000 0200 1000 0200 1000 0100"            /* ................ */
	$"2000 0100 2000 00C0 C000 003F 0000 0000"            /*  ... ..¿¿..?.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (140, "Gradient") {
	$"0000 0000 8008 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0002 0001 0002 0000 0000 0000 01B2 0000"            /* .............≤.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 07FF F800 07FF F800 07FF"            /* .......ˇ¯..ˇ¯..ˇ */
	$"F800 07FF F800 07FF F800 07FF F800 07FF"            /* ¯..ˇ¯..ˇ¯..ˇ¯..ˇ */
	$"F800 07FF F800 07FF F800 07FF F800 07FF"            /* ¯..ˇ¯..ˇ¯..ˇ¯..ˇ */
	$"F800 07FF F800 0000 0000 0000 0000 0000"            /* ¯..ˇ¯........... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 07FF"            /* ...............ˇ */
	$"F800 040B F800 0407 F800 040B F800 0407"            /* ¯...¯...¯...¯... */
	$"F800 040B F800 0407 F800 040B F800 0407"            /* ¯...¯...¯...¯... */
	$"F800 040B F800 0407 F800 07FF F800 0000"            /* ¯...¯...¯..ˇ¯... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 CBD8 0000 0003 0000 FFFF FFFF"            /* ....Àÿ......ˇˇˇˇ */
	$"FFFF 0001 8000 8000 8000 0002 4000 4000"            /* ˇˇ..Ä.Ä.Ä...@.@. */
	$"4000 0003 0000 0000 0000 0000 0000 0000"            /* @............... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 003F FFFF FFC0 0000 0030 119B BFC0"            /* ...?ˇˇˇ¿...0.õø¿ */
	$"0000 0030 056A FFC0 0000 0030 119B BFC0"            /* ...0.jˇ¿...0.õø¿ */
	$"0000 0030 056A FFC0 0000 0030 119B BFC0"            /* ...0.jˇ¿...0.õø¿ */
	$"0000 0030 056A FFC0 0000 0030 119B BFC0"            /* ...0.jˇ¿...0.õø¿ */
	$"0000 0030 056A FFC0 0000 0030 119B BFC0"            /* ...0.jˇ¿...0.õø¿ */
	$"0000 0030 056A FFC0 0000 003F FFFF FFC0"            /* ...0.jˇ¿...?ˇˇˇ¿ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
};

data 'cicn' (141, "Text") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 01FF E000 018C 6000 010C 2000 010C"            /* ...ˇ‡..å`... ... */
	$"2000 000C 0000 000C 0000 000C 0000 000C"            /*  ............... */
	$"0000 000C 0000 000C 0000 000C 0000 000C"            /* ................ */
	$"0000 003F 0000 0000 0000 0000 0000 0000"            /* ...?............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 01FF E000 018C"            /* ...........ˇ‡..å */
	$"6000 010C 2000 010C 2000 000C 0000 000C"            /* `... ... ....... */
	$"0000 000C 0000 000C 0000 000C 0000 000C"            /* ................ */
	$"0000 000C 0000 000C 0000 003F 0000 0000"            /* ...........?.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 1B8E 0000 0001 0000 FFFF FFFF"            /* .....é......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 01FF E000 018C"            /* ...........ˇ‡..å */
	$"6000 010C 2000 010C 2000 000C 0000 000C"            /* `... ... ....... */
	$"0000 000C 0000 000C 0000 000C 0000 000C"            /* ................ */
	$"0000 000C 0000 000C 0000 003F 0000 0000"            /* ...........?.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (150, "Rectangle (Filled)") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 03FF F000 02AA B000 0355"            /* .......ˇ..™∞..U */
	$"5000 02AA B000 0355 5000 02AA B000 0355"            /* P..™∞..UP..™∞..U */
	$"5000 02AA B000 0355 5000 02AA B000 0355"            /* P..™∞..UP..™∞..U */
	$"5000 03FF F000 0000 0000 0000 0000 0000"            /* P..ˇ........... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 03FF"            /* ...............ˇ */
	$"F000 02AA B000 0355 5000 02AA B000 0355"            /* ..™∞..UP..™∞..U */
	$"5000 02AA B000 0355 5000 02AA B000 0355"            /* P..™∞..UP..™∞..U */
	$"5000 02AA B000 0355 5000 03FF F000 0000"            /* P..™∞..UP..ˇ... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 4E65 0000 0001 0000 FFFF FFFF"            /* ....Ne......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 03FF"            /* ...............ˇ */
	$"F000 02AA B000 0355 5000 02AA B000 0355"            /* ..™∞..UP..™∞..U */
	$"5000 02AA B000 0355 5000 02AA B000 0355"            /* P..™∞..UP..™∞..U */
	$"5000 02AA B000 0355 5000 03FF F000 0000"            /* P..™∞..UP..ˇ... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (151, "Oval (Filled)") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 003F 0000 00EA C000 0155"            /* .......?...Í¿..U */
	$"6000 01AA A000 0355 5000 02AA B000 0355"            /* `..™†..UP..™∞..U */
	$"5000 02AA B000 0155 6000 01AA A000 00D5"            /* P..™∞..U`..™†..’ */
	$"C000 003F 0000 0000 0000 0000 0000 0000"            /* ¿..?............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 003F"            /* ...............? */
	$"0000 00EA C000 0155 6000 01AA A000 0355"            /* ...Í¿..U`..™†..U */
	$"5000 02AA B000 0355 5000 02AA B000 0155"            /* P..™∞..UP..™∞..U */
	$"6000 01AA A000 00D5 C000 003F 0000 0000"            /* `..™†..’¿..?.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 5043 0000 0001 0000 FFFF FFFF"            /* ....PC......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 003F"            /* ...............? */
	$"0000 00EA C000 0155 6000 01AA A000 0355"            /* ...Í¿..U`..™†..U */
	$"5000 02AA B000 0355 5000 02AA B000 0155"            /* P..™∞..UP..™∞..U */
	$"6000 01AA A000 00D5 C000 003F 0000 0000"            /* `..™†..’¿..?.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (139, "Polygon") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 001F FC00 0020 0800 0040"            /* ........¸.. ...@ */
	$"1000 0080 2000 0100 4000 0200 8000 0401"            /* ...Ä ...@...Ä... */
	$"0000 0400 8000 0400 4000 0400 2000 0400"            /* ....Ä...@... ... */
	$"1000 07FF F800 0000 0000 0000 0000 0000"            /* ...ˇ¯........... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 001F"            /* ................ */
	$"FC00 0020 0800 0040 1000 0080 2000 0100"            /* ¸.. ...@...Ä ... */
	$"4000 0200 8000 0401 0000 0400 8000 0400"            /* @...Ä.......Ä... */
	$"4000 0400 2000 0400 1000 07FF F800 0000"            /* @... ......ˇ¯... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0001 872B 0000 0001 0000 FFFF FFFF"            /* ....á+......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 001F"            /* ................ */
	$"FC00 0020 0800 0040 1000 0080 2000 0100"            /* ¸.. ...@...Ä ... */
	$"4000 0200 8000 0401 0000 0400 8000 0400"            /* @...Ä.......Ä... */
	$"4000 0400 2000 0400 1000 07FF F800 0000"            /* @... ......ˇ¯... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (152, "Polygon (Filled)") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 001F FC00 002A A800 0055"            /* ........¸..*®..U */
	$"5000 00AA A000 0155 4000 02AA 8000 0555"            /* P..™†..U@..™Ä..U */
	$"0000 06AA 8000 0555 4000 06AA A000 0555"            /* ...™Ä..U@..™†..U */
	$"5000 07FF F800 0000 0000 0000 0000 0000"            /* P..ˇ¯........... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 001F"            /* ................ */
	$"FC00 002A A800 0055 5000 00AA A000 0155"            /* ¸..*®..UP..™†..U */
	$"4000 02AA 8000 0555 0000 06AA 8000 0555"            /* @..™Ä..U...™Ä..U */
	$"4000 06AA A000 0555 5000 07FF F800 0000"            /* @..™†..UP..ˇ¯... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0001 865A 0000 0001 0000 FFFF FFFF"            /* ....ÜZ......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 001F"            /* ................ */
	$"FC00 002A A800 0055 5000 00AA A000 0155"            /* ¸..*®..UP..™†..U */
	$"4000 02AA 8000 0555 0000 06AA 8000 0555"            /* @..™Ä..U...™Ä..U */
	$"4000 06AA A000 0555 5000 07FF F800 0000"            /* @..™†..UP..ˇ¯... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (153, "Gradient (Radial)") {
	$"0000 0000 800E 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0004 0001 0004 0000 0000 0000 0236 0000"            /* .............6.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 07FF F800 07FF F800 07FF"            /* .......ˇ¯..ˇ¯..ˇ */
	$"F800 07FF F800 07FF F800 07FF F800 07FF"            /* ¯..ˇ¯..ˇ¯..ˇ¯..ˇ */
	$"F800 07FF F800 07FF F800 07FF F800 07FF"            /* ¯..ˇ¯..ˇ¯..ˇ¯..ˇ */
	$"F800 07FF F800 0000 0000 0000 0000 0000"            /* ¯..ˇ¯........... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 07FF"            /* ...............ˇ */
	$"F800 07FF F800 07F6 F800 07A9 B800 07D6"            /* ¯..ˇ¯..ˆ¯..©∏..÷ */
	$"F800 07D1 F800 0763 7800 07D4 F800 07EB"            /* ¯..—¯..cx..‘¯..Î */
	$"B800 07BD F800 07EF F800 07FF F800 0000"            /* ∏..Ω¯..Ô¯..ˇ¯... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0002 5E81 0000 0004 0000 FFFF FFFF"            /* ....^Å......ˇˇˇˇ */
	$"FFFF 000C C000 C000 C000 000D 8000 8000"            /* ˇˇ..¿.¿.¿...Ä.Ä. */
	$"8000 000E 4000 4000 4000 000F 0000 0000"            /* Ä...@.@.@....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0FFF FFFF FFFF"            /* ...........ˇˇˇˇˇ */
	$"FFFF F000 0000 0000 0FFF FFEF EFEE FFFF"            /* ˇˇ......ˇˇÔÔÓˇˇ */
	$"F000 0000 0000 0FFF FEEE EEEE EFFF F000"            /* ......ˇ˛ÓÓÓÔˇ. */
	$"0000 0000 0FFF EEED EDDE EEFF F000 0000"            /* .....ˇÓÌÌﬁÓˇ... */
	$"0000 0FFF EEDD DDDD EFFF F000 0000 0000"            /* ...ˇÓ›››Ôˇ..... */
	$"0FFF FEDD C0DE EEFF F000 0000 0000 0FFF"            /* .ˇ˛›¿ﬁÓˇ......ˇ */
	$"EEED 0CDD EFFF F000 0000 0000 0FFF FEDD"            /* ÓÌ.›Ôˇ......ˇ˛› */
	$"DDDD EEFF F000 0000 0000 0FFF EEED DEDE"            /* ››Óˇ......ˇÓÌﬁﬁ */
	$"EEFF F000 0000 0000 0FFF FEEE EEEE EFFF"            /* Óˇ......ˇ˛ÓÓÓÔˇ */
	$"F000 0000 0000 0FFF FFEE FEFE FFFF F000"            /* ......ˇˇÓ˛˛ˇˇ. */
	$"0000 0000 0FFF FFFF FFFF FFFF F000 0000"            /* .....ˇˇˇˇˇˇˇ... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000"                                     /* ...... */
};

data 'cicn' (154, "Lasso Polygonal") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0800 0300 1800 02C0 2800 0230"            /* ...........¿(..0 */
	$"4800 010C 8800 0103 0800 0080 0800 0080"            /* H...à......Ä...Ä */
	$"0800 0040 1800 0070 6000 00C9 8000 00AE"            /* ...@...p`..…Ä..Æ */
	$"0000 0078 0000 0010 0000 0010 0000 0020"            /* ...x...........  */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0800 0300"            /* ................ */
	$"1800 02C0 2800 0230 4800 010C 8800 0103"            /* ...¿(..0H...à... */
	$"0800 0080 0800 0080 0800 0040 1800 0070"            /* ...Ä...Ä...@...p */
	$"6000 00C9 8000 00AE 0000 0078 0000 0010"            /* `..…Ä..Æ...x.... */
	$"0000 0010 0000 0020 0000 0000 0000 0000"            /* ....... ........ */
	$"0000 0001 07B3 0000 0001 0000 FFFF FFFF"            /* .....≥......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0800 0300"            /* ................ */
	$"1800 02C0 2800 0230 4800 010C 8800 0103"            /* ...¿(..0H...à... */
	$"0800 0080 0800 0080 0800 0040 1800 0070"            /* ...Ä...Ä...@...p */
	$"6000 00C9 8000 00AE 0000 0078 0000 0010"            /* `..…Ä..Æ...x.... */
	$"0000 0010 0000 0020 0000 0000 0000 0000"            /* ....... ........ */
	$"0000"                                               /* .. */
};

data 'crsr' (128, "Pen") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 00F0 0088 0108 0190 0270 0220"            /* ......à...ê.p.  */
	$"0420 0440 0840 0880 0C80 0F00 0E00 0C00"            /* . .@.@.Ä.Ä...... */
	$"0800 0000 00F0 00F8 01F8 01F0 03F0 03E0"            /* ......¯.¯...‡ */
	$"07E0 07C0 0FC0 0F80 0F80 0F00 0E00 0C00"            /* .‡.¿.¿.Ä.Ä...... */
	$"0800 0000 000E 0004 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 00F0 0088 0108 0190 0270 0220 0420"            /* ....à...ê.p. .  */
	$"0440 0840 0880 0C80 0F00 0E00 0C00 0800"            /* .@.@.Ä.Ä........ */
	$"0000 0000 2ED5 0000 0001 0000 FFFF FFFF"            /* .....’......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (129, "Eye Dropper") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 000E 001F 001F 00FF 007E 00B8"            /* ...........ˇ.~.∏ */
	$"0118 0228 0440 0880 1100 2200 4400 4800"            /* ...(.@.Ä..".D.H. */
	$"B000 4000 000E 001F 001F 00FF 007E 00F8"            /* ∞.@........ˇ.~.¯ */
	$"01F8 03E8 07C0 0F80 1F00 3E00 7C00 7800"            /* .¯.Ë.¿.Ä..>.|.x. */
	$"F000 4000 000E 0001 0000 0000 0000 0000"            /* .@............. */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 000E 001F 001F 00FF 007E 00B8 0118"            /* .........ˇ.~.∏.. */
	$"0228 0440 0880 1100 2200 4400 4800 B000"            /* .(.@.Ä..".D.H.∞. */
	$"4000 0000 31F3 0000 0001 0000 FFFF FFFF"            /* @...1Û......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (130, "Bucket") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0700 0880 0980 0AC0 0CB0 089C"            /* .......Ä.Ä.¿.∞.ú */
	$"108E 2147 4087 800F 8017 4027 2047 1086"            /* .é!G@áÄ.Ä.@' G.Ü */
	$"0904 0600 0700 0880 0980 0BC0 0FE0 0FF0"            /* .......Ä.Ä.¿.‡. */
	$"1FF8 3FFC 7FFC FFF8 FFF0 7FE0 3FC0 1F80"            /* .¯?¸.¸ˇ¯ˇ.‡?¿.Ä */
	$"0F00 0600 000E 000D 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0700 0880 0980 0AC0 0CB0 089C 108E"            /* .....Ä.Ä.¿.∞.ú.é */
	$"2147 4087 800F 8017 4027 2047 1086 0904"            /* !G@áÄ.Ä.@' G.Ü.. */
	$"0600 0000 34DA 0000 0001 0000 FFFF FFFF"            /* ....4⁄......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (131, "Eraser") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0000 0000 01FE 0206 040A 0812"            /* .........˛...... */
	$"1024 2048 4090 FF20 8140 8180 FF00 0000"            /* .$ H@êˇ Å@ÅÄˇ... */
	$"0000 0000 0000 0000 01FE 03FE 07FE 0FFE"            /* .........˛.˛.˛.˛ */
	$"1FFC 3FF8 7FF0 FFE0 FFC0 FF80 FF00 0000"            /* .¸?¯.ˇ‡ˇ¿ˇÄˇ... */
	$"0000 0000 000C 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0000 0000 01FE 0206 040A 0812 1024"            /* .......˛.......$ */
	$"2048 4090 FF20 8140 8180 FF00 0000 0000"            /*  H@êˇ Å@ÅÄˇ..... */
	$"0000 0000 394A 0000 0001 0000 FFFF FFFF"            /* ....9J......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (132, "Marquee") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"0100 FFFE 0100 0100 0100 0100 0100 0100"            /* ..ˇ˛............ */
	$"0100 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0007 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0100 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"FFFE 0100 0100 0100 0100 0100 0100 0100"            /* ˇ˛.............. */
	$"0000 0000 9C5B 0000 0001 0000 FFFF FFFF"            /* ....ú[......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (133, "Move") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0000 4000 6000 7000 7800 7C00"            /* ......@.`.p.x.|. */
	$"7E20 7F70 7020 6124 43FE 0124 0020 0070"            /* ~ .pp a$C˛.$. .p */
	$"0020 0000 4000 E000 F000 F800 FC00 FE20"            /* . ..@.‡..¯.¸.˛  */
	$"FF70 FFF8 FF74 F3FE E7FF 43FE 0174 00F8"            /* ˇpˇ¯ˇtÛ˛ÁˇC˛.t.¯ */
	$"0070 0020 0001 0001 0000 0000 0000 0000"            /* .p. ............ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0000 4000 6000 7000 7800 7C00 7E20"            /* ....@.`.p.x.|.~  */
	$"7F70 7020 6124 43FE 0124 0020 0070 0020"            /* .pp a$C˛.$. .p.  */
	$"0000 0001 33F8 0000 0001 0000 FFFF FFFF"            /* ....3¯......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (134, "Lasso") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 03F8 1C06 2001 4001 8001 8006"            /* .....¯.. .@.Ä.Ä. */
	$"8038 71C0 CE00 A800 7000 1000 1000 2000"            /* Ä8q¿Œ.®.p..... . */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 000D 0002 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 03F8 1C06 2001 4001 8001 8006 8038"            /* ...¯.. .@.Ä.Ä.Ä8 */
	$"71C0 CE00 A800 7000 1000 1000 2000 0000"            /* q¿Œ.®.p..... ... */
	$"0000 0003 61D7 0000 0001 0000 FFFF FFFF"            /* ....a◊......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (135, "Magic Wand") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 1000 4400 2800 9200 2800 4400"            /* ......D.(.í.(.D. */
	$"1100 0280 0140 00E0 0070 0038 001C 0008"            /* ...Ä.@.‡.p.8.... */
	$"0000 0000 1000 5400 3800 FE00 3800 5400"            /* ......T.8.˛.8.T. */
	$"1100 0380 01C0 00E0 0070 0038 001C 0008"            /* ...Ä.¿.‡.p.8.... */
	$"0000 0000 0003 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 1000 4400 2800 9200 2800 4400 1100"            /* ....D.(.í.(.D... */
	$"0280 0140 00E0 0070 0038 001C 0008 0000"            /* .Ä.@.‡.p.8...... */
	$"0000 0003 6933 0000 0001 0000 FFFF FFFF"            /* ....i3......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (204, "Magic Wand Additive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 1000 4400 2800 9200 2800 4400"            /* ......D.(.í.(.D. */
	$"1100 0280 0140 00E0 1070 1038 7C1C 1008"            /* ...Ä.@.‡.p.8|... */
	$"1000 0000 1000 5400 3800 FE00 3800 5400"            /* ......T.8.˛.8.T. */
	$"1100 0380 01C0 00E0 0070 0038 001C 0008"            /* ...Ä.¿.‡.p.8.... */
	$"0000 0000 0003 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 1000 4400 2800 9200 2800 4400 1100"            /* ....D.(.í.(.D... */
	$"0280 0140 00E0 1070 1038 7C1C 1008 1000"            /* .Ä.@.‡.p.8|..... */
	$"0000 0003 8CD8 0000 0001 0000 FFFF FFFF"            /* ....åÿ......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (201, "Marquee Subtractive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"0100 FFFE 0100 0100 0100 0100 0100 011F"            /* ..ˇ˛............ */
	$"0100 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0007 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0100 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"FFFE 0100 0100 0100 0100 0100 011F 0100"            /* ˇ˛.............. */
	$"0000 0003 E7B4 0000 0001 0000 FFFF FFFF"            /* ....Á¥......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (202, "Lasso Additive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 03F8 1C06 2001 4001 8001 8006"            /* .....¯.. .@.Ä.Ä. */
	$"8038 71C0 CE00 A800 7008 1008 103E 2008"            /* Ä8q¿Œ.®.p....> . */
	$"0008 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 000D 0002 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 03F8 1C06 2001 4001 8001 8006 8038"            /* ...¯.. .@.Ä.Ä.Ä8 */
	$"71C0 CE00 A800 7008 1008 103E 2008 0008"            /* q¿Œ.®.p....> ... */
	$"0000 0003 E3FF 0000 0001 0000 FFFF FFFF"            /* ....„ˇ......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (203, "Lasso Subtractive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 03F8 1C06 2001 4001 8001 8006"            /* .....¯.. .@.Ä.Ä. */
	$"8038 71C0 CE00 A800 7000 1000 103E 2000"            /* Ä8q¿Œ.®.p....> . */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 000D 0002 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 03F8 1C06 2001 4001 8001 8006 8038"            /* ...¯.. .@.Ä.Ä.Ä8 */
	$"71C0 CE00 A800 7000 1000 103E 2000 0000"            /* q¿Œ.®.p....> ... */
	$"0000 0003 E6AB 0000 0001 0000 FFFF FFFF"            /* ....Ê´......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (205, "Magic Wand Subtractive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 1000 4400 2800 9200 2800 4400"            /* ......D.(.í.(.D. */
	$"1100 0280 0140 00E0 0070 0038 7C1C 0008"            /* ...Ä.@.‡.p.8|... */
	$"0000 0000 1000 5400 3800 FE00 3800 5400"            /* ......T.8.˛.8.T. */
	$"1100 0380 01C0 00E0 0070 0038 001C 0008"            /* ...Ä.¿.‡.p.8.... */
	$"0000 0000 0003 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 1000 4400 2800 9200 2800 4400 1100"            /* ....D.(.í.(.D... */
	$"0280 0140 00E0 0070 0038 7C1C 0008 0000"            /* .Ä.@.‡.p.8|..... */
	$"0000 0003 E72E 0000 0001 0000 FFFF FFFF"            /* ....Á.......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (200, "Marquee Additive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"0100 FFFE 0100 0100 0100 0104 0104 011F"            /* ..ˇ˛............ */
	$"0104 0004 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0007 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0100 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"FFFE 0100 0100 0100 0104 0104 011F 0104"            /* ˇ˛.............. */
	$"0004 0003 E85F 0000 0001 0000 FFFF FFFF"            /* ....Ë_......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (206, "Move Selection Outline") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0000 4000 6000 5000 4800 4400"            /* ......@.`.P.H.D. */
	$"4200 4F00 5000 636C 4204 0000 0204 036C"            /* B.O.P.clB......l */
	$"0000 0000 C000 E000 F000 F800 FC00 FE00"            /* ....¿.‡..¯.¸.˛. */
	$"FF00 FF80 FFFE F7FE E7FE C7FE 07FE 07FE"            /* ˇ.ˇÄˇ˛˜˛Á˛«˛.˛.˛ */
	$"07FE 0000 0001 0001 0000 0000 0000 0000"            /* .˛.............. */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0000 4000 6000 5000 4800 4400 4200"            /* ....@.`.P.H.D.B. */
	$"4F00 5000 636C 4204 0000 0204 036C 0000"            /* O.P.clB......l.. */
	$"0000 0000 C646 0000 0001 0000 FFFF FFFF"            /* ....∆F......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (207, "Move Selection Contents") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0000 4000 6000 7000 7800 7C00"            /* ......@.`.p.x.|. */
	$"7E00 7F00 7000 6000 4000 0000 0000 0000"            /* ~...p.`.@....... */
	$"0000 0000 C000 E000 F000 F800 FC00 FE00"            /* ....¿.‡..¯.¸.˛. */
	$"FF00 FF80 FF80 F000 E000 C000 0000 0000"            /* ˇ.ˇÄˇÄ.‡.¿..... */
	$"0000 0000 0001 0001 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0000 4000 6000 7000 7800 7C00 7E00"            /* ....@.`.p.x.|.~. */
	$"7F00 7000 6000 4000 0000 0000 0000 0000"            /* ..p.`.@......... */
	$"0000 0000 D58C 0000 0001 0000 FFFF FFFF"            /* ....’å......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (208, "Move Float Selection") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0000 4000 6000 7000 7800 7C00"            /* ......@.`.p.x.|. */
	$"7E00 7F00 700C 6712 41DC 0070 01DC 0712"            /* ~...p.g.A‹.p.‹.. */
	$"000C 0000 C000 E000 F000 F800 FC00 FE00"            /* ....¿.‡..¯.¸.˛. */
	$"FF00 FF8C FF9E FFFF EFFE E1FC 0FFE 0FFF"            /* ˇ.ˇåˇûˇˇÔ˛·¸.˛.ˇ */
	$"0F1E 000C 0001 0001 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0000 4000 6000 7000 7800 7C00 7E00"            /* ....@.`.p.x.|.~. */
	$"7F00 700C 6712 41DC 0070 01DC 0712 000C"            /* ..p.g.A‹.p.‹.... */
	$"0000 0000 F9D2 0000 0001 0000 FFFF FFFF"            /* ....˘“......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (154, "Lasso Polygonal") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0002 C006 B00A 8C12 4322 40C2"            /* ......¿.∞.å.C"@¬ */
	$"2002 2002 1006 1C18 3260 2B80 1E00 0400"            /*  . .....2`+Ä.... */
	$"0400 0800 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 000F 0004 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0002 C006 B00A 8C12 4322 40C2 2002"            /* ....¿.∞.å.C"@¬ . */
	$"2002 1006 1C18 3260 2B80 1E00 0400 0400"            /*  .....2`+Ä...... */
	$"0800 0001 0911 0000 0001 0000 FFFF FFFF"            /* ............ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (209, "Lasso Polygonal Additive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0002 C006 B00A 8C12 4322 40C2"            /* ......¿.∞.å.C"@¬ */
	$"2002 2002 1006 1C18 3260 2B84 1E04 041F"            /*  . .....2`+Ñ.... */
	$"0404 0804 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 000F 0004 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0002 C006 B00A 8C12 4322 40C2 2002"            /* ....¿.∞.å.C"@¬ . */
	$"2002 1006 1C18 3260 2B84 1E04 041F 0404"            /*  .....2`+Ñ...... */
	$"0804 0001 0FC3 0000 0001 0000 FFFF FFFF"            /* .....√......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (210, "Lasso Polygonal Subtractive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0002 C006 B00A 8C12 4322 40C2"            /* ......¿.∞.å.C"@¬ */
	$"2002 2002 1006 1C18 3260 2B80 1E00 041F"            /*  . .....2`+Ä.... */
	$"0400 0800 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 000F 0004 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0002 C006 B00A 8C12 4322 40C2 2002"            /* ....¿.∞.å.C"@¬ . */
	$"2002 1006 1C18 3260 2B80 1E00 041F 0400"            /*  .....2`+Ä...... */
	$"0800 0001 1FB5 0000 0001 0000 FFFF FFFF"            /* .....µ......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'PAT#' (1000, purgeable) {
	$"0008 F0E1 C387 0F1E 3C78 78F0 E1C3 870F"            /* ..·√á..<xx·√á. */
	$"1E3C 3C78 F0E1 C387 0F1E 1E3C 78F0 E1C3"            /* .<<x·√á...<x·√ */
	$"870F 0F1E 3C78 F0E1 C387 870F 1E3C 78F0"            /* á...<x·√áá..<x */
	$"E1C3 C387 0F1E 3C78 F0E1 E1C3 870F 1E3C"            /* ·√√á..<x··√á..< */
	$"78F0"                                               /* x */
};

data 'PAT#' (1001, preload) {
	$"0018 FFFF FFFF FFFF FFFF 7FFF F7FF 7FFF"            /* ..ˇˇˇˇˇˇˇˇ.ˇ˜ˇ.ˇ */
	$"F7FF DDFF 77FF DDFF 77FF DD77 DD77 DD77"            /* ˜ˇ›ˇwˇ›ˇwˇ›w›w›w */
	$"DD77 AA55 AA55 AA55 AA55 55FF 55FF 55FF"            /* ›w™U™U™U™UUˇUˇUˇ */
	$"55FF AAAA AAAA AAAA AAAA EEDD BB77 EEDD"            /* Uˇ™™™™™™™™Ó›ªwÓ› */
	$"BB77 FEFD FBF7 EFDF BF7F 8888 8888 8888"            /* ªw˛˝˚˜Ôﬂø.àààààà */
	$"8888 FF88 8888 FF88 8888 00FF 00FF 00FF"            /* ààˇàààˇààà.ˇ.ˇ.ˇ */
	$"00FF 0000 0000 0000 0000 8000 0800 8000"            /* .ˇ........Ä...Ä. */
	$"0800 8800 2200 8800 2200 8822 8822 8822"            /* ..à.".à.".à"à"à" */
	$"8822 55AA 55AA 55AA 55AA AA00 AA00 AA00"            /* à"U™U™U™U™™.™.™. */
	$"AA00 5555 5555 5555 5555 8000 0000 0000"            /* ™.UUUUUUUUÄ..... */
	$"0000 1122 4488 1122 4488 0102 0408 1020"            /* ..."Dà."Dà.....  */
	$"4080 FF00 0000 FF00 0000 FF00 FF00 FF00"            /* @Äˇ...ˇ...ˇ.ˇ.ˇ. */
	$"FF00"                                               /* ˇ. */
};

resource 'wctb' (200) {
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

resource 'tab#' (1010) {
	versionZero {
		{	/* array TabInfo: 2 elements */
			/* [1] */
			0,
			"Hue & Saturation",
			/* [2] */
			0,
			"Brightness & Contrast"
		}
	}
};

data 'clut' (2054, "Windows 4-bit Colors") {
	$"0000 0000 0000 000F 0000 0000 0000 0000"            /* ................ */
	$"0001 0000 0000 7B7B 0002 0000 7B7B 0000"            /* ......{{....{{.. */
	$"0003 0000 7B7B 7B7B 0004 7B7B 0000 0000"            /* ....{{{{..{{.... */
	$"0005 7B7B 0000 7B7B 0006 7B7B 7B7B 0000"            /* ..{{..{{..{{{{.. */
	$"0007 BDBD BDBD BDBD 0008 7B7B 7B7B 7B7B"            /* ..ΩΩΩΩΩΩ..{{{{{{ */
	$"0009 0000 0000 FFFF 000A 0000 FFFF 0000"            /* ......ˇˇ....ˇˇ.. */
	$"000B 0000 FFFF FFFF 000C FFFF 0000 0000"            /* ....ˇˇˇˇ..ˇˇ.... */
	$"000D FFFF 0000 FFFF 000E FFFF FFFF 0000"            /* ..ˇˇ..ˇˇ..ˇˇˇˇ.. */
	$"000F FFFF FFFF FFFF"                                /* ..ˇˇˇˇˇˇ */
};

resource 'WIND' (200, purgeable) {
	{42, 6, 298, 432},
	1025,
	invisible,
	goAway,
	0x0,
	"",
	staggerMainScreen
};

resource 'dftb' (300) {
	versionZero {
		{	/* array FontStyle: 5 elements */
			/* [1] */
			skipItem {

			}			,
			/* [2] */
			skipItem {

			}			,
			/* [3] */
			dataItem {
				1,
				-2,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				""
			},
			/* [4] */
			skipItem {

			},
			/* [5] */
			dataItem {
				1,
				-2,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				""
			}
		}
	}
};

resource 'ldes' (300) {
	versionZero {
		0,
		1,
		14,
		0,
		hasVertScroll,
		noHorizScroll,
		0,
		noGrowSpace
	}
};

data 'PROC' (128, "Find_icon 3.1 fat") {
	$"4E56 FFF0 41EE FFF0 7001 A090 4A40 6640"            /* NVˇAÓˇp.†êJ@f@ */
	$"0C68 0700 0004 6D38 303C A89F A746 2F08"            /* .h....m80<®üßF/. */
	$"303C AAFE A746 B1D7 663E 41FA FFD4 30FC"            /* 0<™˛ßF±◊f>A˙ˇ‘0¸ */
	$"6000 43FA 0044 2029 0014 5580 3080 303C"            /* `.C˙.D )..UÄ0Ä0< */
	$"A198 A346 B1D7 4E5E 67B6 7001 A198 60B0"            /* °ò£F±◊N^g∂p.°ò`∞ */
	$"4E5E 41FA FFAC 30FC 6000 43FA 001C 2029"            /* N^A˙ˇ¨0¸`.C˙.. ) */
	$"0014 5580 3080 6098 4E5E 43FA FF94 41FA"            /* ..UÄ0Ä`òN^C˙ˇîA˙ */
	$"0008 7034 A02E 6088 AAFE 0700 0000 0000"            /* ..p4†.`à™˛...... */
	$"0000 0001 0000 3FE0 0000 0005 0000 00AC"            /* ......?‡.......¨ */
	$"0000 0000 0000 0000 0000 3FE0 0001 0007"            /* ..........?‡.... */
	$"0000 2068 0000 0000 0000 0000 600A 0000"            /* .. h........`... */
	$"5052 4F43 0080 0000 48E7 E0C8 4EBA 00F2"            /* PROC.Ä..HÁ‡»N∫.Ú */
	$"41FA FFEA 2008 A055 4EBA 0090 4CDF 1307"            /* A˙ˇÍ .†UN∫.êLﬂ.. */
	$"4EFA 00F2 41FA FFD6 D1FC 0000 1FB7 2008"            /* N˙.ÚA˙ˇ÷—¸...∑ . */
	$"A055 4E75 48E7 0600 594F 206F 0010 226F"            /* †UNuHÁ..YO o.."o */
	$"0014 2C2F 0018 1E98 1F58 0001 1F58 0002"            /* ..,/...ò.X...X.. */
	$"1F58 0003 2A17 7400 6044 1218 1001 0240"            /* .X..*.t.`D.....@ */
	$"0080 670C D201 1001 4880 48C0 D480 6028"            /* .Äg.“...HÄH¿‘Ä`( */
	$"1E81 1F58 0001 1001 0240 0040 670C 3017"            /* .Å.X.....@.@g.0. */
	$"E548 E240 48C0 D480 600E 1F58 0002 1F58"            /* ÂH‚@H¿‘Ä`..X...X */
	$"0003 2417 E58A E282 DDB1 2800 5385 4A85"            /* ..$.Âä‚Ç›±(.SÖJÖ */
	$"6EB8 584F 4CDF 0060 4E75 48E7 1020 2440"            /* n∏XOLﬂ.`NuHÁ. $@ */
	$"202C 03E0 260A 9680 6740 4A80 661C 422C"            /*  ,.‡&.ñÄg@JÄf.B, */
	$"03E4 303C A89F A746 2F08 303C A198 A346"            /* .‰0<®üßF/.0<°ò£F */
	$"B1DF 56C0 4400 1940 03E4 2F03 2F0A 4EBA"            /* ±ﬂV¿D..@.‰/./.N∫ */
	$"FF44 2F00 4EBA FF4E 4FEF 000C 294A 03E0"            /* ˇD/.N∫ˇNOÔ..)J.‡ */
	$"4A2C 03E4 6704 7001 A198 4CDF 0408 4E75"            /* J,.‰g.p.°òLﬂ..Nu */
	$"41FA FEFA D1FC 0000 1BD2 2008 A055 C18C"            /* A˙˛˙—¸...“ .†U¡å */
	$"4E75 4E75 4E56 FF2E 48E7 1E30 246E 0014"            /* NuNuNVˇ.HÁ.0$n.. */
	$"266E 0010 2A2E 000C 282E 0008 7600 4EBA"            /* &n..*...(...v.N∫ */
	$"FFD0 2C00 2044 4290 200A 6712 3F12 4EBA"            /* ˇ–,. DBê .g.?.N∫ */
	$"0B48 4A00 544F 6706 76CB 6000 0116 200B"            /* .HJ.TOg.vÀ`... . */
	$"6636 41EA 0006 43EE FF2E 7020 A22E 3D52"            /* f6AÍ..CÓˇ.p ¢.=R */
	$"FFAA 2D6A 0002 FFC4 41EE FF2E 2D48 FFA6"            /* ˇ™-j..ˇƒAÓˇ.-Hˇ¶ */
	$"426E FFB0 41EE FF94 7009 A260 3600 6600"            /* Bnˇ∞AÓˇîp.¢`6.f. */
	$"00E2 47EE FF94 6026 206B 0012 7000 1010"            /* .‚GÓˇî`& k..p... */
	$"5240 48C0 206B 0012 43EE FF54 A22E 2D6B"            /* R@H¿ k..CÓˇT¢.-k */
	$"0064 FF50 3D6B 0016 FF4E 45EE FF4E 2044"            /* .dˇP=k..ˇNEÓˇN D */
	$"4A90 6600 008C 102B 001E 0240 0010 662E"            /* Jêf..å.+...@..f. */
	$"302B 0028 0240 0400 6712 2F04 2F05 2F0A"            /* 0+.(.@..g./././. */
	$"4EBA 02C6 3600 4FEF 000C 6064 2F04 2F05"            /* N∫.∆6.OÔ..`d/./. */
	$"2F0B 4EBA 0104 3600 4FEF 000C 6052 302B"            /* /.N∫..6.OÔ..`R0+ */
	$"0028 0240 0400 6716 2F04 2F05 2F2B 0030"            /* .(.@..g./././+.0 */
	$"3F12 4EBA 0578 4A40 4FEF 000E 6732 7002"            /* ?.N∫.xJ@OÔ..g2p. */
	$"B0AB 0030 661A 3F12 4EBA 0AB6 4A00 544F"            /* ∞´.0f.?.N∫.∂J.TO */
	$"670E 2F04 3F12 4EBA 05BE 3600 5C4F 6010"            /* g./.?.N∫.æ6.\O`. */
	$"2F04 2F05 2F0B 4EBA 0372 3600 4FEF 000C"            /* /././.N∫.r6.OÔ.. */
	$"2044 4A90 6730 554F 2044 2F10 302B 0028"            /*  DJêg0UO D/.0+.( */
	$"0240 000E E248 3F00 303C 0316 ABC9 301F"            /* .@..‚H?.0<..´…0. */
	$"6014 7001 B0AA 0002 660C 2F04 3F12 4EBA"            /* `.p.∞™..f./.?.N∫ */
	$"0576 3600 5C4F 2006 C18C 3F43 0102 4CDF"            /* .v6.\O .¡å?C..Lﬂ */
	$"0C78 4E5E 205F 4FEF 0010 4ED0 846D 6169"            /* .xN^ _OÔ..N–Ñmai */
	$"6E00 0000 4E56 FFBA 2F04 2F03 41EE FFBA"            /* n...NVˇ∫/./.AÓˇ∫ */
	$"2D48 FFEE 7014 2D40 FFF2 3D6E 0008 FFE4"            /* -HˇÓp.-@ˇÚ=n..ˇ‰ */
	$"42AE FFE0 41EE FFCE 7030 A260 3800 7601"            /* BÆˇ‡AÓˇŒp0¢`8.v. */
	$"4A44 6608 4AAE FFC4 6702 7600 1003 261F"            /* JDf.JÆˇƒg.v...&. */
	$"281F 4E5E 4E75 8F49 735F 6C6F 6361 6C5F"            /* (.N^NuèIs_local_ */
	$"766F 6C75 6D65 0000 4E56 FFB2 48E7 1F30"            /* volume..NVˇ≤HÁ.0 */
	$"266E 0008 2A2E 000C 246E 0010 282B 0020"            /* &n..*...$n..(+.  */
	$"2C2B 0024 2F05 2F06 2F04 4EBA 0DF4 2488"            /* ,+.$/././.N∫.Ù$à */
	$"4FEF 000C 6706 7000 6000 015E 486E FFBB"            /* OÔ..g.p.`..^Hnˇª */
	$"2F04 4EBA 05DE 3D40 FFBC A994 301F 3D40"            /* /.N∫.ﬁ=@ˇº©î0.=@ */
	$"FFB8 0C2E 0001 FFBB 5C4F 666E 554F 3F3C"            /* ˇ∏....ˇª\OfnUO?< */
	$"8000 2F3C 6D61 6373 4227 486E FFB6 486E"            /* Ä./<macsB'Hnˇ∂Hn */
	$"FFB2 7000 A823 301F 4227 A99B 554F 3F2E"            /* ˇ≤p.®#0.B'©õUO?. */
	$"FFB6 2F2E FFB2 4878 02E0 1F3C 0001 A81A"            /* ˇ∂/.ˇ≤Hx.‡.<..®. */
	$"301F 3E00 1F3C 0001 A99B 0C47 FFFF 660C"            /* 0.>..<..©õ.Gˇˇf. */
	$"554F A9AF 301F 3600 6000 00CE 554F 2F0A"            /* UO©Ø0.6.`..ŒUO/. */
	$"3F2E FFBC 2F05 1F3C 0001 4EBA 0650 301F"            /* ?.ˇº/..<..N∫.P0. */
	$"3600 3F07 A99A 6000 00B0 0C84 6164 7270"            /* 6.?.©ö`..∞.Ñadrp */
	$"6606 283C 4150 504C 3D6B 0016 FFBE 554F"            /* f.(<APPL=k..ˇæUO */
	$"3F2E FFBE 2F05 2F06 2F04 2F0A 4EBA 0AB6"            /* ?.ˇæ/./././.N∫.∂ */
	$"301F 3600 674A 42AE FFD2 3D7C 0001 FFDC"            /* 0.6.gJBÆˇ“=|..ˇ‹ */
	$"6034 302E FFD6 B06E FFBE 6726 3F2E FFD6"            /* `40.ˇ÷∞nˇæg&?.ˇ÷ */
	$"4EBA FEA2 4A00 544F 6718 554F 3F2E FFD6"            /* N∫˛¢J.TOg.UO?.ˇ÷ */
	$"2F05 2F06 2F04 2F0A 4EBA 0A7A 301F 3600"            /* /./././.N∫.z0.6. */
	$"670E 526E FFDC 41EE FFC0 A007 4A40 67C2"            /* g.Rnˇ‹AÓˇ¿†.J@g¬ */
	$"4A43 6734 4267 A998 554F 2F0A 3F2E FFBC"            /* JCg4Bg©òUO/.?.ˇº */
	$"2F05 1F3C 0001 4EBA 05B4 301F 3600 4A92"            /* /..<..N∫.¥0.6.Jí */
	$"6616 554F 2F0A 3F3C F060 2F05 1F3C 0001"            /* f.UO/.?<`/..<.. */
	$"4EBA 059A 301F 3600 3F2E FFB8 A998 4A43"            /* N∫.ö0.6.?.ˇ∏©òJC */
	$"6614 4A92 6710 2F12 2F05 2F06 2F04 4EBA"            /* f.Jíg././././.N∫ */
	$"0D42 4FEF 0010 3003 4CDF 0CF8 4E5E 4E75"            /* .BOÔ..0.Lﬂ.¯N^Nu */
	$"9447 6574 5F6E 6F72 6D61 6C5F 6669 6C65"            /* îGet_normal_file */
	$"5F69 636F 6E00 0000 4E56 0000 48E7 1E20"            /* _icon...NV..HÁ.  */
	$"2C2E 000C 246E 0010 554F A994 301F 3A00"            /* ,...$n..UO©î0.:. */
	$"4227 A99B 554F 2F2E 0008 1F3C 0001 700D"            /* B'©õUO/....<..p. */
	$"AA52 301F 3800 1F3C 0001 A99B 0C44 FFFF"            /* ™R0.8..<..©õ.Dˇˇ */
	$"660A 554F A9AF 301F 3600 603A 554F 2F0A"            /* f.UO©Ø0.6.`:UO/. */
	$"3F3C BFB9 2F06 1F3C 0001 4EBA 0500 301F"            /* ?<øπ/..<..N∫..0. */
	$"3600 0C43 FC18 6616 554F 2F0A 3F3C BF90"            /* 6..C¸.f.UO/.?<øê */
	$"2F06 1F3C 0001 4EBA 04E4 301F 3600 3F04"            /* /..<..N∫.‰0.6.?. */
	$"A99A 3F05 A998 3003 4CDF 0478 4E5E 4E75"            /* ©ö?.©ò0.Lﬂ.xN^Nu */
	$"9447 6574 5F63 7573 746F 6D5F 6669 6C65"            /* îGet_custom_file */
	$"5F69 636F 6E00 0000 4E56 FFFE 48E7 1C20"            /* _icon...NVˇ˛HÁ.  */
	$"3A2E 0008 282E 000A 246E 000E 7600 42A7"            /* :...(...$n..v.Bß */
	$"3045 2F08 2F04 4EBA 0BA8 2488 4FEF 000C"            /* 0E/./.N∫.®$àOÔ.. */
	$"662E 554F 3F05 2F04 4227 486E FFFE 2F0A"            /* f.UO?./.B'Hnˇ˛/. */
	$"7000 A823 301F 3600 6704 4292 6012 2F12"            /* p.®#0.6.g.Bí`./. */
	$"42A7 3045 2F08 2F04 4EBA 0C28 4FEF 0010"            /* Bß0E/./.N∫.(OÔ.. */
	$"3003 4CDF 0438 4E5E 4E75 8C4D 7946 696E"            /* 0.Lﬂ.8N^NuåMyFin */
	$"6446 6F6C 6465 7200 0000 4E56 FFF4 48E7"            /* dFolder...NVˇÙHÁ */
	$"1F30 246E 0008 266E 0010 2C2A 0030 3D6A"            /* .0$n..&n..,*.0=j */
	$"0016 FFFA 3A3C F061 486E FFF6 2F3C 6D61"            /* ..ˇ˙:<aHnˇˆ/<ma */
	$"6373 3F2E FFFA 4EBA FF60 4A40 4FEF 000A"            /* cs?.ˇ˙N∫ˇ`J@OÔ.. */
	$"660E BCAE FFF6 6608 3A3C F071 6000 00E0"            /* f.ºÆˇˆf.:<q`..‡ */
	$"7002 B0AA 0064 664A 7E05 7600 603C 486E"            /* p.∞™.dfJ~.v.`<Hn */
	$"FFFC 3043 2008 E788 41EC 0224 2F30 0800"            /* ˇ¸0C .ÁàAÏ.$/0.. */
	$"3F2E FFFA 4EBA FF22 3800 4FEF 000A 6618"            /* ?.ˇ˙N∫ˇ"8.OÔ..f. */
	$"BCAE FFFC 6612 3043 2A08 E78D 41EC 0224"            /* ºÆˇ¸f.0C*.ÁçAÏ.$ */
	$"2A30 5804 6000 0098 5243 B647 6DC0 6000"            /* *0X.`..òRC∂Gm¿`. */
	$"008E 202E FFF6 B0AA 0064 6646 7E1A 7600"            /* .é .ˇˆ∞™.dfF~.v. */
	$"603A 486E FFFC 3043 2008 E788 41EC 0154"            /* `:Hnˇ¸0C .ÁàAÏ.T */
	$"2F30 0800 3F2E FFFA 4EBA FECE 3800 4FEF"            /* /0..?.ˇ˙N∫˛Œ8.OÔ */
	$"000A 6616 BCAE FFFC 6610 3043 2A08 E78D"            /* ..f.ºÆˇ¸f.0C*.Áç */
	$"41EC 0154 2A30 5804 6044 5243 B647 6DC2"            /* AÏ.T*0X.`DRC∂Gm¬ */
	$"603C 7001 B0AA 0064 6606 3A3C F07C 602E"            /* `<p.∞™.df.:<|`. */
	$"102A 001E 0240 0008 6706 3A3C F077 601E"            /* .*...@..g.:<w`. */
	$"102A 001E 0240 0020 6706 3A3C F076 600E"            /* .*...@. g.:<v`. */
	$"102A 001E 0240 0004 6704 3A3C F074 2F2E"            /* .*...@..g.:<t/. */
	$"000C 2F3C 6630 6C64 3045 2F08 4EBA 0A22"            /* ../<f0ld0E/.N∫." */
	$"2688 4FEF 000C 6704 7800 606C 554F A994"            /* &àOÔ..g.x.`lUO©î */
	$"301F 3D40 FFF4 4267 A998 554F 2F0B 3F05"            /* 0.=@ˇÙBg©òUO/.?. */
	$"2F2E 000C 1F3C 0002 4EBA 02E2 301F 3800"            /* /....<..N∫.‚0.8. */
	$"6720 0C45 F061 671A 3A3C F061 554F 2F0B"            /* g .Eag.:<aUO/. */
	$"3F05 2F2E 000C 1F3C 0002 4EBA 02C0 301F"            /* ?./....<..N∫.¿0. */
	$"3800 3F2E FFF4 A998 4A44 661C 4A93 6718"            /* 8.?.ˇÙ©òJDf.Jìg. */
	$"2F13 2F2E 000C 2F3C 6630 6C64 3045 2F08"            /* /./.../<f0ld0E/. */
	$"4EBA 0A60 4FEF 0010 3004 4CDF 0CF8 4E5E"            /* N∫.`OÔ..0.Lﬂ.¯N^ */
	$"4E75 9647 6574 5F6E 6F72 6D61 6C5F 666F"            /* NuñGet_normal_fo */
	$"6C64 6572 5F69 636F 6E00 0000 4E56 FFBA"            /* lder_icon...NVˇ∫ */
	$"2F03 4A2C 0134 660A 486C 0134 4EBA 042A"            /* /.J,.4f.Hl.4N∫.* */
	$"584F 554F 3F2E 0008 2F2E 000A 486C 0134"            /* XOUO?.../...Hl.4 */
	$"486E FFBA 7001 AA52 301F 3600 6616 2F2E"            /* Hnˇ∫p.™R0.6.f./. */
	$"0012 2F2E 000E 486E FFBA 4EBA FCDC 3600"            /* ../...Hnˇ∫N∫¸‹6. */
	$"4FEF 000C 3003 261F 4E5E 4E75 9647 6574"            /* OÔ..0.&.N^NuñGet */
	$"5F63 7573 746F 6D5F 666F 6C64 6572 5F69"            /* _custom_folder_i */
	$"636F 6E00 0000 4E56 FE32 48E7 1830 266E"            /* con...NV˛2HÁ.0&n */
	$"000A 4293 42AE FF98 3D6E 0008 FF9C 426E"            /* ..BìBÆˇò=n..ˇúBn */
	$"FFA2 41EE FF86 A207 3600 6600 00DA 554F"            /* ˇ¢AÓˇÜ¢.6.f..⁄UO */
	$"3F2E FFCA 486E FE32 4EBA 1342 301F 3600"            /* ?.ˇ Hn˛2N∫.B0.6. */
	$"6600 00C4 554F 486E FE32 486C 012E 1F3C"            /* f..ƒUOHn˛2Hl...< */
	$"0001 4227 4EBA 0B36 101F 672C 554F A994"            /* ..B'N∫.6..g,UO©î */
	$"301F 3800 4267 A998 554F 2F0B 3F3C F062"            /* 0.8.Bg©òUO/.?<b */
	$"4878 FFFF 1F3C 0001 4EBA 0192 301F 3600"            /* Hxˇˇ.<..N∫.í0.6. */
	$"3F04 A998 6000 0080 3D6E FFCA FF4E 3D6E"            /* ?.©ò`..Ä=nˇ ˇN=n */
	$"FFC8 FF4C 45EE FF36 45EA 001C 4292 3D7C"            /* ˇ»ˇLEÓˇ6EÍ..Bí=| */
	$"0016 FF50 41EE FF36 A004 3600 6604 4A92"            /* ..ˇPAÓˇ6†.6.f.Jí */
	$"6E0E 3D7C 0015 FF50 41EE FF36 A004 3600"            /* n.=|..ˇPAÓˇ6†.6. */
	$"4A43 6642 4A92 6F3E 554F 2F0B 303C 0207"            /* JCfBJío>UO/.0<.. */
	$"ABC9 301F 3600 662E 554F 2F12 486E FF32"            /* ´…0.6.f.UO/.Hnˇ2 */
	$"4878 0100 4EBA 0B16 301F 3600 6618 554F"            /* Hx..N∫..0.6.f.UO */
	$"2F2E FF32 2F13 2F3C 4943 4E23 303C 0608"            /* /.ˇ2/./<ICN#0<.. */
	$"ABC9 301F 3600 3003 4CDF 0C18 4E5E 4E75"            /* ´…0.6.0.Lﬂ..N^Nu */
	$"8F47 6574 5F76 6F6C 756D 655F 6963 6F6E"            /* èGet_volume_icon */
	$"0000 4E56 FFFC 48E7 1F20 2A2E 0008 246E"            /* ..NVˇ¸HÁ. *...$n */
	$"000C 383C F060 14BC 0002 203C 6170 7072"            /* ..8<`.º.. <appr */
	$"43EE FFFC A1AD 2288 3E00 6638 7001 C0AE"            /* CÓˇ¸°≠"à>.f8p.¿Æ */
	$"FFFC 6730 7C0B 3606 5343 6022 3043 2008"            /* ˇ¸g0|.6.SC`"0C . */
	$"E788 41EC 0006 BAB0 0800 6610 3043 2808"            /* ÁàAÏ..∫∞..f.0C(. */
	$"E78C 41EC 0006 2830 4804 603A 5343 4A43"            /* ÁåAÏ..(0H.`:SCJC */
	$"6CDA 6032 7C07 3606 5343 6026 3043 2008"            /* l⁄`2|.6.SC`&0C . */
	$"E788 41EC 005E BAB0 0800 6614 3043 2808"            /* ÁàAÏ.^∫∞..f.0C(. */
	$"E78C 41EC 005E 2830 4804 14BC 0001 6006"            /* ÁåAÏ.^(0H..º..`. */
	$"5343 4A43 6CD6 0C44 F060 662E 7C13 3606"            /* SCJCl÷.D`f.|.6. */
	$"5343 6022 3043 2008 E788 41EC 0096 BAB0"            /* SC`"0C .ÁàAÏ.ñ∫∞ */
	$"0800 6610 3043 2808 E78C 41EC 0096 2830"            /* ..f.0C(.ÁåAÏ.ñ(0 */
	$"4804 6006 5343 4A43 6CDA 3004 4CDF 04F8"            /* H.`.SCJCl⁄0.Lﬂ.¯ */
	$"4E5E 4E75 9446 696E 645F 6765 6E65 7269"            /* N^NuîFind_generi */
	$"635F 6963 6F6E 5F69 6400 0000 4E56 FFF2"            /* c_icon_id...NVˇÚ */
	$"48E7 1030 246E 0010 486E FFF6 486E FFF2"            /* HÁ.0$n..HnˇˆHnˇÚ */
	$"2F2E 000A 4EBA 0574 2F0A 303C 0207 ABC9"            /* /...N∫.t/.0<..´… */
	$"301F 3600 4FEF 000A 6600 0086 3D6E 000E"            /* 0.6.OÔ..f..Ü=n.. */
	$"FFFA 1D7C 0001 FFFC 1D7C 0001 FFFD 1D6E"            /* ˇ˙.|..ˇ¸.|..ˇ˝.n */
	$"0008 FFFE 47FA 008E 554F 2F12 2F2E FFF2"            /* ..ˇ˛G˙.éUO/./.ˇÚ */
	$"2F0B 486E FFFA 303C 080A ABC9 301F 3600"            /* /.Hnˇ˙0<..´…0.6. */
	$"662A 4AAE FFF6 6724 4A2E FFFC 671E 4A2E"            /* f*JÆˇˆg$J.ˇ¸g.J. */
	$"FFFD 6718 554F 2F12 2F2E FFF6 2F0B 486E"            /* ˇ˝g.UO/./.ˇˆ/.Hn */
	$"FFFA 303C 080A ABC9 301F 3600 4A43 6620"            /* ˇ˙0<..´…0.6.JCf  */
	$"4A2E FFFC 671A 4A2E FFFD 6714 363C FC18"            /* J.ˇ¸g.J.ˇ˝g.6<¸. */
	$"554F 2F12 4227 303C 0302 ABC9 301F 4292"            /* UO/.B'0<..´…0.Bí */
	$"3F43 002E 4CDF 0C08 4E5E 205F 4FEF 000C"            /* ?C..Lﬂ..N^ _OÔ.. */
	$"4ED0 8F46 495F 4745 5449 434F 4E53 5549"            /* N–èFI_GETICONSUI */
	$"5445 0000 4E56 FFFA 48E7 1F30 262E 0010"            /* TE..NVˇ˙HÁ.0&... */
	$"266E 000C 246E 0008 7800 7A01 7C00 7E01"            /* &n..$n..x.z.|.~. */
	$"0C83 6963 6C38 670A 0C83 6963 6C34 6702"            /* .Éicl8g..Éicl4g. */
	$"7E00 4A47 6708 4A2A 0002 6702 7C01 4A46"            /* ~.JGg.J*..g.|.JF */
	$"6638 426E FFFE 3D7C 0001 FFFC 0C83 6963"            /* f8Bnˇ˛=|..ˇ¸.Éic */
	$"7338 670C 0C83 6963 7334 6704 426E FFFC"            /* s8g..Éics4g.Bnˇ¸ */
	$"4A6E FFFC 670C 4A2A 0003 6706 3D7C 0001"            /* Jnˇ¸g.J*..g.=|.. */
	$"FFFE 4A6E FFFE 6602 7A00 1805 665A 0C2A"            /* ˇ˛Jnˇ˛f.z...fZ.* */
	$"0001 0004 660E 594F 2F03 3F12 A81F 205F"            /* ....f.YO/.?.®. _ */
	$"2688 600C 594F 2F03 3F12 A9A0 205F 2688"            /* &à`.YO/.?.©† _&à */
	$"4A93 6716 554F 2F0B 4EBA 085C 301F 3D40"            /* Jìg.UO/.N∫.\0.=@ */
	$"FFFA 4A6E FFFA 6702 4293 4A93 671A 0C83"            /* ˇ˙Jnˇ˙g.BìJìg..É */
	$"4943 4E23 6606 422A 0002 600C 0C83 6963"            /* ICN#f.B*..`..Éic */
	$"7323 6604 422A 0003 426F 0036 4CDF 0CF8"            /* s#f.B*..Bo.6Lﬂ.¯ */
	$"4E5E 205F 4FEF 000C 4ED0 8A47 4554 5F31"            /* N^ _OÔ..N–äGET_1 */
	$"5F49 434F 4E00 0000 4E56 FEFA 48E7 1820"            /* _ICON...NV˛˙HÁ.  */
	$"246E 0008 422E FF00 554F A994 301F 3800"            /* $n..B.ˇ.UO©î0.8. */
	$"554F 3F3C 8000 2F3C 6D61 6373 4227 486E"            /* UO?<Ä./<macsB'Hn */
	$"FEFE 486E FEFA 7000 A823 301F 4227 A99B"            /* ˛˛Hn˛˙p.®#0.B'©õ */
	$"554F 3F2E FEFE 2F2E FEFA 4878 02E0 1F3C"            /* UO?.˛˛/.˛˙Hx.‡.< */
	$"0001 A81A 301F 3600 1F3C 0001 A99B 0C43"            /* ..®.0.6..<..©õ.C */
	$"FFFF 672A 486E FF00 2F3C 0005 2BF2 4EBA"            /* ˇˇg*Hnˇ./<..+ÚN∫ */
	$"07D8 4A2E FF00 660E 486E FF00 2F3C 0005"            /* .ÿJ.ˇ.f.Hnˇ./<.. */
	$"1194 4EBA 07C4 3F03 A99A 3F04 A998 0C2E"            /* .îN∫.ƒ?.©ö?.©ò.. */
	$"0020 FF00 641A 4A2E FF00 6714 41EE FF00"            /* . ˇ.d.J.ˇ.g.AÓˇ. */
	$"224A 7000 102E FF00 5240 48C0 A22E 600A"            /* "Jp...ˇ.R@H¿¢.`. */
	$"41EC 0000 224A 7006 A22E 4CDF 0418 4E5E"            /* AÏ.."Jp.¢.Lﬂ..N^ */
	$"4E75 9247 6574 5F69 636F 6E5F 6669 6C65"            /* NuíGet_icon_file */
	$"5F6E 616D 6500 0000 4E56 FF86 2F04 2F03"            /* _name...NVˇÜ/./. */
	$"42AE FF98 3D6E 0008 FF9C 426E FFA2 41EE"            /* BÆˇò=n..ˇúBnˇ¢AÓ */
	$"FF86 A207 3800 7600 4A44 6608 4A6E FFCA"            /* ˇÜ¢.8.v.JDf.Jnˇ  */
	$"6F02 7601 1003 261F 281F 4E5E 4E75 8E49"            /* o.v...&.(.N^NuéI */
	$"735F 766F 6C5F 656A 6563 7465 6400 0000"            /* s_vol_ejected... */
	$"4E56 FFBA 2F03 41EE FFBA 2D48 FFEE 7014"            /* NVˇ∫/.AÓˇ∫-HˇÓp. */
	$"2D40 FFF2 3D6E 0008 FFE4 42AE FFE0 41EE"            /* -@ˇÚ=n..ˇ‰BÆˇ‡AÓ */
	$"FFCE 7030 A260 4AAE FFC4 57C0 4400 1600"            /* ˇŒp0¢`JÆˇƒW¿D... */
	$"1003 261F 4E5E 4E75 8F49 735F 6C6F 6361"            /* ..&.N^NuèIs_loca */
	$"6C5F 766F 6C75 6D65 0000 4E56 0000 2F03"            /* l_volume..NV../. */
	$"202E 0008 0480 4943 4E23 6722 0480 2020"            /*  ....ÄICN#g".Ä   */
	$"1E11 671E 5980 671E 0480 0000 06EB 671A"            /* ..g.YÄg..Ä...Îg. */
	$"0480 0000 0011 6716 5980 6716 6018 7601"            /* .Ä....g.YÄg.`.v. */
	$"6016 7602 6012 7603 600E 7604 600A 7605"            /* `.v.`.v.`.v.`.v. */
	$"6006 7606 6002 7600 3003 261F 4E5E 4E75"            /* `.v.`.v.0.&.N^Nu */
	$"8F52 6573 4963 6F6E 546F 4454 4963 6F6E"            /* èResIconToDTIcon */
	$"0000 4E56 FFF8 48E7 1F20 282E 0010 246E"            /* ..NVˇ¯HÁ. (...$n */
	$"0008 7600 7A00 7E01 426E FFFE 3D7C 0001"            /* ..v.z.~.Bnˇ˛=|.. */
	$"FFFC 0C84 6963 6C38 670C 0C84 6963 6C34"            /* ˇ¸.Ñicl8g..Ñicl4 */
	$"6704 426E FFFC 4A6E FFFC 670C 4A2A 000A"            /* g.Bnˇ¸Jnˇ¸g.J*.. */
	$"6706 3D7C 0001 FFFE 4A6E FFFE 6638 426E"            /* g.=|..ˇ˛Jnˇ˛f8Bn */
	$"FFFA 3D7C 0001 FFF8 0C84 6963 7338 670C"            /* ˇ˙=|..ˇ¯.Ñics8g. */
	$"0C84 6963 7334 6704 426E FFF8 4A6E FFF8"            /* .Ñics4g.Bnˇ¯Jnˇ¯ */
	$"670C 4A2A 000B 6706 3D7C 0001 FFFA 4A6E"            /* g.J*..g.=|..ˇ˙Jn */
	$"FFFA 6602 7E00 1A07 2F04 4EBA FF0E 3C00"            /* ˇ˙f.~.../.N∫ˇ.<. */
	$"57C0 4400 4880 8A00 584F 6646 554F 42A7"            /* W¿D.HÄä.XOfFUOBß */
	$"3F2A 0008 3F06 2F12 2F2A 0004 2F2E 000C"            /* ?*..?././*...... */
	$"4EBA 0AF0 301F 3600 661A 0C84 4943 4E23"            /* N∫.0.6.f..ÑICN# */
	$"6606 422A 000A 600C 0C84 6963 7323 6604"            /* f.B*..`..Ñics#f. */
	$"422A 000B 0C43 EC6C 6706 0C43 FFCE 6602"            /* B*...CÏlg..CˇŒf. */
	$"7600 3F43 0034 4CDF 04F8 4E5E 205F 4FEF"            /* v.?C.4Lﬂ.¯N^ _OÔ */
	$"000C 4ED0 8C41 4444 4F4E 4544 5449 434F"            /* ..N–åADDONEDTICO */
	$"4E00 0000 4E56 FFEC 48E7 1030 266E 0008"            /* N...NVˇÏHÁ.0&n.. */
	$"486E FFF0 486E FFEC 2F2E 0014 4EBA 00DC"            /* HnˇHnˇÏ/...N∫.‹ */
	$"02AE FF00 FFFF FFEC 02AE FF00 FFFF FFF0"            /* .Æˇ.ˇˇˇÏ.Æˇ.ˇˇˇ */
	$"2F0B 303C 0207 ABC9 301F 3600 4FEF 000A"            /* /.0<..´…0.6.OÔ.. */
	$"6600 0094 45FA FEBC 200A 6604 7694 6062"            /* f..îE˙˛º .f.vî`b */
	$"1D7C 0001 FFFE 1D7C 0001 FFFF 2D6E 0010"            /* .|..ˇ˛.|..ˇˇ-n.. */
	$"FFF4 2D6E 000C FFF8 3D6E 0018 FFFC 554F"            /* ˇÙ-n..ˇ¯=n..ˇ¸UO */
	$"2F13 2F2E FFEC 2F0A 486E FFF4 303C 080A"            /* /./.ˇÏ/.HnˇÙ0<.. */
	$"ABC9 301F 3600 662A 4AAE FFF0 6724 4A2E"            /* ´…0.6.f*JÆˇg$J. */
	$"FFFE 671E 4A2E FFFF 6718 554F 2F13 2F2E"            /* ˇ˛g.J.ˇˇg.UO/./. */
	$"FFF0 2F0A 486E FFF4 303C 080A ABC9 301F"            /* ˇ/.HnˇÙ0<..´…0. */
	$"3600 4A43 6620 4A2E FFFE 671A 4A2E FFFF"            /* 6.JCf J.ˇ˛g.J.ˇˇ */
	$"6714 363C FC18 554F 2F13 4227 303C 0302"            /* g.6<¸.UO/.B'0<.. */
	$"ABC9 301F 4293 3F43 003A 4CDF 0C08 4E5E"            /* ´…0.Bì?C.:Lﬂ..N^ */
	$"205F 4FEF 0012 4ED0 8E44 5447 4554 4943"            /*  _OÔ..N–éDTGETIC */
	$"4F4E 5355 4954 4500 0000 4E56 0000 202E"            /* ONSUITE...NV.. . */
	$"0008 226E 000C 206E 0010 0C80 8000 FF00"            /* .."n.. n...ÄÄ.ˇ. */
	$"660E 22BC 0000 FF00 20BC 0000 00FF 6030"            /* f."º..ˇ. º...ˇ`0 */
	$"0C80 8000 00FF 660E 22BC 0000 00FF 20BC"            /* .ÄÄ..ˇf."º...ˇ º */
	$"0000 FF00 601A 0C80 8000 0400 660E 22BC"            /* ..ˇ.`..ÄÄ...f."º */
	$"0000 0500 20BC 0000 00FF 6004 2280 4290"            /* .... º...ˇ`."ÄBê */
	$"4E5E 4E75 9245 7870 616E 644D 6574 6153"            /* N^NuíExpandMetaS */
	$"656C 6563 746F 7200 0000 4E56 0000 7400"            /* elector...NV..t. */
	$"6052 7014 C1C2 41EC 0250 42B0 0800 7014"            /* `Rp.¡¬AÏ.PB∞..p. */
	$"C1C2 41EC 0250 42B0 0804 7014 C1C2 41EC"            /* ¡¬AÏ.PB∞..p.¡¬AÏ */
	$"0250 42B0 0808 7014 C1C2 41EC 0250 42B0"            /* .PB∞..p.¡¬AÏ.PB∞ */
	$"080C 3002 5340 7214 C3C2 41EC 0250 3180"            /* ..0.S@r.√¬AÏ.P1Ä */
	$"1810 3002 5240 7214 C3C2 41EC 0250 3180"            /* ..0.R@r.√¬AÏ.P1Ä */
	$"1812 5242 0C42 0014 6DA8 397C 0013 024C"            /* ..RB.B..m®9|...L */
	$"4E5E 4E75 8B46 4949 6E69 7443 6163 6865"            /* N^NuãFIInitCache */
	$"0000 4E56 0000 2F03 362E 0008 B66C 024E"            /* ..NV../.6...∂l.N */
	$"6776 7014 C1C3 41EC 0250 7214 C3C3 43EC"            /* gvp.¡√AÏ.Pr.√√CÏ */
	$"0250 7414 C5F1 1810 43EC 0250 33B0 0812"            /* .Pt.≈Ò..CÏ.P3∞.. */
	$"2812 B66C 024C 6610 7014 C1C3 41EC 0250"            /* (.∂l.Lf.p.¡√AÏ.P */
	$"3970 0810 024C 6020 7014 C1C3 41EC 0250"            /* 9p...L` p.¡√AÏ.P */
	$"7214 C3C3 43EC 0250 7414 C5F1 1812 43EC"            /* r.√√CÏ.Pt.≈Ò..CÏ */
	$"0250 33B0 0810 2810 7014 C1C3 41EC 0250"            /* .P3∞..(.p.¡√AÏ.P */
	$"31AC 024E 0812 7014 C1EC 024E 41EC 0250"            /* 1¨.N..p.¡Ï.NAÏ.P */
	$"3183 0810 3943 024E 261F 4E5E 4E75 8F46"            /* 1É..9C.N&.N^NuèF */
	$"494D 616B 6543 656C 6C46 6972 7374 0000"            /* IMakeCellFirst.. */
	$"4E56 FFFC 48E7 1E00 2C2E 0008 2A2E 000C"            /* NVˇ¸HÁ..,...*... */
	$"282E 0010 42AE FFFC 302C 024C B06C 024E"            /* (...BÆˇ¸0,.L∞l.N */
	$"6604 4EBA FEC6 362C 024E 7014 C1C3 41EC"            /* f.N∫˛∆6,.Np.¡√AÏ */
	$"0250 BCB0 0800 662C 7014 C1C3 41EC 0250"            /* .Pº∞..f,p.¡√AÏ.P */
	$"BAB0 0804 661E 7014 C1C3 41EC 0250 B8B0"            /* ∫∞..f.p.¡√AÏ.P∏∞ */
	$"0808 6610 7014 C1C3 41EC 0250 2D70 080C"            /* ..f.p.¡√AÏ.P-p.. */
	$"FFFC 6014 B66C 024C 670E 7014 C1C3 41EC"            /* ˇ¸`.∂l.Lg.p.¡√AÏ */
	$"0250 3630 0812 60B2 4AAE FFFC 6716 4A84"            /* .P60..`≤JÆˇ¸g.JÑ */
	$"670A 486E FFFC 4EBA 018C 584F 3F03 4EBA"            /* g.Hnˇ¸N∫.åXO?.N∫ */
	$"FED2 544F 206E FFFC 4CDF 0078 4E5E 4E75"            /* ˛“TO nˇ¸Lﬂ.xN^Nu */
	$"8F46 495F 6361 6368 655F 7365 6172 6368"            /* èFI_cache_search */
	$"0000 4E56 0000 2F04 2F03 282E 0010 302C"            /* ..NV.././.(...0, */
	$"024C B06C 024E 6604 4EBA FE20 4A84 670E"            /* .L∞l.Nf.N∫˛ JÑg. */
	$"486E 0014 4EBA 013E 3600 584F 6002 7600"            /* Hn..N∫.>6.XO`.v. */
	$"4A43 6600 0086 7014 C1EC 024C 41EC 0250"            /* JCf..Üp.¡Ï.LAÏ.P */
	$"4AB0 080C 672C 7014 C1EC 024C 41EC 0250"            /* J∞..g,p.¡Ï.LAÏ.P */
	$"4AB0 0808 671C 554F 7014 C1EC 024C 41EC"            /* J∞..g.UOp.¡Ï.LAÏ */
	$"0250 2F30 080C 1F3C 0001 303C 0302 ABC9"            /* .P/0...<..0<..´… */
	$"301F 7014 C1EC 024C 41EC 0250 21AE 0014"            /* 0.p.¡Ï.LAÏ.P!Æ.. */
	$"080C 7014 C1EC 024C 41EC 0250 21AE 0008"            /* ..p.¡Ï.LAÏ.P!Æ.. */
	$"0800 7014 C1EC 024C 41EC 0250 21AE 000C"            /* ..p.¡Ï.LAÏ.P!Æ.. */
	$"0804 7014 C1EC 024C 41EC 0250 2184 0808"            /* ..p.¡Ï.LAÏ.P!Ñ.. */
	$"3F2C 024C 4EBA FDFC 544F 261F 281F 4E5E"            /* ?,.LN∫˝¸TO&.(.N^ */
	$"4E75 9146 495F 7374 6F72 655F 696E 5F63"            /* NuëFI_store_in_c */
	$"6163 6865 0000 4E56 0000 2F0A 2F03 246E"            /* ache..NV.././.$n */
	$"000C 4A92 671A 2052 4A90 6604 2F12 A9A2"            /* ..Jíg. RJêf./.©¢ */
	$"554F 2F0A 4EBA 0120 301F 3600 6702 4292"            /* UO/.N∫. 0.6.g.Bí */
	$"426F 001C 261F 245F 4E5E 205F 4FEF 000C"            /* Bo..&.$_N^ _OÔ.. */
	$"4ED0 8D43 4F50 595F 4F4E 455F 4943 4F4E"            /* N–çCOPY_ONE_ICON */
	$"0000 4E56 0000 2F0A 2F03 45FA FFAA 554F"            /* ..NV.././.E˙ˇ™UO */
	$"2F2E 0008 4878 FFFF 2F0A 42A7 303C 080A"            /* /...Hxˇˇ/.Bß0<.. */
	$"ABC9 301F 3600 3003 261F 245F 4E5E 4E75"            /* ´…0.6.0.&.$_N^Nu */
	$"9146 495F 636F 7079 5F65 6163 685F 6963"            /* ëFI_copy_each_ic */
	$"6F6E 0000 4E56 0000 2F0A 2F03 246E 0008"            /* on..NV.././.$n.. */
	$"554F 2F0A 4EBA 00A0 301F 3600 6620 2F12"            /* UO/.N∫.†0.6.f /. */
	$"4EBA FFA0 3600 584F 6716 554F 2F12 1F3C"            /* N∫ˇ†6.XOg.UO/..< */
	$"0001 303C 0302 ABC9 301F 4292 6002 4292"            /* ..0<..´…0.Bí`.Bí */
	$"3003 261F 245F 4E5E 4E75 8E46 495F 636C"            /* 0.&.$_N^NuéFI_cl */
	$"6F6E 655F 7375 6974 6500 0000 206F 000C"            /* one_suite... o.. */
	$"226F 0008 7000 1018 4840 1019 4A2F 0004"            /* "o..p...H@..J/.. */
	$"670E 4A2F 0006 6704 A43C 6010 A03C 600C"            /* g.J/..g.§<`.†<`. */
	$"4A2F 0006 6704 A63C 6002 A23C 0A00 0001"            /* J/..g.¶<`.¢<.... */
	$"1F40 0010 205F 4FEF 000C 4ED0 205F 301F"            /* .@.. _OÔ..N– _0. */
	$"4297 4640 B078 01D2 640A E548 2278 011C"            /* BóF@∞x.“d.ÂH"x.. */
	$"2EB1 0000 4ED0 206F 0004 2050 A9E1 226F"            /* .±..N– o.. P©·"o */
	$"0004 2288 3F40 0008 2E9F 4E75 206F 000C"            /* .."à?@...üNu o.. */
	$"202F 0004 A9E3 3F40 0010 226F 0008 2288"            /*  /..©„?@.."o.."à */
	$"205F 4FEF 000C 4ED0 4E56 0000 594F 2F3C"            /*  _OÔ..N–NV..YO/< */
	$"5354 5223 3F2E 000A A9A0 226E 000C 4211"            /* STR#?...©†"n..B. */
	$"201F 6722 2040 2050 3018 322E 0008 6716"            /*  .g" @ P0.2...g. */
	$"B240 6212 7000 5341 6706 1018 D1C0 60F6"            /* ≤@b.p.SAg...—¿`ˆ */
	$"1010 5240 A02E 4E5E 205F 508F 4ED0 4E56"            /* ..R@†.N^ _PèN–NV */
	$"FF86 48E7 1C00 2D6E 000A FF98 3D6E 0008"            /* ˇÜHÁ..-n..ˇò=n.. */
	$"FF9C 422E FFA0 7801 7A00 7002 2D40 FFB6"            /* ˇúB.ˇ†x.z.p.-@ˇ∂ */
	$"3D44 FFA2 41EE FF86 A20C 3600 6616 0CAE"            /* =Dˇ¢AÓˇÜ¢.6.f..Æ */
	$"464E 4452 FFA6 660C 0CAE 4552 494B FFAA"            /* FNDRˇ¶f..ÆERIKˇ™ */
	$"6602 7A01 5244 4A43 6604 4A05 67CC 3003"            /* f.z.RDJCf.J.gÃ0. */
	$"4CDF 0038 4E5E 4E75 9247 6574 4465 736B"            /* Lﬂ.8N^NuíGetDesk */
	$"746F 7046 696C 654E 616D 6500 0000 4E56"            /* topFileName...NV */
	$"FF80 48E7 1C30 266E 0012 382E 0010 2A2E"            /* ˇÄHÁ.0&n..8...*. */
	$"000C 246E 0008 7014 2D40 FF80 554F 2F0B"            /* ..$n..p.-@ˇÄUO/. */
	$"3F04 486E FF84 486E FF80 4EBA 0566 301F"            /* ?.HnˇÑHnˇÄN∫.f0. */
	$"3600 6648 202E FF86 0280 0000 1000 673A"            /* 6.fH .ˇÜ.Ä....g: */
	$"2D4B FFAA 3D44 FFAE 41EE FF98 702E A060"            /* -Kˇ™=DˇÆAÓˇòp.†` */
	$"3600 7001 C0AE FFB4 4A80 57C0 4400 1480"            /* 6.p.¿Æˇ¥JÄW¿D..Ä */
	$"0C43 FFCE 660C 41EE FF98 7020 A260 3600"            /* .CˇŒf.AÓˇòp ¢`6. */
	$"4212 2045 30AE FFB0 6002 76CE 3F43 00AA"            /* B. E0Æˇ∞`.vŒ?C.™ */
	$"4CDF 0C38 4E5E 205F 4FEF 000E 4ED0 8644"            /* Lﬂ.8N^ _OÔ..N–ÜD */
	$"544F 5045 4E00 0000 4E56 0000 48E7 1E30"            /* TOPEN...NV..HÁ.0 */
	$"2C2E 0008 266E 000C 383C EC6C 554F 2F3C"            /* ,...&n..8<ÏlUO/< */
	$"424E 444C A80D 301F 3A00 7601 4293 6030"            /* BNDL®.0.:.v.Bì`0 */
	$"594F 2F3C 424E 444C 3F03 A80E 205F 2448"            /* YO/<BNDL?.®. _$H */
	$"200A 671A 2052 BC90 6614 2052 4A68 0006"            /*  .g. Rºêf. RJh.. */
	$"6D0C 2052 4A68 000C 6D04 268A 7800 5243"            /* m. RJh..m.&äx.RC */
	$"B645 6E04 4A93 67C8 3004 4CDF 0C78 4E5E"            /* ∂En.Jìg»0.Lﬂ.xN^ */
	$"4E75 9646 696E 6442 756E 646C 6547 6976"            /* NuñFindBundleGiv */
	$"656E 4372 6561 746F 7200 0000 4E56 0000"            /* enCreator...NV.. */
	$"48E7 0610 2C2E 0008 2A2E 000C 266E 0010"            /* HÁ..,...*...&n.. */
	$"343C EC6C 2245 2251 5089 7200 4293 6020"            /* 4<Ïl"E"QPâr.Bì`  */
	$"BC91 660C 4A69 0004 6D06 2689 7400 6010"            /* ºëf.Ji..m.&ât.`. */
	$"3029 0004 5240 48C0 E588 5C80 D3C0 5241"            /* 0)..R@H¿Âà\Ä”¿RA */
	$"2045 2050 3028 0006 5240 B240 6C04 4A93"            /*  E P0(..R@≤@l.Jì */
	$"67CE 3002 4CDF 0860 4E5E 4E75 9046 696E"            /* gŒ0.Lﬂ.`N^NuêFin */
	$"6454 7970 6549 6E42 756E 646C 6500 0000"            /* dTypeInBundle... */
	$"4E56 0000 48E7 1F30 2C2E 0008 2E2E 000C"            /* NV..HÁ.0,....... */
	$"262E 0010 3A3C EC6C 7800 2646 5C8B 2043"            /* &...:<Ïlx.&F\ã C */
	$"4250 602A 594F 2F3C 4652 4546 3F2B 0002"            /* BP`*YO/<FREF?+.. */
	$"A81F 205F 2448 200A 6710 2052 BE90 660A"            /* ®. _$H .g. Ræêf. */
	$"2052 2243 32A8 0004 7A00 588B 5244 2046"            /*  R"C2®..z.XãRD F */
	$"B868 0004 6E06 2043 4A50 67C8 3005 4CDF"            /* ∏h..n. CJPg»0.Lﬂ */
	$"0CF8 4E5E 4E75 9247 6574 4C6F 6361 6C49"            /* .¯N^NuíGetLocalI */
	$"4446 726F 6D46 5245 4600 0000 4E56 0000"            /* DFromFREF...NV.. */
	$"2F0B 2F06 242E 0008 3C2E 000C 266E 000E"            /* /./.$...<...&n.. */
	$"323C EC6C 7000 2242 5C89 4253 600E BC51"            /* 2<Ïlp."B\âBS`.ºQ */
	$"6606 36A9 0002 7200 5889 5240 2042 B068"            /* f.6©..r.XâR@ B∞h */
	$"0004 6E04 4A53 67E6 3001 2C1F 265F 4E5E"            /* ..n.JSgÊ0.,.&_N^ */
	$"4E75 9847 6574 4963 6F6E 5273 7263 4944"            /* NuòGetIconRsrcID */
	$"4672 6F6D 4C6F 6361 6C49 4400 0000 4E56"            /* FromLocalID...NV */
	$"0000 2F03 302E 0008 0C40 0006 6248 D040"            /* ../.0....@..bH–@ */
	$"303B 0006 4EFB 0002 003E 000E 0016 001E"            /* 0;..N˚...>...... */
	$"0026 002E 0036 263C 4943 4E23 602A 263C"            /* .&...6&<ICN#`*&< */
	$"6963 6C34 6022 263C 6963 6C38 601A 263C"            /* icl4`"&<icl8`.&< */
	$"6963 7323 6012 263C 6963 7334 600A 263C"            /* ics#`.&<ics4`.&< */
	$"6963 7338 6002 7600 2003 261F 4E5E 4E75"            /* ics8`.v. .&.N^Nu */
	$"8F44 5449 636F 6E54 6F52 6573 4963 6F6E"            /* èDTIconToResIcon */
	$"0000 4E56 FEEE 48E7 1F20 246E 0018 42AE"            /* ..NV˛ÓHÁ. $n..BÆ */
	$"FFFC 4292 554F 2F2E 0008 3F2E 000C 486E"            /* ˇ¸BíUO/...?...Hn */
	$"FFF2 4EBA 035E 301F 3600 6600 0142 486E"            /* ˇÚN∫.^0.6.f..BHn */
	$"FEF2 3F2E FFF2 4EBA FC76 3600 5C4F 6600"            /* ˛Ú?.ˇÚN∫¸v6.\Of. */
	$"0120 554F A994 301F 3C00 4227 A99B 554F"            /* . UO©î0.<.B'©õUO */
	$"3F2E FFF2 4878 0002 486E FEF2 1F3C 0001"            /* ?.ˇÚHx..Hn˛Ú.<.. */
	$"A81A 301F 3800 1F3C 0001 A99B 0C44 FFFF"            /* ®.0.8..<..©õ.Dˇˇ */
	$"6700 00E6 486E FFFC 2F2E 0010 4EBA FD3A"            /* g..ÊHnˇ¸/...N∫˝: */
	$"3600 504F 6600 00C8 206E FFFC A069 1E00"            /* 6.POf..» nˇ¸†i.. */
	$"206E FFFC A029 486E FFF8 2F2E FFFC 2F3C"            /*  nˇ¸†)Hnˇ¯/.ˇ¸/< */
	$"4652 4546 4EBA FD96 3600 4FEF 000C 6600"            /* FREFN∫˝ñ6.OÔ..f. */
	$"0096 486E FEF0 2F2E 0014 2F2E FFF8 4EBA"            /* .ñHn˛/.../.ˇ¯N∫ */
	$"FDF0 3600 4FEF 000C 667C 486E FFF8 2F2E"            /* ˝6.OÔ..f|Hnˇ¯/. */
	$"FFFC 2F3C 4943 4E23 4EBA FD62 3600 4FEF"            /* ˇ¸/<ICN#N∫˝b6.OÔ */
	$"000C 6662 486E FEEE 3F2E FEF0 2F2E FFF8"            /* ..fbHn˛Ó?.˛/.ˇ¯ */
	$"4EBA FE3A 3600 4FEF 000A 664A 3F2E 000E"            /* N∫˛:6.OÔ..fJ?... */
	$"4EBA FE8C 2A00 544F 673C 594F 2F05 3F2E"            /* N∫˛å*.TOg<YO/.?. */
	$"FEEE A81F 205F 2D48 FFF4 4AAE FFF4 6722"            /* ˛Ó®. _-HˇÙJÆˇÙg" */
	$"554F 486E FFF4 4EBA FB0E 301F 554F 3EB8"            /* UOHnˇÙN∫˚.0.UO>∏ */
	$"0220 301F 6606 24AE FFF4 600A 363C EC6C"            /* . 0.f.$ÆˇÙ`.6<Ïl */
	$"6004 363C EC6C 206E FFFC 1007 A06A 3F06"            /* `.6<Ïl nˇ¸..†j?. */
	$"A998 3F04 A99A 6008 554F A9AF 301F 3600"            /* ©ò?.©ö`.UO©Ø0.6. */
	$"4A43 670A 0C43 FF94 6704 363C EC6C 3003"            /* JCg..Cˇîg.6<Ïl0. */
	$"4CDF 04F8 4E5E 4E75 9647 6574 4963 6F6E"            /* Lﬂ.¯N^NuñGetIcon */
	$"4672 6F6D 4465 736B 746F 7046 696C 6500"            /* FromDesktopFile. */
	$"0000 4E56 FF94 48E7 1F30 266E 0018 3A2E"            /* ..NVˇîHÁ.0&n..:. */
	$"0014 2E2E 0010 2C2E 000C 246E 0008 4292"            /* ......,...$n..Bí */
	$"554F 2F0B 3F2E 0016 486E FF96 486E FF95"            /* UO/.?...HnˇñHnˇï */
	$"4EBA FB5C 301F 3800 6600 00B2 4A2E FF95"            /* N∫˚\0.8.f..≤J.ˇï */
	$"6600 00A4 3005 0C40 0006 6244 D040 303B"            /* f..§0..@..bD–@0; */
	$"0006 4EFB 0002 003A 000E 0016 001E 0026"            /* ..N˚...:.......& */
	$"002A 0032 263C 0000 0100 6028 263C 0000"            /* .*.2&<....`(&<.. */
	$"0200 6020 263C 0000 0400 6018 7640 6014"            /* ..` &<....`.v@`. */
	$"263C 0000 0080 600C 263C 0000 0100 6004"            /* &<...Ä`.&<....`. */
	$"7A00 7600 4A83 674A 2003 A122 2488 673E"            /* z.v.JÉgJ .°"$àg> */
	$"2052 A029 3D6E FF96 FFB0 42AE FFB4 2052"            /*  R†)=nˇñˇ∞BÆˇ¥ R */
	$"2D50 FFB8 2D43 FFBC 1D45 FFC5 2D47 FFCC"            /* -Pˇ∏-Cˇº.Eˇ≈-GˇÃ */
	$"2D46 FFD0 41EE FF98 7023 A260 3800 2052"            /* -Fˇ–AÓˇòp#¢`8. R */
	$"A02A 4A44 672E 2052 A023 4292 6026 7894"            /* †*JDg. R†#Bí`&xî */
	$"6022 78CE 601E 383C EC6C 6018 2F0A 2F06"            /* `"xŒ`.8<Ïl`././. */
	$"2F07 3F05 3F2E 0016 2F0B 4EBA FD76 3800"            /* /.?.?.../.N∫˝v8. */
	$"4FEF 0014 3F44 00A4 4CDF 0CF8 4E5E 205F"            /* OÔ..?D.§Lﬂ.¯N^ _ */
	$"4FEF 0014 4ED0 8944 5447 4554 4943 4F4E"            /* OÔ..N–âDTGETICON */
	$"0000 4E56 FF86 2F0A 2F03 246E 0008 2D6E"            /* ..NVˇÜ/./.$n..-n */
	$"0012 FF98 3D6E 0010 FF9C 2D6E 000C FFA6"            /* ..ˇò=n..ˇú-n..ˇ¶ */
	$"2D52 FFAA 41EE FF86 7030 A260 3600 6604"            /* -Rˇ™AÓˇÜp0¢`6.f. */
	$"24AE FFAE 3F43 0098 261F 245F 4E5E 205F"            /* $ÆˇÆ?C.ò&.$_N^ _ */
	$"4FEF 000E 4ED0 8C48 4745 5456 4F4C 5041"            /* OÔ..N–åHGETVOLPA */
	$"524D 5300 0000 4E56 FF00 48E7 1030 266E"            /* RMS...NVˇ.HÁ.0&n */
	$"000E 246E 0008 200A 673E 356E 000C 0016"            /* ..$n.. .g>5n.... */
	$"200B 660A 42AA 0012 426A 001C 601E 204B"            /*  .f.B™..Bj..`. K */
	$"43EE FF00 7000 1013 5240 48C0 A22E 41EE"            /* CÓˇ.p...R@H¿¢.AÓ */
	$"FF00 2548 0012 357C FFFF 001C 204A A207"            /* ˇ.%H..5|ˇˇ.. J¢. */
	$"3600 42AA 0012 6002 76CE 3F43 011E 4CDF"            /* 6.B™..`.vŒ?C..Lﬂ */
	$"0C08 4E5E 205F 4FEF 000A 4ED0 9347 4554"            /* ..N^ _OÔ..N–ìGET */
	$"564F 4C55 4D45 494E 464F 4E4F 4E41 4D45"            /* VOLUMEINFONONAME */
	$"0000 4E56 FF86 2F03 554F 2F2E 000E 3F2E"            /* ..NVˇÜ/.UO/...?. */
	$"000C 486E FF86 4EBA FF6E 301F 3600 6608"            /* ..HnˇÜN∫ˇn0.6.f. */
	$"206E 0008 30AE FF9C 3F43 0090 261F 4E5E"            /*  n..0Æˇú?C.ê&.N^ */
	$"205F 4FEF 000A 4ED0 9044 4554 4552 4D49"            /*  _OÔ..N–êDETERMI */
	$"4E45 5652 4546 4E55 4D00 0000 4E56 0000"            /* NEVREFNUM...NV.. */
	$"48E7 1830 282E 0008 594F 3F2E 000C 4EBA"            /* HÁ.0(...YO?...N∫ */
	$"F83C 205F 2448 200A 672E 2052 3028 0004"            /* ¯< _$H .g. R0(.. */
	$"0240 0040 6708 2052 2050 2650 6004 2052"            /* .@.@g. R P&P`. R */
	$"2650 41EB 0012 2244 7000 102B 0012 5240"            /* &PAÎ.."Dp..+..R@ */
	$"48C0 A22E 7600 6006 2044 4210 76EB 3F43"            /* H¿¢.v.`. DB.vÎ?C */
	$"001E 4CDF 0C18 4E5E 205F 5C4F 4ED0 8D47"            /* ..Lﬂ..N^ _\ON–çG */
	$"4554 4452 4956 4552 4E41 4D45 0000 0549"            /* ETDRIVERNAME...I */
	$"636F 6E0D 6966 696C FFFF F11F 6666 696C"            /* con.ifilˇˇÒ.ffil */
	$"FFFF F121 7366 696C FFFF F11E 7466 696C"            /* ˇˇÒ!sfilˇˇÒ.tfil */
	$"FFFF F120 4646 494C FFFF F124 4446 494C"            /* ˇˇÒ FFILˇˇÒ$DFIL */
	$"FFFF F123 6B66 696C FFFF F122 636C 7073"            /* ˇˇÒ#kfilˇˇÒ"clps */
	$"FFFF F125 636C 7070 FFFF F127 636C 7074"            /* ˇˇÒ%clppˇˇÒ'clpt */
	$"FFFF F126 636C 7075 FFFF F128 6966 696C"            /* ˇˇÒ&clpuˇˇÒ(ifil */
	$"0000 30D4 6666 696C 0000 38A4 7366 696C"            /* ..0‘ffil..8§sfil */
	$"0000 36B0 7466 696C 0000 38A5 4646 494C"            /* ..6∞tfil..8•FFIL */
	$"0000 3C8C 4446 494C 0000 3D86 6B66 696C"            /* ..<åDFIL..=Ükfil */
	$"0000 399E 6664 7270 FFFF F061 7472 7368"            /* ..9ûfdrpˇˇatrsh */
	$"FFFF F067 6661 7379 FFFF F071 494E 4954"            /* ˇˇgfasyˇˇqINIT */
	$"FFFF BFE1 4150 504C FFFF F064 6466 696C"            /* ˇˇø·APPLˇˇddfil */
	$"FFFF F069 7072 6566 FFFF F07D 6661 616D"            /* ˇˇiprefˇˇ}faam */
	$"FFFF F072 6661 6374 FFFF F078 6661 6578"            /* ˇˇrfactˇˇxfaex */
	$"FFFF F07B 6661 7066 FFFF F07A 6661 7374"            /* ˇˇ{fapfˇˇzfast */
	$"FFFF F073 6164 7270 FFFF F064 6661 6574"            /* ˇˇsadrpˇˇdfaet */
	$"FFFF F074 6661 6472 FFFF F075 6661 7368"            /* ˇˇtfadrˇˇufash */
	$"FFFF F076 6661 6D6E FFFF F077 7468 6E67"            /* ˇˇvfamnˇˇwthng */
	$"FFFF BFE1 7368 6C62 FFFF F081 052E 536F"            /* ˇˇø·shlbˇˇÅ..So */
	$"6E79 0000 0000 0000 0000 0000 0000 0000"            /* ny.............. */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 6578 746E FFFF F07B 6374 726C FFFF"            /* ..extnˇˇ{ctrlˇˇ */
	$"F078 666F 6E74 FFFF F080 7072 6566 FFFF"            /* xfontˇˇÄprefˇˇ */
	$"F07A 616D 6E75 FFFF F072 7072 6E74 FFFF"            /* zamnuˇˇrprntˇˇ */
	$"F079 7374 7274 FFFF F073 7368 6466 FFFF"            /* ystrtˇˇsshdfˇˇ */
	$"F073 7364 6576 FFFF F086 C473 6372 FFFF"            /* ssdevˇˇÜƒscrˇˇ */
	$"F089 C46E 6574 FFFF F08A C470 7264 FFFF"            /* âƒnetˇˇäƒprdˇˇ */
	$"F08E 7070 6466 FFFF F08F 6374 7244 FFFF"            /* éppdfˇˇèctrDˇˇ */
	$"F091 6578 7444 FFFF F092 7374 7244 FFFF"            /* ëextDˇˇístrDˇˇ */
	$"F093 636D 6E75 FFFF F09A 7368 6444 FFFF"            /* ìcmnuˇˇöshdDˇˇ */
	$"F094 6173 7570 FFFF F098 6D61 6344 FFFF"            /* îasupˇˇòmacDˇˇ */
	$"F095 636D 6E75 FFFF F09A C476 6F63 FFFF"            /* ïcmnuˇˇöƒvocˇˇ */
	$"F090 C474 6578 FFFF F08D C46C 6962 FFFF"            /* êƒtexˇˇçƒlibˇˇ */
	$"F08C C468 6C70 FFFF F088 C473 6E64 FFFF"            /* åƒhlpˇˇàƒsndˇˇ */
	$"F087 6465 736B FFFF F068 7472 7368 FFFF"            /* ádeskˇˇhtrshˇˇ */
	$"F067 6173 74C4 FFFF F096 7574 69C4 FFFF"            /* gastƒˇˇñutiƒˇˇ */
	$"F097 6D6F 72C4 FFFF F085 0000 0000 0000"            /* ómorƒˇˇÖ...... */
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
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 4A6F 7921 7065 6666"            /* ........Joy!peff */
	$"7077 7063 0000 0001 B368 F2D0 0000 0000"            /* pwpc....≥hÚ–.... */
	$"0000 0000 0000 0000 0003 0002 0000 0000"            /* ................ */
	$"FFFF FFFF 0000 0000 0000 313C 0000 313C"            /* ˇˇˇˇ......1<..1< */
	$"0000 313C 0000 0490 0004 0400 FFFF FFFF"            /* ..1<...ê....ˇˇˇˇ */
	$"0000 0000 0000 0504 0000 0504 0000 0504"            /* ................ */
	$"0000 35D0 0101 0400 FFFF FFFF 0000 0000"            /* ..5–....ˇˇˇˇ.... */
	$"0000 0000 0000 0000 0000 040C 0000 0080"            /* ...............Ä */
	$"0404 0400 0000 0000 0000 0001 0000 0104"            /* ................ */
	$"FFFF FFFF 0000 0000 FFFF FFFF 0000 0000"            /* ˇˇˇˇ....ˇˇˇˇ.... */
	$"0000 0002 0000 0031 0000 0001 0000 0138"            /* .......1.......8 */
	$"0000 0140 0000 0404 0000 0001 0000 0000"            /* ...@............ */
	$"0000 0000 0000 0000 0000 0000 0000 002D"            /* ...............- */
	$"0000 0000 0000 0000 0000 000D 0000 0000"            /* ................ */
	$"0000 0000 0000 0004 0000 002D 4000 0000"            /* ...........-@... */
	$"0200 001D 0200 0036 0200 0045 0200 0050"            /* .......6...E...P */
	$"0200 005B 0200 0069 0200 0076 0200 0083"            /* ...[...i...v...É */
	$"0200 0091 0200 009D 0200 00A6 0200 00B4"            /* ...ë...ù...¶...¥ */
	$"0200 00C1 0200 00CB 0200 00D6 0200 00DF"            /* ...¡...À...÷...ﬂ */
	$"0200 00F0 0200 00FC 0200 0109 0200 011A"            /* ......¸........ */
	$"0200 012F 0200 013D 0200 014D 0200 0157"            /* .../...=...M...W */
	$"0200 0164 0200 0172 0200 0182 0200 0192"            /* ...d...r...Ç...í */
	$"0200 019D 0200 01A5 0200 01B5 0200 01BF"            /* ...ù...•...µ...ø */
	$"0200 01CA 0200 01D4 0200 01E1 0200 01E7"            /* ... ...‘...·...Á */
	$"0200 01F6 0200 0205 0200 0214 0200 0221"            /* ...ˆ...........! */
	$"0200 0231 0200 023E 0200 024E 0200 0256"            /* ...1...>...N...V */
	$"0200 0269 8200 0275 8200 0284 8200 029A"            /* ...iÇ..uÇ..ÑÇ..ö */
	$"8200 02AE 0001 0000 0000 0004 0000 0000"            /* Ç..Æ............ */
	$"4A30 420C 8003 4604 496E 7465 7266 6163"            /* J0B.Ä.F.Interfac */
	$"654C 6962 0049 636F 6E53 6572 7669 6365"            /* eLib.IconService */
	$"734C 6962 0044 6973 706F 7365 526F 7574"            /* sLib.DisposeRout */
	$"696E 6544 6573 6372 6970 746F 7200 4164"            /* ineDescriptor.Ad */
	$"6449 636F 6E54 6F53 7569 7465 0053 6574"            /* dIconToSuite.Set */
	$"5265 734C 6F61 6400 4669 6E64 466F 6C64"            /* ResLoad.FindFold */
	$"6572 0044 6973 706F 7365 4861 6E64 6C65"            /* er.DisposeHandle */
	$"004C 6F61 6452 6573 6F75 7263 6500 484F"            /* .LoadResource.HO */
	$"7065 6E52 6573 4669 6C65 0053 6574 5375"            /* penResFile.SetSu */
	$"6974 654C 6162 656C 0050 4244 5447 6574"            /* iteLabel.PBDTGet */
	$"5061 7468 0052 6573 4572 726F 7200 5042"            /* Path.ResError.PB */
	$"436F 6E74 726F 6C53 796E 6300 4765 7449"            /* ControlSync.GetI */
	$"6E64 5374 7269 6E67 004E 6577 4861 6E64"            /* ndString.NewHand */
	$"6C65 0055 7365 5265 7346 696C 6500 4D65"            /* le.UseResFile.Me */
	$"6D45 7272 6F72 0050 4247 6574 4361 7449"            /* mError.PBGetCatI */
	$"6E66 6F53 796E 6300 4571 7561 6C53 7472"            /* nfoSync.EqualStr */
	$"696E 6700 4E65 7749 636F 6E53 7569 7465"            /* ing.NewIconSuite */
	$"0044 6973 706F 7365 4963 6F6E 5375 6974"            /* .DisposeIconSuit */
	$"6500 4E65 7752 6F75 7469 6E65 4465 7363"            /* e.NewRoutineDesc */
	$"7269 7074 6F72 0046 6F72 4561 6368 4963"            /* riptor.ForEachIc */
	$"6F6E 446F 004C 4D47 6574 4669 6E64 6572"            /* onDo.LMGetFinder */
	$"4E61 6D65 0050 7472 546F 4861 6E64 0047"            /* Name.PtrToHand.G */
	$"6574 3152 6573 6F75 7263 6500 426C 6F63"            /* et1Resource.Bloc */
	$"6B4D 6F76 6544 6174 6100 5042 4454 4765"            /* kMoveData.PBDTGe */
	$"7449 636F 6E53 796E 6300 5042 4847 6574"            /* tIconSync.PBHGet */
	$"5649 6E66 6F53 796E 6300 4375 7252 6573"            /* VInfoSync.CurRes */
	$"4669 6C65 0047 6573 7461 6C74 0050 4248"            /* File.Gestalt.PBH */
	$"4765 7446 496E 666F 5379 6E63 0048 5365"            /* GetFInfoSync.HSe */
	$"7453 7461 7465 0048 616E 6454 6F48 616E"            /* tState.HandToHan */
	$"6400 4847 6574 5374 6174 6500 4765 7444"            /* d.HGetState.GetD */
	$"4374 6C45 6E74 7279 0048 4C6F 636B 0046"            /* CtlEntry.HLock.F */
	$"5370 4F70 656E 5265 7346 696C 6500 5042"            /* SpOpenResFile.PB */
	$"4454 4F70 656E 496E 666F 726D 0050 4247"            /* DTOpenInform.PBG */
	$"6574 5649 6E66 6F53 796E 6300 4653 4D61"            /* etVInfoSync.FSMa */
	$"6B65 4653 5370 6563 0043 6F75 6E74 3152"            /* keFSSpec.Count1R */
	$"6573 6F75 7263 6573 0043 6C6F 7365 5265"            /* esources.CloseRe */
	$"7346 696C 6500 4765 7431 496E 6452 6573"            /* sFile.Get1IndRes */
	$"6F75 7263 6500 4855 6E6C 6F63 6B00 5042"            /* ource.HUnlock.PB */
	$"4847 6574 566F 6C50 6172 6D73 5379 6E63"            /* HGetVolParmsSync */
	$"0047 6574 5265 736F 7572 6365 0052 656C"            /* .GetResource.Rel */
	$"6561 7365 4963 6F6E 5265 6600 4963 6F6E"            /* easeIconRef.Icon */
	$"4661 6D69 6C79 546F 4963 6F6E 5375 6974"            /* FamilyToIconSuit */
	$"6500 4963 6F6E 5265 6654 6F49 636F 6E46"            /* e.IconRefToIconF */
	$"616D 696C 7900 4765 7449 636F 6E52 6566"            /* amily.GetIconRef */
	$"4672 6F6D 4669 6C65 0000 0000 0000 0000"            /* FromFile........ */
	$"0000 0000 0000 0000 7C08 02A6 BF61 FFEC"            /* ........|..¶øaˇÏ */
	$"9001 0008 9421 FEC0 7C7E 1B79 3B84 0000"            /* ê...î!˛¿|~.y;Ñ.. */
	$"3B65 0000 3BA6 0000 3BE0 0000 3800 0000"            /* ;e..;¶..;‡..8... */
	$"9006 0000 4182 0020 A87E 0000 4800 140D"            /* ê...AÇ. ®~..H... */
	$"6000 0000 5460 063F 4182 000C 3BE0 FFCB"            /* `...T`.?AÇ..;‡ˇÀ */
	$"4800 0288 281C 0000 4082 0058 387E 0006"            /* H..à(...@Ç.X8~.. */
	$"3881 0050 38A0 0020 4800 2C5D 8041 0014"            /* 8Å.P8†. H.,]ÄA.. */
	$"A81E 0000 B001 00CE 801E 0002 9001 00E8"            /* ®...∞..ŒÄ...ê..Ë */
	$"3801 0050 9001 00CA 3800 0000 B001 00D4"            /* 8..Pê.. 8...∞..‘ */
	$"3861 00B8 4800 2C49 8041 0014 3BE3 0000"            /* 8a.∏H.,IÄA..;„.. */
	$"7FE0 0735 4082 0234 3B81 00B8 4800 0038"            /* .‡.5@Ç.4;Å.∏H..8 */
	$"807C 0012 3881 0070 80BC 0012 88A5 0000"            /* Ä|..8Å.pÄº..à•.. */
	$"38A5 0001 3884 0006 4800 2BFD 8041 0014"            /* 8•..8Ñ..H.+˝ÄA.. */
	$"801C 0064 9001 0072 A81C 0016 B001 0070"            /* Ä..dê..r®...∞..p */
	$"3BC1 0070 3C60 6963 3863 6F6E 3881 004C"            /* ;¡.p<`ic8con8Å.L */
	$"4800 2C05 8041 0014 7C60 0735 4082 00DC"            /* H.,.ÄA..|`.5@Ç.‹ */
	$"8001 004C 5400 077B 4182 00D0 387B 0000"            /* Ä..LT..{AÇ.–8{.. */
	$"3881 0040 38A1 003C 4800 1799 6000 0000"            /* 8Å.@8°.<H..ô`... */
	$"387E 0000 3881 0048 38A1 0044 4800 2BE1"            /* 8~..8Å.H8°.DH.+· */
	$"8041 0014 3BE3 0000 7FE0 0735 4082 009C"            /* ÄA..;„...‡.5@Ç.ú */
	$"8061 0048 8081 0040 8001 003C 7C84 0378"            /* Äa.HÄÅ.@Ä..<|Ñ.x */
	$"38A1 0038 4800 2BD1 8041 0014 3BE3 0000"            /* 8°.8H.+—ÄA..;„.. */
	$"7FE0 0735 4082 0068 8061 0038 8081 0040"            /* .‡.5@Ç.hÄa.8ÄÅ.@ */
	$"38BD 0000 4800 2BC9 8041 0014 3BE3 0000"            /* 8Ω..H.+…ÄA..;„.. */
	$"7FE0 0735 4082 003C 807D 0000 4800 01DD"            /* .‡.5@Ç.<Ä}..H..› */
	$"5460 063F 4182 002C 807D 0000 3880 0001"            /* T`.?AÇ.,Ä}..8Ä.. */
	$"4800 2BFD 8041 0014 8061 0038 8081 003C"            /* H.+˝ÄA..Äa.8ÄÅ.< */
	$"38BD 0000 4800 2B89 8041 0014 3BE3 0000"            /* 8Ω..H.+âÄA..;„.. */
	$"8061 0038 4800 2BF1 8041 0014 8061 0048"            /* Äa.8H.+ÒÄA..Äa.H */
	$"4800 2BFD 8041 0014 801D 0000 2800 0000"            /* H.+˝ÄA..Ä...(... */
	$"4082 00D0 881C 001E 5400 06F7 4082 0048"            /* @Ç.–à...T..˜@Ç.H */
	$"A01C 0028 5400 056B 4182 0020 387E 0000"            /* †..(T..kAÇ. 8~.. */
	$"389B 0000 38BD 0000 4800 0549 6000 0000"            /* 8õ..8Ω..H..I`... */
	$"3BE3 0000 4800 009C 387C 0000 389B 0000"            /* ;„..H..ú8|..8õ.. */
	$"38BD 0000 4800 0275 6000 0000 3BE3 0000"            /* 8Ω..H..u`...;„.. */
	$"4800 0080 A01C 0028 5400 056B 4182 0024"            /* H..Ä†..(T..kAÇ.$ */
	$"A87E 0000 809C 0030 38BB 0000 38DD 0000"            /* ®~..Äú.08ª..8›.. */
	$"4800 099D 6000 0000 7C60 0735 4182 0054"            /* H..ù`...|`.5AÇ.T */
	$"801C 0030 2C00 0002 4082 0030 A87E 0000"            /* Ä..0,...@Ç.0®~.. */
	$"4800 1CD9 6000 0000 5460 063F 4182 001C"            /* H..Ÿ`...T`.?AÇ.. */
	$"A87E 0000 389D 0000 4800 0FD1 6000 0000"            /* ®~..8ù..H..—`... */
	$"3BE3 0000 4800 001C 387C 0000 389B 0000"            /* ;„..H...8|..8õ.. */
	$"38BD 0000 4800 0699 6000 0000 3BE3 0000"            /* 8Ω..H..ô`...;„.. */
	$"801D 0000 2800 0000 4182 0040 807D 0000"            /* Ä...(...AÇ.@Ä}.. */
	$"A01C 0028 5400 073C 7C04 0E70 4800 2E61"            /* †..(T..<|..pH..a */
	$"8041 0014 4800 0024 801E 0002 2C00 0001"            /* ÄA..H..$Ä...,... */
	$"4082 0018 A87E 0000 389D 0000 4800 0F6D"            /* @Ç..®~..8ù..H..m */
	$"6000 0000 3BE3 0000 387F 0000 8001 0148"            /* `...;„..8...Ä..H */
	$"3821 0140 7C08 03A6 BB61 FFEC 4E80 0020"            /* 8!.@|..¶ªaˇÏNÄ.  */
	$"0000 0000 0000 2041 8005 0000 0000 0308"            /* ...... AÄ....... */
	$"000A 2E46 696E 645F 6963 6F6E 8004 0000"            /* ...Find_iconÄ... */
	$"2800 0000 4182 000C 3800 0001 9805 0000"            /* (...AÇ..8...ò... */
	$"3860 0000 4E80 0020 0000 0000 0000 2040"            /* 8`..NÄ. ...... @ */
	$"0000 0000 0000 001C 000E 2E54 6573 745F"            /* ...........Test_ */
	$"6F6E 655F 6963 6F6E 7C08 02A6 93E1 FFFC"            /* one_icon|..¶ì·ˇ¸ */
	$"9001 0008 9421 FFB0 9061 0068 3800 0000"            /* ê...î!ˇ∞êa.h8... */
	$"9801 0038 8062 00C4 3880 0FE0 38A0 0001"            /* ò..8Äb.ƒ8Ä.‡8†.. */
	$"4800 29C5 8041 0014 3BE3 0000 8061 0068"            /* H.)≈ÄA..;„..Äa.h */
	$"3880 FFFF 38BF 0000 38C1 0038 4800 29C1"            /* 8Äˇˇ8ø..8¡.8H.)¡ */
	$"8041 0014 387F 0000 4800 29CD 8041 0014"            /* ÄA..8...H.)ÕÄA.. */
	$"8801 0038 7C00 0034 5403 D97E 8001 0058"            /* à..8|..4T.Ÿ~Ä..X */
	$"3821 0050 7C08 03A6 83E1 FFFC 4E80 0020"            /* 8!.P|..¶É·ˇ¸NÄ.  */
	$"0000 0000 0000 2041 8001 0000 0000 0078"            /* ...... AÄ......x */
	$"000D 2E49 7353 7569 7465 456D 7074 7900"            /* ...IsSuiteEmpty. */
	$"7C08 02A6 93E1 FFFC 9001 0008 9421 FF70"            /* |..¶ì·ˇ¸ê...î!ˇp */
	$"B061 00AA 3801 006C 9001 0058 3800 0014"            /* ∞a.™8..lê..X8... */
	$"9001 005C A801 00AA B001 004E 3800 0000"            /* ê..\®..™∞..N8... */
	$"9001 004A 3861 0038 4800 2AFD 8041 0014"            /* ê..J8a.8H.*˝ÄA.. */
	$"3BE3 0000 3860 0000 7FE0 0735 4082 0010"            /* ;„..8`...‡.5@Ç.. */
	$"8001 0076 2C00 0000 4082 0008 3860 0001"            /* Ä..v,...@Ç..8`.. */
	$"8001 0098 3821 0090 7C08 03A6 83E1 FFFC"            /* Ä..ò8!.ê|..¶É·ˇ¸ */
	$"4E80 0020 0000 0000 0000 2041 8001 0000"            /* NÄ. ...... AÄ... */
	$"0000 0074 0010 2E49 735F 6C6F 6361 6C5F"            /* ...t...Is_local_ */
	$"766F 6C75 6D65 0000 7C08 02A6 BEC1 FFD8"            /* volume..|..¶æ¡ˇÿ */
	$"9001 0008 9421 FF50 3AE3 0000 3B84 0000"            /* ê...î!ˇP:„..;Ñ.. */
	$"3BC5 0000 83A3 0020 8363 0024 387D 0000"            /* ;≈..É£. Éc.$8}.. */
	$"389B 0000 38BC 0000 4800 1641 6000 0000"            /* 8õ..8º..H..A`... */
	$"907E 0000 801E 0000 2800 0000 4182 000C"            /* ê~..Ä...(...AÇ.. */
	$"3860 0000 4800 0230 387D 0000 3881 007E"            /* 8`..H..08}..8Å.~ */
	$"4800 07C1 6000 0000 3B03 0000 4800 28E9"            /* H..¡`...;...H.(È */
	$"8041 0014 3AC3 0000 8801 007E 2800 0001"            /* ÄA..:√..à..~(... */
	$"4082 00A8 3860 8000 3C80 6D61 38A0 0000"            /* @Ç.®8`Ä.<Äma8†.. */
	$"38C1 007C 38E1 0078 3884 6373 4800 29C1"            /* 8¡.|8·.x8ÑcsH.)¡ */
	$"8041 0014 3860 0000 4800 28C5 8041 0014"            /* ÄA..8`..H.(≈ÄA.. */
	$"4800 29C5 8041 0014 38A3 0000 A861 007C"            /* H.)≈ÄA..8£..®a.| */
	$"8081 0078 38C0 0001 4800 29C5 8041 0014"            /* ÄÅ.x8¿..H.)≈ÄA.. */
	$"3B43 0000 3860 0001 4800 2895 8041 0014"            /* ;C..8`..H.(ïÄA.. */
	$"7F40 0734 2C00 FFFF 4082 0014 4800 28B1"            /* .@.4,.ˇˇ@Ç..H.(± */
	$"8041 0014 3BE3 0000 4800 0150 387E 0000"            /* ÄA..;„..H..P8~.. */
	$"3898 0000 38BC 0000 38C0 0001 4800 0889"            /* 8ò..8º..8¿..H..â */
	$"6000 0000 3BE3 0000 387A 0000 4800 28F9"            /* `...;„..8z..H.(˘ */
	$"8041 0014 4800 0124 3C1D 9E9C 2800 7270"            /* ÄA..H..$<.ûú(.rp */
	$"4082 000C 3FA0 4150 3BBD 504C AB37 0016"            /* @Ç..?†AP;ΩPL´7.. */
	$"3879 0000 389C 0000 38BB 0000 38DD 0000"            /* 8y..8ú..8ª..8›.. */
	$"38FE 0000 4800 1121 6000 0000 3BE3 0000"            /* 8˛..H..!`...;„.. */
	$"7FE0 0735 4182 008C 3800 0000 9001 004A"            /* .‡.5AÇ.å8...ê..J */
	$"3800 0001 B001 0054 4800 0064 3861 0038"            /* 8...∞..TH..d8a.8 */
	$"A863 0016 7F20 0734 7C03 0000 4182 0044"            /* ®c... .4|...AÇ.D */
	$"3861 0038 A863 0016 4BFF FDD9 5460 063F"            /* 8a.8®c..Kˇ˝ŸT`.? */
	$"4182 0030 3861 0038 A863 0016 389C 0000"            /* AÇ.08a.8®c..8ú.. */
	$"38BB 0000 38DD 0000 38FE 0000 4800 10B9"            /* 8ª..8›..8˛..H..π */
	$"6000 0000 3BE3 0000 7FE0 0735 4182 0024"            /* `...;„...‡.5AÇ.$ */
	$"A861 0054 3803 0001 B001 0054 3861 0038"            /* ®a.T8...∞..T8a.8 */
	$"4800 29FD 8041 0014 7C60 0735 4182 FF90"            /* H.)˝ÄA..|`.5AÇˇê */
	$"7FE0 0735 4182 0054 3860 0000 4800 2831"            /* .‡.5AÇ.T8`..H.(1 */
	$"8041 0014 387E 0000 3898 0000 38BC 0000"            /* ÄA..8~..8ò..8º.. */
	$"38C0 0001 4800 0781 6000 0000 3BE3 0000"            /* 8¿..H..Å`...;„.. */
	$"801E 0000 2800 0000 4082 0020 387E 0000"            /* Ä...(...@Ç. 8~.. */
	$"3880 F060 38BC 0000 38C0 0001 4800 0759"            /* 8Ä`8º..8¿..H..Y */
	$"6000 0000 3BE3 0000 3876 0000 4800 27E1"            /* `...;„..8v..H.'· */
	$"8041 0014 7FE0 0735 4082 0028 801E 0000"            /* ÄA...‡.5@Ç.(Ä... */
	$"2800 0000 4182 001C 387D 0000 389B 0000"            /* (...AÇ..8}..8õ.. */
	$"38BC 0000 80DE 0000 4800 1525 6000 0000"            /* 8º..Äﬁ..H..%`... */
	$"387F 0000 8001 00B8 3821 00B0 7C08 03A6"            /* 8...Ä..∏8!.∞|..¶ */
	$"BAC1 FFD8 4E80 0020 0000 0000 0000 2041"            /* ∫¡ˇÿNÄ. ...... A */
	$"800A 0000 0000 0290 0015 2E47 6574 5F6E"            /* Ä......ê...Get_n */
	$"6F72 6D61 6C5F 6669 6C65 5F69 636F 6E00"            /* ormal_file_icon. */
	$"7C08 02A6 BF61 FFEC 9001 0008 9421 FFB0"            /* |..¶øaˇÏê...î!ˇ∞ */
	$"9061 0068 3B64 0000 3B85 0000 4800 2679"            /* êa.h;d..;Ö..H.&y */
	$"8041 0014 3BA3 0000 3860 0000 4800 2681"            /* ÄA..;£..8`..H.&Å */
	$"8041 0014 8061 0068 3880 0001 4800 2689"            /* ÄA..Äa.h8Ä..H.&â */
	$"8041 0014 3BC3 0000 3860 0001 4800 2661"            /* ÄA..;√..8`..H.&a */
	$"8041 0014 7FC0 0734 2C00 FFFF 4082 0014"            /* ÄA...¿.4,.ˇˇ@Ç.. */
	$"4800 267D 8041 0014 3BE3 0000 4800 0060"            /* H.&}ÄA..;„..H..` */
	$"387C 0000 3880 BFB9 38BB 0000 38C0 0001"            /* 8|..8Äøπ8ª..8¿.. */
	$"4800 0655 6000 0000 3BE3 0000 7FE0 0734"            /* H..U`...;„...‡.4 */
	$"2C00 FC18 4082 0020 387C 0000 3880 BF90"            /* ,.¸.@Ç. 8|..8Äøê */
	$"38BB 0000 38C0 0001 4800 062D 6000 0000"            /* 8ª..8¿..H..-`... */
	$"3BE3 0000 387E 0000 4800 269D 8041 0014"            /* ;„..8~..H.&ùÄA.. */
	$"387D 0000 4800 26A9 8041 0014 387F 0000"            /* 8}..H.&©ÄA..8... */
	$"8001 0058 3821 0050 7C08 03A6 BB61 FFEC"            /* Ä..X8!.P|..¶ªaˇÏ */
	$"4E80 0020 0000 0000 0000 2041 8005 0000"            /* NÄ. ...... AÄ... */
	$"0000 00E4 0015 2E47 6574 5F63 7573 746F"            /* ...‰...Get_custo */
	$"6D5F 6669 6C65 5F69 636F 6E00 7C08 02A6"            /* m_file_icon.|..¶ */
	$"93E1 FFFC 93C1 FFF8 93A1 FFF4 9381 FFF0"            /* ì·ˇ¸ì¡ˇ¯ì°ˇÙìÅˇ */
	$"9001 0008 9421 FFB0 3B83 0000 3BA4 0000"            /* ê...î!ˇ∞;É..;§.. */
	$"3BE5 0000 3BC0 0000 387D 0000 7F84 0734"            /* ;Â..;¿..8}...Ñ.4 */
	$"38A0 0000 4800 1275 6000 0000 907F 0000"            /* 8†..H..u`...ê... */
	$"801F 0000 2C00 0000 4082 0050 387C 0000"            /* Ä...,...@Ç.P8|.. */
	$"389D 0000 38A0 0000 38C1 0038 38FF 0000"            /* 8ù..8†..8¡.88ˇ.. */
	$"4800 262D 8041 0014 3BC3 0000 7FC0 0735"            /* H.&-ÄA..;√...¿.5 */
	$"4182 0010 3800 0000 901F 0000 4800 001C"            /* AÇ..8...ê...H... */
	$"387D 0000 7F84 0734 38A0 0000 80DF 0000"            /* 8}...Ñ.48†..Äﬂ.. */
	$"4800 133D 6000 0000 387E 0000 8001 0058"            /* H..=`...8~..Ä..X */
	$"3821 0050 7C08 03A6 83E1 FFFC 83C1 FFF8"            /* 8!.P|..¶É·ˇ¸É¡ˇ¯ */
	$"83A1 FFF4 8381 FFF0 4E80 0020 0000 0000"            /* É°ˇÙÉÅˇNÄ. .... */
	$"0000 2041 8004 0000 0000 00C0 000D 2E4D"            /* .. AÄ......¿...M */
	$"7946 696E 6446 6F6C 6465 7200 7C08 02A6"            /* yFindFolder.|..¶ */
	$"BE81 FFD0 9001 0008 9421 FF90 3AE3 0000"            /* æÅˇ–ê...î!ˇê:„.. */
	$"3AA4 0000 3AC5 0000 3B02 014C 3B22 0124"            /* :§..:≈..;..L;".$ */
	$"8383 0030 AB43 0016 3BA0 F061 387A 0000"            /* ÉÉ.0´C..;†a8z.. */
	$"3C80 6D61 3884 6373 38A1 003C 4BFF FEE1"            /* <Äma8Ñcs8°.<Kˇ˛· */
	$"7C60 0735 4082 0018 8001 003C 7C00 E000"            /* |`.5@Ç..Ä..<|.‡. */
	$"4082 000C 3BA0 F071 4800 013C 8017 0064"            /* @Ç..;†qH..<Ä..d */
	$"2C00 0002 4082 006C 3B60 0005 3BE0 0000"            /* ,...@Ç.l;`..;‡.. */
	$"4800 004C 387A 0000 7FE0 0734 5400 1838"            /* H..L8z...‡.4T..8 */
	$"7C99 002E 38A1 0038 4BFF FE95 3BC3 0000"            /* |ô..8°.8Kˇ˛ï;√.. */
	$"7FC0 0735 4082 0024 8001 0038 7C00 E000"            /* .¿.5@Ç.$Ä..8|.‡. */
	$"4082 0018 7FE0 0734 5403 1838 3803 0004"            /* @Ç...‡.4T..88... */
	$"7FB9 002E 4800 00E0 3BFF 0001 7FE3 0734"            /* .π..H..‡;ˇ...„.4 */
	$"7F60 0734 7C03 0000 4180 FFAC 4800 00C8"            /* .`.4|...AÄˇ¨H..» */
	$"8061 003C 8017 0064 7C03 0000 4082 006C"            /* Äa.<Ä..d|...@Ç.l */
	$"3B60 001A 3BE0 0000 4800 004C 387A 0000"            /* ;`..;‡..H..L8z.. */
	$"7FE0 0734 5400 1838 7C98 002E 38A1 0038"            /* .‡.4T..8|ò..8°.8 */
	$"4BFF FE1D 3BC3 0000 7FC0 0735 4082 0024"            /* Kˇ˛.;√...¿.5@Ç.$ */
	$"8001 0038 7C00 E000 4082 0018 7FE0 0734"            /* Ä..8|.‡.@Ç...‡.4 */
	$"5403 1838 3803 0004 7FB8 002E 4800 0068"            /* T..88....∏..H..h */
	$"3BFF 0001 7FE3 0734 7F60 0734 7C03 0000"            /* ;ˇ...„.4.`.4|... */
	$"4180 FFAC 4800 0050 8017 0064 2C00 0001"            /* AÄˇ¨H..PÄ..d,... */
	$"4082 000C 3BA0 F07C 4800 003C 8817 001E"            /* @Ç..;†|H..<à... */
	$"5400 0739 4182 000C 3BA0 F077 4800 0028"            /* T..9AÇ..;†wH..( */
	$"8817 001E 5400 06B5 4182 000C 3BA0 F076"            /* à...T..µAÇ..;†v */
	$"4800 0014 8817 001E 5400 077B 4182 0008"            /* H...à...T..{AÇ.. */
	$"3BA0 F074 7FA3 0734 3C80 6630 38B5 0000"            /* ;†t.£.4<Äf08µ.. */
	$"3884 6C64 4800 1025 6000 0000 9076 0000"            /* 8ÑldH..%`...êv.. */
	$"8016 0000 2800 0000 4182 000C 3BC0 0000"            /* Ä...(...AÇ..;¿.. */
	$"4800 00A8 4800 22E1 8041 0014 3A83 0000"            /* H..®H."·ÄA..:É.. */
	$"3860 0000 4800 23A9 8041 0014 3876 0000"            /* 8`..H.#©ÄA..8v.. */
	$"389D 0000 38B5 0000 38C0 0002 4800 02F9"            /* 8ù..8µ..8¿..H..˘ */
	$"6000 0000 3BC3 0000 7FC0 0735 4182 0030"            /* `...;√...¿.5AÇ.0 */
	$"7FA0 0734 2C00 F061 4182 0024 3BA0 F061"            /* .†.4,.aAÇ.$;†a */
	$"3876 0000 389D 0000 38B5 0000 38C0 0002"            /* 8v..8ù..8µ..8¿.. */
	$"4800 02C5 6000 0000 3BC3 0000 3874 0000"            /* H..≈`...;√..8t.. */
	$"4800 234D 8041 0014 7FC0 0735 4082 002C"            /* H.#MÄA...¿.5@Ç., */
	$"8016 0000 2800 0000 4182 0020 7FA3 0734"            /* Ä...(...AÇ. .£.4 */
	$"3C80 6630 38B5 0000 80D6 0000 3884 6C64"            /* <Äf08µ..Ä÷..8Ñld */
	$"4800 108D 6000 0000 387E 0000 8001 0078"            /* H..ç`...8~..Ä..x */
	$"3821 0070 7C08 03A6 BA81 FFD0 4E80 0020"            /* 8!.p|..¶∫Åˇ–NÄ.  */
	$"0000 0000 0000 2041 800C 0000 0000 0284"            /* ...... AÄ......Ñ */
	$"0017 2E47 6574 5F6E 6F72 6D61 6C5F 666F"            /* ...Get_normal_fo */
	$"6C64 6572 5F69 636F 6E00 0000 7C08 02A6"            /* lder_icon...|..¶ */
	$"93E1 FFFC 93C1 FFF8 9001 0008 9421 FF70"            /* ì·ˇ¸ì¡ˇ¯ê...î!ˇp */
	$"B061 00AA 9081 00AC 90A1 00B0 90C1 00B4"            /* ∞a.™êÅ.¨ê°.∞ê¡.¥ */
	$"3BC2 021C 881E 0000 2800 0000 4082 0010"            /* ;¬..à...(...@Ç.. */
	$"387E 0000 4800 04C5 6000 0000 A861 00AA"            /* 8~..H..≈`...®a.™ */
	$"8081 00AC 38BE 0000 38C1 0038 4800 2461"            /* ÄÅ.¨8æ..8¡.8H.$a */
	$"8041 0014 3BE3 0000 7FE0 0735 4082 001C"            /* ÄA..;„...‡.5@Ç.. */
	$"3861 0038 8081 00B0 80A1 00B4 4BFF FAF5"            /* 8a.8ÄÅ.∞Ä°.¥Kˇ˙ı */
	$"6000 0000 3BE3 0000 387F 0000 8001 0098"            /* `...;„..8...Ä..ò */
	$"3821 0090 7C08 03A6 83E1 FFFC 83C1 FFF8"            /* 8!.ê|..¶É·ˇ¸É¡ˇ¯ */
	$"4E80 0020 0000 0000 0000 2041 8002 0000"            /* NÄ. ...... AÄ... */
	$"0000 0098 0017 2E47 6574 5F63 7573 746F"            /* ...ò...Get_custo */
	$"6D5F 666F 6C64 6572 5F69 636F 6E00 0000"            /* m_folder_icon... */
	$"7C08 02A6 BEE1 FFDC 9001 0008 9421 FF90"            /* |..¶æ·ˇ‹ê...î!ˇê */
	$"3BA3 0000 3B24 0000 3B42 023C 3B62 02D4"            /* ;£..;$..;B.<;b.‘ */
	$"3B82 030C 3BC0 F060 3800 0002 9804 0000"            /* ;Ç..;¿`8...ò... */
	$"3C60 6170 3863 7072 3881 0038 4800 2009"            /* <`ap8cpr8Å.8H. . */
	$"8041 0014 3AE3 0000 7EE0 0735 4082 0054"            /* ÄA..:„..~‡.5@Ç.T */
	$"8001 0038 5400 07FF 4182 0048 3B00 000B"            /* Ä..8T..ˇAÇ.H;... */
	$"3BF8 FFFF 4800 0030 7FE0 0734 5400 1838"            /* ;¯ˇˇH..0.‡.4T..8 */
	$"7C1C 002E 7C1D 0040 4082 0018 7FE0 0734"            /* |...|..@@Ç...‡.4 */
	$"5403 1838 3803 0004 7FDC 002E 4800 005C"            /* T..88....‹..H..\ */
	$"3BFF FFFF 7FE0 0735 4080 FFD0 4800 004C"            /* ;ˇˇˇ.‡.5@Äˇ–H..L */
	$"3B00 0007 3BF8 FFFF 4800 0038 7FE0 0734"            /* ;...;¯ˇˇH..8.‡.4 */
	$"5400 1838 7C1B 002E 7C1D 0040 4082 0020"            /* T..8|...|..@@Ç.  */
	$"7FE0 0734 5403 1838 3803 0004 7FDB 002E"            /* .‡.4T..88....€.. */
	$"3800 0001 9819 0000 4800 0010 3BFF FFFF"            /* 8...ò...H...;ˇˇˇ */
	$"7FE0 0735 4080 FFC8 7FC0 0734 2C00 F060"            /* .‡.5@Äˇ».¿.4,.` */
	$"4082 0044 3B00 0013 3BF8 FFFF 4800 0030"            /* @Ç.D;...;¯ˇˇH..0 */
	$"7FE0 0734 5400 1838 7C1A 002E 7C1D 0040"            /* .‡.4T..8|...|..@ */
	$"4082 0018 7FE0 0734 5403 1838 3803 0004"            /* @Ç...‡.4T..88... */
	$"7FDA 002E 4800 0010 3BFF FFFF 7FE0 0735"            /* .⁄..H...;ˇˇˇ.‡.5 */
	$"4080 FFD0 387E 0000 8001 0078 3821 0070"            /* @Äˇ–8~..Ä..x8!.p */
	$"7C08 03A6 BAE1 FFDC 4E80 0020 0000 0000"            /* |..¶∫·ˇ‹NÄ. .... */
	$"0000 2041 8009 0000 0000 014C 0015 2E46"            /* .. AÄ......L...F */
	$"696E 645F 6765 6E65 7269 635F 6963 6F6E"            /* ind_generic_icon */
	$"5F69 6400 7C08 02A6 93E1 FFFC 93C1 FFF8"            /* _id.|..¶ì·ˇ¸ì¡ˇ¯ */
	$"93A1 FFF4 9001 0008 9421 FFA0 3BC3 0000"            /* ì°ˇÙê...î!ˇ†;√.. */
	$"B081 007E 90A1 0080 98C1 0087 8061 0080"            /* ∞Å.~ê°.Äò¡.áÄa.Ä */
	$"3881 003C 38A1 0038 4800 0A59 6000 0000"            /* 8Å.<8°.8H..Y`... */
	$"387E 0000 4800 1FE1 8041 0014 3BE3 0000"            /* 8~..H..·ÄA..;„.. */
	$"7FE0 0735 4082 00E8 A801 007E B001 0040"            /* .‡.5@Ç.Ë®..~∞..@ */
	$"3800 0001 9801 0042 3800 0001 9801 0043"            /* 8...ò..B8...ò..C */
	$"8801 0087 9801 0044 8062 00E0 3880 0FE0"            /* à..áò..DÄb.‡8Ä.‡ */
	$"38A0 0001 4800 1EB1 8041 0014 3BA3 0000"            /* 8†..H..±ÄA..;£.. */
	$"807E 0000 8081 003C 38BD 0000 38C1 0040"            /* Ä~..ÄÅ.<8Ω..8¡.@ */
	$"4800 1EAD 8041 0014 3BE3 0000 7FE0 0735"            /* H..≠ÄA..;„...‡.5 */
	$"4082 0044 8001 0038 2800 0000 4182 0038"            /* @Ç.DÄ..8(...AÇ.8 */
	$"8801 0042 2800 0000 4182 002C 8801 0043"            /* à..B(...AÇ.,à..C */
	$"2800 0000 4182 0020 807E 0000 8081 0038"            /* (...AÇ. Ä~..ÄÅ.8 */
	$"38BD 0000 38C1 0040 4800 1E65 8041 0014"            /* 8Ω..8¡.@H..eÄA.. */
	$"3BE3 0000 387D 0000 4800 1E6D 8041 0014"            /* ;„..8}..H..mÄA.. */
	$"7FE0 0735 4082 0038 8801 0042 2800 0000"            /* .‡.5@Ç.8à..B(... */
	$"4182 002C 8801 0043 2800 0000 4182 0020"            /* AÇ.,à..C(...AÇ.  */
	$"3BE0 FC18 807E 0000 3880 0000 4800 1E51"            /* ;‡¸.Ä~..8Ä..H..Q */
	$"8041 0014 3800 0000 901E 0000 387F 0000"            /* ÄA..8...ê...8... */
	$"8001 0068 3821 0060 7C08 03A6 83E1 FFFC"            /* Ä..h8!.`|..¶É·ˇ¸ */
	$"83C1 FFF8 83A1 FFF4 4E80 0020 0000 0000"            /* É¡ˇ¯É°ˇÙNÄ. .... */
	$"0000 2041 8003 0000 0000 0158 0010 2E46"            /* .. AÄ......X...F */
	$"495F 4765 7449 636F 6E53 7569 7465 0000"            /* I_GetIconSuite.. */
	$"7C08 02A6 BF61 FFEC 9001 0008 9421 FFB0"            /* |..¶øaˇÏê...î!ˇ∞ */
	$"3BE3 0000 3BA4 0000 3BC5 0000 3B80 0000"            /* ;„..;§..;≈..;Ä.. */
	$"3C1F 969D 2800 6C38 4182 0010 3C1F 969D"            /* <.ñù(.l8AÇ..<.ñù */
	$"2800 6C34 4082 0010 881E 0002 2800 0000"            /* (.l4@Ç..à...(... */
	$"4082 0028 3C1F 969D 2800 7338 4182 0010"            /* @Ç.(<.ñù(.s8AÇ.. */
	$"3C1F 969D 2800 7334 4082 0014 881E 0003"            /* <.ñù(.s4@Ç..à... */
	$"2800 0000 4182 0008 3B80 0001 5780 063F"            /* (...AÇ..;Ä..WÄ.? */
	$"4082 00A0 881E 0004 2800 0001 4082 001C"            /* @Ç.†à...(...@Ç.. */
	$"387F 0000 A89E 0000 4800 1E35 8041 0014"            /* 8...®û..H..5ÄA.. */
	$"907D 0000 4800 0018 387F 0000 A89E 0000"            /* ê}..H...8...®û.. */
	$"4800 1E35 8041 0014 907D 0000 801D 0000"            /* H..5ÄA..ê}..Ä... */
	$"2800 0000 4182 0024 387D 0000 4800 1E31"            /* (...AÇ.$8}..H..1 */
	$"8041 0014 3B63 0000 7F60 0735 4182 000C"            /* ÄA..;c...`.5AÇ.. */
	$"3800 0000 901D 0000 801D 0000 2800 0000"            /* 8...ê...Ä...(... */
	$"4182 0030 3C1F B6BD 2800 4E23 4082 0010"            /* AÇ.0<.∂Ω(.N#@Ç.. */
	$"3800 0000 981E 0002 4800 0018 3C1F 969D"            /* 8...ò...H...<.ñù */
	$"2800 7323 4082 000C 3800 0000 981E 0003"            /* (.s#@Ç..8...ò... */
	$"3860 0000 8001 0058 3821 0050 7C08 03A6"            /* 8`..Ä..X8!.P|..¶ */
	$"BB61 FFEC 4E80 0020 0000 0000 0000 2041"            /* ªaˇÏNÄ. ...... A */
	$"8005 0000 0000 0128 000B 2E47 6574 5F31"            /* Ä......(...Get_1 */
	$"5F69 636F 6E00 0000 7C08 02A6 93E1 FFFC"            /* _icon...|..¶ì·ˇ¸ */
	$"93C1 FFF8 93A1 FFF4 9001 0008 9421 FEB0"            /* ì¡ˇ¯ì°ˇÙê...î!˛∞ */
	$"3BA3 0000 3800 0000 9801 0038 4800 1CD9"            /* ;£..8...ò..8H..Ÿ */
	$"8041 0014 3BC3 0000 3860 8000 3C80 6D61"            /* ÄA..;√..8`Ä.<Äma */
	$"38A0 0000 38C1 013C 38E1 0138 3884 6373"            /* 8†..8¡.<8·.88Ñcs */
	$"4800 1DBD 8041 0014 3860 0000 4800 1CC1"            /* H..ΩÄA..8`..H..¡ */
	$"8041 0014 4800 1DC1 8041 0014 38A3 0000"            /* ÄA..H..¡ÄA..8£.. */
	$"A861 013C 8081 0138 38C0 0001 4800 1DC1"            /* ®a.<ÄÅ.88¿..H..¡ */
	$"8041 0014 3BE3 0000 3860 0001 4800 1C91"            /* ÄA..;„..8`..H..ë */
	$"8041 0014 7FE0 0734 2C00 FFFF 4182 0050"            /* ÄA...‡.4,.ˇˇAÇ.P */
	$"3861 0038 3880 2BF2 38A0 0005 4800 1EF9"            /* 8a.88Ä+Ú8†..H..˘ */
	$"8041 0014 8801 0038 2800 0000 4082 0018"            /* ÄA..à..8(...@Ç.. */
	$"3861 0038 3880 1194 38A0 0005 4800 1ED9"            /* 8a.88Ä.î8†..H..Ÿ */
	$"8041 0014 387F 0000 4800 1CED 8041 0014"            /* ÄA..8...H..ÌÄA.. */
	$"387E 0000 4800 1CF9 8041 0014 8801 0038"            /* 8~..H..˘ÄA..à..8 */
	$"2800 0020 4080 002C 8801 0038 2800 0000"            /* (.. @Ä.,à..8(... */
	$"4182 0020 3861 0038 389D 0000 88A1 0038"            /* AÇ. 8a.88ù..à°.8 */
	$"38A5 0001 4800 1AD1 8041 0014 4800 0018"            /* 8•..H..—ÄA..H... */
	$"3862 0364 389D 0000 38A0 0006 4800 1AB9"            /* 8b.d8ù..8†..H..π */
	$"8041 0014 8001 0158 3821 0150 7C08 03A6"            /* ÄA..Ä..X8!.P|..¶ */
	$"83E1 FFFC 83C1 FFF8 83A1 FFF4 4E80 0020"            /* É·ˇ¸É¡ˇ¯É°ˇÙNÄ.  */
	$"0000 0000 0000 2041 8003 0000 0000 0148"            /* ...... AÄ......H */
	$"0013 2E47 6574 5F69 636F 6E5F 6669 6C65"            /* ...Get_icon_file */
	$"5F6E 616D 6500 0000 7C08 02A6 93E1 FFFC"            /* _name...|..¶ì·ˇ¸ */
	$"93C1 FFF8 93A1 FFF4 9381 FFF0 9001 0008"            /* ì¡ˇ¯ì°ˇÙìÅˇê... */
	$"9421 FDE0 B061 023A 3BA4 0000 3800 0000"            /* î!˝‡∞a.:;§..8... */
	$"9004 0000 3800 0000 9001 019E A801 023A"            /* ê...8...ê..û®..: */
	$"B001 01A2 3800 0000 B001 01A8 3861 018C"            /* ∞..¢8...∞..®8a.å */
	$"4800 1A0D 8041 0014 3BE3 0000 7FE0 0735"            /* H...ÄA..;„...‡.5 */
	$"4082 0150 3861 018C A863 0044 3881 0038"            /* @Ç.P8a.å®c.D8Å.8 */
	$"4800 191D 6000 0000 3BE3 0000 7FE0 0735"            /* H...`...;„...‡.5 */
	$"4082 0130 3861 0038 3882 036A 38A0 0001"            /* @Ç.08a.88Ç.j8†.. */
	$"38C0 0000 4800 1DE9 8041 0014 5460 063F"            /* 8¿..H..ÈÄA..T`.? */
	$"4182 0048 4800 1AF1 8041 0014 3B83 0000"            /* AÇ.HH..ÒÄA..;É.. */
	$"3860 0000 4800 1BB9 8041 0014 387D 0000"            /* 8`..H..πÄA..8}.. */
	$"3880 F062 38A0 FFFF 38C0 0001 4BFF FB09"            /* 8Äb8†ˇˇ8¿..Kˇ˚. */
	$"6000 0000 3BE3 0000 387C 0000 4800 1B91"            /* `...;„..8|..H..ë */
	$"8041 0014 4800 00CC A801 01D0 B001 0154"            /* ÄA..H..Ã®..–∞..T */
	$"A801 01CE B001 0152 3BC1 013C 3800 0000"            /* ®..Œ∞..R;¡.<8... */
	$"941E 001C 3800 0016 B001 0156 3861 013C"            /* î...8...∞..V8a.< */
	$"4800 1D85 8041 0014 3BE3 0000 7FE0 0735"            /* H..ÖÄA..;„...‡.5 */
	$"4082 0010 801E 0000 2C00 0000 4181 001C"            /* @Ç..Ä...,...AÅ.. */
	$"3800 0015 B001 0156 3861 013C 4800 1D59"            /* 8...∞..V8a.<H..Y */
	$"8041 0014 3BE3 0000 7FE0 0735 4082 0064"            /* ÄA..;„...‡.5@Ç.d */
	$"801E 0000 2C00 0000 4081 0058 387D 0000"            /* Ä...,...@Å.X8}.. */
	$"4800 1A95 8041 0014 3BE3 0000 7FE0 0735"            /* H..ïÄA..;„...‡.5 */
	$"4082 0040 807E 0000 3881 0138 38A0 0100"            /* @Ç.@Ä~..8Å.88†.. */
	$"4800 1D2D 8041 0014 3BE3 0000 7FE0 0735"            /* H..-ÄA..;„...‡.5 */
	$"4082 0020 8061 0138 809D 0000 3CA0 4943"            /* @Ç. Äa.8Äù..<†IC */
	$"38A5 4E23 4800 1D21 8041 0014 3BE3 0000"            /* 8•N#H..!ÄA..;„.. */
	$"387F 0000 8001 0228 3821 0220 7C08 03A6"            /* 8...Ä..(8!. |..¶ */
	$"83E1 FFFC 83C1 FFF8 83A1 FFF4 8381 FFF0"            /* É·ˇ¸É¡ˇ¯É°ˇÙÉÅˇ */
	$"4E80 0020 0000 0000 0000 2041 8004 0000"            /* NÄ. ...... AÄ... */
	$"0000 01CC 0010 2E47 6574 5F76 6F6C 756D"            /* ...Ã...Get_volum */
	$"655F 6963 6F6E 0000 7C08 02A6 93E1 FFFC"            /* e_icon..|..¶ì·ˇ¸ */
	$"9001 0008 9421 FF40 B061 00DA 3800 0000"            /* ê...î!ˇ@∞a.⁄8... */
	$"9001 004A A801 00DA B001 004E 3800 0000"            /* ê..J®..⁄∞..N8... */
	$"B001 0054 3861 0038 4800 1835 8041 0014"            /* ∞..T8a.8H..5ÄA.. */
	$"3BE3 0000 3860 0000 7FE0 0735 4082 0014"            /* ;„..8`...‡.5@Ç.. */
	$"A801 007C 2C00 0000 4081 0008 3860 0001"            /* ®..|,...@Å..8`.. */
	$"8001 00C8 3821 00C0 7C08 03A6 83E1 FFFC"            /* Ä..»8!.¿|..¶É·ˇ¸ */
	$"4E80 0020 0000 0000 0000 2041 8001 0000"            /* NÄ. ...... AÄ... */
	$"0000 006C 000F 2E49 735F 766F 6C5F 656A"            /* ...l...Is_vol_ej */
	$"6563 7465 6400 0000 93E1 FFFC 3C80 6963"            /* ected...ì·ˇ¸<Äic */
	$"3884 7323 7C03 2000 4182 0084 4080 0040"            /* 8Ñs#|. .AÇ.Ñ@Ä.@ */
	$"3C80 6963 3884 6C34 7C03 2000 4182 0060"            /* <Äic8Ñl4|. .AÇ.` */
	$"4080 0018 3C80 4943 3884 4E23 7C03 2000"            /* @Ä..<ÄIC8ÑN#|. . */
	$"4182 0044 4800 0070 3C80 6963 3884 6C38"            /* AÇ.DH..p<Äic8Ñl8 */
	$"7C03 2000 4182 0040 4800 005C 3C80 6963"            /* |. .AÇ.@H..\<Äic */
	$"3884 7338 7C03 2000 4182 0044 4080 0048"            /* 8Ñs8|. .AÇ.D@Ä.H */
	$"3C80 6963 3884 7334 7C03 2000 4182 0028"            /* <Äic8Ñs4|. .AÇ.( */
	$"4800 0034 3BE0 0001 4800 0030 3BE0 0002"            /* H..4;‡..H..0;‡.. */
	$"4800 0028 3BE0 0003 4800 0020 3BE0 0004"            /* H..(;‡..H.. ;‡.. */
	$"4800 0018 3BE0 0005 4800 0010 3BE0 0006"            /* H...;‡..H...;‡.. */
	$"4800 0008 3BE0 0000 387F 0000 83E1 FFFC"            /* H...;‡..8...É·ˇ¸ */
	$"4E80 0020 0000 0000 0000 2040 0001 0000"            /* NÄ. ...... @.... */
	$"0000 00BC 0010 2E52 6573 4963 6F6E 546F"            /* ...º...ResIconTo */
	$"4454 4963 6F6E 0000 7C08 02A6 BF61 FFEC"            /* DTIcon..|..¶øaˇÏ */
	$"9001 0008 9421 FFB0 3BA3 0000 9081 006C"            /* ê...î!ˇ∞;£..êÅ.l */
	$"3BC5 0000 3BE0 0000 3B80 0000 3C1D 969D"            /* ;≈..;‡..;Ä..<.ñù */
	$"2800 6C38 4182 0010 3C1D 969D 2800 6C34"            /* (.l8AÇ..<.ñù(.l4 */
	$"4082 0010 881E 000A 2800 0000 4082 0028"            /* @Ç..à...(...@Ç.( */
	$"3C1D 969D 2800 7338 4182 0010 3C1D 969D"            /* <.ñù(.s8AÇ..<.ñù */
	$"2800 7334 4082 0014 881E 000B 2800 0000"            /* (.s4@Ç..à...(... */
	$"4182 0008 3B80 0001 387D 0000 4BFF FEAD"            /* AÇ..;Ä..8}..Kˇ˛≠ */
	$"3B63 0000 7F63 0734 3800 0000 7C00 0734"            /* ;c...c.48...|..4 */
	$"7C03 0050 7C00 0034 5400 D97E 7F9C 0378"            /* |..P|..4T.Ÿ~.ú.x */
	$"5780 063F 4082 0078 3860 0000 A89E 0008"            /* WÄ.?@Ç.x8`..®û.. */
	$"38BB 0000 80DE 0000 80FE 0004 8101 006C"            /* 8ª..Äﬁ..Ä˛..Å..l */
	$"4800 11A9 6000 0000 3BE3 0000 7FE0 0735"            /* H..©`...;„...‡.5 */
	$"4082 0030 3C1D B6BD 2800 4E23 4082 0010"            /* @Ç.0<.∂Ω(.N#@Ç.. */
	$"3800 0000 981E 000A 4800 0018 3C1D 969D"            /* 8...ò...H...<.ñù */
	$"2800 7323 4082 000C 3800 0000 981E 000B"            /* (.s#@Ç..8...ò... */
	$"7FE0 0734 2C00 EC6C 4182 0010 7FE0 0734"            /* .‡.4,.ÏlAÇ...‡.4 */
	$"2C00 FFCE 4082 0008 3BE0 0000 387F 0000"            /* ,.ˇŒ@Ç..;‡..8... */
	$"8001 0058 3821 0050 7C08 03A6 BB61 FFEC"            /* Ä..X8!.P|..¶ªaˇÏ */
	$"4E80 0020 0000 0000 0000 2041 8005 0000"            /* NÄ. ...... AÄ... */
	$"0000 012C 000D 2E41 6464 4F6E 6544 5449"            /* ...,...AddOneDTI */
	$"636F 6E00 7C08 02A6 93E1 FFFC 93C1 FFF8"            /* con.|..¶ì·ˇ¸ì¡ˇ¯ */
	$"93A1 FFF4 9001 0008 9421 FFA0 B061 007A"            /* ì°ˇÙê...î!ˇ†∞a.z */
	$"9081 007C 90A1 0080 90C1 0084 3BA7 0000"            /* êÅ.|ê°.Äê¡.Ñ;ß.. */
	$"8061 007C 3881 003C 38A1 0038 4800 0175"            /* Äa.|8Å.<8°.8H..u */
	$"6000 0000 8001 003C 5400 040E 9001 003C"            /* `...Ä..<T...ê..< */
	$"8001 0038 5400 040E 9001 0038 387D 0000"            /* Ä..8T...ê..88}.. */
	$"4800 16E5 8041 0014 3BE3 0000 7FE0 0735"            /* H..ÂÄA..;„...‡.5 */
	$"4082 00FC 8062 00EC 3880 0FE0 38A0 0001"            /* @Ç.¸Äb.Ï8Ä.‡8†.. */
	$"4800 15D5 8041 0014 7C7E 1B79 4082 000C"            /* H..’ÄA..|~.y@Ç.. */
	$"3BE0 FF94 4800 009C 3800 0001 9801 004A"            /* ;‡ˇîH..ú8...ò..J */
	$"3800 0001 9801 004B 8001 0080 9001 0040"            /* 8...ò..KÄ..Äê..@ */
	$"8001 0084 9001 0044 A801 007A B001 0048"            /* Ä..Ñê..D®..z∞..H */
	$"807D 0000 8081 003C 38BE 0000 38C1 0040"            /* Ä}..ÄÅ.<8æ..8¡.@ */
	$"4800 159D 8041 0014 3BE3 0000 7FE0 0735"            /* H..ùÄA..;„...‡.5 */
	$"4082 0044 8001 0038 2800 0000 4182 0038"            /* @Ç.DÄ..8(...AÇ.8 */
	$"8801 004A 2800 0000 4182 002C 8801 004B"            /* à..J(...AÇ.,à..K */
	$"2800 0000 4182 0020 807D 0000 8081 0038"            /* (...AÇ. Ä}..ÄÅ.8 */
	$"38BE 0000 38C1 0040 4800 1555 8041 0014"            /* 8æ..8¡.@H..UÄA.. */
	$"3BE3 0000 387E 0000 4800 155D 8041 0014"            /* ;„..8~..H..]ÄA.. */
	$"7FE0 0735 4082 0038 8801 004A 2800 0000"            /* .‡.5@Ç.8à..J(... */
	$"4182 002C 8801 004B 2800 0000 4182 0020"            /* AÇ.,à..K(...AÇ.  */
	$"3BE0 FC18 807D 0000 3880 0000 4800 1541"            /* ;‡¸.Ä}..8Ä..H..A */
	$"8041 0014 3800 0000 901D 0000 387F 0000"            /* ÄA..8...ê...8... */
	$"8001 0068 3821 0060 7C08 03A6 83E1 FFFC"            /* Ä..h8!.`|..¶É·ˇ¸ */
	$"83C1 FFF8 83A1 FFF4 4E80 0020 0000 0000"            /* É¡ˇ¯É°ˇÙNÄ. .... */
	$"0000 2041 8003 0000 0000 0188 000F 2E44"            /* .. AÄ......à...D */
	$"5447 6574 4963 6F6E 5375 6974 6500 0000"            /* TGetIconSuite... */
	$"3C03 8000 2800 FF00 4082 001C 3CC0 0001"            /* <.Ä.(.ˇ.@Ç..<¿.. */
	$"38C6 FF00 90C4 0000 3800 00FF 9005 0000"            /* 8∆ˇ.êƒ..8..ˇê... */
	$"4E80 0020 3C03 8000 2800 00FF 4082 001C"            /* NÄ. <.Ä.(..ˇ@Ç.. */
	$"3800 00FF 9004 0000 3CC0 0001 38C6 FF00"            /* 8..ˇê...<¿..8∆ˇ. */
	$"90C5 0000 4E80 0020 3C03 8000 2800 0400"            /* ê≈..NÄ. <.Ä.(... */
	$"4082 0018 3800 0500 9004 0000 3800 00FF"            /* @Ç..8...ê...8..ˇ */
	$"9005 0000 4E80 0020 9064 0000 3800 0000"            /* ê...NÄ. êd..8... */
	$"9005 0000 4E80 0020 0000 0000 0000 2040"            /* ê...NÄ. ...... @ */
	$"0000 0000 0000 0078 0013 2E45 7870 616E"            /* .......x...Expan */
	$"644D 6574 6153 656C 6563 746F 7200 0000"            /* dMetaSelector... */
	$"93E1 FFFC 93C1 FFF8 3BC2 0370 3BE0 0000"            /* ì·ˇ¸ì¡ˇ¯;¬.p;‡.. */
	$"4800 007C 3860 0000 7FE0 0734 1C00 0014"            /* H..|8`...‡.4.... */
	$"7C7E 012E 3880 0000 7FE0 0734 1C60 0014"            /* |~..8Ä...‡.4.`.. */
	$"3803 0004 7C9E 012E 3880 0000 7FE0 0734"            /* 8...|û..8Ä...‡.4 */
	$"1C60 0014 3803 0008 7C9E 012E 3880 0000"            /* .`..8...|û..8Ä.. */
	$"7FE0 0734 1C60 0014 3803 000C 7C9E 012E"            /* .‡.4.`..8...|û.. */
	$"389F FFFF 7FE0 0734 1C60 0014 3803 0010"            /* 8üˇˇ.‡.4.`..8... */
	$"7C9E 032E 389F 0001 7FE0 0734 1C60 0014"            /* |û..8ü...‡.4.`.. */
	$"3803 0012 7C9E 032E 3BFF 0001 7FE0 0734"            /* 8...|û..;ˇ...‡.4 */
	$"2C00 0014 4180 FF80 3800 0013 B002 00F8"            /* ,...AÄˇÄ8...∞..¯ */
	$"83E1 FFFC 83C1 FFF8 4E80 0020 0000 0000"            /* É·ˇ¸É¡ˇ¯NÄ. .... */
	$"0000 2040 0002 0000 0000 00AC 000C 2E46"            /* .. @.......¨...F */
	$"4949 6E69 7443 6163 6865 0000 93E1 FFFC"            /* IInitCache..ì·ˇ¸ */
	$"3BE2 0370 7C64 0734 A802 00FA 7C04 0000"            /* ;‚.p|d.4®..˙|... */
	$"4182 00AC 7C60 0734 1C80 0014 3804 0012"            /* AÇ.¨|`.4.Ä..8... */
	$"7CBF 02AE 7C60 0734 1C80 0014 3804 0010"            /* |ø.Æ|`.4.Ä..8... */
	$"7C1F 02AE 1C80 0014 3804 0012 7CBF 032E"            /* |..Æ.Ä..8...|ø.. */
	$"7C64 0734 A802 00F8 7C04 0000 4082 001C"            /* |d.4®..¯|...@Ç.. */
	$"7C60 0734 1C80 0014 3804 0010 7C1F 02AE"            /* |`.4.Ä..8...|..Æ */
	$"B002 00F8 4800 0030 7C60 0734 1C80 0014"            /* ∞..¯H..0|`.4.Ä.. */
	$"3804 0010 7CBF 02AE 7C60 0734 1C80 0014"            /* 8...|ø.Æ|`.4.Ä.. */
	$"3804 0012 7C1F 02AE 1C80 0014 3804 0010"            /* 8...|..Æ.Ä..8... */
	$"7CBF 032E A8A2 00FA 7C60 0734 1C80 0014"            /* |ø..®¢.˙|`.4.Ä.. */
	$"3804 0012 7CBF 032E A802 00FA 1C80 0014"            /* 8...|ø..®..˙.Ä.. */
	$"3804 0010 7C7F 032E B062 00FA 83E1 FFFC"            /* 8...|...∞b.˙É·ˇ¸ */
	$"4E80 0020 0000 0000 0000 2040 0001 0000"            /* NÄ. ...... @.... */
	$"0000 00C8 0010 2E46 494D 616B 6543 656C"            /* ...»...FIMakeCel */
	$"6C46 6972 7374 0000 7C08 02A6 BF61 FFEC"            /* lFirst..|..¶øaˇÏ */
	$"9001 0008 9421 FFA0 3B63 0000 3B84 0000"            /* ê...î!ˇ†;c..;Ñ.. */
	$"3BA5 0000 3BC2 0370 3800 0000 9001 0038"            /* ;•..;¬.p8...ê..8 */
	$"A862 00F8 A802 00FA 7C03 0000 4082 0008"            /* ®b.¯®..˙|...@Ç.. */
	$"4BFF FE11 ABE2 00FA 7FE0 0734 1C00 0014"            /* Kˇ˛.´‚.˙.‡.4.... */
	$"7C1E 002E 7C1B 0040 4082 004C 7FE0 0734"            /* |...|..@@Ç.L.‡.4 */
	$"1C60 0014 3803 0004 7C1E 002E 7C1C 0040"            /* .`..8...|...|..@ */
	$"4082 0034 7FE0 0734 1C60 0014 3803 0008"            /* @Ç.4.‡.4.`..8... */
	$"7C1E 002E 7C1D 0040 4082 001C 7FE0 0734"            /* |...|..@@Ç...‡.4 */
	$"1C60 0014 3803 000C 7C1E 002E 9001 0038"            /* .`..8...|...ê..8 */
	$"4800 0028 7FE3 0734 A802 00F8 7C03 0000"            /* H..(.„.4®..¯|... */
	$"4182 0018 7FE0 0734 1C60 0014 3803 0012"            /* AÇ...‡.4.`..8... */
	$"7FFE 02AE 4BFF FF84 8001 0038 2800 0000"            /* .˛.ÆKˇˇÑÄ..8(... */
	$"4182 0020 281D 0000 4182 0010 3861 0038"            /* AÇ. (...AÇ..8a.8 */
	$"4800 02C5 6000 0000 387F 0000 4BFF FE31"            /* H..≈`...8...Kˇ˛1 */
	$"8061 0038 8001 0068 3821 0060 7C08 03A6"            /* Äa.8Ä..h8!.`|..¶ */
	$"BB61 FFEC 4E80 0020 0000 0000 0000 2041"            /* ªaˇÏNÄ. ...... A */
	$"8005 0000 0000 0100 0010 2E46 495F 6361"            /* Ä..........FI_ca */
	$"6368 655F 7365 6172 6368 0000 7C08 02A6"            /* che_search..|..¶ */
	$"93E1 FFFC 93C1 FFF8 93A1 FFF4 9001 0008"            /* ì·ˇ¸ì¡ˇ¯ì°ˇÙê... */
	$"9421 FFB0 9061 0068 9081 006C 3BA5 0000"            /* î!ˇ∞êa.hêÅ.l;•.. */
	$"90C1 0074 3BE2 0370 A862 00F8 A802 00FA"            /* ê¡.t;‚.p®b.¯®..˙ */
	$"7C03 0000 4082 0008 4BFF FCE9 281D 0000"            /* |...@Ç..Kˇ¸È(... */
	$"4182 0018 3861 0074 4800 022D 6000 0000"            /* AÇ..8a.tH..-`... */
	$"3BC3 0000 4800 0008 3BC0 0000 7FC0 0735"            /* ;√..H...;¿...¿.5 */
	$"4082 00A0 A802 00F8 1C60 0014 3803 000C"            /* @Ç.†®..¯.`..8... */
	$"7C1F 002E 2800 0000 4182 0038 A802 00F8"            /* |...(...AÇ.8®..¯ */
	$"1C60 0014 3803 0008 7C1F 002E 2800 0000"            /* .`..8...|...(... */
	$"4182 0020 A802 00F8 1C60 0014 3803 000C"            /* AÇ. ®..¯.`..8... */
	$"7C7F 002E 3880 0001 4800 10C5 8041 0014"            /* |...8Ä..H..≈ÄA.. */
	$"8081 0074 A802 00F8 1C60 0014 3803 000C"            /* ÄÅ.t®..¯.`..8... */
	$"7C9F 012E 8061 0068 A802 00F8 1C00 0014"            /* |ü..Äa.h®..¯.... */
	$"7C7F 012E 8081 006C A802 00F8 1C60 0014"            /* |...ÄÅ.l®..¯.`.. */
	$"3803 0004 7C9F 012E A802 00F8 1C60 0014"            /* 8...|ü..®..¯.`.. */
	$"3803 0008 7FBF 012E A862 00F8 4BFF FCF1"            /* 8....ø..®b.¯Kˇ¸Ò */
	$"8001 0058 3821 0050 7C08 03A6 83E1 FFFC"            /* Ä..X8!.P|..¶É·ˇ¸ */
	$"83C1 FFF8 83A1 FFF4 4E80 0020 0000 0000"            /* É¡ˇ¯É°ˇÙNÄ. .... */
	$"0000 2041 8003 0000 0000 0120 0012 2E46"            /* .. AÄ...... ...F */
	$"495F 7374 6F72 655F 696E 5F63 6163 6865"            /* I_store_in_cache */
	$"7C08 02A6 93E1 FFFC 93C1 FFF8 9001 0008"            /* |..¶ì·ˇ¸ì¡ˇ¯ê... */
	$"9421 FFC0 3BE4 0000 8004 0000 2800 0000"            /* î!ˇ¿;‰..Ä...(... */
	$"4182 0040 807F 0000 8003 0000 2800 0000"            /* AÇ.@Ä...Ä...(... */
	$"4082 0010 807F 0000 4800 112D 8041 0014"            /* @Ç..Ä...H..-ÄA.. */
	$"387F 0000 4800 10D9 8041 0014 3BC3 0000"            /* 8...H..ŸÄA..;√.. */
	$"7FC0 0735 4182 000C 3800 0000 901F 0000"            /* .¿.5AÇ..8...ê... */
	$"3860 0000 8001 0048 3821 0040 7C08 03A6"            /* 8`..Ä..H8!.@|..¶ */
	$"83E1 FFFC 83C1 FFF8 4E80 0020 0000 0000"            /* É·ˇ¸É¡ˇ¯NÄ. .... */
	$"0000 2041 8002 0000 0000 007C 000E 2E43"            /* .. AÄ......|...C */
	$"6F70 795F 6F6E 655F 6963 6F6E 7C08 02A6"            /* opy_one_icon|..¶ */
	$"93E1 FFFC 93C1 FFF8 9001 0008 9421 FFC0"            /* ì·ˇ¸ì¡ˇ¯ê...î!ˇ¿ */
	$"9061 0058 8062 00F4 3880 0FE0 38A0 0001"            /* êa.XÄb.Ù8Ä.‡8†.. */
	$"4800 0F25 8041 0014 3BE3 0000 8061 0058"            /* H..%ÄA..;„..Äa.X */
	$"3880 FFFF 38BF 0000 38C0 0000 4800 0F21"            /* 8Äˇˇ8ø..8¿..H..! */
	$"8041 0014 3BC3 0000 387F 0000 4800 0F29"            /* ÄA..;√..8...H..) */
	$"8041 0014 387E 0000 8001 0048 3821 0040"            /* ÄA..8~..Ä..H8!.@ */
	$"7C08 03A6 83E1 FFFC 83C1 FFF8 4E80 0020"            /* |..¶É·ˇ¸É¡ˇ¯NÄ.  */
	$"0000 0000 0000 2041 8002 0000 0000 0074"            /* ...... AÄ......t */
	$"0012 2E46 495F 636F 7079 5F65 6163 685F"            /* ...FI_copy_each_ */
	$"6963 6F6E 7C08 02A6 93E1 FFFC 93C1 FFF8"            /* icon|..¶ì·ˇ¸ì¡ˇ¯ */
	$"9001 0008 9421 FFC0 3BC3 0000 4800 0FD1"            /* ê...î!ˇ¿;√..H..— */
	$"8041 0014 3BE3 0000 7FE0 0735 4082 0034"            /* ÄA..;„...‡.5@Ç.4 */
	$"807E 0000 4BFF FF39 3BE3 0000 7FE0 0735"            /* Ä~..Kˇˇ9;„...‡.5 */
	$"4182 0028 807E 0000 3880 0001 4800 0EB1"            /* AÇ.(Ä~..8Ä..H..± */
	$"8041 0014 3800 0000 901E 0000 4800 000C"            /* ÄA..8...ê...H... */
	$"3800 0000 901E 0000 387F 0000 8001 0048"            /* 8...ê...8...Ä..H */
	$"3821 0040 7C08 03A6 83E1 FFFC 83C1 FFF8"            /* 8!.@|..¶É·ˇ¸É¡ˇ¯ */
	$"4E80 0020 0000 0000 0000 2041 8002 0000"            /* NÄ. ...... AÄ... */
	$"0000 0080 000F 2E46 495F 636C 6F6E 655F"            /* ...Ä...FI_clone_ */
	$"7375 6974 6500 0000 7C08 02A6 93E1 FFFC"            /* suite...|..¶ì·ˇ¸ */
	$"9001 0008 9421 FF70 B061 00AA 3801 0038"            /* ê...î!ˇp∞a.™8..8 */
	$"9001 006C 3800 0014 9001 0070 A801 00AA"            /* ê..l8...ê..p®..™ */
	$"B001 0062 3800 0000 9001 005E 3861 004C"            /* ∞..b8...ê..^8a.L */
	$"4800 0FB5 8041 0014 3861 0038 8063 000A"            /* H..µÄA..8a.8Äc.. */
	$"3800 0000 7C03 0050 7C00 0034 541F D97E"            /* 8...|..P|..4T.Ÿ~ */
	$"387F 0000 8001 0098 3821 0090 7C08 03A6"            /* 8...Ä..ò8!.ê|..¶ */
	$"83E1 FFFC 4E80 0020 0000 0000 0000 2041"            /* É·ˇ¸NÄ. ...... A */
	$"8001 0000 0000 0070 0010 2E49 735F 6C6F"            /* Ä......p...Is_lo */
	$"6361 6C5F 766F 6C75 6D65 0000 7C08 02A6"            /* cal_volume..|..¶ */
	$"93E1 FFFC 93C1 FFF8 93A1 FFF4 9001 0008"            /* ì·ˇ¸ì¡ˇ¯ì°ˇÙê... */
	$"9421 FF30 B061 00EA 9081 00EC 8001 00EC"            /* î!ˇ0∞a.ÍêÅ.ÏÄ..Ï */
	$"9001 004A A801 00EA B001 004E 3800 0000"            /* ê..J®..Í∞..N8... */
	$"9801 0052 3BC0 0001 3BA0 0000 3800 0002"            /* ò..R;¿..;†..8... */
	$"9001 0068 B3C1 0054 3861 0038 4800 0FB1"            /* ê..h≥¡.T8a.8H..± */
	$"8041 0014 3BE3 0000 7FE0 0735 4082 0030"            /* ÄA..;„...‡.5@Ç.0 */
	$"3861 0038 8063 0020 3C03 B9B2 2800 4452"            /* 8a.8Äc. <.π≤(.DR */
	$"4082 001C 3861 0038 8063 0024 3C03 BAAE"            /* @Ç..8a.8Äc.$<.∫Æ */
	$"2800 494B 4082 0008 3BA0 0001 7FE0 0735"            /* (.IK@Ç..;†...‡.5 */
	$"3BDE 0001 4082 000C 57A0 063F 4182 FFA0"            /* ;ﬁ..@Ç..W†.?AÇˇ† */
	$"387F 0000 8001 00D8 3821 00D0 7C08 03A6"            /* 8...Ä..ÿ8!.–|..¶ */
	$"83E1 FFFC 83C1 FFF8 83A1 FFF4 4E80 0020"            /* É·ˇ¸É¡ˇ¯É°ˇÙNÄ.  */
	$"0000 0000 0000 2041 8003 0000 0000 00C4"            /* ...... AÄ......ƒ */
	$"0013 2E47 6574 4465 736B 746F 7046 696C"            /* ...GetDesktopFil */
	$"654E 616D 6500 0000 7C08 02A6 93E1 FFFC"            /* eName...|..¶ì·ˇ¸ */
	$"93C1 FFF8 93A1 FFF4 9381 FFF0 9001 0008"            /* ì¡ˇ¯ì°ˇÙìÅˇê... */
	$"9421 FF30 3B83 0000 3BA4 0000 90A1 00F0"            /* î!ˇ0;É..;§..ê°. */
	$"3BC6 0000 3800 0014 9001 00A0 38A1 00A4"            /* ;∆..8...ê..†8°.§ */
	$"38C1 00A0 4800 08DD 6000 0000 3BE3 0000"            /* 8¡.†H..›`...;„.. */
	$"7FE0 0735 4082 007C 8001 00A6 5400 04E7"            /* .‡.5@Ç.|Ä..¶T..Á */
	$"4182 006C 9381 004A B3A1 004E 3861 0038"            /* AÇ.lìÅ.J≥°.N8a.8 */
	$"4800 0E1D 8041 0014 3BE3 0000 8001 0054"            /* H...ÄA..;„..Ä..T */
	$"5403 07FE 3800 0000 7C03 0050 7C00 0034"            /* T..˛8...|..P|..4 */
	$"5400 D97E 981E 0000 7FE0 0734 2C00 FFCE"            /* T.Ÿ~ò....‡.4,.ˇŒ */
	$"4082 001C 3861 0038 4800 0DFD 8041 0014"            /* @Ç..8a.8H..˝ÄA.. */
	$"3BE3 0000 3800 0000 981E 0000 A801 0050"            /* ;„..8...ò...®..P */
	$"8061 00F0 B003 0000 4800 0008 3BE0 FFCE"            /* Äa.∞...H...;‡ˇŒ */
	$"387F 0000 8001 00D8 3821 00D0 7C08 03A6"            /* 8...Ä..ÿ8!.–|..¶ */
	$"83E1 FFFC 83C1 FFF8 83A1 FFF4 8381 FFF0"            /* É·ˇ¸É¡ˇ¯É°ˇÙÉÅˇ */
	$"4E80 0020 0000 0000 0000 2041 8004 0000"            /* NÄ. ...... AÄ... */
	$"0000 00EC 0007 2E44 544F 7065 6E00 0000"            /* ...Ï...DTOpen... */
	$"7C08 02A6 BF41 FFE8 9001 0008 9421 FFB0"            /* |..¶øAˇËê...î!ˇ∞ */
	$"3B43 0000 3BA4 0000 3B80 EC6C 3C60 424E"            /* ;C..;§..;ÄÏl<`BN */
	$"3863 444C 4800 0E01 8041 0014 3B63 0000"            /* 8cDLH...ÄA..;c.. */
	$"3BC0 0001 3800 0000 901D 0000 4800 005C"            /* ;¿..8...ê...H..\ */
	$"3C60 424E 389E 0000 3863 444C 4800 0DF1"            /* <`BN8û..8cDLH..Ò */
	$"8041 0014 7C7F 1B79 4182 003C 807F 0000"            /* ÄA..|..yAÇ.<Ä... */
	$"8003 0000 7C00 D040 4082 002C 807F 0000"            /* Ä...|.–@@Ç.,Ä... */
	$"A803 0006 2C00 0000 4180 001C 807F 0000"            /* ®...,...AÄ..Ä... */
	$"A803 000C 2C00 0000 4180 000C 93FD 0000"            /* ®...,...AÄ..ì˝.. */
	$"3B80 0000 3BDE 0001 7FC3 0734 7F60 0734"            /* ;Ä..;ﬁ...√.4.`.4 */
	$"7C03 0000 4181 0010 801D 0000 2800 0000"            /* |...AÅ..Ä...(... */
	$"4182 FF90 387C 0000 8001 0058 3821 0050"            /* AÇˇê8|..Ä..X8!.P */
	$"7C08 03A6 BB41 FFE8 4E80 0020 0000 0000"            /* |..¶ªAˇËNÄ. .... */
	$"0000 2041 8006 0000 0000 00CC 0017 2E46"            /* .. AÄ......Ã...F */
	$"696E 6442 756E 646C 6547 6976 656E 4372"            /* indBundleGivenCr */
	$"6561 746F 7200 0000 93E1 FFFC 93C1 FFF8"            /* eator...ì·ˇ¸ì¡ˇ¯ */
	$"93A1 FFF4 3BA0 EC6C 80C4 0000 3BE6 0008"            /* ì°ˇÙ;†ÏlÄƒ..;Ê.. */
	$"3BC0 0000 3800 0000 9005 0000 4800 0040"            /* ;¿..8...ê...H..@ */
	$"801F 0000 7C00 1840 4082 001C A81F 0004"            /* Ä...|..@@Ç..®... */
	$"2C00 0000 4180 0010 93E5 0000 3BA0 0000"            /* ,...AÄ..ìÂ..;†.. */
	$"4800 001C A8DF 0004 3806 0001 5400 103A"            /* H...®ﬂ..8...T..: */
	$"7FE0 FA14 3BFF 0006 3BDE 0001 7FC7 0734"            /* .‡˙.;ˇ..;ﬁ...«.4 */
	$"80C4 0000 A8C6 0006 3806 0001 7C07 0000"            /* Äƒ..®∆..8...|... */
	$"4080 0010 8005 0000 2800 0000 4182 FFA4"            /* @Ä..Ä...(...AÇˇ§ */
	$"387D 0000 83E1 FFFC 83C1 FFF8 83A1 FFF4"            /* 8}..É·ˇ¸É¡ˇ¯É°ˇÙ */
	$"4E80 0020 0000 0000 0000 2040 0003 0000"            /* NÄ. ...... @.... */
	$"0000 009C 0011 2E46 696E 6454 7970 6549"            /* ...ú...FindTypeI */
	$"6E42 756E 646C 6500 7C08 02A6 BF21 FFE4"            /* nBundle.|..¶ø!ˇ‰ */
	$"9001 0008 9421 FFA0 3B43 0000 3B24 0000"            /* ê...î!ˇ†;C..;$.. */
	$"3B85 0000 3B60 EC6C 3BC0 0000 3BBA 0006"            /* ;Ö..;`Ïl;¿..;∫.. */
	$"3800 0000 B005 0000 4800 0048 3C60 4652"            /* 8...∞...H..H<`FR */
	$"A89D 0002 3863 4546 4800 0A95 8041 0014"            /* ®ù..8cEFH..ïÄA.. */
	$"7C7F 1B79 4182 0024 807F 0000 8003 0000"            /* |..yAÇ.$Ä...Ä... */
	$"7C00 C840 4082 0014 807F 0000 A803 0004"            /* |.»@@Ç..Ä...®... */
	$"B01C 0000 3B60 0000 3BBD 0004 3BDE 0001"            /* ∞...;`..;Ω..;ﬁ.. */
	$"7FC3 0734 A81A 0004 7C03 0000 4181 0010"            /* .√.4®...|...AÅ.. */
	$"A81C 0000 2C00 0000 4182 FFA4 387B 0000"            /* ®...,...AÇˇ§8{.. */
	$"8001 0068 3821 0060 7C08 03A6 BB21 FFE4"            /* Ä..h8!.`|..¶ª!ˇ‰ */
	$"4E80 0020 0000 0000 0000 2041 8007 0000"            /* NÄ. ...... AÄ... */
	$"0000 00AC 0013 2E47 6574 4C6F 6361 6C49"            /* ...¨...GetLocalI */
	$"4446 726F 6D46 5245 4600 0000 93E1 FFFC"            /* DFromFREF...ì·ˇ¸ */
	$"93C1 FFF8 93A1 FFF4 3BA0 EC6C 3BC0 0000"            /* ì¡ˇ¯ì°ˇÙ;†Ïl;¿.. */
	$"3BE3 0006 3800 0000 B005 0000 4800 0028"            /* ;„..8...∞...H..( */
	$"A8DF 0000 7C80 0734 7C06 0000 4082 0010"            /* ®ﬂ..|Ä.4|...@Ç.. */
	$"A81F 0002 B005 0000 3BA0 0000 3BFF 0004"            /* ®...∞...;†..;ˇ.. */
	$"3BDE 0001 7FC6 0734 A803 0004 7C06 0000"            /* ;ﬁ...∆.4®...|... */
	$"4181 0010 A805 0000 2C00 0000 4182 FFC4"            /* AÅ..®...,...AÇˇƒ */
	$"387D 0000 83E1 FFFC 83C1 FFF8 83A1 FFF4"            /* 8}..É·ˇ¸É¡ˇ¯É°ˇÙ */
	$"4E80 0020 0000 0000 0000 2040 0003 0000"            /* NÄ. ...... @.... */
	$"0000 0078 0019 2E47 6574 4963 6F6E 5273"            /* ...x...GetIconRs */
	$"7263 4944 4672 6F6D 4C6F 6361 6C49 4400"            /* rcIDFromLocalID. */
	$"93E1 FFFC 7C60 0734 2C00 0004 4182 0054"            /* ì·ˇ¸|`.4,...AÇ.T */
	$"4080 001C 2C00 0002 4182 0030 4080 0038"            /* @Ä..,...AÇ.0@Ä.8 */
	$"2C00 0001 4080 0018 4800 005C 2C00 0006"            /* ,...@Ä..H..\,... */
	$"4182 0048 4080 0050 4800 0034 3FE0 4943"            /* AÇ.H@Ä.PH..4?‡IC */
	$"3BFF 4E23 4800 0044 3FE0 6963 3BFF 6C34"            /* ;ˇN#H..D?‡ic;ˇl4 */
	$"4800 0038 3FE0 6963 3BFF 6C38 4800 002C"            /* H..8?‡ic;ˇl8H.., */
	$"3FE0 6963 3BFF 7323 4800 0020 3FE0 6963"            /* ?‡ic;ˇs#H.. ?‡ic */
	$"3BFF 7334 4800 0014 3FE0 6963 3BFF 7338"            /* ;ˇs4H...?‡ic;ˇs8 */
	$"4800 0008 3BE0 0000 387F 0000 83E1 FFFC"            /* H...;‡..8...É·ˇ¸ */
	$"4E80 0020 0000 0000 0000 2040 0001 0000"            /* NÄ. ...... @.... */
	$"0000 0094 0010 2E44 5449 636F 6E54 6F52"            /* ...î...DTIconToR */
	$"6573 4963 6F6E 0000 7C08 02A6 BF41 FFE8"            /* esIcon..|..¶øAˇË */
	$"9001 0008 9421 FE90 9061 0188 B081 018E"            /* ê...î!˛êêa.à∞Å.é */
	$"B0A1 0192 90C1 0194 90E1 0198 3B48 0000"            /* ∞°.íê¡.îê·.ò;H.. */
	$"3800 0000 9001 0044 3800 0000 9008 0000"            /* 8...ê..D8...ê... */
	$"8061 0188 A881 018E 38A1 0148 4800 0561"            /* Äa.à®Å.é8°.HH..a */
	$"6000 0000 3BE3 0000 7FE0 0735 4082 01C8"            /* `...;„...‡.5@Ç.» */
	$"A861 0148 3881 0048 4BFF F9C5 3BE3 0000"            /* ®a.H8Å.HKˇ˘≈;„.. */
	$"7FE0 0735 4082 0198 4800 07BD 8041 0014"            /* .‡.5@Ç.òH..ΩÄA.. */
	$"3B83 0000 3860 0000 4800 07C5 8041 0014"            /* ;É..8`..H..≈ÄA.. */
	$"A861 0148 3880 0002 38A1 0048 38C0 0001"            /* ®a.H8Ä..8°.H8¿.. */
	$"4800 08CD 8041 0014 3BC3 0000 3860 0001"            /* H..ÕÄA..;√..8`.. */
	$"4800 079D 8041 0014 7FC0 0734 2C00 FFFF"            /* H..ùÄA...¿.4,.ˇˇ */
	$"4182 0140 8061 0194 3881 0044 4BFF FB55"            /* AÇ.@Äa.î8Å.DKˇ˚U */
	$"3BE3 0000 7FE0 0735 4082 010C 8061 0044"            /* ;„...‡.5@Ç..Äa.D */
	$"4800 0995 8041 0014 3B63 0000 8061 0044"            /* H..ïÄA..;c..Äa.D */
	$"4800 08F5 8041 0014 3C60 4652 8081 0044"            /* H..ıÄA..<`FRÄÅ.D */
	$"38A1 0040 3863 4546 4BFF FC11 3BE3 0000"            /* 8°.@8cEFKˇ¸.;„.. */
	$"7FE0 0735 4082 00C0 8061 0040 8081 0198"            /* .‡.5@Ç.¿Äa.@ÄÅ.ò */
	$"38A1 003E 4BFF FCB5 3BE3 0000 7FE0 0735"            /* 8°.>Kˇ¸µ;„...‡.5 */
	$"4082 00A4 3C60 4943 8081 0044 38A1 0040"            /* @Ç.§<`ICÄÅ.D8°.@ */
	$"3863 4E23 4BFF FBD5 3BE3 0000 7FE0 0735"            /* 8cN#Kˇ˚’;„...‡.5 */
	$"4082 0084 8061 0040 A881 003E 38A1 003C"            /* @Ç.ÑÄa.@®Å.>8°.< */
	$"4BFF FD4D 3BE3 0000 7FE0 0735 4082 0068"            /* Kˇ˝M;„...‡.5@Ç.h */
	$"A861 0192 4BFF FDDD 7C7D 1B79 4182 0058"            /* ®a.íKˇ˝›|}.yAÇ.X */
	$"387D 0000 A881 003C 4800 0725 8041 0014"            /* 8}..®Å.<H..%ÄA.. */
	$"9061 0038 8001 0038 2800 0000 4182 0034"            /* êa.8Ä..8(...AÇ.4 */
	$"3861 0038 4800 0739 8041 0014 4800 08E1"            /* 8a.8H..9ÄA..H..· */
	$"8041 0014 7C60 0735 4082 0010 8001 0038"            /* ÄA..|`.5@Ç..Ä..8 */
	$"901A 0000 4800 0010 3BE0 EC6C 4800 0008"            /* ê...H...;‡ÏlH... */
	$"3BE0 EC6C 8061 0044 389B 0000 4800 08C9"            /* ;‡ÏlÄa.D8õ..H..… */
	$"8041 0014 387C 0000 4800 0725 8041 0014"            /* ÄA..8|..H..%ÄA.. */
	$"387E 0000 4800 0701 8041 0014 4800 0010"            /* 8~..H...ÄA..H... */
	$"4800 067D 8041 0014 3BE3 0000 7FE0 0735"            /* H..}ÄA..;„...‡.5 */
	$"4182 0014 7FE0 0734 2C00 FF94 4182 0008"            /* AÇ...‡.4,.ˇîAÇ.. */
	$"3BE0 EC6C 387F 0000 8001 0178 3821 0170"            /* ;‡Ïl8...Ä..x8!.p */
	$"7C08 03A6 BB41 FFE8 4E80 0020 0000 0000"            /* |..¶ªAˇËNÄ. .... */
	$"0000 2041 8006 0000 0000 0234 0017 2E47"            /* .. AÄ......4...G */
	$"6574 4963 6F6E 4672 6F6D 4465 736B 746F"            /* etIconFromDeskto */
	$"7046 696C 6500 0000 7C08 02A6 BF01 FFE0"            /* pFile...|..¶ø.ˇ‡ */
	$"9001 0008 9421 FF30 3B03 0000 3B24 0000"            /* ê...î!ˇ0;...;$.. */
	$"3B85 0000 3B46 0000 3B67 0000 3BA8 0000"            /* ;Ö..;F..;g..;®.. */
	$"3800 0000 9008 0000 38A1 003A 38C1 0038"            /* 8...ê...8°.:8¡.8 */
	$"4BFF F879 3BC3 0000 7FC0 0735 4082 0130"            /* Kˇ¯y;√...¿.5@Ç.0 */
	$"8801 0038 2800 0000 4082 011C 7F80 0734"            /* à..8(...@Ç...Ä.4 */
	$"2C00 0004 4182 0048 4080 001C 2C00 0002"            /* ,...AÇ.H@Ä..,... */
	$"4182 002C 4080 0030 2C00 0001 4080 0018"            /* AÇ.,@Ä.0,...@Ä.. */
	$"4800 0044 2C00 0006 4182 0034 4080 0038"            /* H..D,...AÇ.4@Ä.8 */
	$"4800 0024 3BE0 0100 4800 0034 3BE0 0200"            /* H..$;‡..H..4;‡.. */
	$"4800 002C 3BE0 0400 4800 0024 3BE0 0040"            /* H..,;‡..H..$;‡.@ */
	$"4800 001C 3BE0 0080 4800 0014 3BE0 0100"            /* H...;‡.ÄH...;‡.. */
	$"4800 000C 3B80 0000 3BE0 0000 2C1F 0000"            /* H...;Ä..;‡..,... */
	$"4182 009C 387F 0000 4800 0695 8041 0014"            /* AÇ.ú8...H..ïÄA.. */
	$"907D 0000 801D 0000 2800 0000 4182 0078"            /* ê}..Ä...(...AÇ.x */
	$"807D 0000 4800 0691 8041 0014 A801 003A"            /* Ä}..H..ëÄA..®..: */
	$"B001 0054 3800 0000 9001 0058 807D 0000"            /* ∞..T8...ê..XÄ}.. */
	$"8003 0000 9001 005C 93E1 0060 9B81 0069"            /* Ä...ê..\ì·.`õÅ.i */
	$"9341 0070 9361 0074 3861 003C 4800 0671"            /* ìA.pìa.t8a.<H..q */
	$"8041 0014 3BC3 0000 807D 0000 4800 0679"            /* ÄA..;√..Ä}..H..y */
	$"8041 0014 7FC0 0735 4182 0054 807D 0000"            /* ÄA...¿.5AÇ.TÄ}.. */
	$"4800 0455 8041 0014 3800 0000 901D 0000"            /* H..UÄA..8...ê... */
	$"4800 003C 3BC0 FF94 4800 0034 3BC0 FFCE"            /* H..<;¿ˇîH..4;¿ˇŒ */
	$"4800 002C 3BC0 EC6C 4800 0024 3878 0000"            /* H..,;¿ÏlH..$8x.. */
	$"3899 0000 38BC 0000 38DA 0000 38FB 0000"            /* 8ô..8º..8⁄..8˚.. */
	$"391D 0000 4BFF FC15 3BC3 0000 387E 0000"            /* 9...Kˇ¸.;√..8~.. */
	$"8001 00D8 3821 00D0 7C08 03A6 BB01 FFE0"            /* Ä..ÿ8!.–|..¶ª.ˇ‡ */
	$"4E80 0020 0000 0000 0000 2041 8008 0000"            /* NÄ. ...... AÄ... */
	$"0000 01AC 000A 2E44 5447 6574 4963 6F6E"            /* ...¨...DTGetIcon */
	$"7C08 02A6 93E1 FFFC 93C1 FFF8 9001 0008"            /* |..¶ì·ˇ¸ì¡ˇ¯ê... */
	$"9421 FF40 9061 00D8 B081 00DE 90A1 00E0"            /* î!ˇ@êa.ÿ∞Å.ﬁê°.‡ */
	$"3BC6 0000 8001 00D8 9001 004A A801 00DE"            /* ;∆..Ä..ÿê..J®..ﬁ */
	$"B001 004E 8001 00E0 9001 0058 8006 0000"            /* ∞..NÄ..‡ê..XÄ... */
	$"9001 005C 3861 0038 4800 050D 8041 0014"            /* ê..\8a.8H...ÄA.. */
	$"3BE3 0000 7FE0 0735 4082 000C 8001 0060"            /* ;„...‡.5@Ç..Ä..` */
	$"901E 0000 387F 0000 8001 00C8 3821 00C0"            /* ê...8...Ä..»8!.¿ */
	$"7C08 03A6 83E1 FFFC 83C1 FFF8 4E80 0020"            /* |..¶É·ˇ¸É¡ˇ¯NÄ.  */
	$"0000 0000 0000 2041 8002 0000 0000 0080"            /* ...... AÄ......Ä */
	$"000D 2E48 4765 7456 6F6C 5061 726D 7300"            /* ...HGetVolParms. */
	$"7C08 02A6 93E1 FFFC 93C1 FFF8 93A1 FFF4"            /* |..¶ì·ˇ¸ì¡ˇ¯ì°ˇÙ */
	$"9001 0008 9421 FEB0 3BA3 0000 B081 016E"            /* ê...î!˛∞;£..∞Å.n */
	$"7CBF 2B79 4182 006C A801 016E B01F 0016"            /* |ø+yAÇ.l®..n∞... */
	$"281D 0000 4082 0018 3800 0000 901F 0012"            /* (...@Ç..8...ê... */
	$"3800 0000 B01F 001C 4800 002C 387D 0000"            /* 8...∞...H..,8}.. */
	$"3881 0038 88BD 0000 38A5 0001 4800 01E9"            /* 8Å.8àΩ..8•..H..È */
	$"8041 0014 3801 0038 901F 0012 3800 FFFF"            /* ÄA..8..8ê...8.ˇˇ */
	$"B01F 001C 387F 0000 4800 01B5 8041 0014"            /* ∞...8...H..µÄA.. */
	$"3BC3 0000 3800 0000 901F 0012 4800 0008"            /* ;√..8...ê...H... */
	$"3BC0 FFCE 387E 0000 8001 0158 3821 0150"            /* ;¿ˇŒ8~..Ä..X8!.P */
	$"7C08 03A6 83E1 FFFC 83C1 FFF8 83A1 FFF4"            /* |..¶É·ˇ¸É¡ˇ¯É°ˇÙ */
	$"4E80 0020 0000 0000 0000 2041 8003 0000"            /* NÄ. ...... AÄ... */
	$"0000 00B4 0014 2E47 6574 566F 6C75 6D65"            /* ...¥...GetVolume */
	$"496E 666F 4E6F 4E61 6D65 0000 7C08 02A6"            /* InfoNoName..|..¶ */
	$"93E1 FFFC 9001 0008 9421 FF40 9061 00D8"            /* ì·ˇ¸ê...î!ˇ@êa.ÿ */
	$"B081 00DE 90A1 00E0 8061 00D8 A881 00DE"            /* ∞Å.ﬁê°.‡Äa.ÿ®Å.ﬁ */
	$"38A1 0038 4BFF FEFD 3BE3 0000 7FE0 0735"            /* 8°.8Kˇ˛˝;„...‡.5 */
	$"4082 0010 A801 004E 8061 00E0 B003 0000"            /* @Ç..®..NÄa.‡∞... */
	$"387F 0000 8001 00C8 3821 00C0 7C08 03A6"            /* 8...Ä..»8!.¿|..¶ */
	$"83E1 FFFC 4E80 0020 0000 0000 0000 2041"            /* É·ˇ¸NÄ. ...... A */
	$"8001 0000 0000 005C 0011 2E44 6574 6572"            /* Ä......\...Deter */
	$"6D69 6E65 5652 6566 4E75 6D00 7C08 02A6"            /* mineVRefNum.|..¶ */
	$"93E1 FFFC 93C1 FFF8 93A1 FFF4 9381 FFF0"            /* ì·ˇ¸ì¡ˇ¯ì°ˇÙìÅˇ */
	$"9001 0008 9421 FFB0 B061 006A 3B84 0000"            /* ê...î!ˇ∞∞a.j;Ñ.. */
	$"A861 006A 4800 04B1 8041 0014 7C7F 1B79"            /* ®a.jH..±ÄA..|..y */
	$"4182 004C 807F 0000 A803 0004 5400 0673"            /* AÇ.LÄ...®...T..s */
	$"4182 0014 807F 0000 8063 0000 83C3 0000"            /* AÇ..Ä...Äc..É√.. */
	$"4800 000C 807F 0000 83C3 0000 387E 0012"            /* H...Ä...É√..8~.. */
	$"389C 0000 88BE 0012 38A5 0001 4800 0079"            /* 8ú..àæ..8•..H..y */
	$"8041 0014 3BA0 0000 4800 0010 3800 0000"            /* ÄA..;†..H...8... */
	$"981C 0000 3BA0 FFEB 387D 0000 8001 0058"            /* ò...;†ˇÎ8}..Ä..X */
	$"3821 0050 7C08 03A6 83E1 FFFC 83C1 FFF8"            /* 8!.P|..¶É·ˇ¸É¡ˇ¯ */
	$"83A1 FFF4 8381 FFF0 4E80 0020 0000 0000"            /* É°ˇÙÉÅˇNÄ. .... */
	$"0000 2041 8004 0000 0000 00B0 000E 2E47"            /* .. AÄ......∞...G */
	$"6574 4472 6976 6572 4E61 6D65 8182 0068"            /* etDriverNameÅÇ.h */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0060 9041 0014 800C 0000"            /* NÄ. ÅÇ.`êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 003C"            /* ÄL..|..¶NÄ. ÅÇ.< */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0070 9041 0014 800C 0000"            /* NÄ. ÅÇ.pêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 00C0"            /* ÄL..|..¶NÄ. ÅÇ.¿ */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 00BC 9041 0014 800C 0000"            /* NÄ. ÅÇ.ºêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 00B8"            /* ÄL..|..¶NÄ. ÅÇ.∏ */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 004C 9041 0014 800C 0000"            /* NÄ. ÅÇ.LêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0050"            /* ÄL..|..¶NÄ. ÅÇ.P */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0000 9041 0014 800C 0000"            /* NÄ. ÅÇ..êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0048"            /* ÄL..|..¶NÄ. ÅÇ.H */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0010 9041 0014 800C 0000"            /* NÄ. ÅÇ..êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 00B4"            /* ÄL..|..¶NÄ. ÅÇ.¥ */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 006C 9041 0014 800C 0000"            /* NÄ. ÅÇ.lêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0008"            /* ÄL..|..¶NÄ. ÅÇ.. */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 008C 9041 0014 800C 0000"            /* NÄ. ÅÇ.åêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0024"            /* ÄL..|..¶NÄ. ÅÇ.$ */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0044 9041 0014 800C 0000"            /* NÄ. ÅÇ.DêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 005C"            /* ÄL..|..¶NÄ. ÅÇ.\ */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 00B0 9041 0014 800C 0000"            /* NÄ. ÅÇ.∞êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 007C"            /* ÄL..|..¶NÄ. ÅÇ.| */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 00A0 9041 0014 800C 0000"            /* NÄ. ÅÇ.†êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0034"            /* ÄL..|..¶NÄ. ÅÇ.4 */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0014 9041 0014 800C 0000"            /* NÄ. ÅÇ..êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 000C"            /* ÄL..|..¶NÄ. ÅÇ.. */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0054 9041 0014 800C 0000"            /* NÄ. ÅÇ.TêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0018"            /* ÄL..|..¶NÄ. ÅÇ.. */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 00AC 9041 0014 800C 0000"            /* NÄ. ÅÇ.¨êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0090"            /* ÄL..|..¶NÄ. ÅÇ.ê */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0020 9041 0014 800C 0000"            /* NÄ. ÅÇ. êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0030"            /* ÄL..|..¶NÄ. ÅÇ.0 */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0088 9041 0014 800C 0000"            /* NÄ. ÅÇ.àêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0064"            /* ÄL..|..¶NÄ. ÅÇ.d */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 00A8 9041 0014 800C 0000"            /* NÄ. ÅÇ.®êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0074"            /* ÄL..|..¶NÄ. ÅÇ.t */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 009C 9041 0014 800C 0000"            /* NÄ. ÅÇ.úêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 00A4"            /* ÄL..|..¶NÄ. ÅÇ.§ */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0080 9041 0014 800C 0000"            /* NÄ. ÅÇ.ÄêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0038"            /* ÄL..|..¶NÄ. ÅÇ.8 */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0078 9041 0014 800C 0000"            /* NÄ. ÅÇ.xêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0094"            /* ÄL..|..¶NÄ. ÅÇ.î */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 002C 9041 0014 800C 0000"            /* NÄ. ÅÇ.,êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0098"            /* ÄL..|..¶NÄ. ÅÇ.ò */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0084 9041 0014 800C 0000"            /* NÄ. ÅÇ.ÑêA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0040"            /* ÄL..|..¶NÄ. ÅÇ.@ */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0028 9041 0014 800C 0000"            /* NÄ. ÅÇ.(êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 0058"            /* ÄL..|..¶NÄ. ÅÇ.X */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 8182 0004 9041 0014 800C 0000"            /* NÄ. ÅÇ..êA..Ä... */
	$"804C 0004 7C09 03A6 4E80 0420 8182 001C"            /* ÄL..|..¶NÄ. ÅÇ.. */
	$"9041 0014 800C 0000 804C 0004 7C09 03A6"            /* êA..Ä...ÄL..|..¶ */
	$"4E80 0420 0000 0000 0000 0000 0000 0000"            /* NÄ. ............ */
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
	$"0000 0000 0000 0000 0000 0000 0000 00FC"            /* ...............¸ */
	$"0000 014C 0000 0124 0000 021C 0000 023C"            /* ...L...$.......< */
	$"0000 02D4 0000 030C 0000 010C 0000 0364"            /* ...‘...........d */
	$"0000 036A 0000 0114 0000 0370 0000 011C"            /* ...j.......p.... */
	$"0000 0000 0000 0324 0000 0000 0000 0000"            /* .......$........ */
	$"0000 0000 0000 0F98 0000 0000 0000 15B0"            /* .......ò.......∞ */
	$"0000 0000 0000 1D68 0000 0000 6465 736B"            /* .......h....desk */
	$"FFFF F068 7472 7368 FFFF F067 6173 74C4"            /* ˇˇhtrshˇˇgastƒ */
	$"FFFF F096 7574 69C4 FFFF F097 6D6F 72C4"            /* ˇˇñutiƒˇˇómorƒ */
	$"FFFF F085 6578 746E FFFF F07B 6374 726C"            /* ˇˇÖextnˇˇ{ctrl */
	$"FFFF F078 666F 6E74 FFFF F080 7072 6566"            /* ˇˇxfontˇˇÄpref */
	$"FFFF F07A 616D 6E75 FFFF F072 7072 6E74"            /* ˇˇzamnuˇˇrprnt */
	$"FFFF F079 7374 7274 FFFF F073 7368 6466"            /* ˇˇystrtˇˇsshdf */
	$"FFFF F073 7364 6576 FFFF F086 C473 6372"            /* ˇˇssdevˇˇÜƒscr */
	$"FFFF F089 C46E 6574 FFFF F08A C470 7264"            /* ˇˇâƒnetˇˇäƒprd */
	$"FFFF F08E 7070 6466 FFFF F08F 6374 7244"            /* ˇˇéppdfˇˇèctrD */
	$"FFFF F091 6578 7444 FFFF F092 7374 7244"            /* ˇˇëextDˇˇístrD */
	$"FFFF F093 636D 6E75 FFFF F09A 7368 6444"            /* ˇˇìcmnuˇˇöshdD */
	$"FFFF F094 6173 7570 FFFF F098 6D61 6344"            /* ˇˇîasupˇˇòmacD */
	$"FFFF F095 636D 6E75 FFFF F09A C476 6F63"            /* ˇˇïcmnuˇˇöƒvoc */
	$"FFFF F090 C474 6578 FFFF F08D C46C 6962"            /* ˇˇêƒtexˇˇçƒlib */
	$"FFFF F08C C468 6C70 FFFF F088 C473 6E64"            /* ˇˇåƒhlpˇˇàƒsnd */
	$"FFFF F087 0000 0000 0000 0000 0000 0000"            /* ˇˇá............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 6664 7270 FFFF F061 7472 7368"            /* ....fdrpˇˇatrsh */
	$"FFFF F067 6661 7379 FFFF F071 494E 4954"            /* ˇˇgfasyˇˇqINIT */
	$"FFFF BFE1 4150 504C FFFF F064 6466 696C"            /* ˇˇø·APPLˇˇddfil */
	$"FFFF F069 7072 6566 FFFF F07D 6661 616D"            /* ˇˇiprefˇˇ}faam */
	$"FFFF F072 6661 6374 FFFF F078 6661 6578"            /* ˇˇrfactˇˇxfaex */
	$"FFFF F07B 6661 7066 FFFF F07A 6661 7374"            /* ˇˇ{fapfˇˇzfast */
	$"FFFF F073 6164 7270 FFFF F064 6661 6574"            /* ˇˇsadrpˇˇdfaet */
	$"FFFF F074 6661 6472 FFFF F075 6661 7368"            /* ˇˇtfadrˇˇufash */
	$"FFFF F076 6661 6D6E FFFF F077 7468 6E67"            /* ˇˇvfamnˇˇwthng */
	$"FFFF BFE1 7368 6C62 FFFF F081 6966 696C"            /* ˇˇø·shlbˇˇÅifil */
	$"0000 30D4 6666 696C 0000 38A4 7366 696C"            /* ..0‘ffil..8§sfil */
	$"0000 36B0 7466 696C 0000 38A5 4646 494C"            /* ..6∞tfil..8•FFIL */
	$"0000 3C8C 4446 494C 0000 3D86 6B66 696C"            /* ..<åDFIL..=Ükfil */
	$"0000 399E 6966 696C FFFF F11F 6666 696C"            /* ..9ûifilˇˇÒ.ffil */
	$"FFFF F121 7366 696C FFFF F11E 7466 696C"            /* ˇˇÒ!sfilˇˇÒ.tfil */
	$"FFFF F120 4646 494C FFFF F124 4446 494C"            /* ˇˇÒ FFILˇˇÒ$DFIL */
	$"FFFF F123 6B66 696C FFFF F122 636C 7073"            /* ˇˇÒ#kfilˇˇÒ"clps */
	$"FFFF F125 636C 7070 FFFF F127 636C 7074"            /* ˇˇÒ%clppˇˇÒ'clpt */
	$"FFFF F126 636C 7075 FFFF F128 0549 636F"            /* ˇˇÒ&clpuˇˇÒ(.Ico */
	$"6E0D 052E 536F 6E79 0000 0000 0000 0000"            /* n...Sony........ */
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
	$"0000 0000 0000 0000 0000 0000"                      /* ............ */
};

resource 'cfrg' (0) {
	{	/* array memberArray: 1 elements */
		/* [1] */
		kPowerPCCFragArch,
		kIsCompleteCFrag,
		kNoVersionNum,
		kNoVersionNum,
		131072,
		kNoAppSubFolder,
		kApplicationCFrag,
		kDataForkCFragLocator,
		kZeroOffset,
		kSegIDZero,
		"iconmangler"
	}
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
	3145728,
	2097152
};

