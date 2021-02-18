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


surface_resize(application_surface, ideal_width, ideal_height);
window_set_size(ideal_width, ideal_height);
display_set_gui_size(ideal_width, ideal_height);