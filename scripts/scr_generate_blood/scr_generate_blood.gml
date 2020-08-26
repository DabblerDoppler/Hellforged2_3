/// @desc ScreenShake(magnitude, frames)
/// @arg particles: number of blood particles to  create
function scr_generate_blood(argument0) {



	for(n = 0; n < argument0; n++) {
		var a = random_range(-0.6, 0.6);
		var b = random_range (-0.6, 0.6);
		if(a > 0.38 || a < -0.38) {
			a = random_range(-0.6, 0.6);	
		}
		if(b > 0.38 || b < -0.38) {
			b = random_range(-0.6, 0.6);	
		}
		with(instance_create_layer(x + 10 * b, y + 10 * a, "Instances", oBlood)) {
			vspeed = 1.35 * oPlayer.vsp + 3 * a;
			hspeed = 1.35 * oPlayer.hsp + 3 * b;
		}
	}


}
