/// @description Insert description here
// You can write your code in this editor

if(room = rMainMenu) {
	if(!audio_is_playing(mMenuMusic)) {
		//audio_sound_gain(mLevelMusic, 0, 1000);
		audio_stop_sound(global.music);
		audio_play_sound(mMenuMusic, 1000, true);	
		global.music = mMenuMusic;
	}
} else if ((room != rCreditMenu && room != rLevelSelect) && !audio_is_playing(mLevelMusic)) {
	audio_stop_sound(global.music);
	audio_play_sound(mLevelMusic, 1000, true);	
	global.music = mLevelMusic;
}


if (file_exists(SAVEFILE)) file_delete(SAVEFILE);


var file = file_text_open_write(SAVEFILE);


file_text_write_real(file, room);

file_text_close(file);