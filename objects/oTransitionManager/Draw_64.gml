/// @desc Draw black bars

if(mode != TRANS_MODE.OFF && room != rMainMenu && room != rLevelSelect && room != rCreditMenu) {
	draw_set_color(c_black);
	draw_rectangle(0, 0 - 10, w * percent, h, false);
}
