
///@arg string
///@arg string_length
///@arg pointer

function DeleteWord(){
	var _string = argument[0];
	var _strLength = argument[1];
	var _strPnt = argument[2];
	
	_c = string_char_at(_string, _strLength - _strPnt);
	
	if(_c != " "){
		while(string_char_at(_string, _strLength - _strPnt) != " ") && (_strLength > 0){
			_string = string_delete(_string, _strLength - _strPnt, 1);
			_strLength--;
		}
	}
	else{
		while(string_char_at(_string, _strLength - _strPnt) == " ") && (_strLength > 0) {
			_string = string_delete(_string, _strLength - _strPnt, 1);
			_strLength--;
		}
		
		while(string_char_at(_string, _strLength - _strPnt) != " ") && (_strLength > 0){
			_string = string_delete(_string, _strLength - _strPnt, 1);
			_strLength--;
		}
	}
	
	return _string;
}