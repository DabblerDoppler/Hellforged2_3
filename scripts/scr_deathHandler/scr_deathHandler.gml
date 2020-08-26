function scr_deathHandler() {
	audio_play_sound(playerdeath, 4, false);

	alarm_set(0, room_speed);

	if(alarm_get(0) < 0) { 
		scr_SlideTransition(TRANS_MODE.RESTART);
	}


}
