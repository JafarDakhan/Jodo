
///@arg x
///@arg y
///@arg move_adder

function CreateTask(){
	var _x = argument[0];
	var _y = argument[1];
	
	if(argument[2]){
		if(instance_exists(oAddNew)){
			oAddNew.y += global.dotYMargin;	
		}
	}
	
	return instance_create_layer(_x, _y, layer, oDot);
}