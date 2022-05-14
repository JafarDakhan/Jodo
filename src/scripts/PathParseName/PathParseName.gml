
///@arg full_path

function PathParseName(){
	var _path = argument[0];
	var _fileName = "";
	var _c  = "";
	
	for(var i = 0; i <= string_length(_path); i++){
		_c = string_char_at(_path, i);
		if(_c != "\\"){
			_fileName += _c;
		}
		else{
			_fileName = "";	
		}
	}
	return _fileName;
}