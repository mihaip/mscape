#include "CGLayer.h"
#include <CFBundle.h>
#include <assert.h>

typedef int (*CGContextIsPathEmptyFunctionPtr)(CGContextRef);

CGContextFlushPtr CGLContextFlush;
CGContextStrokePathPtr CGLContextStrokePath;
CGContextAddLineToPointPtr CGLContextAddLineToPoint;
CGContextMoveToPointPtr CGLContextMoveToPoint;
CGContextSetStrokeColorPtr CGLContextSetStrokeColor;
CGContextBeginPathPtr CGLContextBeginPath;
CGContextClosePathPtr CGLContextClosePath;
CGContextSetLineCapPtr CGLContextSetLineCap;
CGContextSetLineWidthPtr CGLContextSetLineWidth;
CGContextSetStrokeColorSpacePtr CGLContextSetStrokeColorSpace;
CGColorSpaceCreateDeviceRGBPtr CGLColorSpaceCreateDeviceRGB;
CGContextScaleCTMPtr CGLContextScaleCTM;
CGContextTranslateCTMPtr CGLContextTranslateCTM;
CreateCGContextForPortPtr CreateCGLContextForPort;
CGContextDrawPDFDocumentPtr CGLContextDrawPDFDocument;
CGDataProviderCreatePtr CGLDataProviderCreate;
CGDataProviderReleasePtr CGLDataProviderRelease;
CGPDFDocumentCreateWithProviderPtr CGLPDFDocumentCreateWithProvider;
CGPDFDocumentCreateWithURLPtr CGLPDFDocumentCreateWithURL;
CGContextAddCurveToPointPtr CGLContextAddCurveToPoint;
CGContextAddRectPtr CGLContextAddRect;
CGPostMouseEventPtr CGLPostMouseEvent;
CGContextStrokeRectPtr CGLContextStrokeRect;
CGPDFDocumentGetNumberOfPagesPtr CGLPDFDocumentGetNumberOfPages;

void CGLayerInit()
{
	CFBundleRef sysBundle;
	
	//LoadFrameworkBundle(CFSTR("ApplicationServices.framework"), &sysBundle);
	sysBundle = CFBundleGetBundleWithIdentifier(CFSTR("com.apple.ApplicationServices"));

	CFBundleLoadExecutable(sysBundle);
	
	assert(CGLContextFlush = CGContextFlushPtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGContextFlush"))));

	assert(CGLContextStrokePath = CGContextStrokePathPtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGContextStrokePath"))));

	assert(CGLContextAddLineToPoint = CGContextAddLineToPointPtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGContextAddLineToPoint"))));

	assert(CGLContextMoveToPoint = CGContextMoveToPointPtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGContextMoveToPoint"))));

	assert(CGLContextSetStrokeColor = CGContextSetStrokeColorPtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGContextSetStrokeColor"))));

	assert(CGLContextBeginPath = CGContextBeginPathPtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGContextBeginPath"))));

	assert(CGLContextClosePath = CGContextClosePathPtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGContextClosePath"))));

	assert(CGLContextSetLineCap = CGContextSetLineCapPtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGContextSetLineCap"))));

	assert(CGLContextSetLineWidth = CGContextSetLineWidthPtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGContextSetLineWidth"))));

	assert(CGLContextSetStrokeColorSpace = CGContextSetStrokeColorSpacePtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGContextSetStrokeColorSpace"))));

	assert(CGLColorSpaceCreateDeviceRGB = CGColorSpaceCreateDeviceRGBPtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGColorSpaceCreateDeviceRGB"))));

	assert(CGLContextScaleCTM = CGContextScaleCTMPtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGContextScaleCTM"))));

	assert(CGLContextTranslateCTM = CGContextTranslateCTMPtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGContextTranslateCTM"))));

	assert(CreateCGLContextForPort = CreateCGContextForPortPtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CreateCGContextForPort"))));
	
	assert(CGLContextDrawPDFDocument = CGContextDrawPDFDocumentPtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGContextDrawPDFDocument"))));
	
	assert(CGLDataProviderCreate = CGDataProviderCreatePtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGDataProviderCreate"))));
	
	assert(CGLDataProviderRelease = CGDataProviderReleasePtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGDataProviderRelease"))));
	
	assert(CGLPDFDocumentCreateWithProvider = CGPDFDocumentCreateWithProviderPtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGPDFDocumentCreateWithProvider"))));
	
	assert(CGLPDFDocumentCreateWithURL = CGPDFDocumentCreateWithURLPtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGPDFDocumentCreateWithURL"))));

	assert(CGLContextAddCurveToPoint = CGContextAddCurveToPointPtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGContextAddCurveToPoint"))));
	
	assert(CGLContextAddRect = CGContextAddRectPtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGContextAddRect"))));
	
	assert(CGLPostMouseEvent = CGPostMouseEventPtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGPostMouseEvent"))));
	
	assert(CGLContextStrokeRect = CGContextStrokeRectPtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGContextStrokeRect"))));
	
	assert(CGLPDFDocumentGetNumberOfPages = CGPDFDocumentGetNumberOfPagesPtr(CFBundleGetFunctionPointerForName(sysBundle, CFSTR("CGPDFDocumentGetNumberOfPages"))));
}
