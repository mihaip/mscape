// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MOpenGLView.h
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: type definitions and constants of windowed OpenGL rendering context

#pragma once

#include "MControl.h"
#include "agl.h"

const static int kMOpenGLViewSetupType = -2;

class MOpenGLView : public MUserPane
{
	public:
							MOpenGLView(MWindowPtr parentWindow);
		virtual				~MOpenGLView();
		
		void				DrawPane();
		
		virtual void 		GLDraw();
		
	protected:
		void				PrepareGLDraw();
		void				CleanupGLDraw();
		
		virtual void 		SetupView();
		virtual int			GetSetupType();
		
		static void 		InitializeOpenGL();
		static void 		CleanupOpenGL();
		
		static AGLContext	context;
		static bool 		glInitialized;
		static int 			instances;
		
		static int 			glSetupType;
		
		static MOpenGLView* previousView;
};
