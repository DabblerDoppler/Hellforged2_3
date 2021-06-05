// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_generate_dust(argument0){


	for(n = 0; n < argument0; n++) {
		var a = random_range(-0.6, 0.6);
		var b = random_range (-0.6, 0.6);
		if(a > 0.38 || a < -0.38) {
			a = random_range(-0.6, 0.6);	
		}
		if(b > 0.38 || b < -0.38) {
			b = random_range(-0.6, 0.6);	
		}
		with(instance_create_layer(x + 10 * b, y + 10 * a, "Instances", oDust)) {
			vspeed = 0.2 * oPlayer.vsp + 3 * a;
			hspeed = 0.2 * oPlayer.hsp + 3 * b;
		}
	}




}