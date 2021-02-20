
if (global.pause || global.freeze) { 
	image_speed = 0;
	exit;
	}
	
	
image_speed = 0.41 * global.timeSlow;

up_frames= max(up_frames - (1 * global.timeSlow), 0);
down_frames = max(down_frames - (1 * global.timeSlow), 0);


if(up_frames > 0) {
	vsp += (global.timeSlow) * 0.01;
} 

if (down_frames > 0) {
	vsp -= (global.timeSlow) * 0.01;
}

if(up_frames <= 1 && up_frames > 0) {
	down_frames = move_frame_max;
}
if(down_frames <= 1 && down_frames > 0) {
	up_frames = move_frame_max;
}

if (oPlayer.isBusy) {
mask_index = sBeholderLargeMask;	
} else {
	mask_index = sBeholder;	
}



y += global.timeSlow * vsp;