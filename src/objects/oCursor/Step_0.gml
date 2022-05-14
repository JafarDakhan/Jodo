blinking = global.cursorBlinking;
smooth = global.smoothCursor;
smoothBlink = global.smoothBlinking;
smoothLrp = global.cursorSmoothLrp;
var _alpha = global.cursorOpacity;
sprite_index = global.cursorSpr;

if(instance_exists(todoObj)){
	with (todoObj){
		other.image_blend = (other.sprite_index == sCFrog) ? c_white : tagCol;
		other.cursorX = x + string_width(string_copy(_string, 1, strLength - strPnt));
		other.cursorY = y - 2;
			
		other.showCursorTimer = showCursorTimer;
		showCursorTimer--;
	}
	x = lerp(x, cursorX, !smooth + (smoothLrp * smooth));
	y = lerp(y, cursorY, !smooth + (smoothLrp * smooth));
	
	#region blinking
	if(blinking){
		if(showCursorTimer <= 0){
			blinkingCursorTimer -= global.cursorBlinkingSpd;
			if(blinkingCursorTimer <= 0){
				image_alpha = lerp(image_alpha, _alpha, !smoothBlink + (smoothBlinkLrp * smoothBlink));
				if(blinkingCursorTimer <= -blinkingCursorTime){
					blinkingCursorTimer = blinkingCursorTime;	
				}
			}
			else{
				image_alpha = lerp(image_alpha, 0, !smoothBlink + (smoothBlinkLrp * smoothBlink));
			}
		}
		else{
			image_alpha = _alpha;	
			blinkingCursorTimer = 0;
		}
	}
	else{
		image_alpha = _alpha;	
	}
	#endregion
}
else{
	instance_destroy();
}


