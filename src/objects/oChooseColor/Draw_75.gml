
// Left btn
draw_sprite_ext(sBtnLeft, lBtnImage, x + _btnLXBuff, y + _btnYBuff, image_xscale, image_yscale, image_angle, image_blend, 1);

// Right btn
draw_sprite_ext(sBtnRight, rBtnImage, x + _btnRXBuff, y + _btnYBuff, image_xscale, image_yscale, image_angle, image_blend, 1);

// Value color
var _w = 14;
var _h = 14;
_valXBuff = x + ((_btnRXBuff * 0.5) + sprite_get_width(sBtnLeft) * 0.5) - 1;
draw_sprite_ext(sPix, 0, _valXBuff - _w * 0.5, y - _valYBuff, _w, _h, 0, val, 1);
