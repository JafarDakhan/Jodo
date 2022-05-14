
// Draw BG
draw_set_alpha(bgAlpha * global.showTime);
draw_sprite(bgSprt, 0, xCorner, bgYpos);
draw_set_alpha(1 * global.showTime);

// Time
draw_text(timeStrPosX, 0, curHourStr);				// Hour
draw_text(timeStrPosX + 12, 0, ":");				// :
draw_text(timeStrPosX + 17, 0, current_minute);		// Minute
draw_text(timeStrPosX + 34, 0, time);				// Time period

draw_set_alpha(1);
