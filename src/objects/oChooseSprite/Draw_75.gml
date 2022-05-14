
// Left btn
draw_sprite_ext(sBtnLeft, lBtnImage, x + _btnLXBuff, y + _btnYBuff, image_xscale, image_yscale, image_angle, image_blend, 1);

// Right btn
draw_sprite_ext(sBtnRight, rBtnImage, x + _btnRXBuff, y + _btnYBuff, image_xscale, image_yscale, image_angle, image_blend, 1);

// sprite
_valXBuff = x + ((_btnRXBuff * 0.5) + sprite_get_width(sBtnLeft) * 0.5) - 1;
draw_sprite_ext(val, 0, _valXBuff - (sprite_get_width(val) * 0.5) + sprite_get_xoffset(val), y - _valYBuff + sprite_get_yoffset(val), 1, 1, 0, c_white, 1);
