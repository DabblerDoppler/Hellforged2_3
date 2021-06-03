if(global.PauseManagerID != id) {
	instance_destroy(self);	
}

if(room != rMainMenu && room != rCreditMenu && room != rLevelSelect)  {

	key_escape = keyboard_check_pressed(vk_escape);
	key_f3 = keyboard_check_pressed(vk_f3);
	
	
	if (gamepad_button_check_pressed(0, gp_start)) {
		key_escape = 1;	
	}


	if(instance_exists(oCamera)) {
		x = camera_get_view_x(oCamera) + oCamera.view_w_half - 64;
		y = camera_get_view_y(oCamera) + oCamera.view_h_half;
	}

	if(global.pause) {
		image_alpha = 0;
		var move = 0;
		move -= max(keyboard_check_pressed(vk_up), gamepad_button_check_pressed(0, gp_padu),  0);
		move += max(keyboard_check_pressed(vk_down), gamepad_button_check_pressed(0, gp_padd), 0);

		if(move != 0) {
			menuDelay = 0;	
		}
			
		if (abs(gamepad_axis_value(0, gp_axislv)) > 0.25) {
			move -= sign(abs(min(gamepad_axis_value(0,gp_axislv), 0)));
			move += sign(max(gamepad_axis_value(0, gp_axislv), 0));
		}

		menuDelay = max(menuDelay - 1, 0);

		if (move != 0 && menuDelay == 0) {
			audio_play_sound(snd_moveselect, 5, false);
			menuDelay = menuDelayMax;
			mpos += sign(move);
			if (mpos < 0) { mpos = array_length_1d(menu) - 1; }
			if (mpos > array_length_1d(menu) -1) { mpos = 0; }
		}
	
		var push = keyboard_check_pressed(vk_enter) + keyboard_check_pressed(ord("Z")) + gamepad_button_check_pressed(0, gp_face1);
		var back = gamepad_button_check_pressed(0, gp_face2) + keyboard_check_pressed(ord("X"));
		var minus = keyboard_check_pressed(vk_left);
		var plus = keyboard_check_pressed(vk_right);
		
		if(abs(gamepad_axis_value(0, gp_axislh)) > .2) {
			minus -= sign(gamepad_axis_value(0, gp_axislh));
			plus += sign(gamepad_axis_value(0, gp_axislh));
		}
		
		if(plus && menuSelect == 1) {
			if(mpos == 2) {
				global.musicVolume = min(global.musicVolume + 0.05, 1); 
			} else if(mpos == 4) {
				global.gameVolume = min(global.gameVolume + 0.05, 1); 
			}
		} else if(minus && menuSelect == 1) {
			if(mpos == 2) {
				global.musicVolume = max(global.musicVolume - 0.05, 0); 
			} else if (mpos == 4) {
				global.gameVolume = max(global.gameVolume - 0.05, 0); 
			}
		}
			
			
		
		if(back >= 1) {
			if(menuSelect == 0) {
				global.pause = false;
				scr_saveOptions();
			} else {
				menuSelect = 0;
				menu = menuBase;
				mpos = 0;
			}
		}
		
		if (push >= 1) {
			if(menuSelect == 0) {
				if (mpos == 0) {
					global.pause = false;
				} else if (mpos == 1) {
					if(oPlayer.onground == 1) {
					global.pause = false;
					event_user(0);
					} else {
						audio_play_sound(sIncorrect, 6, false);
					}
				
				
				} else if(mpos == 2) {
					scr_SlideTransition(TRANS_MODE.GOTO, room_first);
				
				} else if (mpos == 3) {
					menuSelect = 1;
					menu = menuOpt;
					mpos = 0;
				} else if (mpos == 4) {
					scr_saveOptions();
					game_end()
				}
			}
			else if(menuSelect == 1) {
				switch mpos {
					case 0: 
						menuSelect = 0;
						menu = menuBase;
						mpos = 0;
						break;
					case 1:
						global.vibrationOn = !global.vibrationOn;
						break;
					case 2:
						if(global.musicVolume == 0.5) {
							global.musicVolume = 0;
						} else {
							global.musicVolume = 0.5;
						}
						break;
					case 3:
						if(global.easyMode) {
							global.easyMode = false;
						} else {
							global.pause = false;
							global.easyMode = true;
							myText[0] = "It looks like you turned easy mode on. No shame in that, the game's difficulty curve is a mess."
							myText[1] = "While easy mode is on, press Shift or Right Bumper to slow time."
							mySpeaker[0] = oMuramasa;
							mySpeaker[1] = oMuramasa;
							myType = 0;
							create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol);
						}
						break;	
					case 4:
						if(global.gameVolume == 0.5) {
							global.gameVolume = 0;
						} else {
							global.gameVolume = 0.5;
						}
						break;	
				}
				
			}
		}
	} else {
		image_alpha = 0;
	}

} else {
	global.pause = 0;
}

if(gamepad_button_check_pressed(0, gp_start)) {
	if((room != rMainMenu && room != rCreditMenu && room != rLevelSelect)  && !instance_exists(obj_textbox)) {
		global.pause = !global.pause;
		menuSelect = 0;
		menu = menuBase;
		mpos = 0;
	}
}