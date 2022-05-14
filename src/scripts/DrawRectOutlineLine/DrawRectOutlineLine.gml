
// draw outline with length
///@arg x1
///@arg y1
///@arg x2
///@arg y2
///@arg color
///@arg alpha
///@arg line_length

function DrawRectOutlineLine(x1, y1, x2, y2, color, alpha, length){
	draw_set_color(color);
	draw_set_alpha(alpha);
	
	x1--;
	x2--;
	y1--;
	y2--;
	draw_line_width(x1, y1, x2, y1, length);
	draw_line_width(x1, y2, x2, y2, length);
	draw_line_width(x1, y1, x1, y2, length);
	draw_line_width(x2, y1, x2, y2, length);
	
	draw_set_color(c_white);
	draw_set_alpha(1);
}



