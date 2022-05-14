
val = noone;
colors = global._colors;
arrayPnt = 0;
arraySz = array_length(colors);
alarm[0] = 1;
valEnc = 1;
maxVal = arraySz - 1;
minVal = 0;
image_alpha = 0;
lBtnImage = 0;
rBtnImage = 0;
_btnLXBuff = 5;
_btnRXBuff = 34 + _btnLXBuff;
_btnYBuff = 6;
_valXBuff = x + ((_btnRXBuff * 0.5) + sprite_get_width(sBtnLeft) * 0.5) - 1;
_valYBuff = 2;
