
///@arg names_list
///@arg song_index_in_list

function PlaySongStream(_list, _index){
	var _songName = global.songsFolder + _list[_index];
	
	if(file_exists(_songName)){
		if(audio_exists(global.song)) audio_stop_sound(global.song);
		global.song = audio_create_stream(_songName);
		global.songLen = audio_sound_length(global.song);
		global.songIND = audio_play_sound(global.song, 0, false);
		global.songFinished = false;
	}
}