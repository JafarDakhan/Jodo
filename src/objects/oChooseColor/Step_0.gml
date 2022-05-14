
// Right Button
switch(Mouse_Col_Gui(x + _btnRXBuff, y + _btnYBuff, 1, 1, sBtnRight)){
	case 2:
	{
		if(arrayPnt < maxVal){		
			arrayPnt += valEnc;
			audio_play_sound(snClick2, 0, false);
		}
		rBtnImage = 0;
	};
	
	case 1:
	{
		rBtnImage = 1;
	}break
	
	default:
	{
		rBtnImage = 0;
	}break;
}

// Left Button
switch(Mouse_Col_Gui(x + _btnLXBuff, y + _btnYBuff, 1, 1, sBtnLeft)){
	case 2:
	{
		if(arrayPnt > minVal ){		
			arrayPnt -= valEnc;
			audio_play_sound(snClick2, 0, false);
		}
		lBtnImage = 0;
	};
	
	case 1:
	{
		lBtnImage = 1;
	}break
	
	default:
	{
		lBtnImage = 0;
	}break;
}

if(arrayPnt >= maxVal){
	rBtnImage = 1;
}
else if(arrayPnt <= minVal){
	lBtnImage = 1;	
}

val = colors[arrayPnt];
