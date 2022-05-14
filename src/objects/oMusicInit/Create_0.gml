
global.songs[0] = "";
global.songsOrgin[0] = "";
global.isSongListEmpty = true;
global.songsFolder = "Songs\\";
global.song = noone;
global.songIND = noone;
global.songLen = 0;
global.curSong = 0;
global.isSongPlaying = false;
global.songFinished = false;
global._repeat = false;
global.shuffle = false;
global.listLength = 0;
pDelay = 3;
pd = 0;

// load audio names from directory 
var _songsList = LoadSongs(global.songsFolder);
global.songs = _songsList;
global.songsOrgin = global.songs;

AudioDebugg();
