
///@param value
///@param min
///@param max

function Wrap(_value, _min, _max) {
	while (_value < _min) _value += (_max - _min) + 1;
	while (_value > _max) _value -= (_max - _min) + 1;
	
	return _value;
}