/* main.h */

// macros
#ifndef SAVEGWORLD
#define SAVEGWORLD\
	CGrafPtr		oldPort;\
	GDHandle		oldDevice;\
	\
	GetGWorld(&oldPort, &oldDevice);
#endif

#ifndef RESTOREGWORLD
#define RESTOREGWORLD\
	SetGWorld(oldPort, oldDevice);
#endif

#ifndef SAVECOLORS
#define SAVECOLORS\
	RGBColor		oldForeColor, oldBackColor;\
	PenState		oldState;\
	GetForeColor(&oldForeColor);\
	GetBackColor(&oldBackColor);\
	GetPenState(&oldState);\
	ForeColor(blackColor);\
	BackColor(whiteColor);
#endif

#ifndef RESTORECOLORS
#define RESTORECOLORS\
	SetPenState(&oldState);\
	RGBForeColor(&oldForeColor);\
	RGBBackColor(&oldBackColor);
#endif
