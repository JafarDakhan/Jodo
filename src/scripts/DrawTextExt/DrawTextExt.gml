
/// @param string
/// @param font
/// @param x
/// @param y
/// @param color
/// @param halign
/// @param valign
/// @param alpha

function DrawTextExt(){
	
	var _string = argument[0];
	var _font = argument[1];
	var _x = argument[2];
	var _y = argument[3];
	var _col = argument[4];
	var _halign = argument[5];
	var _valign = argument[6];
	var _alpha = argument[7];
	
	draw_set_font(_font);
	draw_set_color(_col);
	draw_set_halign(_halign);
	draw_set_valign(_valign);
	draw_set_alpha(_alpha);
	
	draw_text(_x, _y, _string);
	
	
	draw_set_color(c_white);
	draw_set_alpha(1);
	
}