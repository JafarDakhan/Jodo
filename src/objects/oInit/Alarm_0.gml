
// loading save files
if(file_exists(saveFile)){
	LoadSavedList(saveFile);
}

if(file_exists(adderSaveFile)){
	LoadAdder(adderSaveFile);
}	

if(file_exists(optionSaveFile)){
	LoadOptions(optionSaveFile);
}	

// Fullscreen
if(global.fullScreen){window_set_fullscreen(true)};
