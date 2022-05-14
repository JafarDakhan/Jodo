
global.camPosX = camera_get_view_x(global.cam);
global.camPosY = camera_get_view_y(global.cam);

mouseMoving = point_distance(mx, my, mouse_x, mouse_y);
mx = mouse_x;
my = mouse_y;

