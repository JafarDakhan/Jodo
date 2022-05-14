
///@arg array

function ArrayShuffle(){
	var _array = argument[0];
	var _len = array_length(_array) - 1;
	
	for(var i = 0; i < _len; i++){
		var j = irandom_range(i, _len);
		
		// swap
		var _temp = _array[i];
		_array[i] = _array[j];
		_array[j] = _temp
	}
	
	return _array;
}