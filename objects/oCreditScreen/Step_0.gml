/// @description Insert description here
// You can write your code in this editor

if((id) != global.creditManagerID) {
	instance_destroy(self);	
}

if(keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(ord("X"))) {
	room_goto(rMainMenu);	
}