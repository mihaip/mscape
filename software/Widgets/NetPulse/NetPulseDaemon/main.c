/* main.c */

#include <Carbon/Carbon.h>
#include <QuickTime/ImageCompression.h>
#include <QuickTime/QuickTimeComponents.h>
#include <ApplicationServices/ApplicationServices.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

#include "main.h"

#define kMaxLineSize 256

#define kDefaultInterface "en0"
#define kInterfaceArg "-I"
#define kChildArg "-child"
#define kTotalTrafficArg "-total"
#define kInboundTrafficArg "-inbound"
#define kOutboundTrafficArg "-outbound"

#define kGridLineCount 4
#define kDatapointCount 16
#define kCanvasWidth 128
#define kCanvasHeight 128

const static int kScaleSteps[] = {1 * 1024,
								  4 * 1024,
								  8 * 1024,
								  16 * 1024,
								  32 * 1024,
								  64 * 1024,
								  128 * 1024,
								  256 * 1025,
								  512 * 1024,
								  1024 * 1024,
								  2048 * 1024,
								  4096 * 1024,
								  8192 * 1024,
								  16384 * 1024,
								  32768 * 1024};
const static int kScaleStepCount = sizeof(kScaleSteps)/sizeof(int);
								  
const static float kBackgroundColor[4] = 	{1.000, 1.000, 1.000, 0.450};
const static float kGridColor[4] =			{1.000, 1.000, 1.000, 0.400};
const static float kTextColor[4] =			{1.000, 1.000, 1.000, 0.900};
const static float kFrameColor[4] = 		{2.200, 2.200, 2.200, 0.450};
const static float kTotalColor[4] = 		{0.616, 0.996, 0.122, 0.750};
const static float kOutputColor[4] =		{1.000, 0.933, 0.188, 0.750};
const static float kInputColor[4] = 		{0.996, 0.122, 0.122, 0.750};

#define kOutputFileName "\p:output.new.tif"
#define kOutputFileFormat kQTFileTypeTIFF

#define kKeepAliveFile "keepalive.gif"

EventLoopTimerRef	gTimer;
GWorldPtr			gOutputGW;
PixMapHandle		gOutputPix;
CGContextRef		gOutputContext;
Rect				gOutputRect = {0, 0, kCanvasHeight, kCanvasWidth};
CGRect				gOutputRectCG = {{0.5, 0.5}, {kCanvasWidth - 1, kCanvasHeight - 1}};
FSSpec				gOutputSpec;
FILE*				gNetstatOutput;

int					gTotalDatapoints[kDatapointCount],
					gOutputDatapoints[kDatapointCount],
					gInputDatapoints[kDatapointCount];

int					gCurrentScale = 0;

char*				gInterface;
int					gInChild;

int					gShowTotal;
int					gShowInbound;
int					gShowOutbound;

int					gClientsAlive = 1;

void SaveDaemonPid(int pid);
void KillDaemon();

void InitializeDatapoints(int datapoints[]);
void AddToDatapoints(int datapoints[], int new);
int	 GetDatapointsAverage(int datapoints[]);
void DrawDatapoints(int datapoints[], int max, const float color[]);
int	GetDatapointsScaling(int datapoints[]);

void ClearCanvas();
void DrawGridAndLabel();

void ExtractArguments(int argc, char *argv[]);
void Initialize(int argc, char *argv[]);
void MainLoop();
void CheckKeepAlive();
void ExportGWToQTFile(GWorldPtr imageGW, PixMapHandle imagePix, FSSpec exportFile, OSType fileType, long depth);

int main(int argc, char *argv[])
{
	ExtractArguments(argc, argv);
	
	printf("interface: %s\n", gInterface);
	
	Initialize(argc, argv);
	
	if (gInChild)
		MainLoop();
		
	return 0;
}

void ExtractArguments(int argc, char *argv[])
{
	int i;
	
	// initialize to defaults
	gInChild = 0;
	gInterface = kDefaultInterface;
	gShowTotal = 0;
	gShowInbound = 0;
	gShowOutbound = 0;
	
	for (i=1; i < argc; i++)
	{
		printf("argument: %s\n", argv[i]);
		if (strcmp(argv[i], kChildArg) == 0)
			gInChild = 1;
		else if (strcmp(argv[i], kInterfaceArg) == 0)
			gInterface = argv[++i];
		else if (strcmp(argv[i], kTotalTrafficArg) == 0)
			gShowTotal = 1;
		else if (strcmp(argv[i], kInboundTrafficArg) == 0)
			gShowInbound = 1;
		else if (strcmp(argv[i], kOutboundTrafficArg) == 0)
			gShowOutbound = 1;
		else
		{
			printf("unknown argument: %s\n", argv[i]);
			exit(1);
		}
	}
}

void SaveDaemonPid(int pid)
{
	FILE* daemonpidfile;
			
	daemonpidfile = fopen("./daemonpid.txt", "w");
	fprintf(daemonpidfile, "%d\n", pid);
	fclose(daemonpidfile);
}

void KillDaemon()
{
	FILE* daemonpidfile;
			
	daemonpidfile = fopen("./daemonpid.txt", "r");
	if (daemonpidfile)
	{
		int pid;
		
		fscanf(daemonpidfile, "%d\n", &pid);
		fclose(daemonpidfile);
		
		kill(pid, SIGINT);
	}
}
 
void Initialize(int argc, char *argv[])
{
	pid_t			pid;
	char			netstatCommand[256];
	
	if (!gInChild)
	{
		KillDaemon();
		
		pid = fork();
		
		// make file reference
		FSMakeFSSpec(0, 0, kOutputFileName, &gOutputSpec);
		
		if (pid == -1)
		{
			printf("ERROR when forking: %d\n", errno);
			ExitToShell();
		}
		else if (pid != 0) // in the parent, save pid and exit
		{
			SaveDaemonPid(pid);
			ExitToShell();
		}
		else
		{
			char **newArgv;
			newArgv = (char**)malloc(sizeof(char*) * (argc + 2));
			memcpy(newArgv, argv, sizeof(char*) * argc);
			newArgv[argc] = kChildArg;
			newArgv[argc + 1] = NULL;
			execv("./NetPulseDaemon", newArgv);
		}
	}
	
	// dissociate ourselves from the current session
	setsid(); 
	
	// close off file handles
	close(0);
	close(1);
	close(2);
	
	// make gworld/cgcontext
	NewGWorld(&gOutputGW, 32, &gOutputRect, NULL, NULL, 0);
	gOutputPix = GetGWorldPixMap(gOutputGW);
	LockPixels(gOutputPix);
	CreateCGContextForPort(gOutputGW, &gOutputContext);
	CGContextSetStrokeColorSpace(gOutputContext, CGColorSpaceCreateDeviceRGB());
	CGContextSetFillColorSpace(gOutputContext, CGColorSpaceCreateDeviceRGB());
	CGContextSetRenderingIntent(gOutputContext, kCGRenderingIntentSaturation);
	
	// make file spec
	FSMakeFSSpec(0, 0, kOutputFileName, &gOutputSpec);
	
	// spawn off netstat
	sprintf(netstatCommand, "netstat -I %s -b -w 1", gInterface);
	gNetstatOutput = popen(netstatCommand, "r");
	
	// initialize datapoints
	InitializeDatapoints(gTotalDatapoints);
	InitializeDatapoints(gOutputDatapoints);
	InitializeDatapoints(gInputDatapoints);
}

void InitializeDatapoints(int datapoints[])
{
	int i;
	
	for (i=0; i < kDatapointCount; i++)
		datapoints[i] = -1;
}

void AddToDatapoints(int datapoints[], int new)
{
	int i;
	
	for (i=0; i < kDatapointCount - 1; i++)
		datapoints[i] = datapoints[i + 1];
		
	datapoints[i] = new;
}

int	GetDatapointsAverage(int datapoints[])
{
	int total = 0, count = 0, i;
	
	for (i=0; i < kDatapointCount; i++)
		if (datapoints[i] != -1)
		{
			total += datapoints[i];
			count++;
		}
		
	return total/count;
}

int	GetDatapointsScaling(int datapoints[])
{
	int max = -1, i;
	
	for (i=0; i < kDatapointCount; i++)
		if (datapoints[i] > max)
			max = datapoints[i];
	
	for (i=0; i < kScaleStepCount && max > kScaleSteps[i]; i++) {;}
	
	// want one more than the max, for some overhead
	//if (i < kScaleStepCount - 1) i++;
	
	return i;
}

const static int kLowerY = -2;

void DatapointToXY(int datapoints[], int i, int max, float* x, float *y)
{
	*x = ((float)kCanvasWidth)/((float)kDatapointCount - 1) * i;
	*y = ((float)datapoints[i])/((float)max) * kCanvasHeight;
		
	if (*y < 1) *y = kLowerY;
}

void DrawDatapoints(int datapoints[], int max, const float color[])
{
	float 		x, y;
	int 		i;
	
	CGContextSetFillColor(gOutputContext, color);
	CGContextSetLineWidth(gOutputContext, 2.0);
	CGContextSetStrokeColor(gOutputContext, color);
	CGContextBeginPath(gOutputContext);
	
	DatapointToXY(datapoints, 0, max, &x, &y);
	CGContextMoveToPoint(gOutputContext, x, y);
	
	for (i=1; i < kDatapointCount; i++)
	{
		DatapointToXY(datapoints, i, max, &x, &y);
			
		CGContextAddLineToPoint(gOutputContext, x, y);
	}
	
	CGContextStrokePath(gOutputContext);
	CGContextSetLineWidth(gOutputContext, 1.0);
}

void ClearCanvas()
{
	CGContextClearRect(gOutputContext, gOutputRectCG);
	
	CGContextSetFillColor(gOutputContext, kBackgroundColor);
	CGContextFillRect(gOutputContext, gOutputRectCG);
}

void DrawGridAndLabel()
{
	int		i, labelNo, x, y;
	char	labelText[80];
	
	CGContextSetStrokeColor(gOutputContext, kGridColor);
	
	// x grid
	for (i = 1; i < kGridLineCount; i++)
	{
		x = ((float)kCanvasWidth)/((float)kGridLineCount) * i;
		CGContextBeginPath(gOutputContext);
		
		CGContextMoveToPoint(gOutputContext, x + 0.5, 0.5);
		CGContextAddLineToPoint(gOutputContext, x + 0.5, kCanvasHeight - 1.0);
		
		CGContextStrokePath(gOutputContext);
	}
	
	// y grid
	for (i = 1; i < kGridLineCount; i++)
	{
		y = ((float)kCanvasHeight)/((float)kGridLineCount) * i;
		CGContextBeginPath(gOutputContext);
		
		CGContextMoveToPoint(gOutputContext, 0.5, y + 0.5);
		CGContextAddLineToPoint(gOutputContext, kCanvasWidth - 1.0, y + 0.5);
		
		CGContextStrokePath(gOutputContext);
	}
	
	// label
	CGContextSetFillColor(gOutputContext, kTextColor);
	
	CGContextSelectFont(gOutputContext, "Lucida Grande", 10, kCGEncodingMacRoman);
	labelNo = kScaleSteps[gCurrentScale]/1024;
	sprintf(labelText, "%dK", labelNo);
	CGContextShowTextAtPoint(gOutputContext, kCanvasWidth - 7 * strlen(labelText), kCanvasHeight - 10, labelText, strlen(labelText));
	
	CGContextFlush(gOutputContext);
	
	CGContextSetStrokeColor(gOutputContext, kFrameColor);
	
	CGContextStrokeRect(gOutputContext, gOutputRectCG);
}

void MainLoop()
{
	char	netstatOutput[kMaxLineSize];
	int		inPackets, inErrors, inBytes,
			outPackets, outErrors, outBytes,
			collisions, outAverage, inAverage;
	int		scale;
			
	while (gClientsAlive)
		if (fgets(netstatOutput, kMaxLineSize, gNetstatOutput) != NULL &&
			sscanf(netstatOutput, "%d %d %d %d %d %d %d\n", &inPackets, &inErrors, &inBytes, &outPackets, &outErrors, &outBytes, &collisions) == 7)
		{
			// prepare
			ClearCanvas();
			
			// add to data
			AddToDatapoints(gTotalDatapoints, inBytes + outBytes);
			AddToDatapoints(gOutputDatapoints, outBytes);
			AddToDatapoints(gInputDatapoints, inBytes);
			
			// figure out stats
			outAverage = GetDatapointsAverage(gOutputDatapoints);
			inAverage = GetDatapointsAverage(gInputDatapoints);
			
			scale = GetDatapointsScaling(gTotalDatapoints);
			
			if (scale > gCurrentScale || scale < gCurrentScale - 1) // so we don't change scales too often
				gCurrentScale = scale;
	
			// draw
			
			if (gShowTotal) DrawDatapoints(gTotalDatapoints, kScaleSteps[gCurrentScale], kTotalColor);
			if (gShowOutbound) DrawDatapoints(gOutputDatapoints, kScaleSteps[gCurrentScale], kOutputColor);
			if (gShowInbound) DrawDatapoints(gInputDatapoints, kScaleSteps[gCurrentScale], kInputColor);
			
			// grid
			DrawGridAndLabel();
			
			// export
			ExportGWToQTFile(gOutputGW, gOutputPix, gOutputSpec, kOutputFileFormat, 32);
			pclose(popen("mv output.new.tif output.tif", "r"));
			
			// check clients
			CheckKeepAlive();
		}
}

void CheckKeepAlive()
{
	struct stat 	stats;
	time_t			currentTime;
	
	stat(kKeepAliveFile, &stats);
	time(&currentTime);
	
	if (currentTime - stats.st_atimespec.tv_sec > 10)
		gClientsAlive = 0;
}

void ExportGWToQTFile(GWorldPtr imageGW, PixMapHandle imagePix, FSSpec exportFile, OSType fileType, long depth)
{
	OSErr			  	err;
	ComponentInstance	exporter = NULL;
	UInt32				exportSize;
	
	exportSize = ((**imagePix).rowBytes * 0x3FFF) * (**imagePix).bounds.bottom;
	
	err = OpenADefaultComponent(GraphicsExporterComponentType, fileType, &exporter);
	if (err != noErr) goto bail;
	
	err = GraphicsExportSetInputGWorld(exporter, imageGW);
	if (err != noErr) goto bail;
	
	err = GraphicsExportSetDepth(exporter, depth);
	if (err != noErr) goto bail;
	
	err = GraphicsExportSetOutputFile(exporter, &exportFile);
	if (err != noErr) goto bail;

	err = GraphicsExportDoExport(exporter, &exportSize);
	if (err != noErr) goto bail;
	
bail:	
	if (exporter) CloseComponent(exporter);
}
