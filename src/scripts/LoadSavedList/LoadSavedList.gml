
/// @param file

function LoadSavedList(){
	
	var _filename = argument[0];
	
	if(file_exists(_filename)){
		if(instance_exists(oDot)){
			with(oDot){
				instance_destroy();
				
				with(todo){
					instance_destroy();
					
					with(checkBox){
						instance_destroy();	
					}
				}
			}
		}
		
		var buffer = buffer_load(_filename);
		var jsonString = buffer_read(buffer, buffer_string);
		buffer_delete(buffer);
		
		var data = json_parse(jsonString);
		
		while(array_length(data) > 0){
			var textOBJ = array_pop(data);
			
			with(instance_create_layer(0, 0, layer, asset_get_index(textOBJ.OBJ))){
				if(variable_struct_exists(textOBJ, "X")) x = textOBJ.X;
				if(variable_struct_exists(textOBJ, "Y")) y = textOBJ.Y;
				if(variable_struct_exists(textOBJ, "TODOstr")) str = textOBJ.TODOstr;
				if(variable_struct_exists(textOBJ, "COLOR")) highlightCol = textOBJ.COLOR;
				if(variable_struct_exists(textOBJ, "CHECKED")) checked = textOBJ.CHECKED;
				if(variable_struct_exists(textOBJ, "STRpnt")) strPntr = textOBJ.STRpnt;
				if(variable_struct_exists(textOBJ, "XSCALE")) image_xscale = textOBJ.XSCALE;
				//if(variable_struct_exists(textOBJ, "ISSUB")) isSub = textOBJ.ISSUB;
				//if(variable_struct_exists(textOBJ, "HASSUB")) hasSub = textOBJ.HASSUB;
				//if(variable_struct_exists(textOBJ, "SUBPAR")) subParent = textOBJ.SUBPAR;
			}
		}
	}
	else{
		show_debug_message("Unable to load save file");	
	}
	
}