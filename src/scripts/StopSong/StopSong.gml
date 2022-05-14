
///@arg song


// stop audio, save and return position

function StopSong(_song){
	var _pos = audio_sound_get_track_position(global.songIND);
	audio_stop_sound(_song);
	audio_sound_set_track_position(_song, _pos);
	global.isSongPlaying = false;
	return _pos;
}