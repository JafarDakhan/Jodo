
event_inherited();

for(var i = 0; i < array_length(options); i++){
	
	// common operations
	var _str = options[i];
	var _strWidth = string_width(options[i]);
	var _strHeight = string_height(options[i]);
	var _xscale = textXscale;
	var _yscale = textYscale;
	var _alpha = textAlpha;
	
	var xx = bgXcorner + textX;
	var yy = bgYcorner + textY + (textSep * i);
	
	// setter obj (buttons)
	var _set = noone;
	
	// Special element
	if(_str != "Back"){
		_set = kind[i];
		_set.x = xx + _strWidth + 10;
		_set.y = yy + 2;
	}
	else{
		xx = bgX - _strWidth * 0.5;
		yy += 18;
			
		if(point_in_rectangle(MouseGuiX(), MouseGuiY(), xx - 3, yy - 3, xx + _strWidth + 3, yy + _strHeight + 3)){
			yy += Wave(-4, 4, 0.7, 0);
			if(mouse_press(mb_left) || key_press(vk_enter)){
				instance_destroy();
				instance_create_layer(0, 0, layer, oSettingsMenu);
				audio_play_sound(snClick, 0, false);
			}
		}
	}
	
	// Check element
	switch(_str){
		case "Underline":
		{
			global.underline = _set.val;		
		}break;
		
		case "Strike-through":
		{
			global.strikethru = _set.val;		
		}break
		
		case "Strike-through opacity":
		{
			global.strikethruAlpha = _set.val/10;		
		}break
		
		case "Highlight blinking":
		{
			global.highlightBlink = _set.val;
		}break;
		
		case "Text color":
		{
			global.textColor = _set.val;
			if(instance_exists(oTextBlock)) oTextBlock.stringCol = global.textColor;
		}break;
	}
	
	// Draw string
	DrawTextScale(options[i], xx, yy, c_white, _alpha, _xscale, _yscale, 0);
}
