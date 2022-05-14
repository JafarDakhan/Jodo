
///@arg directory

function UploadAudio(_dir){
	var _songPath = get_open_filename(".ogg audio file |*.ogg", "");
	if(file_exists(_songPath)){
		var _songName = PathParseName(_songPath);
		var _name = _dir + _songName;
		
		
		// insert name
		var _songs = global.songs;
		if(_songs[0] == ""){
			global.songs[0] = _songName;
			global.songsOrgin = global.songs;
		}
		else{
			array_insert(global.songs, array_length(_songs) - 1, _songName);
			global.songsOrgin = _songs;
		}
		global.listLength = array_length(global.songs);
		
		// copy to exe data folder ("AppData\Local\Jodo\Songs")
		file_copy(_songPath, _name);
	}
}