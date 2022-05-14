
// Moves cursor whole word
// Usage: string_cursor_address = MovePntWord(string, string_length, address, false);

///@arg string
///@arg string_length
///@arg pointer
///@arg move_left

function MovePntWord(){
	var _string = argument[0];
	var _strLength = argument[1];
	var _strPnt = argument[2];
	var _left = argument[3];
	
	if(_left){			// Left
		if(string_char_at(_string, _strLength - _strPnt) == " "){
			while(string_char_at(_string, _strLength - _strPnt) == " " && _strPnt < _strLength){
				_strPnt++;
			}	
		}
		
		while(string_char_at(_string, _strLength - _strPnt) != " " && _strPnt < _strLength){
			_strPnt++;
		}	
	}			
	else{				// Right
		if(string_char_at(_string, _strLength - _strPnt + 1) == " "){
			while(string_char_at(_string, _strLength - _strPnt + 1) == " " && _strPnt < _strLength){
				_strPnt--;
			}	
		}
		
		while(string_char_at(_string, _strLength - _strPnt + 1) != " " && string_char_at(_string, _strLength - _strPnt + 1) != ""){
			_strPnt--;
		}
	}
	
	return _strPnt;
}