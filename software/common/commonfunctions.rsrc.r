/* Resource fork of software/common/commonfunctions.rsrc */
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

