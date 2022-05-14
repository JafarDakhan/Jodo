
// Draws the menu for choosing a tag

/// @param colors[]
/// @param x
/// @param y
/// @param sprXscale
/// @param sprYscale
/// @param sprOffestX
/// @param bgBuffX
/// @param bgBuffY
/// @param bgColor
/// @param mousInputBuff
/// @param dot_id

function DrawTagGui(){
	var _array = argument[0];
	var _xOrg = argument[1];
	var _yOrg = argument[2];
	var _bgAlph = global.uiBaseAlpha + 0.1;
	var _tagXScale = argument[3];
	var _tagYScale = argument[4];
	var _xOffset = argument[5];
	var _bgXBuff = argument[6];
	var _bgYBuff = argument[7];
	var _bgCol = argument[8];
	var _mousInpBuff = argument[9];
	var _dotID = argument[10];
	
	var _arraySz = array_length(_array);
	
	var _bgXscale = (_arraySz * _tagXScale) + _bgXBuff * 2;
	var _bgYscale = _tagYScale + (_bgYBuff * 2);
	
	draw_sprite_ext(sPix, 0, _xOrg - _bgXBuff, _yOrg -_bgYBuff, _bgXscale, _bgYscale, 0, _bgCol, _bgAlph);
	
	// Destroy when click outside the ui
	if(!Mouse_Col(_xOrg + _bgXscale * 2, _yOrg + _bgYscale * 2, _bgXscale, _bgYscale, sPix) && (_mousInpBuff <= 0)){
		if mouse_press(mb_left) || mouse_press(mb_right){
			instance_destroy();	
			with(oControl){
				canScroll = true;
			}	
			global.tagMenuOpen = false;
		}	
	}

	for (i = 0; i < _arraySz; i++){
		var xScale = _tagXScale;
		var yScale = _tagYScale;
		var _x = _xOrg + (xScale * i) + _xOffset;
		var _y = _yOrg;
		var _alph = 0.85;
		var _col = _array[i];
		
		switch(Mouse_Col(_x + xScale * 0.5, _y + yScale * 0.5, xScale, yScale, sPix)){
			case 1:
			{
				_alph = 1;
			}break;
		
			case 2:
			{
				audio_play_sound(snClick, 0, false);
				
				with(_dotID){
					with(todo){
						tagCol = _col;
					}
				}
				
				DelAllObj(oChooseTag);
				with(oControl){
					canScroll = true;
				}
				global.tagMenuOpen = false;
			}break;
		}
		
		// color
		draw_sprite_ext(sPix, 0, _x, _y, xScale, yScale, 0, _array[i], _alph);
	}
}