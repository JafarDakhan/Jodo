
if(outLine){
	shader_set(shOutline);
	shader_set_uniform_f(pixelWidth, texelW);
	shader_set_uniform_f(pixelHeight, texelH);
	shader_set_uniform_f(outlinewidth, 1);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, 1);
	shader_reset();
}
else{
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, 1);
}