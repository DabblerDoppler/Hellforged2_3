if((id) != global.menuManagerID) {
	instance_destroy(self);	
}

global.pause = 0;

var move = 0;
move -= max(keyboard_check_pressed(vk_up), gamepad_button_check_pressed(0, gp_padu),  0);
move += max(keyboard_check_pressed(vk_down), gamepad_button_check_pressed(0, gp_padd), 0);

if(move != 0) {
	menuDelay = 0;	
}

if (abs(gamepad_axis_value(0, gp_axislv)) > 0.25) {
	move -= sign(abs(min(gamepad_axis_value(0,gp_axislv), 0)));
	move += sign(max(gamepad_axis_value(0, gp_axislv), 0));
}

menuDelay = max(menuDelay - 1, 0);

if (move != 0 && menuDelay == 0) {
	audio_play_sound(snd_moveselect, 5, false);
	menuDelay = menuDelayMax;
	mpos += sign(move);
	if (mpos < 0) mpos = array_length_1d(menu) - 1;
	if (mpos > array_length_1d(menu) -1) { mpos = 0; }
}

var push = keyboard_check_pressed(vk_enter) + keyboard_check_pressed(ord("Z")) + gamepad_button_check_pressed(0, gp_face1);
if (push >= 1) { scr_menu(); }