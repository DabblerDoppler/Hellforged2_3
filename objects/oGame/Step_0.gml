if(instance_exists(oPlayer)) {
	if(oPlayer.isDead) {
		deadFor = min(deadFor + 1, deadDuration);	
	} else {
		deadFor = 0;	
	}
}

if(deadFor >= deadDuration) {
	deadFor = 0;
	deadDuration = 60;
	scr_SlideTransition(TRANS_MODE.RESTART);
}



audio_master_gain(global.gameVolume);
audio_sound_gain(global.music, global.musicVolume, 0);
audio_sound_pitch(global.music, global.timeSlow);

/*
if(audio_sound_get_gain(mMenuMusic) <=0) {
	audio_stop_sound(mMenuMusic);
}

if(audio_sound_get_gain(mLevelMusic) <=0) {
	audio_stop_sound(mLevelMusic);
}


*/