function scr_saveOptions(){

		var file = file_text_open_write(SAVEFILE);


		file_text_writeln(file);

		file_text_write_real(file, global.musicVolume);

		file_text_write_real(file, global.vibrationOn);
	
		file_text_write_real(file, global.easyMode);
	
		file_text_write_real(file, global.gameVolume);

		file_text_close(file);
}