
// draw bg
draw_sprite_ext(bgSpr, 0, bgX, bgY, bgSprW, bgSprH, 0, c_white, bgAlpha);
DrawRectOutlineLine(bgXcorner, bgYcorner, bgX + bgSprW, bgY + bgSprH, c_black, 1, 1);

// draw & update highlight
if(instance_exists(highlight)){
	with(highlight){
		x = other.highlightX;
		y = other.highlightY;
		draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, 1);	
	}
}

for(var i = 0; i < arraySz; i++){
	
	//common operations
	var _str = settingElement[i];
	var _strWidth = string_width(_str);
	//var _strHeight = string_height(_str);
	//var _strCol = c_white;
	var _strXscale = 1;
	var _strYscale = 1;
	
	var _x = camWHalf;
	var _y = (camHHalf - bgSprHPix * 0.5 + 3) + ystrtBuff + ySep * i;
	
	// Speical elements
	if(_str == "Credits"){
		_y += 18;
	}
	if(_str == "Exit Jodo"){
		_y += 18;
	}
	
	if(_str == "Close"){
		_y += 36;
	}
	
	var _commit = key_press(vk_enter);
	
	// Mouse collision
	var _rectX1 = _x - _strWidth * 0.7;
	var _rectX2 = _x + _strWidth * 0.7;
	var _rectY1 = _y;
	var _rectY2 = _rectY1 + ySep - 1;
	var _mouseGuiX = MouseGuiX();
	var _mouseGuiY = MouseGuiY();
	var _col = rectangle_in_rectangle(_mouseGuiX, _mouseGuiY, _mouseGuiX, _mouseGuiY, _rectX1, _rectY1, _rectX2, _rectY2);
	if(_col){
		if(mouse_press(mb_left)){
			_commit = true;
			audio_play_sound(snClick, 0, false);
		}
		
		if(MouseMov())
			elementPnt = i;
	}
	
	// Hovering
	if(elementPnt == i){
		highlightY = _y + highlightYbuf;
		_y += Wave(-3, 3, 0.6, 0);		// Wavey..
	
		if(_commit){
			_strXscale -= 0.1;
			_strYscale -= 0.1;
			switch(_str){
				case "General":
				{
					instance_destroy();
					instance_create_layer(0, 0, layer, oGeneralOpt);
				}break;
				
				case "Display":		
				{
					instance_destroy();
					instance_create_layer(0, 0, layer, oGraphicsOpt);
				}break;
				
				case "Customize":		
				{
					instance_destroy();
					instance_create_layer(0, 0, layer, oCustomizeOpt);
				}break;
			
				case "Caret":		// cursor options obj
				{
					instance_destroy();
					instance_create_layer(0, 0, layer, oCaretOpt);
				}break;
				
				case "Text":		// cursor options obj
				{
					instance_destroy();
					instance_create_layer(0, 0, layer, oTextOpt);
				}break;
				
				case "Credits":		
				{
					instance_destroy();
					instance_create_layer(0, 0, layer, oCredits);
				}break;
			
				case "Exit Jodo":	// Quit the program
				{
					game_end();
				}break;
				
				case "Close":		// Close windows
				{
					instance_destroy();
				}break;
			}
			
		}
		
		#region draw element icon
		if(sprite_exists(icn[i]) && (instance_exists(highlight))){
			var _icnSpr = icn[i];
			var _xBuf = 4;
			var _icnX = highlight.x - highlight.sprite_width * 0.5 + sprite_get_width(_icnSpr) * 0.5 + _xBuf; 
			var _icnY = highlight.y;
			var _wavStart = -14;
			var _wavEnd = 14;
			var _wavSpd = 0.6;
			
			// right
			draw_sprite_ext(_icnSpr, 0, _icnX, _icnY, 1, 1, Wave(_wavStart, _wavEnd, _wavSpd, 0), c_white, 1);
				
			// left
			_icnX = highlight.x + highlight.sprite_width * 0.5 - sprite_get_width(_icnSpr) * 0.5 - _xBuf; 
			draw_sprite_ext(_icnSpr, 0, _icnX, _icnY, 1, 1, Wave(_wavStart, _wavEnd, _wavSpd, 0), c_white, 1);
		}
		#endregion
	}
	
	// Draw string
	draw_set_halign(fa_center);
	draw_text_ext_transformed(_x, _y, _str, 100, 1000, _strXscale, _strYscale, 0);
	draw_set_halign(fa_left);
}
