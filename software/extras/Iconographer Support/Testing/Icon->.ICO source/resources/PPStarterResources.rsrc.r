/* Resource fork of software/extras/Iconographer Support/Testing/Icon->.ICO source/resources/PPStarterResources.rsrc */
resource 'aete' (0, "English") {
	0x1,
	0x0,
	english,
	roman,
	{	/* array Suites: 4 elements */
		/* [1] */
		"Required Suite",
		"Terms that every application should supp"
		"ort",
		'reqd',
		1,
		1,
		{	/* array Events: 0 elements */
		},
		{	/* array Classes: 0 elements */
		},
		{	/* array ComparisonOps: 0 elements */
		},
		{	/* array Enumerations: 0 elements */
		},
		/* [2] */
		"Standard Suite",
		"Common terms for most applications",
		'CoRe',
		1,
		1,
		{	/* array Events: 8 elements */
			/* [1] */
			"close",
			"Close an object",
			'core',
			'clos',
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
			'obj ',
			"the objects to close",
			directParamRequired,
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
			{	/* array OtherParams: 2 elements */
				/* [1] */
				"saving",
				'savo',
				'savo',
				"specifies whether or not changes should "
				"be saved before closing",
				optional,
				singleItem,
				enumerated,
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
				"in",
				'kfil',
				'alis',
				"the file in which to save the object",
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
			},
			/* [2] */
			"data size",
			"Return the size in bytes of an object",
			'core',
			'dsiz',
			'long',
			"the size of the object in bytes",
			replyRequired,
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
			'obj ',
			"the object whose data size is to be retu"
			"rned",
			directParamRequired,
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
			{	/* array OtherParams: 0 elements */
			},
			/* [3] */
			"get",
			"Get the data for an object",
			'core',
			'getd',
			'****',
			"The data from the object",
			replyRequired,
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
			'obj ',
			"the object whose data is to be returned",
			directParamRequired,
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
			{	/* array OtherParams: 0 elements */
			},
			/* [4] */
			"make",
			"Make a new element",
			'core',
			'crel',
			'obj ',
			"Object specifier for the new element",
			replyRequired,
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
			{	/* array OtherParams: 4 elements */
				/* [1] */
				"new",
				'kocl',
				'type',
				"the class of the new element",
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
				"at",
				'insh',
				'insl',
				"the location at which to insert the elem"
				"ent",
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
				"with data",
				'data',
				'****',
				"the initial data for the element",
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
				/* [4] */
				"with properties",
				'prdt',
				'reco',
				"the initial values for the properties of"
				" the element",
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
			},
			/* [5] */
			"open",
			"Open the specified object(s)",
			'aevt',
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
			'obj ',
			"Objects to open. Can be a list of files "
			"or an object specifier.",
			directParamRequired,
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
			/* [6] */
			"print",
			"Print the specified object(s)",
			'aevt',
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
			'obj ',
			"Objects to print. Can be a list of files"
			" or an object specifier.",
			directParamRequired,
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
			{	/* array OtherParams: 0 elements */
			},
			/* [7] */
			"save",
			"save a set of objects",
			'core',
			'save',
			noReply,
			"",
			replyRequired,
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
			'obj ',
			"Objects to save.",
			directParamRequired,
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
			{	/* array OtherParams: 2 elements */
				/* [1] */
				"in",
				'kfil',
				'alis',
				"the file in which to save the object(s)",
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
				/* [2] */
				"as",
				'fltp',
				'type',
				"the file type of the document in which t"
				"o save the data",
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
			},
			/* [8] */
			"set",
			"Set an object’s data",
			'core',
			'setd',
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
			'obj ',
			"the object to change",
			directParamRequired,
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
			{	/* array OtherParams: 1 elements */
				/* [1] */
				"to",
				'data',
				'****',
				"the new value",
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
				singular
			}
		},
		{	/* array Classes: 3 elements */
			/* [1] */
			"application",
			'capp',
			"An application program",
			{	/* array Properties: 0 elements */
			},
			{	/* array Elements: 2 elements */
				/* [1] */
				'cwin',
				{	/* array KeyForms: 3 elements */
					/* [1] */
					'indx',
					/* [2] */
					'name',
					/* [3] */
					'rele'
				},
				/* [2] */
				'docu',
				{	/* array KeyForms: 1 elements */
					/* [1] */
					'name'
				}
			},
			/* [2] */
			"window",
			'cwin',
			"A Window",
			{	/* array Properties: 12 elements */
				/* [1] */
				"bounds",
				'pbnd',
				'qdrt',
				"the boundary rectangle for the window",
				reserved,
				singleItem,
				notEnumerated,
				readWrite,
				enumsAreConstants,
				enumListCanRepeat,
				propertyIsValue,
				reserved,
				reserved,
				reserved,
				reserved,
				reserved,
				noApostrophe,
				notFeminine,
				notMasculine,
				singular,
				/* [2] */
				"closeable",
				'hclb',
				'bool',
				"Does the window have a close box?",
				reserved,
				singleItem,
				notEnumerated,
				readOnly,
				enumsAreConstants,
				enumListCanRepeat,
				propertyIsValue,
				reserved,
				reserved,
				reserved,
				reserved,
				reserved,
				noApostrophe,
				notFeminine,
				notMasculine,
				singular,
				/* [3] */
				"titled",
				'ptit',
				'bool',
				"Does the window have a title bar?",
				reserved,
				singleItem,
				notEnumerated,
				readOnly,
				enumsAreConstants,
				enumListCanRepeat,
				propertyIsValue,
				reserved,
				reserved,
				reserved,
				reserved,
				reserved,
				noApostrophe,
				notFeminine,
				notMasculine,
				singular,
				/* [4] */
				"index",
				'pidx',
				'long',
				"the number of the window",
				reserved,
				singleItem,
				notEnumerated,
				readWrite,
				enumsAreConstants,
				enumListCanRepeat,
				propertyIsValue,
				reserved,
				reserved,
				reserved,
				reserved,
				reserved,
				noApostrophe,
				notFeminine,
				notMasculine,
				singular,
				/* [5] */
				"floating",
				'isfl',
				'bool',
				"Does the window float?",
				reserved,
				singleItem,
				notEnumerated,
				readOnly,
				enumsAreConstants,
				enumListCanRepeat,
				propertyIsValue,
				reserved,
				reserved,
				reserved,
				reserved,
				reserved,
				noApostrophe,
				notFeminine,
				notMasculine,
				singular,
				/* [6] */
				"modal",
				'pmod',
				'bool',
				"Is the window modal?",
				reserved,
				singleItem,
				notEnumerated,
				readOnly,
				enumsAreConstants,
				enumListCanRepeat,
				propertyIsValue,
				reserved,
				reserved,
				reserved,
				reserved,
				reserved,
				noApostrophe,
				notFeminine,
				notMasculine,
				singular,
				/* [7] */
				"resizable",
				'prsz',
				'bool',
				"Is the window resizable?",
				reserved,
				singleItem,
				notEnumerated,
				readOnly,
				enumsAreConstants,
				enumListCanRepeat,
				propertyIsValue,
				reserved,
				reserved,
				reserved,
				reserved,
				reserved,
				noApostrophe,
				notFeminine,
				notMasculine,
				singular,
				/* [8] */
				"zoomable",
				'iszm',
				'bool',
				"Is the window zoomable?",
				reserved,
				singleItem,
				notEnumerated,
				readOnly,
				enumsAreConstants,
				enumListCanRepeat,
				propertyIsValue,
				reserved,
				reserved,
				reserved,
				reserved,
				reserved,
				noApostrophe,
				notFeminine,
				notMasculine,
				singular,
				/* [9] */
				"zoomed",
				'pzum',
				'bool',
				"Is the window zoomed?",
				reserved,
				singleItem,
				notEnumerated,
				readWrite,
				enumsAreConstants,
				enumListCanRepeat,
				propertyIsValue,
				reserved,
				reserved,
				reserved,
				reserved,
				reserved,
				noApostrophe,
				notFeminine,
				notMasculine,
				singular,
				/* [10] */
				"name",
				'pnam',
				'itxt',
				"the title of the window",
				reserved,
				singleItem,
				notEnumerated,
				readWrite,
				enumsAreConstants,
				enumListCanRepeat,
				propertyIsValue,
				reserved,
				reserved,
				reserved,
				reserved,
				reserved,
				noApostrophe,
				notFeminine,
				notMasculine,
				singular,
				/* [11] */
				"visible",
				'pvis',
				'bool',
				"is the window visible?",
				reserved,
				singleItem,
				notEnumerated,
				readOnly,
				enumsAreConstants,
				enumListCanRepeat,
				propertyIsValue,
				reserved,
				reserved,
				reserved,
				reserved,
				reserved,
				noApostrophe,
				notFeminine,
				notMasculine,
				singular,
				/* [12] */
				"position",
				'ppos',
				'QDpt',
				"upper left coordinates of window",
				reserved,
				singleItem,
				notEnumerated,
				readOnly,
				enumsAreConstants,
				enumListCanRepeat,
				propertyIsValue,
				reserved,
				reserved,
				reserved,
				reserved,
				reserved,
				noApostrophe,
				notFeminine,
				notMasculine,
				singular
			},
			{	/* array Elements: 0 elements */
			},
			/* [3] */
			"document",
			'docu',
			"A Document",
			{	/* array Properties: 2 elements */
				/* [1] */
				"name",
				'pnam',
				'itxt',
				"the title of the document",
				reserved,
				singleItem,
				notEnumerated,
				readOnly,
				enumsAreConstants,
				enumListCanRepeat,
				propertyIsValue,
				reserved,
				reserved,
				reserved,
				reserved,
				reserved,
				noApostrophe,
				notFeminine,
				notMasculine,
				singular,
				/* [2] */
				"modified",
				'imod',
				'bool',
				"Has the document been modified since the"
				" last save?",
				reserved,
				singleItem,
				notEnumerated,
				readOnly,
				enumsAreConstants,
				enumListCanRepeat,
				propertyIsValue,
				reserved,
				reserved,
				reserved,
				reserved,
				reserved,
				noApostrophe,
				notFeminine,
				notMasculine,
				singular
			},
			{	/* array Elements: 0 elements */
			}
		},
		{	/* array ComparisonOps: 0 elements */
		},
		{	/* array Enumerations: 1 elements */
			/* [1] */
			'savo',
			{	/* array Enumerators: 3 elements */
				/* [1] */
				"yes",
				'yes ',
				"Save objects now",
				/* [2] */
				"no",
				'no  ',
				"Do not save objects",
				/* [3] */
				"ask",
				'ask ',
				"Ask the user whether to save"
			}
		},
		/* [3] */
		"Miscellaneous Standards",
		"Useful events that aren’t in any other s"
		"uite",
		'misc',
		0,
		0,
		{	/* array Events: 1 elements */
			/* [1] */
			"revert",
			"Revert an object to the most recently sa"
			"ved version",
			'misc',
			'rvrt',
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
			'obj ',
			"object to revert",
			directParamRequired,
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
			{	/* array OtherParams: 0 elements */
			}
		},
		{	/* array Classes: 0 elements */
		},
		{	/* array ComparisonOps: 0 elements */
		},
		{	/* array Enumerations: 0 elements */
		},
		/* [4] */
		"odds and ends",
		"Things that should be in some standard s"
		"uite, but aren’t",
		'Odds',
		1,
		1,
		{	/* array Events: 1 elements */
			/* [1] */
			"select",
			"Select the specified object",
			'misc',
			'slct',
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
			'obj ',
			"the object to select",
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
		}
	}
};

resource 'ALRT' (204, "Low Memory Warning", purgeable) {
	{104, 130, 205, 488},
	204,
	{	/* array: 4 elements */
		/* [1] */
		OK, visible, silent,
		/* [2] */
		OK, visible, silent,
		/* [3] */
		OK, visible, silent,
		/* [4] */
		OK, visible, silent
	},
	alertPositionMainScreen
};

resource 'ALRT' (128, "About box", purgeable) {
	{70, 70, 257, 324},
	128,
	{	/* array: 4 elements */
		/* [1] */
		OK, visible, silent,
		/* [2] */
		OK, visible, silent,
		/* [3] */
		OK, visible, silent,
		/* [4] */
		OK, visible, silent
	},
	alertPositionMainScreen
};

data 'ALRT' (129, "No Threads Alert") {
	$"0028 0028 00C8 019A 0081 5555"                      /* .(.(.».ö.ÅUU */
};

resource 'DITL' (204, purgeable) {
	{	/* array DITLarray: 2 elements */
		/* [1] */
		{71, 288, 91, 348},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{10, 75, 58, 348},
		StaticText {
			disabled,
			"Memory is getting full. Please try to al"
			"leviate the problem by closing some docu"
			"ments. "
		}
	}
};

resource 'DITL' (128, "About box items", purgeable) {
	{	/* array DITLarray: 4 elements */
		/* [1] */
		{152, 95, 172, 155},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{22, 82, 40, 227},
		StaticText {
			disabled,
			"Icon->.ICO converter"
		},
		/* [3] */
		{62, 12, 145, 243},
		StaticText {
			disabled,
			"Converts Macintosh icon resource familie"
			"s to Windows .ICO files.\n\nTo use, drop f"
			"iles containing icon resources onto the "
			"application."
		},
		/* [4] */
		{12, 36, 48, 71},
		Picture {
			disabled,
			129
		}
	}
};

resource 'DITL' (129, purgeable) {
	{	/* array DITLarray: 2 elements */
		/* [1] */
		{132, 302, 152, 362},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{10, 75, 127, 362},
		StaticText {
			disabled,
			"This application cannot run without the "
			"Thread Manager, which is part of System "
			"7.5.\n\nIf you are using an earlier versio"
			"n of the MacOS, you may be able to insta"
			"ll it as an extension. Please see Apple'"
			"s web site for more information."
		}
	}
};

resource 'STR#' (200, "Standards", purgeable) {
	{	/* array StringArray: 3 elements */
		/* [1] */
		"<Program Name>",
		/* [2] */
		"Save File As:",
		/* [3] */
		"Can’t Undo"
	}
};

resource 'icl4' (128) {
	$"0000 0000 0FFF FFFF FFFF F000 0000 0000"
	$"0000 0000 0F00 0000 0000 F000 0000 0000"
	$"0000 0000 0F00 FFFF 0000 F000 0000 0000"
	$"0000 0000 0F0F 33FC F000 F000 0000 0000"
	$"0000 0000 0F0F FFCC F000 F000 0000 0000"
	$"0000 0000 0F00 0FCC FF00 F000 0000 0000"
	$"0000 0000 0F00 00FF 83F0 F000 0000 0000"
	$"0000 0000 0F00 000F 38F0 F000 0000 0000"
	$"0000 0000 0F00 000F FFFF F000 0000 0000"
	$"0000 0000 0F00 00FC CCCC F000 0000 0000"
	$"0000 0000 0F00 00FC CCCC F000 0000 0000"
	$"0000 00FF FFFF FFFF FFFF FFFF 0000 0000"
	$"0000 0F00 C0CC CCCC CCCC DCDD F000 0000"
	$"0000 00FF FFFF FFFF FFFF FFFF 0000 0000"
	$"0000 000F 000C CCCC CCCD DDF0 0000 0000"
	$"0000 000F 00CC CCCC CCCC DDFF 0000 0000"
	$"0000 000F 000C CCCC CCCD DDFF FFF0 0000"
	$"0000 000F 00CC CCCC CCCC DDFF 00F0 0000"
	$"0000 000F 000C CCCC CCCD DDF0 00F0 0000"
	$"0000 00FF FFFF FFFF FFFF FFFF 00F0 BBB0"
	$"0000 0F00 C0CC CCCC CCCC DCDD F0FF BBB0"
	$"0000 00FF FFFF FFFF FFFF FFFF 0000 BBB0"
	$"0000 0000 0000 000F 0000 0000 0000 0000"
	$"0011 1110 0000 000F 0000 0000 1111 1000"
	$"011F 1F11 0000 000F 0000 0001 1F1F 1100"
	$"111F 1F11 1000 000F 0000 0011 1F1F 1110"
	$"111F 1F11 100F 00F0 F00F 0011 1F1F 1110"
	$"1111 1111 10FF FF00 0FFF F011 1111 1110"
	$"1111 1111 100F 0000 000F 0011 1111 1110"
	$"111F FF11 1000 0000 0000 0011 F111 F110"
	$"01F1 11F1 0000 0000 0000 0001 1FFF 1100"
	$"0011 1110 0000 0000 0000 0000 1111 10"
};

resource 'icl8' (128) {
	$"0000 0000 0000 0000 00FF FFFF FFFF FFFF"
	$"FFFF FFFF FF00 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 00FF F5F5 F5F5 F5F5"
	$"F5F5 F5F5 FF00 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 00FF F5F5 FFFF FFFF"
	$"F5F5 F5F5 FF00 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 00FF F5FF D8D8 FF08"
	$"FFF5 F5F5 FF00 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 00FF F5FF FFFF 0808"
	$"FFF5 F5F5 FF00 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 00FF F5F5 F5FF 0808"
	$"FFFF F5F5 FF00 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 00FF F5F5 F5F5 FFFF"
	$"E3D8 FFF5 FF00 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 00FF F5F5 F5F5 F5FF"
	$"D8E3 FFF5 FF00 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 00FF F5F5 F5F5 F5FF"
	$"FFFF FFFF FF00 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 00FF F5F5 F5F5 FFF6"
	$"F6F6 F6F6 FF00 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 00FF F5F5 F5F5 FFF6"
	$"2A2A 2A2A FF00 0000 0000 0000 0000 0000"
	$"0000 0000 0000 FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF FFFF 0000 0000 0000 0000"
	$"0000 0000 00FF 0000 2B00 2B2B 2B2B 2B2B"
	$"2B2B 2B2B F92B F9F9 FF00 0000 0000 0000"
	$"0000 0000 0000 FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF FFFF 0000 0000 0000 0000"
	$"0000 0000 0000 00FF 0000 002B 2B2B 2B2B"
	$"2B2B 2BF9 F9F9 FF00 0000 0000 0000 0000"
	$"0000 0000 0000 00FF 0000 2B2B 2B2B 2B2B"
	$"2B2B 2B2B F9F9 FFFF 0000 0000 0000 0000"
	$"0000 0000 0000 00FF 0000 002B 2B2B 2B2B"
	$"2B2B 2BF9 F9F9 FFFF FFFF FF00 0000 0000"
	$"0000 0000 0000 00FF 0000 2B2B 2B2B 2B2B"
	$"2B2B 2B2B F9F9 FFFF 0000 FF00 0000 0000"
	$"0000 0000 0000 00FF 0000 002B 2B2B 2B2B"
	$"2B2B 2BF9 F9F9 FF00 0000 FF00 0000 0000"
	$"0000 0000 0000 FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF FFFF 0000 FF00 5E5E 5E00"
	$"0000 0000 00FF 0000 2B00 2B2B 2B2B 2B2B"
	$"2B2B 2B2B F92B F9F9 FF00 FFFF 5E5E 5E00"
	$"0000 0000 0000 FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF FFFF 0000 0000 5E5E 5E00"
	$"0000 0000 0000 0000 0000 0000 0000 00FF"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0505 0505 0500 0000 0000 0000 00FF"
	$"0000 0000 0000 0000 0505 0505 0500 0000"
	$"0005 05FF 05FF 0505 0000 0000 0000 00FF"
	$"0000 0000 0000 0005 05FF 05FF 0505 0000"
	$"0505 05FF 05FF 0505 0500 0000 0000 00FF"
	$"0000 0000 0000 0505 05FF 05FF 0505 0500"
	$"0505 05FF 05FF 0505 0500 00FF 0000 FF00"
	$"FF00 00FF 0000 0505 05FF 05FF 0505 0500"
	$"0505 0505 0505 0505 0500 FFFF FFFF 0000"
	$"00FF FFFF FF00 0505 0505 0505 0505 0500"
	$"0505 0505 0505 0505 0500 00FF 0000 0000"
	$"0000 00FF 0000 0505 0505 0505 0505 0500"
	$"0505 05FF FFFF 0505 0500 0000 0000 0000"
	$"0000 0000 0000 0505 FF05 0505 FF05 0500"
	$"0005 FF05 0505 FF05 0000 0000 0000 0000"
	$"0000 0000 0000 0005 05FF FFFF 0505 0000"
	$"0000 0505 0505 0500 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0505 0505 05"
};

resource 'ICN#' (128) {
	{	/* array: 2 elements */
		/* [1] */
		$"007F F800 0040 0800 004F 0800 005E 8800"
		$"005C 8800 0044 C800 0043 E800 0041 E800"
		$"0041 F800 0042 0800 0042 0800 03FF FF00"
		$"0400 0080 03FF FF00 0100 0200 0100 0300"
		$"0100 03E0 0100 0320 0100 0220 03FF FF2E"
		$"0400 00BE 03FF FF0E 0001 0000 0001 0000"
		$"1401 0050 1401 0050 1412 9050 003C 7800"
		$"0010 1000 1C00 0088 2200 0070",
		/* [2] */
		$"007F F800 007F F800 007F F800 007F F800"
		$"007F F800 007F F800 007F F800 007F F800"
		$"007F F800 007F F800 007F F800 03FF FF00"
		$"07FF FF80 03FF FF00 01FF FE00 01FF FF00"
		$"01FF FFE0 01FF FF20 01FF FE20 03FF FF2E"
		$"07FF FFBE 03FF FF0E 0001 0000 3E01 00F8"
		$"7F01 01FC FF81 03FE FF92 93FE FFBC 7BFE"
		$"FF90 13FE FF80 03FE 7F00 01FC 3E00 00F8"
	}
};

resource 'ics#' (128) {
	{	/* array: 2 elements */
		/* [1] */
		$"0FE0 0BA0 0AA0 09E0 09E0 0920 3FF8 1010"
		$"101C 1017 3FFB 0100 5114 07C0 701C",
		/* [2] */
		$"0FE0 0FE0 0FE0 0FE0 0FE0 0FE0 3FF8 1FF0"
		$"1FFC 1FF7 3FFB 711C F93E FFFE F83E 701C"
	}
};

resource 'ics4' (128) {
	$"0000 FFFF FFF0 0000 0000 F03F F0F0 0000"
	$"0000 F0FC F0F0 0000 0000 F00F 8FF0 0000"
	$"0000 F00F FFF0 0000 0000 F00F CCF0 0000"
	$"00FF FFFF FFFF F000 000F 0000 CDDF 0000"
	$"000F 0000 CDDF FF00 000F 0000 CDDF 0FBB"
	$"00FF FFFF FFFF F0BB 0111 000F 0001 1100"
	$"1F1F 100F 001F 1F10 1111 1FFF FF11 1110"
	$"1FFF 1000 001F FF10 0111 0000 0001 11"
};

resource 'ics8' (128) {
	$"0000 0000 FFFF FFFF FFFF FF00 0000 0000"
	$"0000 0000 FFF5 D8FF FFF5 FF00 0000 0000"
	$"0000 0000 FFF5 FF08 FFF5 FF00 0000 0000"
	$"0000 0000 FFF5 F5FF E3FF FF00 0000 0000"
	$"0000 0000 FFF5 F5FF FFFF FF00 0000 0000"
	$"0000 0000 FFF5 F5FF F6F6 FF00 0000 0000"
	$"0000 FFFF FFFF FFFF FFFF FFFF FF00 0000"
	$"0000 00FF 00F5 F5F5 2BF9 F9FF 0000 0000"
	$"0000 00FF 00F5 F5F5 2BF9 F9FF FFFF 0000"
	$"0000 00FF 00F5 F5F5 2BF9 F9FF 00FF 5E5E"
	$"0000 FFFF FFFF FFFF FFFF FFFF FF00 5E5E"
	$"0005 0505 0000 00FF 0000 0005 0505 0000"
	$"05FF 05FF 0500 00FF 0000 05FF 05FF 0500"
	$"0505 0505 05FF FFFF FFFF 0505 0505 0500"
	$"05FF FFFF 0500 0000 0000 05FF FFFF 0500"
	$"0005 0505 0000 0000 0000 0005 0505"
};

resource 'PICT' (129) {
	2908,
	{0, 0, 36, 35},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0024 0023 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0024"
	$"0023 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0024 0023 0098 8024 0000 0000 0024"
	$"0023 0000 0000 0000 0000 0048 0000 0048"
	$"0000 0000 0008 0001 0008 0000 0000 0000"
	$"0000 0000 0000 0047 CB45 0000 00FF 0000"
	$"FFFF FFFF FFFF 0001 FFFF FFFF CCCC 0002"
	$"FFFF FFFF 9999 0003 FFFF FFFF 6666 0004"
	$"FFFF FFFF 3333 0005 FFFF FFFF 0000 0006"
	$"FFFF CCCC FFFF 0007 FFFF CCCC CCCC 0008"
	$"FFFF CCCC 9999 0009 FFFF CCCC 6666 000A"
	$"FFFF CCCC 3333 000B FFFF CCCC 0000 000C"
	$"FFFF 9999 FFFF 000D FFFF 9999 CCCC 000E"
	$"FFFF 9999 9999 000F FFFF 9999 6666 0010"
	$"FFFF 9999 3333 0011 FFFF 9999 0000 0012"
	$"FFFF 6666 FFFF 0013 FFFF 6666 CCCC 0014"
	$"FFFF 6666 9999 0015 FFFF 6666 6666 0016"
	$"FFFF 6666 3333 0017 FFFF 6666 0000 0018"
	$"FFFF 3333 FFFF 0019 FFFF 3333 CCCC 001A"
	$"FFFF 3333 9999 001B FFFF 3333 6666 001C"
	$"FFFF 3333 3333 001D FFFF 3333 0000 001E"
	$"FFFF 0000 FFFF 001F FFFF 0000 CCCC 0020"
	$"FFFF 0000 9999 0021 FFFF 0000 6666 0022"
	$"FFFF 0000 3333 0023 FFFF 0000 0000 0024"
	$"CCCC FFFF FFFF 0025 CCCC FFFF CCCC 0026"
	$"CCCC FFFF 9999 0027 CCCC FFFF 6666 0028"
	$"CCCC FFFF 3333 0029 CCCC FFFF 0000 002A"
	$"CCCC CCCC FFFF 002B CCCC CCCC CCCC 002C"
	$"CCCC CCCC 9999 002D CCCC CCCC 6666 002E"
	$"CCCC CCCC 3333 002F CCCC CCCC 0000 0030"
	$"CCCC 9999 FFFF 0031 CCCC 9999 CCCC 0032"
	$"CCCC 9999 9999 0033 CCCC 9999 6666 0034"
	$"CCCC 9999 3333 0035 CCCC 9999 0000 0036"
	$"CCCC 6666 FFFF 0037 CCCC 6666 CCCC 0038"
	$"CCCC 6666 9999 0039 CCCC 6666 6666 003A"
	$"CCCC 6666 3333 003B CCCC 6666 0000 003C"
	$"CCCC 3333 FFFF 003D CCCC 3333 CCCC 003E"
	$"CCCC 3333 9999 003F CCCC 3333 6666 0040"
	$"CCCC 3333 3333 0041 CCCC 3333 0000 0042"
	$"CCCC 0000 FFFF 0043 CCCC 0000 CCCC 0044"
	$"CCCC 0000 9999 0045 CCCC 0000 6666 0046"
	$"CCCC 0000 3333 0047 CCCC 0000 0000 0048"
	$"9999 FFFF FFFF 0049 9999 FFFF CCCC 004A"
	$"9999 FFFF 9999 004B 9999 FFFF 6666 004C"
	$"9999 FFFF 3333 004D 9999 FFFF 0000 004E"
	$"9999 CCCC FFFF 004F 9999 CCCC CCCC 0050"
	$"9999 CCCC 9999 0051 9999 CCCC 6666 0052"
	$"9999 CCCC 3333 0053 9999 CCCC 0000 0054"
	$"9999 9999 FFFF 0055 9999 9999 CCCC 0056"
	$"9999 9999 9999 0057 9999 9999 6666 0058"
	$"9999 9999 3333 0059 9999 9999 0000 005A"
	$"9999 6666 FFFF 005B 9999 6666 CCCC 005C"
	$"9999 6666 9999 005D 9999 6666 6666 005E"
	$"9999 6666 3333 005F 9999 6666 0000 0060"
	$"9999 3333 FFFF 0061 9999 3333 CCCC 0062"
	$"9999 3333 9999 0063 9999 3333 6666 0064"
	$"9999 3333 3333 0065 9999 3333 0000 0066"
	$"9999 0000 FFFF 0067 9999 0000 CCCC 0068"
	$"9999 0000 9999 0069 9999 0000 6666 006A"
	$"9999 0000 3333 006B 9999 0000 0000 006C"
	$"6666 FFFF FFFF 006D 6666 FFFF CCCC 006E"
	$"6666 FFFF 9999 006F 6666 FFFF 6666 0070"
	$"6666 FFFF 3333 0071 6666 FFFF 0000 0072"
	$"6666 CCCC FFFF 0073 6666 CCCC CCCC 0074"
	$"6666 CCCC 9999 0075 6666 CCCC 6666 0076"
	$"6666 CCCC 3333 0077 6666 CCCC 0000 0078"
	$"6666 9999 FFFF 0079 6666 9999 CCCC 007A"
	$"6666 9999 9999 007B 6666 9999 6666 007C"
	$"6666 9999 3333 007D 6666 9999 0000 007E"
	$"6666 6666 FFFF 007F 6666 6666 CCCC 0080"
	$"6666 6666 9999 0081 6666 6666 6666 0082"
	$"6666 6666 3333 0083 6666 6666 0000 0084"
	$"6666 3333 FFFF 0085 6666 3333 CCCC 0086"
	$"6666 3333 9999 0087 6666 3333 6666 0088"
	$"6666 3333 3333 0089 6666 3333 0000 008A"
	$"6666 0000 FFFF 008B 6666 0000 CCCC 008C"
	$"6666 0000 9999 008D 6666 0000 6666 008E"
	$"6666 0000 3333 008F 6666 0000 0000 0090"
	$"3333 FFFF FFFF 0091 3333 FFFF CCCC 0092"
	$"3333 FFFF 9999 0093 3333 FFFF 6666 0094"
	$"3333 FFFF 3333 0095 3333 FFFF 0000 0096"
	$"3333 CCCC FFFF 0097 3333 CCCC CCCC 0098"
	$"3333 CCCC 9999 0099 3333 CCCC 6666 009A"
	$"3333 CCCC 3333 009B 3333 CCCC 0000 009C"
	$"3333 9999 FFFF 009D 3333 9999 CCCC 009E"
	$"3333 9999 9999 009F 3333 9999 6666 00A0"
	$"3333 9999 3333 00A1 3333 9999 0000 00A2"
	$"3333 6666 FFFF 00A3 3333 6666 CCCC 00A4"
	$"3333 6666 9999 00A5 3333 6666 6666 00A6"
	$"3333 6666 3333 00A7 3333 6666 0000 00A8"
	$"3333 3333 FFFF 00A9 3333 3333 CCCC 00AA"
	$"3333 3333 9999 00AB 3333 3333 6666 00AC"
	$"3333 3333 3333 00AD 3333 3333 0000 00AE"
	$"3333 0000 FFFF 00AF 3333 0000 CCCC 00B0"
	$"3333 0000 9999 00B1 3333 0000 6666 00B2"
	$"3333 0000 3333 00B3 3333 0000 0000 00B4"
	$"0000 FFFF FFFF 00B5 0000 FFFF CCCC 00B6"
	$"0000 FFFF 9999 00B7 0000 FFFF 6666 00B8"
	$"0000 FFFF 3333 00B9 0000 FFFF 0000 00BA"
	$"0000 CCCC FFFF 00BB 0000 CCCC CCCC 00BC"
	$"0000 CCCC 9999 00BD 0000 CCCC 6666 00BE"
	$"0000 CCCC 3333 00BF 0000 CCCC 0000 00C0"
	$"0000 9999 FFFF 00C1 0000 9999 CCCC 00C2"
	$"0000 9999 9999 00C3 0000 9999 6666 00C4"
	$"0000 9999 3333 00C5 0000 9999 0000 00C6"
	$"0000 6666 FFFF 00C7 0000 6666 CCCC 00C8"
	$"0000 6666 9999 00C9 0000 6666 6666 00CA"
	$"0000 6666 3333 00CB 0000 6666 0000 00CC"
	$"0000 3333 FFFF 00CD 0000 3333 CCCC 00CE"
	$"0000 3333 9999 00CF 0000 3333 6666 00D0"
	$"0000 3333 3333 00D1 0000 3333 0000 00D2"
	$"0000 0000 FFFF 00D3 0000 0000 CCCC 00D4"
	$"0000 0000 9999 00D5 0000 0000 6666 00D6"
	$"0000 0000 3333 00D7 EEEE 0000 0000 00D8"
	$"DDDD 0000 0000 00D9 BBBB 0000 0000 00DA"
	$"AAAA 0000 0000 00DB 8888 0000 0000 00DC"
	$"7777 0000 0000 00DD 5555 0000 0000 00DE"
	$"4444 0000 0000 00DF 2222 0000 0000 00E0"
	$"1111 0000 0000 00E1 0000 EEEE 0000 00E2"
	$"0000 DDDD 0000 00E3 0000 BBBB 0000 00E4"
	$"0000 AAAA 0000 00E5 0000 8888 0000 00E6"
	$"0000 7777 0000 00E7 0000 5555 0000 00E8"
	$"0000 4444 0000 00E9 0000 2222 0000 00EA"
	$"0000 1111 0000 00EB 0000 0000 EEEE 00EC"
	$"0000 0000 DDDD 00ED 0000 0000 BBBB 00EE"
	$"0000 0000 AAAA 00EF 0000 0000 8888 00F0"
	$"0000 0000 7777 00F1 0000 0000 5555 00F2"
	$"0000 0000 4444 00F3 0000 0000 2222 00F4"
	$"0000 0000 1111 00F5 EEEE EEEE EEEE 00F6"
	$"DDDD DDDD DDDD 00F7 BBBB BBBB BBBB 00F8"
	$"AAAA AAAA AAAA 00F9 8888 8888 8888 00FA"
	$"7777 7777 7777 00FB 5555 5555 5555 00FC"
	$"4444 4444 4444 00FD 2222 2222 2222 00FE"
	$"1111 1111 1111 00FF 0000 0000 0000 0000"
	$"0000 0024 0023 0000 0000 0024 0023 0000"
	$"05DF F501 2B00 0700 F5E0 2B01 F900 0B00"
	$"F5F7 2BF5 FFF6 2B01 F900 0F00 F5F7 2B00"
	$"FFF7 F500 FFF6 2B01 F900 1300 F5F7 2B02"
	$"FFF5 F5FD FFFD F500 FFF6 2B01 F900 1600"
	$"F5F7 2B07 FFF5 FFD8 D8FF 08FF FEF5 00FF"
	$"F62B 01F9 0016 00F5 F72B 01FF F5FE FFFF"
	$"0800 FFFE F500 FFF6 2B01 F900 1600 F5F7"
	$"2B00 FFFE F507 FF08 08FF FFF5 F5FF F62B"
	$"01F9 0015 00F5 F72B 00FF FDF5 FFFF 04E3"
	$"D8FF F5FF F62B 01F9 0014 00F5 F72B 00FF"
	$"FCF5 05FF D8E3 FFF5 FFF6 2B01 F900 0F00"
	$"F5F7 2B00 FFFC F5FB FFF6 2B01 F900 1300"
	$"F5F7 2B00 FFFD F500 FFFC F600 FFF6 2B01"
	$"F900 1400 F5F7 2B00 FFFD F501 FFF6 FD2A"
	$"00FF F62B 01F9 000B 00F5 FA2B EFFF F92B"
	$"01F9 0017 00F5 FB2B 04FF 2B00 2B00 F72B"
	$"04F9 2BF9 2BFF FA2B 01F9 000B 00F5 FA2B"
	$"EFFF F92B 01F9 0013 00F5 F92B 00FF FE00"
	$"F92B FEF9 00FF F82B 01F9 0013 00F5 F92B"
	$"02FF 0000 F72B FFF9 FFFF F92B 01F9 0013"
	$"00F5 F92B 00FF FE00 F92B FEF9 FCFF FC2B"
	$"01F9 0017 00F5 F92B 02FF 0000 F72B FFF9"
	$"FFFF FF2B 00FF FC2B 01F9 0017 00F5 F92B"
	$"00FF FE00 F92B FEF9 00FF FE2B 00FF FC2B"
	$"01F9 0011 00F5 FA2B EFFF FF2B 01FF 2BFE"
	$"5E02 2BF9 001B 00F5 FB2B 04FF 2B00 2B00"
	$"F72B 07F9 2BF9 2BFF 2BFF FFFE 5E02 2BF9"
	$"000E 00F5 FA2B EFFF FD2B FE5E 022B F900"
	$"0B00 F5F1 2B00 FFF1 2B01 F900 1300 F5FE"
	$"2BFC 05F9 2B00 FFF9 2BFC 05FE 2B01 F900"
	$"1D09 F52B 2B05 05FF 05FF 0505 FA2B 00FF"
	$"FA2B FF05 08FF 05FF 0505 2B2B F900 1D01"
	$"F52B FE05 02FF 05FF FE05 FB2B 00FF FB2B"
	$"FE05 02FF 05FF FE05 022B F900 2501 F52B"
	$"FE05 02FF 05FF FE05 FF2B 0AFF 2B2B FF2B"
	$"FF2B 2BFF 2B2B FE05 02FF 05FF FE05 022B"
	$"F900 1501 F52B F805 002B FDFF FE2B FDFF"
	$"002B F805 022B F900 1501 F52B F805 FF2B"
	$"00FF FA2B 02FF 2B2B F805 022B F900 1801"
	$"F52B FE05 FEFF FE05 F42B FF05 00FF FE05"
	$"05FF 0505 2BF9 0018 04F5 2B2B 05FF FE05"
	$"01FF 05F2 2BFF 05FE FFFF 05FF 2B01 F900"
	$"0F00 F5FE 2BFC 05F0 2BFC 05FE 2B01 F900"
	$"0700 F5E0 2B01 F900 0600 2BDF F900 0000"
	$"00FF"
};

resource 'BNDL' (128) {
	'•ICO',
	0,
	{	/* array TypeArray: 2 elements */
		/* [1] */
		'FREF',
		{	/* array IDArray: 3 elements */
			/* [1] */
			0, 128,
			/* [2] */
			1, 129,
			/* [3] */
			2, 130
		},
		/* [2] */
		'ICN#',
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

data '•ICO' (0, "Owner resource") {
	$"0000 0000 0000 0000 0000 0000 0002 0E2A"            /* ...............* */
	$"C000 0000 0000 0000 0000 0000 0000 0000"            /* ¿............... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0002 0E8F 5000 0000 0000 0000 4001 FCBC"            /* ...èP.......@.¸º */
	$"7800 104E 5E20 5F50 4F4E D04E 5602 0E2A"            /* x..N^ _PON–NV..* */
	$"C003 0842 673F 2E00 1A2F 2E00 0E4E AD08"            /* ¿..Bg?.../...N≠. */
	$"BA3C 1F3D 7C00 01FF F63D 46FF F43E 2EFF"            /* ∫<.=|..ˇˆ=FˇÙ>.ˇ */
	$"F602 0E8F 5000 0000 0000 144E C001 FCBC"            /* ˆ..èP......N¿.¸º */
	$"784E AD02 A220 6E00 1630 10B0 6E02 0E2A"            /* xN≠.¢ n..0.∞n..* */
	$"C04A 0067 1622 2800 08B2 AE00 0857 C1C0"            /* ¿J.g."(..≤Æ..W¡¿ */
	$"0167 0820 6E00 1230 8760 1452 4769 06BE"            /* .g. n..0á`.RGi.æ */
	$"6EFF F46F BE28 7C00 000A 6038 BCFF 404C"            /* nˇÙoæ(|...`8ºˇ@L */
	$"DF10 C04E 5E20 5FDE FC00 144E D04E 56FF"            /* ﬂ.¿N^ _ﬁ¸..N–NVˇ */
	$"F048 E707 0842 673F 2E00 1A2F 2E00 0E4E"            /* HÁ..Bg?.../...N */
	$"AD08 BA3C 1F3D 7C00 01FF F23D 46FF F03E"            /* ≠.∫<.=|..ˇÚ=Fˇ> */
	$"2EFF F260 443F 2E00 1A2F 2E00 162F 2E00"            /* .ˇÚ`D?.../.../.. */
	$"0E"                                                 /* . */
};

resource 'FREF' (128) {
	'APPL',
	0,
	""
};

resource 'FREF' (129) {
	'fold',
	1,
	""
};

resource 'FREF' (130) {
	'****',
	2,
	""
};

resource 'vers' (1) {
	0x0,
	-0x68,
	beta,
	0x0,
	2,
	"v0.98b ©1997-8 cloak & dagger ltd",
	"0.98 beta ©1997-8 cloak & dagger ltd"
};

