
tempAlpha = alpha;
switch(Mouse_Col_Gui(x, y - sprite_height * 0.5, image_xscale, image_yscale, sprite_index)){
	case 2:
	{
		if(instance_exists(windowObj)){
			instance_destroy(windowObj);	
		}
		audio_play_sound(snClose, 0, false);
	}break;
	
	case 1:
	{
		tempAlpha = 1;
	}break;
}

draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, tempAlpha);