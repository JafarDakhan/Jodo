
/// @desc wave(from, to, duration, offset)
/// @arg from
/// @arg to
/// @arg duration
/// @arg offset

function Wave(){
	var _wave = (argument[1] - argument[0]) * 0.5;
	return argument[0] + _wave + sin((((current_time * 0.001) + argument[2] * argument[3]) / argument[2]) * (pi * 2)) * _wave;
}