
// CNTRL+S
if(keyboard_check_pressed(ord("S"))){
	SaveAll(_saveFile, _adderSaveFile, _optionSaveFile, true);
}

// TODO: Remove instant loading later..
// CNTRL+L
if(keyboard_check_pressed(ord("L"))){
	SaveList(_saveFile);
	SaveAdder(_adderSaveFile);
	SaveOptions(_optionSaveFile);
}
