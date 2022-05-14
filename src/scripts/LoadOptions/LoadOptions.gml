
///@arg file

function LoadOptions(){
	var _filename = argument[0];
	
	if(file_exists(_filename)){
		var buffer = buffer_load(_filename);
		var jsonString = buffer_read(buffer, buffer_string);
		buffer_delete(buffer);
		
		var data = json_parse(jsonString);
		
		while(array_length(data) > 0){
			var _options = array_pop(data);
		
			if(variable_struct_exists(_options, "SHOWTIME")) global.showTime = _options.SHOWTIME;
			if(variable_struct_exists(_options, "SAVEATEXIT")) global.saveAtExit = _options.SAVEATEXIT;
			if(variable_struct_exists(_options, "SCROLLSPD")) global.scrollingSpd = _options.SCROLLSPD;
			if(variable_struct_exists(_options, "DELETEIFCHECK")) global.deleteIfCheck = _options.DELETEIFCHECK;
			
			if(variable_struct_exists(_options, "UNDERLINE")) global.underline = _options.UNDERLINE;
			if(variable_struct_exists(_options, "STRIKETHRU")) global.strikethru = _options.STRIKETHRU;	
			if(variable_struct_exists(_options, "STRIKETHRUALPHA")) global.strikethruAlpha = _options.STRIKETHRUALPHA;	
			if(variable_struct_exists(_options, "HIGHLIGHTBLINK")) global.highlightBlink = _options.HIGHLIGHTBLINK;	
			if(variable_struct_exists(_options, "TEXTCOLOR")) global.textColor = _options.TEXTCOLOR;	
			
			if(variable_struct_exists(_options, "SMOOTHCURSOR")) global.smoothCursor = _options.SMOOTHCURSOR;	
			if(variable_struct_exists(_options, "CURSORBLINK")) global.cursorBlinking = _options.CURSORBLINK;	
			if(variable_struct_exists(_options, "SMOOTHBLINK")) global.smoothBlinking = _options.SMOOTHBLINK;	
			if(variable_struct_exists(_options, "FULLSCREEN")) global.fullScreen = _options.FULLSCREEN;	
			if(variable_struct_exists(_options, "CURSORSMOOTHLRP")) global.cursorSmoothLrp = _options.CURSORSMOOTHLRP;	
			if(variable_struct_exists(_options, "CURSORBLINKSPD")) global.cursorBlinkingSpd = _options.CURSORBLINKSPD;	
			if(variable_struct_exists(_options, "CURSORSPR")) global.cursorSpr = _options.CURSORSPR;	
			if(variable_struct_exists(_options, "CURSOROPACITY")) global.cursorOpacity = _options.CURSOROPACITY;	

			if(variable_struct_exists(_options, "BGCOLOR")) global.bgColor = _options.BGCOLOR;		
		}
	}
	else{
		show_debug_message("Unable to load option file");	
	}
}