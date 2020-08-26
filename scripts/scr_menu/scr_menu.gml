function scr_menu() {
	switch (mpos) {
		//start
		case 0: {
			scr_SlideTransition(TRANS_MODE.GOTO, 3);
			break;
		}
		//continue
		case 1: {
			if (!file_exists(SAVEFILE)) {
			scr_SlideTransition(TRANS_MODE.GOTO, 3);
			} else {
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real (file);
				file_text_close(file);
				scr_SlideTransition(TRANS_MODE.GOTO, target);
			}
			break;	
		
		}
		//Level Select
		case 2: {
			//go to level select screen
			room_goto(2);
			break;	
		}
		//options
		case 3: {
			break;	
		}
		
		//credits
		case 4: {
			room_goto(0);
			break;	
		
		}
		//quit
		case 5: {
			game_end();
			break;
		}
	
		default: {
		
		}
	
	}


}
