
///@arg desired_dot_id

function CreateTaskBelow(){
	var _id = argument[0];
	var _x = _id.x;
	var _y = _id.y;
	
	with(DOT){
		if(y > _y){
			y += global.dotYMargin;	
		}
	}
	CreateTask(_x, _y + global.dotYMargin, true);
}