
global.canControl = false;

// options
element[0] = "Upload audio file";
element[1] = "List";
element[2] = "Close";

icn[0] = sMusic;
icn[1] = sList;
icn[2] = sBack;

arraySz = array_length(element);
elementPnt = 1;

camW = global.camWidth;
camH = global.camHeight;
camWHalf = global.camWidth/2;
camHHalf = global.camHeight/2;

// the vertical space between each element
ySep = 20;
ystrtBuff = 10;		//  the y offset of the first element

bgSpr = sOptions;
bgSprW = 70;
bgSprH = arraySz * 10 + ySep;
bgSprWPix = bgSprW * 2;
bgSprHPix = bgSprH * 2;
bgX = camW/2;
bgY = camH/2;
bgXcorner = bgX - bgSprWPix/2;		// right corner
bgYcorner = bgY - bgSprHPix/2;		// top 
bgAlpha = global.uiBaseAlpha + 0.1;

// Close button
clsBTN = instance_create_layer(bgXcorner + bgSprWPix - sprite_get_width(sClose)/2 - 2, bgYcorner, layer, oClose);
with(clsBTN){
	alpha = other.bgAlpha;
	windowObj = other;
}

// Highlight bar stuff
highlightX = bgX;
highlightYbuf = 6;
highlightY = (bgY - bgSprHPix/2) + ystrtBuff + ySep + highlightYbuf;
highlight = instance_create_layer(x, y, layer, oHigh);
with(highlight){
	x = other.highlightX;
	y = other.highlightY;
}
