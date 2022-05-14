
function Log(){
	var r = string(argument[0]), i;
	for (i = 1; i < argument_count; i++) {
	    r += ", " + string(argument[i])
	}
	log(r);
}
