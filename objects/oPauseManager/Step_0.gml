if(global.PauseManagerID != id) {
	instance_destroy(self);	
}

if(room != 0) {

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
		if (push >= 1) {
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
				game_end()
			}
		}
	} else {
		image_alpha = 0;
	}

} else {
	global.pause = 0;
}