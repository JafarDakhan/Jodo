
#region background vars
sizeWdef = 200;
sizeHdef = 70;
sizeWpix = sizeWdef/2;
sizeHpix = sizeHdef/2;
xCorner = x - sizeWpix;
yCorner = y - sizeHpix;

alpha = global.uiBaseAlpha + 0.1;
#endregion

#region slider
sliderW = sizeWdef - 40;
sliderX = x - sliderW/2;
sliderYoffset = sizeHpix/1.6;

slider = instance_create_layer(sliderX, y + sliderYoffset, layer, oMusicSlider);
with(slider){
	sliderDesW = other.sliderW;	
}
#endregion

#region control buttons
buttonsYOffset = 5;
playBtnX = x;
playBtnY = y + buttonsYOffset;
Xoffset = 22;
arrowLx = playBtnX - Xoffset;
arrowRx = playBtnX + Xoffset;
arrowY = playBtnY;
repeatX = arrowLx - Xoffset;
repeatY = arrowY;
shuffleX = arrowRx + Xoffset;
shuffleY = y + buttonsYOffset;
btnWaveDur = 0.7;
btnWaveFrom = -2;
btnWaveTo = abs(btnWaveFrom);

// highlight effect vars
hx = 0;
hy = 0;
hw = 0;
hh = 0;
#endregion

#region text shader
shader = shFontFade;
shfadeX = shader_get_uniform(shader, "xFade");
shfadeX2 = shader_get_uniform(shader, "xFade2");
shfntAlpha = shader_get_uniform(shader, "fntAlpha");
shWndResW = shader_get_uniform(shader, "windowResW");
#endregion

#region text vars
txtX = 0;
txtY = 0;
txtXbuf = 10;
txtYbuf = sizeHpix/1.2;
txtWidth = 0;
txtAlpha = 0.8;
txtXFade = 0;
txtXFade2 = 0;
txtXoffset = 0;
spd = 0.5;
dividerX = xCorner;
dividerOffset = 16;
dividerY = txtY - txtYbuf + dividerOffset;
#endregion

#region window control buttons
btnsxBuf = 7;
btnsX = x + sizeWpix - btnsxBuf;
btnsY = y - sizeHpix;
closeBtn = instance_create_layer(btnsX, btnsY, layer, oClose);
with(closeBtn){
	windowObj = other;
	alpha = other.alpha;
}

moveBtn = instance_create_layer(btnsX - btnsxBuf * 2, btnsY, layer, oMoving);
with(moveBtn){
	windowObj = other;
	alpha = other.alpha;
	windowW = other.sizeWpix;
	windowH = other.sizeHpix;
	xBuff = other.btnsxBuf * 3;
	yBuff = 0;
}
#endregion

