
speed /= global.timeSlow;

if(collision_point(x, y, oWall, false, false) || collision_point(x,y,oBloodWall, false, false)) {
	visible = false;
	if(speed > 0) {
		speed -= slowDown;
		image_alpha -= 0.05;
		if(speed < 0) {
			speed = 0;	
		}
	}
	
	
	//draw to surface
	if(surface_exists(global.blood_surface)) {
		surface_set_target(global.blood_surface);
		draw_self();
		surface_reset_target();
	}
	if(speed == 0) {
		instance_destroy();
	}
	
} else {
	visible = true;
}

if(image_alpha == 0) {
	instance_destroy();	
}

speed *= global.timeSlow;