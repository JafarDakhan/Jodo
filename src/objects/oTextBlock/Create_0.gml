
scrnWidth = camera_get_view_width(global.cam);
outOfScreen = false;
outOfScreenBuff = 55;

_string = "todo..";
strLength = string_length(_string);
strPnt = 0;
//stringCol = make_color_rgb(25, 24, 43);
stringCol = global.textColor;
stringAlpha = 0.2;
tagCol = c_white;

choosen = false;
checked = false;

backspaceWaitTime = 35;
backSpaceTimer = 0;
deleteTime = 2;
deleteTimer = 0;

moveWaitTime = 35;
moveWaitTimer = 0;
moveTime = 2;
moveTimer = 0;

textWidth = string_width(_string);
textHeight = string_height(_string);
borderX = x;
borderY = y;
borderWidth = textWidth;
borderHeight = textHeight;

highlightAlphaOrg = 0.6;
highlightAlpha = highlightAlphaOrg;
curHighlightAlph = highlightAlphaOrg;
highlightBuff = irandom_range(1, 5);
blinkingHighTime = 60;
blinkingHighTimer = blinkingHighTime;
highlightLrpSpd = 0.1;
highlightW = 0;

strikeW = 0;

// usage: shows the cursor for amount of frames
showCursorTimer = 0;

#region Checkbox stuff
checkBoxXBuff = (sprite_get_width(sCheckBox) * 0.5) + 5;
checkBoxYBuff = (sprite_get_height(sCheckBox) * 0.5) - 4;
checkBoxX = 0;
checkBoxY = 0;
checkboxImageInd = 0;
checkBox = instance_create_layer(x + textWidth + checkBoxXBuff, y + checkBoxYBuff, layer, oCheckBox);

// Load..
alarm[0] = 3;
#endregion
