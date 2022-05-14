
#region init
var input_CNTRL = key(global.key_cmd);
var input_mouse_left_press = mouse_press(mb_left);
var input_mouse_left_release = mouse_release(mb_left);
var input_mouse_right_press = mouse_press(mb_right);
#endregion

#region Init & Update			

// Init
if(!triggerOnce){
	with(todo){
		_string = other.str;
		checked = other.checked;
		tagCol = other.highlightCol;
		strPnt = other.strPntr;
	}
	triggerOnce = true;
}

// Update
with(todo){
	other.str = _string;
	other.checked = checked;
	other.highlightCol = tagCol
	other.strPntr = strPnt;
	other.this = choosen;
	x = other.x + 12;
	y = other.y - 6;
}

#endregion

#region delete after check option

if(checked && global.deleteIfCheck){
	if(deleteWaitTime-- <= 0) instance_destroy();	
}

#endregion

#region Colision with mouse
mouseOnDot = Mouse_Col(x, y, image_xscale + 0.8, image_yscale + 0.8, sprite_index);
if(mouseOnDot) || (this){
	
	switch(mouseOnDot){
		case 2:
		{
			image_yscale+=0.35;
			image_xscale+=0.35;
			audio_play_sound(snkick, 0, false);
			
			// for debugging
			log("x: " + string(x));
			log("y: " + string(y));
		}break;
		
		case 3:
		{
			#region open highlight menu with right click
			if(!DelAllObj(oChooseTag)){
				with(oControl){
					canScroll = false;	
				}
			
				with(instance_create_layer(x, y, layer, oChooseTag)){
					dotIndex = other;
				}
				global.tagMenuOpen = true;
			}
			#endregion
			
		}break;
	}
	
	#region commands
	if(input_CNTRL){
		if(key_press(ord("D"))){ // Delete
			if(dd) instance_destroy();
			dd = true;
		}
		
		#region moving
		else if(input_mouse_left_press){
			global.dot1 = self;
			global.lastXdot = x;
			global.lastYdot = y;
			global.moveDot = true;
		}
		
		if(input_mouse_left_release && global.moveDot){
			//if(subParent != global.dot1){
				global.destXdot = x;
				global.destYdot = y;
				
				
				///
				// TODO: come back to this mess when have a better system to orgorganize tasks // 
				///
				
				with(DOT){
					MakePlace(self, 1);
				}
				
				//if(!global.dot1.hasSub){
					with(global.dot1){
						//if(!other.isSub) && (isSub){
						//	isSub = false;
						//	subParent = noone;
						//}
						//else if(!isSub) && (other.isSub){
						//	isSub = true;
						//	subParent = other.subParent;
						//}
						x = global.destXdot;
						y = global.destYdot;
					}
				//}
				//else{
				//									
					
				//	// Move parent task
				//	MakePlace(DOT, 1);
				//	with(global.dot1){
				//		x = global.destXdot;
				//		y = global.destYdot;	
				//	}
					
				//	var _amt = 0;
				//	var _lastY = 0;
				//	var _firstY = 0;
				//	with(DOT){
				//		if(subParent != noone){
				//			_amt++;	
				//			x = global.dot1.x + subBuffX;
				//			y = global.dot1.y + global.dotYMargin * _amt;
				//			_lastY = (_lastY < y) ? y : _lastY;
				//			_firstY = _lastY - (global.dotYMargin * (_amt - 1));
				//		}
				//	}
					
				//	with(DOT){
				//		if(subParent == noone && y >= _firstY){
				//			y += global.dotYMargin * _amt;
				//			Log(y, _firstY);
				//			Log(_lastY);
				//			log("amount: " + string(_amt));
				//		}
				//	}
					
				//	// Move adder
				//	with(oAddNew){
				//		y += global.dotYMargin * _amt;	
				//	}
				//}
			//}
			
			global.moveDot = false;
		}
		#endregion
		
		else if(key_press(ord("B"))){		// Add a task below current task
			CreateTaskBelow(self);
			//else CreateSubTaskBelow(self);
		}
		
		else if(key_press(ord("N"))){		// Add a task before current task
			CreateTaskUp(self);
			//else CreateSubTaskUp(self);
		}
		
		//else if(key_press(ord("T"))){		// Add a sub task
		//	CreateSubTask(self, x, y);
		//}
	}
	#endregion
}
else{
	dd = false;
	if(!input_CNTRL){
		if(global.moveDot){
			global.moveDot = false;
		}	
	}
}
#endregion

image_xscale = lerp(image_xscale, 1, 0.2);
image_yscale = lerp(image_yscale, 1, 0.2);

#region Wrap up
if(!global.moveDot){
	var _margin = global.dotYMargin;
	while(!ColWithDot(x, y)){
		y -= _margin;	
	}
}
#endregion
