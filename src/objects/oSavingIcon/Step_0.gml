

if(image_xscale > -1) && (!flipped){
	image_xscale -= rotSpd;	
	if(image_xscale <= -1) flipped = true;
}
else if(flipped){
	image_xscale += rotSpd;	
	if(image_xscale >= 1){
		flipped = false;
	}
}
