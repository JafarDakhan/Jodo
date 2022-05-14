
///@arg song

function CleanSongStream(_song){
	if(audio_exists(_song)){
		audio_destroy_stream(_song);	
	}
}