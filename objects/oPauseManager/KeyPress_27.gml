
if(room > 2 && !instance_exists(obj_textbox)) {
	if(global.pause == 1) {
		global.pause = 0;	
	} else {
		global.pause = 1;	
	}
}