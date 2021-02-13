/// @description Insert description here
// You can write your code in this editor
event_inherited();

if (global.pause || global.freeze) {
	exit;
}

left_frames = max(left_frames - 1, 0);
right_frames = max(right_frames - 1, 0);

if(left_frames > 0) {
	hsp = hsp + 0.02;
} 

if (right_frames > 0) {
	hsp = hsp - 0.02;
}

if(left_frames == 1) {
	right_frames = move_frame_max;
}
if(right_frames == 1) {
	left_frames = move_frame_max;
}

if(place_meeting(x + hsp , y, oPlayer)) {
	oPlayer.platformContact = id;
}

x = x + hsp;