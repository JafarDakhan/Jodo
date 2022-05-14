
if(choosen) && (!checked){
	stringAlpha = 1;
	
	// Underline
	draw_sprite_ext(sPix, 0, x - highlightBuff, y + textHeight + 1, textWidth + highlightBuff * 2, 1, 0, stringCol, 0.5 * global.underline);
}
else if(!checked){
	stringAlpha = 0.9;
	curHighlightAlph = highlightAlphaOrg;
}
else{
	if(stringAlpha > 0.4){
		stringAlpha -= 0.01;	
	}
	
	if(curHighlightAlph > 0.34){
		curHighlightAlph -= 0.01;	
	}
	
	// strike-through line
	strikeW = lerp(strikeW, textWidth + highlightBuff * 2, 0.1);
	draw_sprite_ext(sPix, 0, x - highlightBuff, y + textHeight * 0.5, strikeW, 1, 0, stringCol, global.strikethruAlpha * global.strikethru);
}

// highlight
var _w = textWidth + highlightBuff * 2;
highlightW = lerp(highlightW, _w, highlightLrpSpd);
draw_sprite_ext(sPix, 0, x - highlightBuff, y, highlightW, textHeight, 0, tagCol, highlightAlpha);

// Text
DrawTextExt(_string, fMonogram, x, y, stringCol, fa_left, fa_top, stringAlpha);
