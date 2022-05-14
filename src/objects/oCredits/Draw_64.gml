
event_inherited();

for(var i = 0; i < array1Sz; i++){
	
	// common operations
	var _strBig = element1[i];
	var _strSml = element2[i];
	//var _strBWidth = string_width(_strBig);
	//var _strBHeight = string_height(_strBig);
	//var _strSWidth = string_width(_strSml);
	//var _strSHeight = string_height(_strSml);
	
	var _Bxscale = textXscale + 0.3;
	var _Byscale = textYscale + 0.3;
	var _Sxscale = textXscale;
	var _Syscale = textYscale;
	
	var _Balpha = BtextAlpha;
	var _Salpha = StextAlpha;
	
	var Bxx = bgXcorner + textX;
	var Byy = bgYcorner + textY + (textSep * i);
	var Sxx = bgXcorner + textX;
	var Syy = bgYcorner + textY + (textSep * i + smlBuff);
	
	
	draw_set_halign(fa_center);
	
	// Draw big string
	DrawTextScale(_strBig, Bxx, Byy, c_white, _Balpha, _Bxscale, _Byscale, 0);
	
	// Draw small string
	DrawTextScale(_strSml, Sxx, Syy, c_white, _Salpha, _Sxscale, _Syscale, 0);
	
	draw_set_halign(fa_left);
	
}
