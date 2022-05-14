
var _camX = camera_get_view_x(global.cam);
var _camY = camera_get_view_y(global.cam);
var _yBuff = 50;
var _xBuff = 50;
draw_sprite_ext(sPix, 0, _camX - _xBuff, _camY - _yBuff, global.camWidth + _xBuff * 2, global.camHeight + _yBuff * 2, 0, global.bgColor, 1);
