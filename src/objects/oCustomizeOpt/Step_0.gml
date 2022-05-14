
// Load setters objects and set them to the current options values
if(loadSetter){
	with(UI_MakeChooseColor(0, 0, layer)){		// background color
		other.kind[0] = self;
		val = global.bgColor;
	}
	
	loadSetter = false;
}