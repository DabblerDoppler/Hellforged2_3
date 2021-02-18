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
	
	file_text_close(file);
	
} else {
global.musicVolume = 1.0;
global.vibrationOn = true;
}


surface_resize(application_surface, ideal_width, ideal_height);
window_set_size(ideal_width, ideal_height);
display_set_gui_size(ideal_width, ideal_height);