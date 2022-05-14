var _margin = global.dotYMargin;

#region mouse
switch(Mouse_Col(x, y, image_xscale, image_yscale, sprite_index)){
	case 1:
	{
		image_index = 1;
	}break;
	
	case 2:
	{
		CreateTask(x, y, true);
		image_xscale += 0.4;
		image_yscale += 0.4;
	}break;
	
	default:
	{
		image_index = 0;	
	}
}
#endregion

if(image_xscale != 1 || image_yscale != 1){
	image_yscale = lerp(image_yscale, 1, 0.2);
	image_xscale = lerp(image_xscale, 1, 0.2);
}

// Wraping up
while(!ColWithDot(x, y) && !global.moveDot){
	y -= _margin;	
}
