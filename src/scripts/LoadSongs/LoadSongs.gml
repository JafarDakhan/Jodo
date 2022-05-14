
///@arg directory

function LoadSongs(){
	var _dir = argument[0];
	var _songs = [];
	
	var _name = file_find_first(_dir + "*.ogg", fa_directory);
	
	if(_name == ""){
		_songs[0] = "";	
	}
	else{
		while(_name != ""){
			array_push(_songs, _name);
			_name = file_find_next();
		}
	}
	file_find_close();
	
	global.listLength = array_length(_songs);
	return _songs;
}