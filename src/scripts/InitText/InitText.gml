
///@arg id
function InitText(){
	var _todo = argument[0];
	
	keyboard_string = "";	// if you don't reset it, whatever you typed before choosing it will be added to the todo string
	
	with(_todo){
		choosen = true;
		showCursorTimer = 7;
		
		// set cursor positon
		var _mousePosInText = (mouse_x - x) / textWidth;
		strPnt = abs((_mousePosInText * strLength) - strLength);
		
		if(instance_exists(oCursor)){
			with (oCursor){
				todoObj = other;
				depth = other.depth-10;
			}
		}
		else{
			with(instance_create_depth(mouse_x, mouse_y, depth - 100, oCursor)){
				todoObj = other;
			}
		}
	}
}