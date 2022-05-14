
///@arg song
function PlaySong(_song){
	if(audio_exists(_song)) audio_stop_sound(_song);
	global.songIND = audio_play_sound(_song, 0, false);
	global.songFinished = false;
}