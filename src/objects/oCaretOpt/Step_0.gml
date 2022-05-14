
// Load setters objects and set them to the current options values
if(loadSetter){
	with(UI_MakeCheck(0, 0, layer)){		// Smooth caret
		other.kind[0] = self;
		val = global.smoothCursor;
	}
	with(UI_MakeChoose(0, 0, layer)){		// smooth caret speed
		other.kind[1] = self;
		val = global.cursorSmoothLrp * 10;
		maxVal = 10;
		minVal = 1;
		valEnc = 1;
	}
	with(UI_MakeCheck(0, 0, layer)){		// Blinking
		other.kind[2] = self;
		val = global.cursorBlinking;
	}
	with(UI_MakeChoose(0, 0, layer)){		// blinking speed
		other.kind[3] = self;
		val = global.cursorBlinkingSpd;
		maxVal = 5;
		minVal = 1;
		valEnc = 1;
	}
	with(UI_MakeCheck(0, 0, layer)){		// Smooth blinking
		other.kind[4] = self;
		val = global.smoothBlinking;
	}
	with(UI_MakeChooseSprite(0, 0, layer)){		// caret style
		other.kind[5] = self;
		sprites = global.caretSprites;
		val = global.cursorSpr;
	}
	with(UI_MakeChoose(0, 0, layer)){		// caret opacity
		other.kind[6] = self;
		val = global.cursorOpacity * 10;
		maxVal = 10;
		minVal = 0;
	}
	
	loadSetter = false;
}