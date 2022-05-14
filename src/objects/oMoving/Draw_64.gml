
tempAlpha = alpha;
switch(Mouse_Col_Gui(x, y - sprite_height * 0.5, image_xscale, image_yscale, sprite_index)){
	case 2:		// hold left click
	{
		move = true;
	}break;
	
	case 1:
	{
		tempAlpha = 1;
	}break;
}



draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, tempAlpha);