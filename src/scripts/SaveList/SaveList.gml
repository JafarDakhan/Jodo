
/// @param file

function SaveList(){
	var _file = argument[0];
	var data = array_create(0);
	
	with(oDot){
		var saveObj = {
			OBJ : object_get_name(object_index),
			X : x,
			Y : y,
			TODOstr : str,
			COLOR : highlightCol,
			CHECKED : checked,
			STRpnt : strPntr,
			XSCALE : image_xscale,
			//ISSUB : isSub,
			//HASSUB : hasSub,
			//SUBPAR : subParent,
		}
		array_push(data, saveObj);
	}

	var jsonString = json_stringify(data);
	var buffer = buffer_create(string_byte_length(jsonString) + 1, buffer_fixed, 1);
	buffer_write(buffer, buffer_string, jsonString);
	buffer_save(buffer, _file);
	buffer_delete(buffer);
}