
global.canControl = false;

element1[0] = "Developed by";
element2[0] = "@Jafar_Dakhan";

element1[1] = "Font: Monogram. by";
element2[1] = "@vmenezio";

element1[2] = "Written in";
element2[2] = "GameMaker Studio";

element1[3] = "Made for";
element2[3] = "#TheToolJam2";

array1Sz = array_length(element1);

bgSpr = sOptions;
bgWidth = 100;
bgAlpha = global.uiBaseAlpha + 0.1;

textSep = 50;
textX = bgWidth;
textY = 10;
StextAlpha = 1;
BtextAlpha = 0.8;
textXscale = 1;
textYscale = 1;
smlBuff = 19;

bgWidthPix = bgWidth * 2;
bgHeight = (array1Sz * 10 + textSep)* 1.3;
bgHeightPix = bgHeight * 2;
bgX = global.camWidth/2;
bgY = global.camHeight/2;
bgXcorner = bgX - bgWidthPix/2;
bgYcorner = bgY - bgHeightPix/2;


clsBTN = instance_create_layer(bgXcorner + bgWidthPix - sprite_get_width(sClose)/2 - 2, bgYcorner, layer, oClose);
with(clsBTN){
	alpha = other.bgAlpha;
	windowObj = other;	
}
