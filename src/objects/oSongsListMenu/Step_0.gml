

if(mouse_wheel_down()){
	var lastElementY = (bgYcorner + textY + global.listLength * textSep) + textYoffset;	
	if(lastElementY > bgYcorner + bgWidthPix){
		textYoffset -= scrlSpd;	
	}
}
else if(mouse_wheel_up()){	
	var firstElementY = bgYcorner + textY + textYoffset;
	if (firstElementY < bgYcorner+5) {
		textYoffset += scrlSpd;	
	}
}

