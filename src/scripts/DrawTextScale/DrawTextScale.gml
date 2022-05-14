
/// @param string
/// @param x
/// @param y
/// @param color
/// @param alpha
/// @param x_scale
/// @param y_scale
/// @param angle

function DrawTextScale(){
	var _str = argument[0];
	var _xx = argument[1];
	var _yy = argument[2];
	var _col = argument[3];
	var _alpha = argument[4];
	var _xScale = argument[5];
	var _yScale = argument[6];
	var _angle = argument[7];
	
	draw_text_transformed_color(_xx, _yy, _str, _xScale, _yScale, _angle, _col, _col, _col, _col, _alpha);
}