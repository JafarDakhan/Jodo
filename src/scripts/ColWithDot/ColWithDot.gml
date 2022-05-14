
// A script to check if there is a task above the current task

/// @param x
/// @param y

function ColWithDot(){
	var _x = argument[0];
	var _y = argument[1];
	
	if(!place_meeting(_x, _y - global.dotYMargin, DOT) && (_y > global.originPoint)) return 0;
	else return 1;
}