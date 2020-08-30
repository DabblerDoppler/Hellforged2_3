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

if(place_meeting(x + hsp, y, oPlayer)) {
	oPlayer.x += 3.5 * hsp;
	oPlayer.hsp_walk = 0;
	oPlayer.hsp_acc = 0;
	oPlayer.alarm[0] = 2;
	oPlayer.hsp = 0;
	oPlayer.hsp_frac = 0;
}

x = x + hsp;