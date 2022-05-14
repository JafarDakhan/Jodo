
// Left btn
draw_sprite_ext(sBtnLeft, lBtnImage, x + _btnLXBuff, y + _btnYBuff, image_xscale, image_yscale, image_angle, image_blend, 1);

// Right btn
draw_sprite_ext(sBtnRight, rBtnImage, x + _btnRXBuff, y + _btnYBuff, image_xscale, image_yscale, image_angle, image_blend, 1);

// Value
//draw_sprite_ext(sPix, 0, x + _valXBuff, y - _valYBuff, 12, 12, 0, c_white, 0.3);
_str = string(val);
_valXBuff = x + ((_btnRXBuff * 0.5) + sprite_get_width(sBtnLeft) * 0.5) - 1;
DrawTextExt(_str, fMonogram, _valXBuff, y - _valYBuff, c_white, fa_middle, fa_top, 1);
draw_set_halign(fa_left);
