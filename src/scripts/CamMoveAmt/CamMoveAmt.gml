
///@arg x_amt
///@arg y_amt

function CamMoveAmt(_xamt, _yamt){
	_xamt = floor(argument[0]);
	_yamt = floor(argument[1]);
	var _camX = camera_get_view_x(global.cam);
	var _camY = camera_get_view_y(global.cam);
	cam_pos(global.cam, _camX + _xamt, _camY + _yamt);
}