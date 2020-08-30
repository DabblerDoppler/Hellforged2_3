/// @desc Progress the transition

if(global.TransitionManagerID != id) {
	instance_destroy(self);	
}

if (mode != TRANS_MODE.OFF) {
	if (mode == TRANS_MODE.INTRO) {
		percent = max(0, percent - max((percent/10), 0.005));
	} else {
		percent = min(1, percent + max(((1 - percent) / 10), 0.005));
	}

	if (percent == 1) || (percent == 0) {
		switch(mode) {
			case TRANS_MODE.INTRO: { 
				global.freeze = false;
				mode = TRANS_MODE.OFF;
				break;
			}
			case TRANS_MODE.NEXT: {
				global.freeze = true;
				mode = TRANS_MODE.INTRO;
				if (room != room_last) {
					room_goto_next();
				} else {
					room_goto(rMainMenu);
				}
				break;
			}
			case TRANS_MODE.GOTO: {
				global.freeze = true;
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;	
			}
			case TRANS_MODE.RESTART: {
				global.freeze = true;
				mode = TRANS_MODE.INTRO;
				room_restart();
				break;	
			}
		}
	}	
}