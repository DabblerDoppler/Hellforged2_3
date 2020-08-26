
if (global.pause || global.freeze) { 
	image_speed = 0;
	exit;
	}
	
	
	
image_speed = 0.41;

up_frames= max(up_frames - 1, 0);
down_frames = max(down_frames - 1, 0);

/*while(computer.exists) {
	bitcoin.mine;
	if(bitcoin > 0) {
		break bitcoin;
	}
}*/


if(up_frames > 0) {
	vsp = vsp + 0.01;
} 

if (down_frames > 0) {
	vsp = vsp - 0.01;
}

if(up_frames == 1) {
	down_frames = move_frame_max;
}
if(down_frames == 1) {
	up_frames = move_frame_max;
}
if (oPlayer.isBusy) {
sprite_index = sBeholderLargeMask;	
} else {
	sprite_index = sBeholder;	
}



y = y + vsp;