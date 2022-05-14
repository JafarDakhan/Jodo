
switch(Mouse_Col_Gui(x + sprite_width * 0.5, y + sprite_height * 0.5, 1, 1, sprite_index)){
	case 2:
	{
		val = !val;
		outLine = false;
		audio_play_sound(snClick2, 0, false);
	};
	
	case 1:
	{
		outLine = true;
	}break;
	
	default:
	{
		outLine = false;
	}break;
}

image_index = val;
