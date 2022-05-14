
if(global.showTime){
	if(current_hour > 12){
		curHourStr = current_hour - 12;
		time = "PM";
	}
	else{
		curHourStr = current_hour == 0 ? 12 : current_hour;
		time = "AM";	
	}
}
timeStrPosX = xCorner - (timeStrXBuff * global.showTime);
