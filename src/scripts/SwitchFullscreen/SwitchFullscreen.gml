
function SwitchFullscreen(){
	if(!window_get_fullscreen() * global.fullScreen){
		window_set_fullscreen(true);
	}
	else if(window_get_fullscreen() * !global.fullScreen){
		window_set_fullscreen(false);
	}
}