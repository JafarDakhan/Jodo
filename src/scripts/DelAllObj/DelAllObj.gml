
// Deletes all the objects if they exists

/// @param obj

function DelAllObj(){
	var _obj = argument[0];
	if(instance_exists(_obj)){
		instance_destroy(_obj);	
		return 1;
	}
	return 0;
}