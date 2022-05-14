
// Can't control
global.canControl = false;

// options
settingElement[0] = "General";
settingElement[1] = "Display";
settingElement[2] = "Customize";
settingElement[3] = "Caret";
settingElement[4] = "Text";
settingElement[5] = "Credits";
settingElement[6] = "Exit Jodo";
settingElement[7] = "Close";

icn[0] = sWrench;
icn[1] = sGraphics;
icn[2] = sBrush;
icn[3] = sCaretIcn;
icn[4] = sText;
icn[5] = sHeart;
icn[6] = sExit;
icn[7] = sBack;

arraySz = array_length(settingElement);

elementPnt = 1;

camW = global.camWidth;
camH = global.camHeight;
camWHalf = global.camWidth/2;
camHHalf = global.camHeight/2;

// the vertical space between each element
ySep = 20;
ystrtBuff = 10;		// offset the y pos of the first element

bgSpr = sOptions;
bgSprW = 70;
bgSprH = arraySz * 10 + ySep + 5;
bgSprWPix = bgSprW * 2;
bgSprHPix = bgSprH * 2;
//bgSpr = sBgtest;
//bgSprW = sprite_get_width(bgSpr);
//bgSprH = sprite_get_height(bgSpr);
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
