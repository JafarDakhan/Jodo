
///@arg x
///@arg y
///@arg layer

function UI_MakeCheck(){
	var xx = argument[0];
	var yy = argument[1];
	var _lay = argument[2];
	
	var _id = instance_create_layer(xx, yy, _lay, oCheck);
	return _id;
}