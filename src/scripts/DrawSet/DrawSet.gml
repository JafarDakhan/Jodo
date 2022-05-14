
///@param font
///@param color
///@param alpha
///@param halign
///@param valign

function DrawSet(){
	var _font = argument[0], _col = argument[1], _alpha = argument[2];
	var _halign = argument[3], _valign = argument[4];
	
	draw_set_font(_font);
	draw_set_color(_col);
	draw_set_alpha(_alpha);
	draw_set_halign(_halign);
	draw_set_valign(_valign);
}