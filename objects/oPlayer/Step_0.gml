//program go brrr

if (global.pause) { 
	if(sprite_index != sPlayerIdleLeft && sprite_index != sPlayerIdleRight) {
	image_speed = 0;
	}
	exit; 
}


if(instance_exists(obj_textbox)) {
	exit;
}


//same as key Press R event
if(gamepad_button_check(0, gp_select)) {
	scr_SlideTransition(TRANS_MODE.RESTART);
}
//state machine
if(isDead) {
	state = states.dead;
}


//getting key inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_jump = keyboard_check_pressed(vk_space);
key_jump_held = keyboard_check(vk_space);
key_abil1 = keyboard_check_pressed(kR_abil1);
key_abil2 = keyboard_check_pressed(kR_abil2);
key_abil3 = keyboard_check_pressed(kR_abil3);
key_abil1_held = keyboard_check(kR_abil1);
key_abil2_held = keyboard_check(kR_abil2);
key_abil3_held = keyboard_check(kR_abil3);

//these 4 will be for the ability wheel
key_abil1_select = keyboard_check(kR_abil1_select);
key_abil2_select = keyboard_check(kR_abil2_select);
key_abil3_select = keyboard_check(kR_abil3_select);

key_abil1_select_r = keyboard_check_released(kR_abil1_select);
key_abil2_select_r = keyboard_check_released(kR_abil2_select);
key_abil3_select_r = keyboard_check_released(kR_abil3_select);




//this is for testing abilities and won't be in the final game
key_hammer = keyboard_check_pressed(ord("B"));

if (key_left || key_right || key_up || key_down || key_jump || key_abil1 || key_abil2 || key_abil3) {
	controller = 0;	
}

//gamepad support

if (abs(gamepad_axis_value(0, gp_axislh)) > 0.25) {
	key_left = abs(min(gamepad_axis_value(0,gp_axislh), 0));
	key_right = max(gamepad_axis_value(0, gp_axislh), 0);
	controller = 1;
}

if (abs(gamepad_axis_value(0, gp_axislv)) > 0.25) {
	key_up = abs(min(gamepad_axis_value(0,gp_axislv), 0));
	key_down = max(gamepad_axis_value(0, gp_axislv), 0);
	controller = 1;
}

if (gamepad_button_check(0, gp_padl)) {
	key_left = 1;
}
if (gamepad_button_check(0, gp_padr)) {
	key_right = 1;
}
if (gamepad_button_check(0, gp_padu)) {
	key_up = 1;
}
if (gamepad_button_check(0, gp_padd)) {
	key_down = 1;
}


if (gamepad_button_check_pressed(0, gp_face1)) { 
	key_jump = 1; 
	controller = 1;
}
if (gamepad_button_check(0, gp_face1)) { 
	key_jump_held =1; 
	controller = 1;
}
if (gamepad_button_check_pressed(0, gp_face3)) { 
	key_abil1 = 1; 
	controller = 1;
}
if (gamepad_button_check(0, gp_face3)) { 
	key_abil1_held =1; 
	controller = 1;
}
if (gamepad_button_check_pressed(0, gp_face4)) { 
	key_abil2 = 1; 
	controller = 1;
}
if (gamepad_button_check(0, gp_face4)) { 
	key_abil2_held = 1; 
	controller = 1;
}
if (gamepad_button_check_pressed(0, gp_face2)) { 
	key_abil3 = 1; 
	controller = 1;
}
if (gamepad_button_check(0, gp_face2)) { 
	key_abil3_held =1; 
	controller = 1;
}

updown = key_up - key_down;
leftright = key_right - key_left;


if (updown > 0 && leftright == 0) {
	abil_sel = 1;
} else if (updown > 0 && leftright > 0) {
	abil_sel = 2;
} else if (updown == 0 && leftright > 0) {
	abil_sel = 3;
} else if (updown < 0 && leftright > 0) {
	abil_sel = 4;
} else if (updown < 0 && leftright == 0) {
	abil_sel = 5;
} else if (updown < 0 && leftright < 0) {
	abil_sel = 6;	
} else if (updown == 0 && leftright < 0) {
	abil_sel = 7;	
} else if (updown > 0  && leftright < 0) {
	abil_sel = 8;	
} else {
	abil_sel = 0;
}

if(key_abil1_select_r && abil_sel != 0) {
	oIcon1.icon = abil_sel;	
}

if(key_abil2_select_r && abil_sel != 0) {
	oIcon2.icon = abil_sel;	
}

if(key_abil3_select_r && abil_sel != 0) {
	oIcon3.icon = abil_sel	
}


if(abil1_used == 1) {
	key_abil1 = 0;	
}

if(abil2_used == 1) {
	key_abil2 = 0;	
}

if(abil2_used == 1) {
	key_abil2 = 0;	
}



//this will be logic based on the abilities the player has selected from the wheel

key_lunge = 0;
key_uppercut = 0;
key_dash = 0;
key_kama = 0;

key_kama_held = 0;
key_uppercut_held = 0;


if(oIcon1.icon == 1) {
	key_uppercut = key_abil1;	
	key_uppercut_held = key_abil1_held;
} else if(oIcon1.icon == 2) {
	key_dash = key_abil1;
} else if(oIcon1.icon == 3) {
	key_lunge = key_abil1;
} else if(oIcon1.icon == 4) {
	key_kama = key_abil1;
	key_kama_held = key_abil1_held;
}

if(oIcon2.icon == 1) {
	key_uppercut = key_abil2;
	key_uppercut_held = key_abil2_held;
} else if(oIcon2.icon == 2) {
	key_dash = key_abil2;
} else if(oIcon2.icon == 3) {
	key_lunge = key_abil2;
} else if(oIcon2.icon == 4) {
	key_kama = key_abil2;
	key_kama_held = key_abil2_held;
}

if(oIcon3.icon == 1) {
	key_uppercut = key_abil3;	
	key_uppercut_held = key_abil3_held;
} else if(oIcon3.icon == 2) {
	key_dash = key_abil3;
} else if(oIcon3.icon == 3) {
	key_lunge = key_abil3;
} else if(oIcon3.icon == 4) {
	key_kama = key_abil3;
	key_kama_held = key_abil3_held;
}



if (global.freeze) { 
	image_speed = 0;
	exit; 
}


//if dead, stay in place and play death animation
if (state == states.dead) {
	image_speed = 0;
	scr_generate_blood(2);
	
	if(oGame.deadFor == 1) {
		image_index = 0;
	} else if(oGame.deadFor == 15) {
		image_index = 1;
	} else if(oGame.deadFor == 30) {
		image_index = 2;	
	} else if(oGame.deadFor == 45) {
		image_index = 3;
	} else if(oGame.deadFor == 59) {
		image_alpha = 0;	
	}
	
	if(last_move == 1) {
		sprite_index = sPlayerDieGroundedRight;
	} else {
		sprite_index = sPlayerDieGroundedLeft;
	}
	
	vsp += grv;
	vsp = clamp(vsp,-vsp_max, vsp_max);
	hsp = Approach(hsp, 0, hsp_fric_ground);
	
	
	//check for horizontal collision
	if (place_meeting(x+hsp,y,oWall)) {
		while (!place_meeting(x+sign(hsp), y, oWall)) {
			x = x + sign(hsp);
		}
		hsp = 0;
		hsp_frac = 0;
		
	}

	//x = current x plus velocity
	x = x + hsp;
	


	//check for vertical collision
	if (place_meeting(x, y + vsp ,oWall)) {
		while (!place_meeting(x, y + sign(vsp), oWall)) {
			y = y + sign(vsp);
		}
		vsp = 0;
		vsp_frac = 0;
	}
	y = y + vsp;
	exit;
} else if (state = states.normal) {

	//temporary variable: -1 is attempting to move left, 0 is still, 1 is right
	var move = key_right - key_left;
	//this way we can face the direction we last pressed.

	//delays
	springAfterDelay = max(springAfterDelay - 1, 0);
	dashafterdelay = max(dashafterdelay - 1, 0);
	hammerdelay = max(hammerdelay - 1, 0);
	hammerswingdelay = max(hammerswingdelay - 1, 0);
	kamaJumpDelay = max(kamaJumpDelay - 1, 0);
	kamaWallDelay_Jump = max(kamaWallDelay_Jump - 1, 0);
	corner_delay = max(corner_delay - 1, 0);
	uppercut_buffer = max(uppercut_buffer - 1, 0);
	kama_buffer = max(kama_buffer - 1, 0);
	lunge_buffer = max(lunge_buffer - 1, 0);
	dash_buffer = max(dash_buffer - 1, 0);
	jumpBuffer = max(jumpBuffer - 1, 0);
	coyoteTime = max(coyoteTime - 1, 0);
	coyoteTime_Wall = max(coyoteTime_Wall - 1, 0);
	landing_frames = max(landing_frames - 1, 0);
	dashdelay = max(dashdelay - 1, 0);
	stylekillwaitdelay = max(stylekillwaitdelay - 1, 0);
	stylekilljumpdelay = max(stylekilljumpdelay - 1, 0);
	stylekilldelay = max(stylekilldelay - 1, 0);
	walljumpdelay = max(walljumpdelay - 1, 0);
	uppercutdelay = max(uppercutdelay - 1, 0);
	kamaDelay = max (kamaDelay - 1, 0);



	isBusy = false;
	isBusyAbility = false;

	if(hammerdelay > 0 || hammerswingdelay > 0 || kamaWallDelay_Jump ||kamaWallDelay || lungedelay || kamaDelay != 0 || uppercutdelay != 0 || stylekillwaitdelay != 0 || stylekilldelay != 0 || stylekilljumpdelay !=0 || dashdelay != 0) { isBusyAbility = true; } 
	if(walljumpdelay != 0 || isBusyAbility) { isBusy = true; }
	

	if (move != 0 && (!isBusyAbility) ) { last_move = 1 * sign(move); }

	if (!isBusy) {
		//calculate horizontal movement
		hsp += move * hsp_acc;
		if (move == 0) {
			var hsp_fric_final = hsp_fric_ground;
			if (!onground) {hsp_fric_final = hsp_fric_air; }
			hsp = Approach(hsp, 0, hsp_fric_final);
		}
		hsp = clamp(hsp, -hsp_walk, hsp_walk);
	}

	//walljump
	if ((coyoteTime_Wall > 0) && (!onground) && (key_jump)) {
		audio_play_sound(walljump, 1, false);
		var i;
		var side = bbox_left;
		if (onwall == 1) side = bbox_right;
		for(i = irandom_range(5, 10); i > 0;  i--) {
		with (instance_create_layer(side, bbox_top + random(20), "Instances", oDust)) {
			other.dust = 0;
			hspeed = -other.onwall * 0.5;
			}
		}
		walljumpdelay = walljumpdelay_max;
		hsp = -lastwall * hsp_wjump;
		coyoteTime_Wall = 0;
		vsp = vsp_wjump;
		hsp_frac = 0;
		vsp_frac = 0;
	}




	if(dashdelay == 7 || dashdelay == 3 || uppercutdelay == 20 ||uppercutdelay == 15 || uppercutdelay == 10 || uppercutdelay == 5) {
		instance_create_layer(x,y, "Instances", oAfterimage);	
	}

	var grv_final = grv;
	var vsp_max_final = vsp_max;


	if ((onwall != 0) && (vsp > 0)) {
		grv_final = grv_wall;
		vsp_max_final = vsp_max_wall;
		dust++;
		var side = bbox_left;
		if (onwall == 1) side = bbox_right;
	
		if(!audio_is_playing(wallslide) || audio_is_paused(wallslide)) {
			audio_resume_sound(wallslide);
			if(!audio_is_playing(wallslide)) {
				audio_play_sound(wallslide, 1, false);	
			}
		}
	
		if ((dust > 2 ) && (vsp > 0)) with (instance_create_layer(side, bbox_top, "Instances", oDust)) {
		
			other.dust = 0;
			hspeed = -other.onwall * 0.5;
		}
	}
	

	if(onwall == 0 && audio_is_playing(wallslide)) {	
		audio_pause_sound(wallslide);
	}


	//fall based on gravity.
	if (stylekilldelay == 0 && hammerswingdelay == 0 && stylekillwaitdelay == 0 && dashdelay == 0 && !kamaWallDelay) {
		vsp += grv_final;
		vsp = clamp(vsp,-vsp_max_final, vsp_max_final);
	}



	//jumpcode
	if (coyoteTime > 0 || (jumpBuffer > 0 && onground)) {
		if(key_jump) {
			audio_play_sound(jump, 1, false);
			jumpBuffer = 0;
			coyoteTime = 0;
			vsp = vsp_jump;
			vsp_frac = 0;
		}
	} else if (key_jump) {
		jumpBuffer = jumpBuffer_max;	
	}

	if ((dashafterdelay > 0 && uppercutdelay == 0) || (vsp < 0 && hammerswingdelay == 0 && !key_jump_held && !key_uppercut_held && !isBusyAbility && dashdelay == 0 && kamaDelay == 0 && !kamaWallDelay && springAfterDelay == 0)) {
			vsp = max(vsp,-2);
	}

	//kama rope swing code
	if((key_kama || kama_buffer > 0) && !isBusyAbility && !kama_used) {
				grappleX = mouse_x;
				grappleY = mouse_y;
				ropeX = x;
				ropeY = y;
				ropeAngle = point_direction(grappleX, grappleY, x, y);
				ropeLength = point_distance(grappleX, grappleY, x, y);
				ropeAngleVelocity = sqrt(abs(hsp^2 + vsp ^2));
				state = states.swinging;
	
		kama_buffer = 0;
		isBusy = true;
		isBusyAbility = true;
		if(kamaBound == 1) {
			abil1_used = true;
		} else if (kamaBound == 2) {
			abil2_used = true;
		} else if (kamaBound == 3) {
			abil3_used = true;
		}
		
	}

	if (isBusyAbility && key_kama) {
		kama_buffer = ability_buffer_max;	
	}


	//hammer swing
	if ((key_hammer || hammer_buffer > 0) && !isBusyAbility && !hammer_used) {
		hammer_buffer = 0;
		isBusyAbility = true;
		isBusy = true;
		lastUsed = 5;
	
		if(hammerBound == 1) {
			abil1_used = true;
		} else if (hammerBound == 2) {
			abil2_used = true;
		} else if (hammerBound == 3) {
			abil3_used = true;
		}
	
		hammerdelay = hammerdelay_max;
		vsp = -4;
		hsp = last_move * 4;
		hsp_frac = 0;
		vsp_frac = 0;
	} else if (isBusyAbility && key_hammer) {
		hammer_buffer = ability_buffer_max;	
	}

	if(hammerdelay == 1) {
		hsp = 0;
		vsp = 0;
		hsp_frac = 0;
		vsp_frac = 0;
		hammerswingdelay = hammerswingdelay_max;	
	}


	//check if we can perform a dash
	if ((key_dash || dash_buffer > 0) && !isBusyAbility && !dash_used) {
		dashafterdelay = 0;
		audio_play_sound(dash, 2, false);
		audio_sound_pitch(dash, choose(0.9, 1, 1.1));
		isBusyAbility = true;
		isBusy = true;
		lastUsed = 3;
		dashdelay = dashdelay_max;
	
		if(dashBound == 1) {
			abil1_used = true;
		} else if (dashBound == 2) {
			abil2_used = true;
		} else if (dashBound == 3) {
			abil3_used = true;
		}
	
		h_dash_dir = move;
		v_dash_dir = key_up - key_down;
		instance_create_layer(x, y, "Instances", oAfterimage);
		//8 directions
		if (key_down && move == 0) {
			vsp = 12.7;
			vsp_frac = 0;
			hsp = 0;
			hsp_frac = 0;
			h_dash_dir = 0;
		} else if (key_down) {
			vsp = 9;
			vsp_frac = 0;
			hsp = 9 * last_move;
			hsp_frac = 0;
		} else if (key_up && move == 0) {
			vsp = -12.7;
			vsp_frac = 0;
			hsp = 0;
			hsp_frac = 0;
			h_dash_dir = 0;
		} else if (key_up) {
			hsp = 9 * last_move;
			hsp_frac = 0;
			vsp = -9;
			vsp_frac = 0;
		} else {
			hsp = 12.7 * last_move;
			hsp_frac = 0;
			vsp = 0;
			vsp_frac = 0;
			v_dash_dir = 0;
		}
	} 

	if(dashdelay == 1) {
		dashafterdelay = dashafterdelay_max;
	}	

	if (isBusyAbility && key_dash) {
		dash_buffer = ability_buffer_max;	
	}



	//use lunge if the key is pressed and lunge hasn't been used.
	if((key_lunge || lunge_buffer > 0) && !isBusyAbility && !lunge_used) {
		dashafterdelay = 0;
		audio_play_sound(lunge, 3, false);
		audio_sound_pitch(lunge, choose(0.8, 0.9));
		isBusyAbility = true;
		isBusy = true;
		lungedelay = true;
		vsp = -7;
		vsp_frac = 0;
		hsp = last_move * 9;
		hsp_frac = 0;
		lastUsed = 1;
	
		if(lungeBound == 1) {
			abil1_used = true;
		} else if (lungeBound == 2) {
			abil2_used = true;
		} else if (lungeBound == 3) {
			abil3_used = true;
		}
	
	} 
	if (isBusyAbility && key_lunge) {
		lunge_buffer = ability_buffer_max;	
	}

	//use uppercut if the key is pressed and uppercut hasn't been used.
	if ((key_uppercut || uppercut_buffer > 0) && !isBusyAbility && !uppercut_used) {
		audio_play_sound(uppercut,3,false);
		isBusyAbility = true;
		isBusy = true;
		instance_create_layer(x, y, "Instances", oHitbox);
		uppercutdelay = uppercutdelay_max;
		vsp = -11;
		vsp_frac = 0;
		hsp = last_move * 3.5;
		hsp_frac = 0;
		lastUsed = 2;
		if(uppercutBound == 1) {
			abil1_used = true;
		} else if (uppercutBound == 2) {
			abil2_used = true;
		} else if (uppercutBound == 3) {
			abil3_used = true;
		}
	
	} 
	if (isBusyAbility && key_uppercut) {
		uppercut_buffer = ability_buffer_max;	
	}

	//style kill code
	if (stylekillwaitdelay == 1) {
			instance_create_layer(x,y, "Instances", oAfterimage);
			stylekilldelay = stylekilldelay_max;
			if(stylekilltarget == oDeadBeholderKama) {
				if(kamaBound == 1) {
					abil1_used = 0;	
					oIcon1Blood.exists = 1;
					oIcon1Blood.image_index = 0;
				} else if (kamaBound == 2) {
					abil2_used = 0;	
					oIcon2Blood.exists = 1;
					oIcon2Blood.image_index = 0;
				} else if (kamaBound == 3) {
					abil3_used = 0;
					oIcon3Blood.exists = 1;
					oIcon3Blood.image_index = 0;
				}		
			} else {
				if(lungeBound == 1) {
					abil1_used = 0;	
					oIcon1Blood.exists = 1;
					oIcon1Blood.image_index = 0;
				} else if (lungeBound == 2) {
					abil2_used = 0;	
					oIcon2Blood.exists = 1;
					oIcon2Blood.image_index = 0;
				} else if (lungeBound == 3) {
					abil3_used = 0;
					oIcon3Blood.exists = 1;
					oIcon3Blood.image_index = 0;
				}	
			}
		
		
			if(!place_meeting(stylekilltarget.x + (10 * last_move), stylekilltarget.y - 32, oWall)) {
			x = stylekilltarget.x + (10 * last_move);
			y = stylekilltarget.y - 32;
			}
			instance_destroy(stylekilltarget);
			ScreenShake(2, 10);
	}

	//this is the code for actually killing the style kill target.
	if (stylekilldelay == 1) {
		vsp = -6;
		hsp = 0;
		scr_generate_blood(100);
		vsp = 6;
		hsp = 0;
		scr_generate_blood(50);
		hsp = 4 * last_move;
		vsp = -6;
		stylekilljumpdelay = stylekilljumpdelay_max;
		ScreenShake(global.killShakeConstant, 15);
		var t = choose(0,1,2);
		audio_play_sound(killSound[t], 5, false);
		audio_sound_pitch(killSound[t], choose(0.9, 1.0, 1.1));
		audio_play_sound(pitchArray[killPitch], 2, false);
		killPitch++;
		
	}



	if(dashdelay == 0) {
		v_corner_correction = v_corner_correction_default;
		h_corner_correction = h_corner_corection_default;
		hsp += hsp_frac;
		vsp += vsp_frac;
		hsp_frac = frac(hsp);
		vsp_frac = frac(vsp);
		hsp -= hsp_frac;
		vsp -= vsp_frac;
	} else {
		v_corner_correction = v_corner_correction_dash;
		h_corner_correction = h_corner_correction_dash;
	}
	
	if(place_meeting(x + hsp, y, oMovingPlatform) || platformContact != 0) {
		if(!key_jump) {
			if(place_meeting(x + hsp, y, oMovingPlatform)) {
				platformContact = instance_place(x + hsp, y, oMovingPlatform);
			}
			if(sign(hsp) != sign(platformContact.hsp)) {
				while (!place_meeting(x + sign(hsp), y, oMovingPlatform)) {
					x = x + sign(hsp);
				}
			}
		
			onground = 0;
			hsp = platformContact.hsp;
			hsp_frac = 0;
		}
	}


	//check for horizontal collision
	if (place_meeting(x+hsp,y,oWall)) {
		while (!place_meeting(x+sign(hsp), y, oWall)) {
			x = x + sign(hsp);
		}
		//corner correction
		
		if (hsp != 0 && corner_delay == 0) {
			if(!(place_meeting(x + hsp, y + v_corner_correction, oWall))) {
				y += v_corner_correction;
				corner_delay = corner_delay_max;
			} else if (!(place_meeting(x + hsp, y - v_corner_correction, oWall))) {
				y -= v_corner_correction;
				corner_delay = corner_delay_max;
			} else {
			hsp = 0;
			hsp_frac = 0;
			}
		} else {
			hsp = 0;
			hsp_frac = 0;
		}
	
	}


	//x = current x plus velocity
	x = x + hsp;

	//this way we'll stil to a ceiling until the uppercut is over instead of falling
	if(uppercutdelay > 0 && vsp > 0) {
		vsp = 0;	
	}
	
	if ( vsp >= 0 && place_meeting(x, y + vsp ,oOneWayPlatform)) {
		while (!place_meeting(x, y + sign(vsp) ,oOneWayPlatform)) {
			y = y + sign(vsp);
		}
		vsp = 0;
		vsp_frac = 0;
	}
	
	if (place_meeting(x, y + vsp, oMovingPlatform) && platformContact = 0) {
		while(!place_meeting(x, y + sign(vsp), oMovingPlatform)) {
			y = y + sign(vsp);	
		}
		vsp = 0;
		vsp_frac = 0;
	}
	
	//check for vertical collision
	if (place_meeting(x, y + vsp ,oWall)) {
		while (!place_meeting(x, y + sign(vsp), oWall)) {
			y = y + sign(vsp);
		}
		//corner correction
		if (vsp < 0 && corner_delay == 0) {
			if(!(place_meeting(x + h_corner_correction, y + vsp, oWall))) {
				x += h_corner_correction;
				corner_delay = corner_delay_max;
			} else if (!(place_meeting(x - h_corner_correction, y + vsp, oWall))) {
				x -= h_corner_correction;
				corner_delay = corner_delay_max
			} else {
			vsp = 0;
			vsp_frac = 0;
			}
		} else {
		vsp = 0;
		vsp_frac = 0;
		
		}
	}


	//if you hit your head on a corner when moving upwards or downwards, it will move you to the side.



	// y = current y + velocity
	y = y + vsp;

	var last_onground = onground;
	onground = place_meeting(x, y + 1, oWall);
	
	if(place_meeting(x, y + 1, oOneWayPlatform) || place_meeting(x, y + 1, oMovingPlatform) && platformContact == 0) {
		onground = 1;	
		if(place_meeting(x, y + 1, oMovingPlatform)) {
			x += instance_place(x, y + 1, oMovingPlatform).hsp;
		}
	}
	
	platformContact = 0;
	
	if(last_onground == 0 && onground == 1) {
		audio_sound_pitch(land, choose(0.7, 0.8, 0.9, 1));
		audio_play_sound(land, 1, false);	
	}



	onwall = min(place_meeting(x+1, y - 15 , oWall), place_meeting(x+1, y + 4, oWall)) - min(place_meeting(x-1, y + 4, oWall), place_meeting(x-1, y - 15, oWall));
	if(onwall = 0) {
		onwall = min(place_meeting(x+1, y - 15 , oMovingPlatform), place_meeting(x+1, y + 4, oMovingPlatform)) - min(place_meeting(x-1, y + 4, oMovingPlatform), place_meeting(x-1, y - 15, oMovingPlatform));
	}
	if(sign(move) != sign(onwall)) {
		onwall = 0;	
	}

	if (onwall != 0) {
		lastwall = onwall;	
		coyoteTime_Wall = coyoteTime_Wall_Max;
	}



	if (onground) { 
		coyoteTime = coyoteTime_Max;
		onwall = 0;
		killPitch = 0;
	}

	if(onground || (onwall != 0) &! uppercutdelay > 0) { lungedelay = false; }


	if (last_onground == 0 && onground == 1) { landing_frames = landing_frames_max; }



	if(stylekillwaitdelay == 0 && stylekilldelay == 0 && stylekilljumpdelay == 0) { 
		alreadyKilling = false;	
	}

	
			

	//dust creation on landing

	if (landing_frames == 10 && onground) {
		var i;
		for(i = irandom_range(3, 5); i > 0;  i--) {
			with (instance_create_layer(bbox_right - irandom_range(16, 48), bbox_bottom , "Instances", oDust)) {
				hspeed = irandom_range(-0.5, 0.5);
			}
		}
	}

	//dust creation on walking
	if(onground && hsp != 0) {
		dust++;
		if(dust > 8) {
			dust = 0;
		
			audio_play_sound(choose(footstep1, footstep2, footstep3, footstep4), 1, false);	
			with (instance_create_layer(bbox_right - irandom_range(16, 48), bbox_bottom , "Instances", oDust)) {
				hspeed = random_range(-0.2, 0.2);
				vspeed = random_range(0, -0.5);
			}
		}
	}





	//animation selection
	//this should definitely be a switch statement but I didn't know that when I made it originally
	//and didn't want to touch it
	if(onground && !isBusyAbility && move > 0) {
		sprite_index = sPlayerRunRight;
		image_speed = 1;
	} else if (onground && !isBusyAbility && move < 0) {
		sprite_index = sPlayerRunLeft;	
		image_speed = 1;
	} else if (dashdelay > 0) {
		image_speed = 0;
		if (v_dash_dir > 0 && h_dash_dir == 0) {
			sprite_index = sPlayerDashUp;
		} else if (v_dash_dir > 0 && h_dash_dir > 0) {
			sprite_index = sPlayerDashUpRight;
		} else if (v_dash_dir > 0) {
			sprite_index = sPlayerDashUpLeft;	
		} else if (v_dash_dir == 0) {
				if (last_move < 0) {
					sprite_index = sPlayerDashLeft;
				} else { sprite_index = sPlayerDashRight; }
		} else if (v_dash_dir < 0 && h_dash_dir == 0) {
			sprite_index = sPlayerDashUp;
		} else if (v_dash_dir < 0 && h_dash_dir > 0) {
			sprite_index = sPlayerDashDownRight;
		} else if (v_dash_dir < 0) {
			sprite_index = sPlayerDashDownLeft;
		}
	
	} else if (last_move < 0 && kamaDelay > 0) {
		sprite_index = sPlayerThrowLeft;
		if (image_index >= 2) {
			image_speed = 0;
		} else {
			image_speed = 1;
		}
	} else if (last_move > 0 && kamaDelay > 0) {
		sprite_index = sPlayerThrowRight;
		if (image_index >= 2) {
			image_speed = 0;
		} else {
			image_speed = 1;
		}
	} else if (uppercutdelay != 0 && last_move > 0) {
		sprite_index = sPlayerUppercutRight;	
		image_speed = 1;
	} else if (uppercutdelay != 0 && last_move < 0) {
		sprite_index = sPlayerUppercutLeft;
		image_speed = 1;
	} else if(stylekilldelay > 0 && last_move <= 0) {
		sprite_index = sPlayerStabRight;
		image_speed = 1;
		if(image_index == 0 ) {
			image_speed = 5;	
		}
	} else if(stylekilldelay > 0 && last_move > 0) {
		sprite_index = sPlayerStabLeft;
		image_speed = 1;
		if(image_index == 0 ) {
			image_speed = 5;	
		}
	} else if (((lungedelay == true || stylekillwaitdelay > 0) && last_move > 0)){
		sprite_index = sPlayerLungeRight;
		image_speed = 1;
	} else if (((lungedelay == true || stylekillwaitdelay > 0) && last_move < 0 )){
		sprite_index = sPlayerLungeLeft;	
		image_speed = 1;
	} else if (landing_frames > 0 && last_move > 0) {
		sprite_index = sPlayerLandRight;
		image_speed = 1;	
	} else if (landing_frames > 0 && last_move < 0) {
		sprite_index = sPlayerLandLeft;
		image_speed = 1;	
	} else if (onground && last_move > 0) { 
		sprite_index = sPlayerIdleRight; 
	} else if (onground && last_move < 0) {
		sprite_index = sPlayerIdleLeft;	
	} else if (onwall > 0) {
		sprite_index = sPlayerSlideRight;	
	} else if (onwall < 0 ) {
		sprite_index = sPlayerSlideLeft;	
	} else if (walljumpdelay > 0 && hsp > 0) {
		sprite_index = sPlayerJumpRight;	
	} else if (walljumpdelay > 0 && hsp < 0) {
		sprite_index = sPlayerJumpLeft;	
	} else if (vsp < 0 && !onground && last_move > 0) {
		sprite_index = sPlayerJumpRight;
		if (image_index == 5) {
			image_speed = 0;	
		} else { image_speed = 0.2; }
	} else if (vsp < 0 && !onground && last_move < 0) {
		sprite_index = sPlayerJumpLeft;
		if (image_index == 5) {
			image_speed = 0;
		} else { image_speed = 0.2;}
	} else if (!onground && vsp >= 0 && last_move < 0) {
		image_speed = 0.2;
		sprite_index = sPlayerFallLeft;
	} else if (! onground && vsp >= 0 && last_move > 0) {
		image_speed = 0.2;
		sprite_index = sPlayerFallRight;
	} else { sprite_index = sPlayer; }



	//destroy self if you fall out of bounds
	if (y > room_height) {
		isDead = 1;
		y += 32;
		oGame.deadDuration = 1;
		audio_play_sound(playerdeath, 7, false);
	}
	
	
} else if (state == states.swinging) {
	var _ropeAngleAcceleration = -0.2 * dcos(ropeAngle);
	ropeAngleVelocity += _ropeAngleAcceleration;
	ropeAngle += ropeAngleVelocity;
	ropeAngle *= 0.99;
	ropeX = grappleX + lengthdir_x(ropeLength, ropeAngle);
	ropeY = grappleY + lengthdir_y(ropeLength, ropeAngle);
	
	hsp = ropeX - x;
	vsp = ropeY - y;
	
	if (key_kama_held == 0) {	
		state = states.normal; 
	}
	
	//check for horizontal collision
	if (place_meeting(x+hsp,y,oWall)) {
		while (!place_meeting(x+sign(hsp), y, oWall)) {
			x = x + sign(hsp);
		}
		state = states.normal;
		//corner correction
		if (hsp != 0 && corner_delay == 0) {
			if(!(place_meeting(x + hsp, y + v_corner_correction, oWall))) {
				y = y + v_corner_correction;
				corner_delay = corner_delay_max;
			} else if (!(place_meeting(x + hsp, y - v_corner_correction, oWall))) {
				y = y - v_corner_correction;
				corner_delay = corner_delay_max;
			} else {
			hsp = 0;
			hsp_frac = 0;
			}
		
		} else {
		hsp = 0;
		hsp_frac = 0;
		}
	}



	//x = current x plus velocity
	x = x + hsp;

	//check for vertical collision
	if (place_meeting(x, y + vsp ,oWall)) {
		while (!place_meeting(x, y + sign(vsp), oWall)) {
			y = y + sign(vsp);
		}
		state = states.normal;
		//corner correction
		if (vsp < 0 && corner_delay == 0) {
			if(!(place_meeting(x + h_corner_correction, y + vsp, oWall))) {
				x += h_corner_correction;
				corner_delay = corner_delay_max;
			} else if (!(place_meeting(x - h_corner_correction, y + vsp, oWall))) {
				x -= h_corner_correction;
				corner_delay = corner_delay_max
			} else {
			vsp = 0;
			vsp_frac = 0;
			}
		} else {
		vsp = 0;
		vsp_frac = 0;
		
		}
	}


	//if you hit your head on a corner when moving upwards or downwards, it will move you to the side.

	// y = current y + velocity
	y = y + vsp;
	
} else if (state = states.bouncing) {
	move = key_right - key_left;
	if(move != 0) {
		last_move = move;	
	}
	
	if(lungedelay && hsp = 0) {
		lungedelay = false;	
	}

	
	
	springDelay = max(0, springDelay - 1);
	springJump = max(springJump, key_jump);
	
	if(jumpBuffer) {
		springJump = true;	
	}
	
		//check for horizontal collision
	if (place_meeting(x+hsp,y,oWall)) {
		while (!place_meeting(x+sign(hsp), y, oWall)) {
			x = x + sign(hsp);
		}
		//corner correction
		if (hsp != 0 && corner_delay == 0) {
			if(!(place_meeting(x + hsp, y + v_corner_correction, oWall))) {
				y = y + v_corner_correction;
				corner_delay = corner_delay_max;
			} else if (!(place_meeting(x + hsp, y - v_corner_correction, oWall))) {
				y = y - v_corner_correction;
				corner_delay = corner_delay_max;
			} else {
			hsp = 0;
			hsp_frac = 0;
			}
		
		} else {
		hsp = 0;
		hsp_frac = 0;
		}
	}



	//x = current x plus velocity
	x = x + hsp;


	//check for vertical collision
	if (place_meeting(x, y + vsp ,oWall)) {
		while (!place_meeting(x, y + sign(vsp), oWall)) {
			y = y + sign(vsp);
		}
		//corner correction
		if (vsp < 0 && corner_delay == 0) {
			if(!(place_meeting(x + h_corner_correction, y + vsp, oWall))) {
				x += h_corner_correction;
				corner_delay = corner_delay_max;
			} else if (!(place_meeting(x - h_corner_correction, y + vsp, oWall))) {
				x -= h_corner_correction;
				corner_delay = corner_delay_max
			} else {
			vsp = 0;
			vsp_frac = 0;
			}
		} else {
		vsp = 0;
		vsp_frac = 0;
		
		}
	}


	//if you hit your head on a corner when moving upwards or downwards, it will move you to the side.



	// y = current y + velocity
	y = y + vsp;
	
	
	if(springDelay == 0) {
		if(bounceDirection == "Up") {
			if(springJump) {
				vsp = -10;
			} else {
				vsp = -8;	
			}
		} else if (bounceDirection == "Left") {
			walljumpdelay = walljumpdelay_max;
			if(springJump) {
				vsp = -7;
				hsp = -9;
			} else {
				vsp = -5;
				hsp = -7;
			}	
		} else if (bounceDirection == "Right") {
			walljumpdelay = walljumpdelay_max;
			if(springJump) {
				vsp = -7;
				hsp = 9;
			} else {
				vsp = -5;
				hsp = 7;
			}
		}
		
		
		state = states.normal;	
		springAfterDelay = springAfterDelay_max;
	}

	
} else {
	sprite_index = sPlayer;
}