
///@arg songs
///@arg index_in_list

function CreateStream(_list, _current_index){
	var _songName = global.songsFolder + _list[_current_index];
	
	if(file_exists(_songName)){
		global.song = audio_create_stream(_songName);
		global.songLen = audio_sound_length(global.song);
	}
}