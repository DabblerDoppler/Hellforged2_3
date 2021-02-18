// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_saveOptions(){
	if (file_exists(SAVEFILE)) file_delete(SAVEFILE);


	var file = file_text_open_write(SAVEFILE);


	file_text_writeln(file);

	file_text_write_real(file, global.musicVolume);

	file_text_write_real(file, global.vibrationOn);

	file_text_close(file);
}