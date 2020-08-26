if(oPlayer.onground) {

	oPlayer.vsp = 0;
	oPlayer.vsp_frac = 0;
	oPlayer.hsp = 0;
	oPlayer.hsp_frac = 0;
	
	global.freeze = true;
	
	

	if(!hasPlayedSound) {
		hasPlayedSound = true;
		audio_play_sound(downstairs, 6, false);
	}

	if(room_exists(room + 1)) {
		scr_SlideTransition(TRANS_MODE.NEXT);
	} else {
		scr_SlideTransition(TRANS_MODE.GOTO(room_first));	
	}

}