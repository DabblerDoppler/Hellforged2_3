if (global.pause || global.freeze) { 
	image_speed = 0;
	exit; 
}

image_speed = 0.33;

oPlayer.kamaDelay = oPlayer.kamaDelay_max;

//experimental
move_towards_point(oPlayer.x, oPlayer.y, 22);