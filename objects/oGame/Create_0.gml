global.level[0] = rTutorial0;
global.level[1] = rTutorial1;
global.level[2] = rTutorial2;
global.level[3] = rTutorial3;
global.level[3] = rLevel1;
global.level[4] = rLevel2;
global.level[5] = rLevel3;
global.level[6] = rLevel4;
global.level[7] = rLevel5;
global.level[8] = rLevel6;
global.level[9] = rLevel7;
global.level[10] = rLevel8;
global.level[11] = rLevel9;

global.timeSlow = 1.0;

deadFor = 0;
deadDuration = 60;


ideal_width = 0;
ideal_height = 768;

aspect_ratio = display_get_width() / display_get_height();

ideal_width = round(ideal_height * aspect_ratio);

if(ideal_width & 1) {
	ideal_width++;	
}

global.music = mMenuMusic;
if (file_exists(SAVEFILE)) {
	var file = file_text_open_read(SAVEFILE); 
	file_text_readln(file);
	global.musicVolume = file_text_read_real(file);
	global.vibrationOn = file_text_read_real(file);
	global.easyMode = file_text_read_real(file);
	global.gameVolume =  file_text_read_real(file);
	file_text_close(file);
	
} else {
	global.gameVolume =  0.5;
	global.musicVolume = 0.5;
	global.vibrationOn = true;
	global.easyMode = false;
}


surface_resize(application_surface, ideal_width, ideal_height);
window_set_size(ideal_width, ideal_height);
display_set_gui_size(ideal_width, ideal_height);