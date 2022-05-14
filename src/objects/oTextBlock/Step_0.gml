
#region init vars

textWidth = string_width(_string);
textHeight = string_height(_string);
strLength = string_length(_string);
borderX = x;
borderY = y;
borderWidth = textWidth;
borderHeight = textHeight;
stringCol = global.textColor;

#endregion

#region Mouse Collision with text
switch(Mouse_Col(borderX  + borderWidth * 0.5, borderY +  borderHeight * 0.5, borderWidth, borderHeight, sPix)){	
	case 2:
	{
		InitText(self);
	}break;
	
	case 3:
	{
		InitText(self);
	}break;
	
	default:
	{	// Other
		if(mouse_press(mb_left)){
			choosen = false;
		}
	}break;
}
#endregion

highlightAlpha = curHighlightAlph;

if(global.canControl){
	// If this task is choosen
	if(choosen){	
		#region Blinking highlight
		if(global.highlightBlink && --blinkingHighTimer <= 0){
			highlightAlpha = curHighlightAlph - 0.09;
		
			if(blinkingHighTimer <= -blinkingHighTime){
				blinkingHighTimer = blinkingHighTime;
			}
		}
		else{
			highlightAlpha = curHighlightAlph + 0.05;	
		}
		#endregion
	
		#region command + <key>
		if(key(global.key_cmd)){
			if(key_press(global.key_del)){										// Delete word
				_string = DeleteWord(_string, strLength, strPnt);
			}
			else if(key_press(global.left)){									// Move cursor whole word to the left
				strPnt = MovePntWord(_string, strLength, strPnt, true);	
			}
			else if(key_press(global.right)){									// Move cursor whole word to the right
				strPnt = MovePntWord(_string, strLength, strPnt, false);	
			}
		
			// we need to clean the Ascii value of CNTRL + <key> from the string buffer 
			keyboard_string = "";
		
		}
		#endregion
	
		// Command key is not active
		if(!key(global.key_cmd)){
			#region deleting chars
			if(key_press(vk_backspace)){	// Deleting, pressing
				_string = string_delete(_string, strLength - strPnt, 1);
				strLength--;
			}
			else if(key(global.key_del)){
				if(backSpaceTimer-- <= 0){
					if(deleteTimer-- <= 0){
						_string = string_delete(_string, strLength - strPnt, 1);
						strLength--;
						deleteTimer = deleteTime;
					}
				}
			}
			else{
				backSpaceTimer = backspaceWaitTime
			}
			#endregion
		
			#region moving
		
			if(key_press(vk_left)){
				if(strPnt < strLength){
					strPnt++;
				}
				moveWaitTimer = moveWaitTime;
			}
			else if(key(vk_left)){
				if(moveWaitTimer-- <= 0){
					if(moveTimer-- <= 0){
						if(strPnt < strLength){
							strPnt++;
						}
						moveTimer = moveTime;
					}
				}	
				showCursorTimer = 10;
			}
		
			if(key_press(vk_right)){
				if(strPnt > 0){
					strPnt--;
				}
				moveWaitTimer = moveWaitTime;
			}
			else if(key(vk_right)){
				if(moveWaitTimer-- <= 0){
					if(moveTimer-- <= 0){
						if(strPnt > 0){
							strPnt--;
						}
						moveTimer = moveTime;
					}
				}	
				showCursorTimer = 10;
			}
			#endregion
		}
	
		// Prevent cursor from blinking when typing
		if(key(vk_anykey)){
			showCursorTimer = 10;
		}
	
		// Add input if text width is less than display width
		outOfScreen = (textWidth >= scrnWidth - outOfScreenBuff);
		if(!outOfScreen){
			_string = string_insert(keyboard_string, _string, strLength + 1 - (strPnt));	
		}
		keyboard_string = "";
	}
	else{
		if(strLength <= 0){
			_string = "todo..";
		}
	}
	#region Checkbox checking & Updating

	switch(Mouse_Col(checkBoxX + sprite_get_width(sCheckBox) * 0.5, checkBoxY + sprite_get_height(sCheckBox) * 0.5, 1, 1, sCheckBox)){
		case 1:	{ // Hover
			if(!checked){
				checkboxImageInd = 2;
			}
		}break;
	
		case 2:	{ // Left click
			checked = (!checked) * !global.tagMenuOpen;
			strikeW *= !checked;
			checkboxImageInd = checked;
			
			if(checked){audio_play_sound(snCheck, 0, false);}
		}break;
	
		default: {
			if(!checked){
				checkboxImageInd = 0;
			}
			else{
				checkboxImageInd = 1;
			}
		}break;
	}

	// Update checkbox
	with(checkBox){
		x = other.x + other.textWidth + other.checkBoxXBuff;
		y = other.y + other.checkBoxYBuff;
		other.checkBoxX = x;
		other.checkBoxY = y;
		image_index = other.checkboxImageInd;
	}

	#endregion
}
