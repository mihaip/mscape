#pragma once

#include <QDOffscreen.h>
#include <CGContext.h>
#include <CGColorSpace.h>
#include <CGDataProvider.h>
#include <CGRemoteOperation.h>

void CGLayerInit();

typedef void (*CGContextFlushPtr)(CGContextRef);
typedef void (*CGContextStrokePathPtr)(CGContextRef);
typedef void (*CGContextAddLineToPointPtr)(CGContextRef, float, float);
typedef void (*CGContextMoveToPointPtr)(CGContextRef, float, float);
typedef void (*CGContextSetStrokeColorPtr)(CGContextRef, const float*);
typedef void (*CGContextBeginPathPtr)(CGContextRef);
typedef void (*CGContextClosePathPtr)(CGContextRef);
typedef void (*CGContextSetLineCapPtr)(CGContextRef, CGLineCap);
typedef void (*CGContextSetLineWidthPtr)(CGContextRef, float);
typedef void (*CGContextSetStrokeColorSpacePtr)(CGContextRef, CGColorSpaceRef);
typedef CGColorSpaceRef (*CGColorSpaceCreateDeviceRGBPtr)(void);
typedef void (*CGContextScaleCTMPtr)(CGContextRef, float, float);
typedef void (*CGContextTranslateCTMPtr)(CGContextRef, float, float);
typedef OSStatus (*CreateCGContextForPortPtr)(CGrafPtr, CGContextRef*);
typedef void (*CGContextDrawPDFDocumentPtr)(CGContextRef,CGRect,CGPDFDocumentRef,int);
typedef CGDataProviderRef (*CGDataProviderCreatePtr)(void *, const CGDataProviderCallbacks *);
typedef void (*CGDataProviderReleasePtr)(CGDataProviderRef);
typedef CGPDFDocumentRef (*CGPDFDocumentCreateWithProviderPtr)(CGDataProviderRef);
typedef CGPDFDocumentRef (*CGPDFDocumentCreateWithURLPtr)(CFURLRef);
typedef void (*CGContextAddCurveToPointPtr)(CGContextRef,float,float,float,float,float,float);
typedef void (*CGContextAddRectPtr)(CGContextRef,CGRect);
typedef CGEventErr (*CGPostMouseEventPtr)(CGPoint, boolean_t, CGButtonCount, boolean_t);
typedef void (*CGContextStrokeRectPtr)(CGContextRef, CGRect);
typedef int (*CGPDFDocumentGetNumberOfPagesPtr)(CGPDFDocumentRef);

extern CGContextFlushPtr CGLContextFlush;
extern CGContextStrokePathPtr CGLContextStrokePath;
extern CGContextAddLineToPointPtr CGLContextAddLineToPoint;
extern CGContextMoveToPointPtr CGLContextMoveToPoint;
extern CGContextSetStrokeColorPtr CGLContextSetStrokeColor;
extern CGContextBeginPathPtr CGLContextBeginPath;
extern CGContextClosePathPtr CGLContextClosePath;
extern CGContextSetLineCapPtr CGLContextSetLineCap;
extern CGContextSetLineWidthPtr CGLContextSetLineWidth;
extern CGContextSetStrokeColorSpacePtr CGLContextSetStrokeColorSpace;
extern CGColorSpaceCreateDeviceRGBPtr CGLColorSpaceCreateDeviceRGB;
extern CGContextScaleCTMPtr CGLContextScaleCTM;
extern CGContextTranslateCTMPtr CGLContextTranslateCTM;
extern CreateCGContextForPortPtr CreateCGLContextForPort;
extern CGContextDrawPDFDocumentPtr CGLContextDrawPDFDocument;
extern CGDataProviderCreatePtr CGLDataProviderCreate;
extern CGDataProviderReleasePtr CGLDataProviderRelease;
extern CGPDFDocumentCreateWithProviderPtr CGLPDFDocumentCreateWithProvider;
extern CGPDFDocumentCreateWithURLPtr CGLPDFDocumentCreateWithURL;
extern CGContextAddCurveToPointPtr CGLContextAddCurveToPoint;
extern CGContextAddRectPtr CGLContextAddRect;
extern CGPostMouseEventPtr CGLPostMouseEvent;
extern CGContextStrokeRectPtr CGLContextStrokeRect;
extern CGPDFDocumentGetNumberOfPagesPtr CGLPDFDocumentGetNumberOfPages;
