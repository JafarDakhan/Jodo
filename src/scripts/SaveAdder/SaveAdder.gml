
// Saves the tasks adder position

/// @param file

function SaveAdder(){
	with(oAddNew){
		var _fileName = argument[0];
		var _file = file_text_open_write(_fileName);
		file_text_write_real(_file, y);
		file_text_close(_file);
	}
}