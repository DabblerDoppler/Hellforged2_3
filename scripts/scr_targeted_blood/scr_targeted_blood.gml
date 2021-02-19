/// @desc ScreenShake(magnitude, frames)
/// @arg particles: number of blood particles to  create
/// @arg target: where to create blood particles
/// @arg vsp: vsp of created particles
function scr_targeted_blood(argument0, argument1, argument2) {
	if(argument2 == undefined) {argument2 = 0;}
	
	for(n = 0; n < argument0; n++) {
		var a = random_range(-0.5, 0.5);
		var b = random_range (-0.5, 0.5);
		with(instance_create_layer(x + 10 * b, y + 10 * a, "Instances", oBlood)) {
			vspeed = 1.25 * argument1.vsp + 3 * a + argument2;
			hspeed = 1.25 * argument1.hsp + 3 * b;
		}
	}


}
