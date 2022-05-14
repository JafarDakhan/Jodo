
global.canControl = false;

elementPress = 0;
btnBfX = 12;

bgSpr = sOptions;
bgWidth = 100;
bgAlpha = global.uiBaseAlpha + 0.1;


bgWidthPix = bgWidth * 2;
bgHeight = 120;
bgHeightPix = bgHeight * 2;
bgX = global.camWidth/2;
bgY = global.camHeight/2;
bgXcorner = bgX - bgWidthPix/2;
bgYcorner = bgY - bgHeightPix/2;

textSep = 20;
textX = 10;
textY = 10;
textYoffset = 0;
scrlSpd = 7;
textAlpha = 1;
textXscale = 1;
textYscale = 1;

// shader
shader = shFontFadeVerticalandGrade;
shyFade = shader_get_uniform(shader, "yFade");
shyFade2 = shader_get_uniform(shader, "yFade2");
shwindowH = shader_get_uniform(shader, "windowResH");
shAlpha = shader_get_uniform(shader, "fntAlpha");
shGrade = shader_get_uniform(shader, "gradeB");
shTime = shader_get_uniform(shader, "time");
showGrade = false;


clsBTN = instance_create_layer(bgXcorner + bgWidthPix - sprite_get_width(sClose)/2 - 2, bgYcorner, layer, oClose);
with(clsBTN){
	alpha = other.bgAlpha;
	windowObj = other;	
}
