// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MOpenGLView.cpp
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: implementation of windowed OpenGL rendering context

#include "MOpenGLView.h"
#include "MWindow.h"
#include "glut.h"
#include "aglRenderers.h"

AGLContext		MOpenGLView::context;
bool			MOpenGLView::glInitialized = false;
int				MOpenGLView::instances = 0;
int				MOpenGLView::glSetupType = -1;
MOpenGLView*	MOpenGLView::previousView = NULL;

MOpenGLView::MOpenGLView(MWindowPtr	parentWindow)
			:MUserPane(parentWindow)
{
	if (!glInitialized)
	{
		InitializeOpenGL();
	}
	
	instances++;
}

void MOpenGLView::InitializeOpenGL()
{
	GLint          attributes[] = {AGL_RGBA,
								   AGL_DOUBLEBUFFER,
								   AGL_NO_RECOVERY,
								   //AGL_RENDERER_ID,
								   //AGL_RENDERER_GENERIC_ID, // for software mode
								   AGL_ACCELERATED,
								   AGL_ALL_RENDERERS,
								   AGL_NONE};
	AGLPixelFormat format;
	GDHandle		mainDevice;
	
	mainDevice = GetMainDevice();

	// Choose an rgb pixel format
	format = aglChoosePixelFormat(&mainDevice, 1, attributes);
	if(format == NULL) return;

	// Create an AGL context
	context = aglCreateContext(format, NULL);
	if(context == NULL) return;
	
	// Pixel format is no longer needed
	aglDestroyPixelFormat(format);
	
	glInitialized = true;
}

MOpenGLView::~MOpenGLView()
{
	instances--;
	if (instances == 0)
		CleanupOpenGL();
}

void MOpenGLView::CleanupOpenGL()
{
	aglSetCurrentContext(NULL);
	aglSetDrawable(context, NULL);
	aglDestroyContext(context);
	
	glInitialized = false;
}

void MOpenGLView::PrepareGLDraw()
{
	Rect 	bounds, windowRect;
	long 	openGLFrame[4];
	
	if (context == NULL)
		return;
		
	GetControlBounds(control, &bounds);
	InsetRect(&bounds, 2, 2);
	
	GetWindowPortBounds(window->GetWindow(), &windowRect);
	
	openGLFrame[0] = bounds.left;
	openGLFrame[2] = bounds.right-bounds.left;
	openGLFrame[1] = windowRect.bottom - bounds.bottom;
	openGLFrame[3] = bounds.bottom-bounds.top;
	
	aglSetInteger(context, AGL_BUFFER_RECT, openGLFrame);
	aglEnable(context, AGL_BUFFER_RECT);
	
	openGLFrame[0] = 0;
	openGLFrame[2] = bounds.right-bounds.left;
	openGLFrame[1] = 0;
	openGLFrame[3] = bounds.bottom-bounds.top;
	
	aglSetInteger(context, AGL_SWAP_RECT, openGLFrame);
	aglEnable(context, AGL_SWAP_RECT);
		
	if (!aglSetDrawable(context,(AGLDrawable)window->GetWindow()))
		return;
	
	if (!aglSetCurrentContext(context))
		return;
		
	glViewport(0, 0, bounds.right - bounds.left, bounds.bottom - bounds.top);
}

void MOpenGLView::CleanupGLDraw()
{
	previousView = this;
}

int MOpenGLView::GetSetupType()
{
	return kMOpenGLViewSetupType;
}

void MOpenGLView::SetupView()
{
	glClearColor(0, 0, 0, 1.0);
}

void MOpenGLView::DrawPane()
{
	Rect	controlBounds;
	SAVECOLORS;
	
	GetControlBounds(control, &controlBounds);
	
	InsetRect(&controlBounds, 2, 2);

	if (IsControlActive(control))	
		DrawThemeGenericWell(&controlBounds, kThemeStateActive, false);
	else
		DrawThemeGenericWell(&controlBounds, kThemeStateInactive, false);
	
	PrepareGLDraw();
	
	if (glSetupType != GetSetupType())
	{
		SetupView();
		glSetupType = GetSetupType();
	}

	GLDraw();
	
	CleanupGLDraw();
	
	RESTORECOLORS;
}

void MOpenGLView::GLDraw()
{
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	
	glColor3f(0.7, 0, 0);
	
	glutSolidTeapot(0.5);
	
	aglSwapBuffers(context);
}
