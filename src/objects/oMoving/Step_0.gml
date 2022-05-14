if(move){
	var _t = 15;
	var _outX = MouseGuiX() < _t || MouseGuiX() > global.camWidth - _t;
	var _outY = MouseGuiY() < _t || MouseGuiY() > global.camHeight - _t;
	if(!_outY && !_outX){
		if mouse(mb_left){
			tempAlpha = 1;
			if(instance_exists(windowObj)){
				var _x = MouseGuiX();
				var _y = MouseGuiY();
				x = _x;
				y = _y;
				windowObj.x = _x - (windowW) + xBuff;
				windowObj.y = _y + (windowH) - yBuff;
			}
		}
		else{move = false;}
	}
}