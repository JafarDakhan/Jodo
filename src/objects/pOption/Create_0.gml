// can't control
global.canControl = false;

arraySz = array_length(options);

// text drawing
textSep = 20;
textX = 10;
textY = 10;
textAlpha = 1;
textXscale = 1;
textYscale = 1;

// drawing vars
bgSpr = sOptions;
bgAlpha = global.uiBaseAlpha + 0.1;
bgWidth = 100;
bgHeight = arraySz * 10 + textSep + 1;
bgWidthPix = bgWidth * 2;
bgHeightPix = bgHeight * 2;
bgX = global.camWidth/2;
bgY = global.camHeight/2;
bgXcorner = bgX - bgWidthPix/2;
bgYcorner = bgY - bgHeightPix/2;

// load once
loadSetter = true;

clsBTN = instance_create_layer(bgXcorner + bgWidthPix - sprite_get_width(sClose)/2 - 2, bgYcorner, layer, oClose);
with(clsBTN){
	alpha = other.bgAlpha;
	windowObj = other;	
}
