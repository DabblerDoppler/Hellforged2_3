/// @desc SlideTransition(mode, targetRoom)
/// @arg mode sets transition mode between next, restart, and goto
/// @arg Target sets target room. No argument does next.
function scr_SlideTransition() {

	with (oTransitionManager) {
		mode = argument[0]; 
		if(argument_count > 1) {
			target = argument[1]
		}
	}


}
