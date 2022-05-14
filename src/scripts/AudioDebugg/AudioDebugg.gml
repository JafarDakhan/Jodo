

function AudioDebugg(){
	var _sstr = string(global.song);
	var _folder = string(global.songsFolder);
	var _songs = string(global.songs);
	var _origin = string(global.songsOrgin);
	var _isEmpty = string(global.isSongListEmpty);
	var _listLen = string(global.listLength);
	var _curSongInd = string(global.curSong);
	var _songLn = string(global.songLen);
	var _isPlaying = string(global.isSongPlaying);
	var _isFinished = string(global.songFinished);
	
	log("Song: " + _sstr);
	log("Audio folder: " + _folder);
	log("List: " + _songs);
	log("Original list: " + _origin);
	log("Is list empty: " + _isEmpty);
	log("List Length: " + _listLen);
	log("Current song index: " + _curSongInd);
	log("Song length: " + _songLn);
	log("Is audio playing: " + _isPlaying);
	log("Is audio finished: " + _isFinished);
}