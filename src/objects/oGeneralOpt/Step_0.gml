
// Load setters objects and set them to the current options values
if(loadSetter){
	with(UI_MakeCheck(0, 0, layer)){		// Show time 
		other.kind[0] = self;
		val = global.showTime;
	}
	with(UI_MakeCheck(0, 0, layer)){		// Delete after checked
		other.kind[1] = self;
		val = global.deleteIfCheck;
	}
	with(UI_MakeCheck(0, 0, layer)){		// Save when exit
		other.kind[2] = self;
		val = global.saveAtExit;
	}
	with(UI_MakeChoose(0, 0, layer)){		// Scrolling speed
		other.kind[3] = self;
		val = global.scrollingSpd;
		maxVal = 50;
		minVal = 5;
		valEnc = 1;
	}
	
	loadSetter = false;
}