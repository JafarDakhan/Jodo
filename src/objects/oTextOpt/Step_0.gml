
// Load setters objects and set them to the current options values
if(loadSetter){
	with(UI_MakeCheck(0, 0, layer)){		// Underline
		other.kind[0] = self;
		val = global.underline;
	}
	with(UI_MakeCheck(0, 0, layer)){		// Strike-through
		other.kind[1] = self;
		val = global.strikethru;
	}
	with(UI_MakeChoose(0, 0, layer)){		// strike_through like opacity
		other.kind[2] = self;
		val = global.strikethruAlpha*10;
		maxVal = 10;
		minVal = 0;
		valEnc = 1;
	}
	with(UI_MakeCheck(0, 0, layer)){		// highlight blinking
		other.kind[3] = self;
		val = global.highlightBlink;
	}
	with(UI_MakeChooseColor(0, 0, layer)){		// text color
		other.kind[4] = self;
		val = global.textColor;		// default val
	}
	
	loadSetter = false;
}