
newHillPoint = false;
numStartingHillPoints = 15;
totalHills = -1;
zoomFactor = -15;
zoomAmplifier = .1;

// Create the list to hold the hill points
hillPoints = ds_list_create();

// This is the segment width. Higher = better performace, less physics accuracy
hillSegmentWidth = 12;

// Set variables for the window dimensions
winHeight = __view_get( e__VW.HView, 0 );
winWidth = __view_get( e__VW.WView, 0 );

// Minimum distance between hill points on X and Y
minDX = 120;
minDY = 100; 

// The range of the hill points on X and Y

rangeDX = 150;//160
rangeDY = 40;

rangeDX =110;//160
rangeDY = 10; 


// Initialise position, used for first hill point
x = -minDX;
y = winHeight*0.45;

dy = 0;
ny = 0;

// The is current way the hill is going, 1 for up, -1 for down
dir = 1; 

// Make sure the the hill points dont go outwith these limits 
paddingTop = 40;
paddingBottom = 300;

