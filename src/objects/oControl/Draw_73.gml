
if(global.moveDot){
	with(global.dot1){
		with(todo){
			draw_sprite_ext(sPix, 0, mouse_x + 12 - highlightBuff, mouse_y - 6, textWidth + highlightBuff * 2, textHeight, 0, tagCol, highlightAlpha - 0.15);
			DrawTextExt(_string, fMonogram, mouse_x + 12, mouse_y - 6, stringCol, fa_left, fa_top, stringAlpha - 0.15);
		}
	}
	draw_sprite_ext(sDot, 0, mouse_x, mouse_y, 1, 1, 0, c_white, 0.9);
}