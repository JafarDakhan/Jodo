
/// @param file

function SaveOptions(){
	var _file = argument[0];
	var data = array_create(0);
	
	var saveOpt = {
		SHOWTIME			: global.showTime,
		SAVEATEXIT			: global.saveAtExit,
		SCROLLSPD			: global.scrollingSpd,
		DELETEIFCHECK		: global.deleteIfCheck,
		
		UNDERLINE			: global.underline,
		STRIKETHRU			: global.strikethru,
		STRIKETHRUALPHA		: global.strikethruAlpha,
		HIGHLIGHTBLINK		: global.highlightBlink,
		TEXTCOLOR			: global.textColor,
		
		SMOOTHCURSOR		: global.smoothCursor,
		CURSORBLINK			: global.cursorBlinking,
		SMOOTHBLINK			: global.smoothBlinking,
		FULLSCREEN			: global.fullScreen,
		CURSORSMOOTHLRP		: global.cursorSmoothLrp,
		CURSORBLINKSPD		: global.cursorBlinkingSpd,
		CURSORSPR			: global.cursorSpr,
		CURSOROPACITY		: global.cursorOpacity,
		
		BGCOLOR				: global.bgColor,
	}
	array_push(data, saveOpt);

	var jsonString = json_stringify(data);
	var buffer = buffer_create(string_byte_length(jsonString) + 1, buffer_fixed, 1);
	buffer_write(buffer, buffer_string, jsonString);
	buffer_save(buffer, _file);
	buffer_delete(buffer);
}