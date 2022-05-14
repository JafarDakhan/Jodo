
///@arg current_dot
///@arg amount

function MakePlace(){
	var _id = argument[0];
	var _amt = argument[1];
	
	if(_id.y >= global.destYdot && _id.y < global.lastYdot){
		for(var i = 0; i < _amt; i++){
			_id.y += global.dotYMargin;
		}
	}
				
	else if(_id.y > global.lastYdot && _id.y <= global.destYdot){
		for(var i = 0; i < _amt; i++){
			_id.y -= global.dotYMargin;
		}
	}
}