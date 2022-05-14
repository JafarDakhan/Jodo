
///@arg play

function SongNext(_play){
	global.curSong++;
	global.curSong = Wrap(global.curSong, 0, array_length(global.songs) - 1);
	
	if(_play){
		PlaySongStream(global.songs, global.curSong);
	}
	else{
		CreateStream(global.songs, global.curSong);	
	}
}