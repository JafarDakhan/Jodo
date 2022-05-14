
val = 0;
outLine  = false;
image_alpha = 0;

shaderOutline = shOutline;
pixelWidth = shader_get_uniform(shaderOutline, "pixelW");
pixelHeight = shader_get_uniform(shaderOutline, "pixelH");
outlinewidth = shader_get_uniform(shaderOutline, "outlinewidth");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index, image_index));
texelH = texture_get_texel_height(sprite_get_texture(sprite_index, image_index));
