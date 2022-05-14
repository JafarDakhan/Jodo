
// draw outline with length
///@arg x1
///@arg y1
///@arg x2
///@arg y2
///@arg color
///@arg alpha
///@arg line_length

function DrawRectOutline(x1, y1, x2, y2, color, alpha, length){
	draw_set_color(color);
	draw_set_alpha(alpha);

	draw_rectangle(x1, y1, x2, y2, true);
	for(var i = 0; i < length; i+=1){
	    draw_rectangle(x1-i,y1-i,x2+i,y2+i,true)
	}
	
	draw_set_color(c_white);
	draw_set_alpha(1);
	return 1;
}



