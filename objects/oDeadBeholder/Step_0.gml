if (global.pause || global.freeze) { 
	image_speed = 0;
	exit; 
}

if (image_index < 1) {
	image_speed = 1;
} else if(image_index < 2) {
	image_speed = 0.2;
	vsp = 0;
} else if (image_index < 3) {
	image_speed = 0.35;
	vsp = vsp + 0.1;
} else if (image_index < 6 ){
	image_speed = 0.6; 
	vsp = vsp + 0.25;
} else {
	image_speed = 0.8; 
	vsp = vsp + 0.4;
	image_alpha -= 0.05;
}

if(image_alpha > 0.5) {
	if(image_index < 2) {
		scr_targeted_blood(1, self, -5);
	} else {
		scr_targeted_blood(1, self);
	}
}

if((oPlayer.stylekilldelay > 0 || oPlayer.stylekillwaitdelay > 0) && image_index == 0) {
	vsp = 0;
	image_speed = 0.0001;
} else if (oPlayer.stylekilljumpdelay > 0 ||oPlayer.stylekilldelay > 0 || oPlayer.stylekillwaitdelay > 0) {
	image_speed = 0.15;	
}


if (image_alpha == 0) {
	instance_destroy(self);	
}


y = y + vsp;