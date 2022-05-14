
// Load the adder from the last saved y pos

/// @param file

function LoadAdder(){
	var _saveFile = argument[0];
	if(file_exists(_saveFile)){
		with(oAddNew){
			instance_destroy();	
		}
		
		var _file = file_text_open_read(_saveFile);
		var _yPos = file_text_read_real(_file);
		file_text_close(_file)
		instance_create_layer(global.xMargin, _yPos, layer, oAddNew);
	}
	else{
		show_debug_message("can't load adder, can't find adder.jodo");	
	}
}