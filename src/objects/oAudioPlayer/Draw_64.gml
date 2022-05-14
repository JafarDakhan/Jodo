
// background
draw_sprite_ext(sOptions, 0, x, y, sizeWpix, sizeHpix, 0, c_white, alpha);

// Play button
draw_sprite_ext(sPlay, global.isSongPlaying, playBtnX, playBtnY, 1, 1, 0, c_white, 1);

// Arrows
draw_sprite_ext(sArrow, 0, arrowLx, arrowY, 1, 1, 0, c_white, 1);		// left
draw_sprite_ext(sArrow, 1, arrowRx, arrowY, 1, 1, 0, c_white, 1);		// right

// Repeat button
draw_sprite_ext(sRepeat, 0,  repeatX, repeatY, 1, 1, 0, c_white, 0.7 + global._repeat);

// Shuffle button
draw_sprite_ext(sShuffle, 0, shuffleX, shuffleY, 1, 1, 0, c_white, 0.7 + global.shuffle);

// Song name
shader_set(shader);
shader_set_uniform_f(shfntAlpha, txtAlpha);
shader_set_uniform_f(shfadeX, txtXFade);
shader_set_uniform_f(shfadeX2, txtXFade2);
shader_set_uniform_f(shWndResW, global.camWidth);
draw_text_transformed(txtX, txtY, global.songs[global.curSong], 1, 1, 0);
shader_reset()

// Divider
draw_set_alpha(0.6);
draw_line_width_color(dividerX - 1, dividerY, xCorner + sizeWdef - 1, dividerY, 1, c_black, c_black);
draw_set_alpha(1);

// Outline
DrawRectOutlineLine(x - sizeWpix, y - sizeHpix, x + sizeWpix, y + sizeHpix, c_black, 1, 1);

// Highlight
draw_sprite_ext(sPix, 0, hx - hw*0.5 - 1, hy - hh*0.5 - 1, hw + 2, hh + 2, 0, c_white, 0.2);

with(slider){
	draw_sprite_ext(sPix, 0, x, y, sliderDesW, sliderH, 0, c_white, 0.45);			// Slider full width
	draw_sprite_ext(sPix, 0, x, y, btnX - x, sliderH, 0, c_white, 0.45);			// Slider current btn pos
	draw_sprite_ext(sPix, 0, x, y, sliderW, sliderH, 0, c_white, 1);				// Slider current pos
	draw_sprite_ext(sliderSpr, image_index, btnX, btnY, 1, 1, 0, c_white, 1);					// Button	
}
