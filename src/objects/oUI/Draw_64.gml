
for(var i = 0; i < array_length(uiElements) && instance_exists(uiElements[i]); i++){
	var _sprite = uiElementsInd[i].spr;
	var _sprWidth = sprite_get_width(_sprite);
	var _sprHeight = sprite_get_height(_sprite);
	var _xScl = 1;
	var _yScl = 1;
	var _xx = uiElementsXPos - uiElementsXPosBuf * i;
	var _yy = uiElementsYPos;
	
	uiElementsInd[i].x = _xx;
	uiElementsInd[i].y = _yy;
	uiElementsInd[i].image_xscale = _xScl;
	uiElementsInd[i].image_yscale = _yScl;

	switch(Mouse_Col_Gui(_xx, _yy, _xScl, _yScl, _sprite)){
		case 1:
		{
			// gray highlight
			var _buf = 4;
			draw_sprite_ext(sPix, 0, (_xx - _sprWidth  * 0.5 ) - _buf * 0.5, (_yy - _sprHeight  * 0.5) - _buf * 0.5, _sprWidth + _buf, _sprHeight + _buf, 0, c_gray, 0.5);
		}break;
		
		case 2:
		{
			switch(uiElements[i]){
				case oSettings:			// Open setting menu
				{
					audio_play_sound(snIcoClick, 0, false);
					var _Menu = instance_exists(pMENU);
					var _optMenu = instance_exists(pOption);
					
					if(!_Menu && !_optMenu){
						instance_create_layer(_xx, _yy, layer, oSettingsMenu);
					}
					else{
						if(_Menu) instance_destroy(pMENU);	
						if(_optMenu) instance_destroy(pOption);
						global.canControl = true;
					}
				}break;
				
				case oMusicIc:			// Music 
				{	
					audio_play_sound(snIcoClick, 0, false);
					var _Menu = instance_exists(pMENU);
					var _optMenu = instance_exists(pOption);
					
					if(!_Menu && !_optMenu){
						instance_create_layer(_xx, _yy, layer, oMusicMenu);
					}
					else{
						if(_Menu) instance_destroy(pMENU);	
						if(_optMenu) instance_destroy(pOption);
					}
						
					if(!instance_exists(oAudioPlayer) && !_Menu){
						instance_create_layer(global.camWidth/1.3 + 10, global.camHeight/2 + 95, layer, oAudioPlayer);	
					}
				}break;
				
				case oSaveIc:			// Save
				{
					audio_play_sound(snIcoClick, 0, false);
					with(oSaveLoad){
						SaveAll(_saveFile, _adderSaveFile, _optionSaveFile, true);
					}
				}break;
			}
		}break;
	}
}

