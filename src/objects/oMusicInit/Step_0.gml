
global.isSongListEmpty = global.songs[0] == "" ? true : false;

if(audio_exists(global.song)){
	global.isSongPlaying = audio_is_playing(global.song);
	var _pos = audio_sound_get_track_position(global.songIND);

	if(_pos >= global.songLen - 0.1){
		global.songFinished = true;
		ChangeSongPos(global.song, 0, false);
	}
	
	if(global.songFinished){
		if(pd-- <= 0){				
			if(global._repeat){					// repeat
				PlaySong(global.song);	
				pd = pDelay;
			}
			else{								// continue
				SongNext(true)
			}
		}
		
	}
}

//AudioDebugg();
