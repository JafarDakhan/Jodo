
randomize();

// Macros
#macro key keyboard_check
#macro key_press keyboard_check_pressed
#macro key_release keyboard_check_released

#macro mouse mouse_check_button
#macro mouse_press mouse_check_button_pressed
#macro mouse_release mouse_check_button_released

#macro log show_debug_message
#macro cam_pos camera_set_view_pos

#macro fileI 0

// Change the GUI scaling 
var _vx = camera_get_view_width(view_camera[0]);
var _vy = camera_get_view_height(view_camera[0]);
display_set_gui_size(_vx, _vy);

// Contols
global.key_cmd = vk_control;
global.key_del = vk_backspace;
global.right = vk_right;
global.left = vk_left;

//global.version = "2.2";
global.saveFileName = "save_list.jodo";

global.cam = view_camera[0];
global.camWidth = camera_get_view_width(global.cam);
global.camHeight = camera_get_view_height(global.cam);
global.camPosX = 0;
global.camPosY = 0;

mouseMoving = false;
mx = mouse_x;
my = mouse_y;

saveFile =  global.saveFileName;
adderSaveFile = "adder.jodo";
optionSaveFile = "option.jodo";

// Dot stuff
global.originPoint = 30;
global.dotYMargin = 22;
global.xMargin = 14;

global.uiBaseAlpha = 0.8;


// defualt colors
global.red = make_color_rgb(217, 87, 99);
global.green = make_color_rgb(109, 190, 48);
global.darkGreen = make_color_rgb(55, 148, 110);
global.yellow = make_color_rgb(251, 242, 54);
global.cyan = make_color_rgb(95, 205, 228);
global.brown = make_color_rgb(143, 86, 59);
global.darkBrown = make_color_rgb(69, 40, 60);
global.orange = make_color_rgb(232, 113, 38);
global.pink = make_color_rgb(215, 123, 186);
global.blue = make_color_rgb(91, 110, 225);
global.greenishBlue = make_color_rgb(48, 96, 130);
global.gray = make_color_rgb(203, 219, 252);
global.darkGray = make_color_rgb(132, 126, 135);
global.purple = make_color_rgb(118, 66, 138);
global.dark = make_color_rgb(34, 32, 54);

//
// TODO: turn this into a struct and load them from save files
//
global._colors = [c_white, global.red, global.pink, global.orange, global.brown, global.darkBrown, 
				  global.cyan, global.blue, global.greenishBlue, global.darkGreen, global.green, 
				  global.yellow, global.gray, global.darkGray, global.purple, global.dark, c_black];

global.caretSprites = [sCBlock, sCOutlineBlock, sCLine, sCIBeam, sCUnderline,
					   sCSquareBrac, sCRevSquareBracs, sCFrog];

global.tagMenuOpen = false;

// Options
global.showTime = true;
global.saveAtExit = true;
global.scrollingSpd = 20;
global.deleteIfCheck = false;

global.underline = true;
global.strikethru = true;
global.strikethruAlpha = 0.6;
global.highlightBlink = false;
global.textColor = global.dark;

global.smoothCursor = true;
global.cursorBlinking = true;
global.smoothBlinking = true;
global.fullScreen = false;
global.cursorSmoothLrp = 0.3;
global.cursorBlinkingSpd = 1;
global.cursorSpr = sCBlock;
global.cursorOpacity = 0.8;

global.bgColor = c_white;

// Load the saved list file, If it exists
alarm[0] = 10;
alarm[1] = 1;