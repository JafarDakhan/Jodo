
if(audio_exists(global.song)){
	if(global.isSongPlaying){ 
		_pos = audio_sound_get_track_position(global.songIND); 
		lastPos = 0;
	}
	else _pos = lastPos;
	
	var _song = global.song;
	
	sliderW = (_pos/global.songLen) * sliderDesW;

	// btn coll
	switch(Mouse_Col_Gui(btnX, btnY, 1, 1, sSliderBtn)){	
		case 1:
		{
			image_index = 1;
		}break;
		
		case 2:
		{
			moveBtn = true;
		}break;
		
		default:
		{
			image_index = 0;
		}break;
	}
	
	if(moveBtn){
		image_index = 1;
		if(mouse(mb_left)){
			btnX = MouseGuiX();
			btnX = clamp(btnX, x, x + sliderDesW);
		}
		else{
			var _btnXinSlider = btnX - x;
			var __pos = floor(((_btnXinSlider/sliderDesW) * global.songLen));
			ChangeSongPos(_song, __pos, true);
			image_index = 0;
			moveBtn = false;
		}
	}
	else{
		btnX = x + (sliderW);
	}
	
	btnY = y + 1 + ((MouseGuiY() - y)/10) * moveBtn;
	btnY = clamp(btnY, y - 5, y + 5 + sliderH);
}
else{
	sliderW = 0;
	btnX = x + (sliderW);
	btnY = y + 1;
}