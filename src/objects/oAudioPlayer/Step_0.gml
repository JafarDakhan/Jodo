
#region init
hx = 0;
hy = 0;
hw = 0;
hh = 0;
xCorner = x - sizeWpix;
yCorner = y - sizeHpix;
txtWidth = string_width(global.songs[global.curSong]);
txtXFade = xCorner + sizeWdef;
txtXFade2 = xCorner;
#endregion

#region play 

playBtnX = x;
playBtnY = y + buttonsYOffset;

switch(Mouse_Col_Gui(playBtnX, playBtnY, 1, 1, sPlay)){
	case 1:
	{
		hx = playBtnX;
		hy = playBtnY;
		hw = sprite_get_width(sPlay);
		hh = sprite_get_height(sPlay);
	}break;
	
	case 2:
	{
		audio_play_sound(snBtn, 0, false);
		
		if(global.isSongPlaying){
			slider.lastPos = StopSong(global.song);	
		}
		else{
			
			if(audio_exists(global.song)){
				PlaySong(global.song);
			}
			else{
				PlaySongStream(global.songs, global.curSong);
			}
		}
	}break;
}
#endregion

#region arrow 

arrowLx = playBtnX - Xoffset;
arrowRx = playBtnX + Xoffset;
arrowY = playBtnY;

// Left
switch(Mouse_Col_Gui(arrowLx, arrowY, 1, 1, sArrow)){
	case 1:
	{
		hx = arrowLx;
		hy = arrowY;
		hw = sprite_get_width(sArrow);
		hh = sprite_get_height(sArrow);
	}break;
	
	case 2:
	{
		audio_play_sound(snArrows, 0, false);
		SongPrev(global.isSongPlaying);
	}break;
}

// Right
switch(Mouse_Col_Gui(arrowRx, arrowY, 1, 1, sArrow)){
	case 1:
	{
		hx = arrowRx;
		hy = arrowY;
		hw = sprite_get_width(sArrow);
		hh = sprite_get_height(sArrow);
	}break;
	
	case 2:
	{
		audio_play_sound(snArrows, 0, false);
		SongNext(global.isSongPlaying);
	}break;
}

#endregion

#region repeat 

var _rpt = global._repeat;
repeatX = arrowLx - Xoffset;
repeatY = arrowY + (Wave(btnWaveFrom, btnWaveTo, btnWaveDur, 0) * _rpt);

switch(Mouse_Col_Gui(repeatX, repeatY, 1, 1, sRepeat)){
	case 1:
	{
		hx = repeatX;
		hy = repeatY;
		hw = sprite_get_width(sRepeat);
		hh = sprite_get_height(sRepeat);
	}break;
	
	case 2:
	{
		audio_play_sound(snBtn, 0, false);
		global._repeat = !_rpt;
	}break;
}

#endregion

#region shuffle 
var _shuffle = global.shuffle;
shuffleX = arrowRx + Xoffset;
shuffleY = y + buttonsYOffset + (Wave(btnWaveFrom, btnWaveTo, btnWaveDur, 0) * _shuffle);;

switch(Mouse_Col_Gui(shuffleX, shuffleY, 1, 1, sShuffle)){
	case 1:
	{
		hx = shuffleX;
		hy = shuffleY;
		hw = sprite_get_width(sShuffle);
		hh = sprite_get_height(sShuffle);
	}break;
	case 2:
	{
		audio_play_sound(snBtn, 0, false);
		
		if(!_shuffle){
			global.shuffle = true;
			global.songs = ArrayShuffle(global.songs);
			PlaySongStream(global.songs, global.curSong);	
		}
		else{
			global.shuffle = false;
			global.songs = global.songsOrgin;
			PlaySongStream(global.songs, global.curSong);
		}
	}break;
}

#endregion

#region slider
// TODO: checks if the window is moving, then update slider pos
sliderX = x - sliderW/2;
slider.x = sliderX;
slider.y = y + sliderYoffset;
#endregion

#region text update

if(global.isSongPlaying){
	txtXoffset += spd;
	txtY = y - txtYbuf;
	txtX = xCorner + txtXbuf + txtXoffset;
	
	if(txtX > txtXFade){
		txtXoffset = -(txtWidth + txtXbuf);
	}
}
else{
	txtX = xCorner + txtXbuf;
	txtY = y - txtYbuf;
	txtXoffset = 0;
}

dividerX = xCorner;
dividerY = txtY + dividerOffset;

#endregion

#region close btn update
btnsX = x + sizeWpix - btnsxBuf;
btnsY = y - sizeHpix;
with(closeBtn){
	x = other.btnsX;
	y = other.btnsY;
}
#endregion
