
#region Scrolling

var scrollSpd = global.scrollingSpd;
if (canScroll) && (global.canControl){
	var camCurPosY = camera_get_view_y(camera);
	var screenHeight = camera_get_view_height(camera);

	#region Vertical scrolling
	
	if (key(vk_down)) || (mouse_wheel_down()) {
		Ylimit = oAddNew.y;
		var _scrollingSpd = scrollSpd - (key(vk_down) * (scrollSpd * scrollSpdMult));
		if (camCurPosY + screenHeight - camYbuf < Ylimit){
			cam_pos(camera, 0, camCurPosY + _scrollingSpd);
		}
	}
	else if (key(vk_up)) || (mouse_wheel_up()) {
		Ylimit = oAddNew.y;
		var _scrollingSpd = scrollSpd - (key(vk_up) * (scrollSpd * scrollSpdMult));	
		if (camCurPosY > 0){
			cam_pos(camera, 0, camCurPosY - _scrollingSpd);
		}
		else{
			cam_pos(camera, 0, 0);
		}
	}

	#endregion

	//TODO: Adding horizontal scrolling (maybe)
	//#region Horizontal
	// ...
	//#endregion
	
	#region reordering scrolling
	if(global.moveDot){
		Ylimit = oAddNew.y;
		var _mouseInScrn =   mouse_y - camCurPosY;
		if(_mouseInScrn < 20){
			if(camCurPosY > 0){
				CamMoveAmt(0, -reorderScrllYspd);
			}
			else{
				cam_pos(global.cam, 0, 0);
			}
		}
		else if(_mouseInScrn > 250){
			if(camCurPosY + screenHeight - camYbuf < Ylimit){
				CamMoveAmt(0, reorderScrllYspd);	
			}
		}
	}
	#endregion
}

#endregion

