if (oPlayer.kamaDelay > 0) {
	instance_create_layer(x, y, "Instances", oDeadBeholderKama);	
	
} else if (instance_exists(oHitbox)) {
	instance_create_layer(x,y, "Instances", oDeadBeholderZ);
} else {
	if (abs(oPlayer.hsp) > abs(oPlayer.vsp)) {
		instance_create_layer(x, y, "Instances", oDeadBeholderHorizontal);
	} else  {
		instance_create_layer(x, y, "Instances", oDeadBeholder);
	}
}