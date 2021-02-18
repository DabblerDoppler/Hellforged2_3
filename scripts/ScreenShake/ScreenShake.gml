/// @desc ScreenShake(magnitude, frames)
/// @arg Magnitude sets strength of the shake
/// @arg Frames sets duration of the shake
function ScreenShake(argument0, argument1) {

	with (oCamera) {
		if (argument0 > shake_remain) {
			shake_length = argument1;
			shake_remain = argument0;
			shake_magnitude = argument0;
			gamepad_set_vibration(0, argument0 , argument0 );
			oGame.alarm[0] = argument1 * 1.5;
		}

	
	
	}


}
