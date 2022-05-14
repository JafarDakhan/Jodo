
// Load setters objects and set them to the current options values
if(loadSetter){
	with(UI_MakeCheck(0, 0, layer)){		// fullscreen switching
		other.kind[0] = self;
		val = global.fullScreen;
	}
	
	loadSetter = false;
}