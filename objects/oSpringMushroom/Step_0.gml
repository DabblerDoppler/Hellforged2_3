if(global.pause || global.freeze) {
	exit;	
}

anim_frames = max(anim_frames - 1, 0);





if(place_meeting(x, y, oPlayer) && oPlayer.onground == false && oPlayer.vsp > 0 && oPlayer.state != states.bouncing) {
	anim_frames = anim_frames_max;
	oPlayer.springJump = false;
	oPlayer.bounceDirection = "Up";
	oPlayer.vsp = 0;
	oPlayer.state = states.bouncing;	
	oPlayer.springDelay = oPlayer.springDelay_max;
}

if(anim_frames == 14) {
	image_index = 1;	
} else if (anim_frames == 7) {
	image_index = 2;
	var i;
	for(i = spores_release; i > 0;  i--) {
		var h = irandom_range(16, 48);
		with (instance_create_layer(bbox_right - h, bbox_top + irandom_range(2, 8) , "Instances", oSpores)) {
			hspeed = -((h - 32) / 16);
			vspeed = random_range(-0.5, -1);
		}
	}
	spores_release--;
} else if (anim_frames == 0) {
	image_index = 0;	
}

x += global.timeSlow * hsp;