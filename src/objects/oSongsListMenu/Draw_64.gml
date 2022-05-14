
event_inherited();

if(global.isSongListEmpty){
	var _textX = bgXcorner + bgWidth;
	var _textY = bgYcorner + bgHeight - 20;	
	
	shader_set(shader);
	shader_set_uniform_f(shwindowH, global.camHeight);
	shader_set_uniform_f(shAlpha, 1);
	shader_set_uniform_f(shyFade, bgYcorner);
	shader_set_uniform_f(shyFade2, bgYcorner + bgHeightPix);
	shader_set_uniform_f(shGrade, 1.0);
	shader_set_uniform_f(shTime, get_timer()/1000000);
	
	draw_set_halign(fa_center);
	draw_text_ext_transformed(_textX, _textY, "List is empty @_@", 1000, 1000, 1, 1, 0);
	draw_set_halign(fa_left);
	
	shader_reset();
}
else{
	for(var i = 0; i < global.listLength; i++){
	
		// common operations
		var _str = global.songs[i];
		var _strW = string_width(_str);
		var _strH = string_height(_str);
		var _col = c_white;
	
		var _textX = bgXcorner + textX;
		var _textY = (bgYcorner + textY + i * textSep) + textYoffset;	
	
		var _yWave = 0;
		if(global.curSong == i){
			showGrade = true;
			if(global.isSongPlaying){
				_yWave = Wave(-2, 2, 0.7, 0);
			}
		}
		else{
			showGrade = false;	
		}
	
		// highlight
		var _hX = -100;
		var _hY = -100;
	
		if(point_in_rectangle(MouseGuiX(), MouseGuiY(), _textX, _textY, _textX + _strW, _textY + _strH)){
			_hX = _textX;
			_hY = _textY;
			if(mouse_press(mb_left)){	
				elementPress = !elementPress;
				if(global.curSong != i){
					global.curSong = i;
					PlaySongStream(global.songs, global.curSong);
					elementPress = true;
				}	
			}
		}
	
		draw_sprite_ext(sPix, 0, _hX - 4, _hY - 4, _strW + 8, _strH + 8, 0, c_black, 0.5);
	
		// delete button
		if(elementPress) && (global.curSong == i){
			var _btnX = _textX + _strW + btnBfX;
			var _btnY = _textY + 5;
			var _alpha = 0.7;
		
			switch(Mouse_Col_Gui(_btnX, _btnY, 1, 1, sDelete)){
				case 1:
				{
					_alpha = 0.4;
				}break;
			
				case 2:
				{
					// Delete song code here..
				}break;
			}
		
			// Delete sprite
			//draw_sprite_ext(sDelete, 0, _btnX, _btnY, 1, 1, 0, c_white, _alpha);
		}
	
		// draw
		draw_set_color(_col);
		shader_set(shader);
		shader_set_uniform_f(shwindowH, global.camHeight);
		shader_set_uniform_f(shAlpha, textAlpha);
		shader_set_uniform_f(shyFade, bgYcorner);
		shader_set_uniform_f(shyFade2, bgYcorner + bgHeightPix);
		shader_set_uniform_f(shGrade, showGrade); 
		shader_set_uniform_f(shTime, get_timer()/1000000);
		draw_text_ext_transformed(_textX, _textY + _yWave, _str, 1000, 1000, 1, 1, 0);
		shader_reset();
		draw_set_color(_col);
	}
}
