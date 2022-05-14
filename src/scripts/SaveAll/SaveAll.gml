
///@arg list_save_file
///@arg adder_save_file
///@arg options_save_file
///@arg show_saving_icon

function SaveAll(_listF, _addF, _optF, _icon){
	if(_icon) {
		if(instance_exists(oSavingIcon)) instance_destroy(oSavingIcon);
		instance_create_layer(global.camWidth - 28, global.camHeight - 28, layer, oSavingIcon);
	}
	
	SaveList(_listF);
	SaveAdder(_addF);
	SaveOptions(_optF);
}