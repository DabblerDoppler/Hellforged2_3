anim_frames = max(anim_frames - 1, 0);

if(place_meeting(x, y, oPlayer) && oPlayer.onground == false && oPlayer.hsp > 0 && oPlayer.state != states.bouncing) {
	anim_frames = anim_frames_max;
	oPlayer.springJump = false;
	oPlayer.bounceDirection = "Left";
	oPlayer.hsp = 0;
	oPlayer.state = states.bouncing;	
	oPlayer.springDelay = oPlayer.springDelay_max;
}

if(anim_frames == 14) {
	image_index = 1;	
} else if (anim_frames == 7) {
	image_index = 2;
	var i;
	for(i = spores_release; i > 0;  i--) {
		var v = irandom_range(16, 48);
		with (instance_create_layer(bbox_left - irandom_range(4, 12), bbox_top + v, "Instances", oSpores)) {
			hspeed = random_range(-0.5, -1);
			vspeed = ((v - 32) / 16);
		}
	}
	spores_release--;
} else if (anim_frames == 0) {
	image_index = 0;	
}