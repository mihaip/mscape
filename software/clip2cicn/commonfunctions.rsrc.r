/* Resource fork of software/clip2cicn/commonfunctions.rsrc */
resource 'DITL' (3000, "Basic Alert") {
	{	/* array DITLarray: 2 elements */
		/* [1] */
		{66, 318, 86, 376},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{8, 58, 60, 376},
		StaticText {
			disabled,
			"^0 ^1."
		}
	}
};

resource 'ALRT' (3000) {
	{40, 40, 138, 421},
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

