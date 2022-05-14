
///@arg song
///@arg pos
///@arg play

function ChangeSongPos(_song, _pos, _play){
	if(_pos <= global.songLen) && (_pos >= 0){
		audio_sound_set_track_position(_song, _pos);
		audio_stop_sound(_song);
	}
	
	if(_play){
		PlaySong(_song);
	}
}