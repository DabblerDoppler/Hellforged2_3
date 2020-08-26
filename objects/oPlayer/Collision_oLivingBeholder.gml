

if(lungedelay || uppercutdelay != 0 || dashdelay != 0) {
	if(lungedelay) {
		lungedelay = false;
		stylekilltarget = other;
		stylekillwaitdelay = stylekillwaitdelay_max;
		vsp = 0;
		hsp = 0;
		vsp_frac = 0;
		hsp_frac = 0;
	} else if (uppercutdelay != 0) {	
		scr_generate_blood(150);
		audio_play_sound(choose(enemydeath, enemydeath2, enemydeath3), 3, false);
		killPitch++;
		instance_destroy(other);
		ScreenShake(global.killShakeConstant, 15);
		var n;
		
		//remember that the hitbox needs this code too!
		if(uppercutBound == 1) {
			abil1_used = 0;	
			oIcon1Blood.exists = 1;
			oIcon1Blood.image_index = 0;
		} else if (uppercutBound == 2) {
			abil2_used = 0;	
			oIcon2Blood.exists = 1;
			oIcon2Blood.image_index = 0;
		} else if (uppercutBound == 3) {
			abil3_used = 0;
			oIcon3Blood.exists = 1;
			oIcon3Blood.image_index = 0;
		}
		
	} else if (dashdelay != 0 ) {
		scr_generate_blood(150);
		audio_play_sound(choose(enemydeath, enemydeath2, enemydeath3), 3, false);
		killPitch++;
		if(dashBound == 1) {
			abil1_used = 0;	
			oIcon1Blood.exists = 1;
			oIcon1Blood.image_index = 0;
		} else if (dashBound == 2) {
			abil2_used = 0;	
			oIcon2Blood.exists = 1;
			oIcon2Blood.image_index = 0;
		} else if (dashBound == 3) {
			abil3_used = 0;
			oIcon3Blood.exists = 1;
			oIcon3Blood.image_index = 0;
		}
		instance_destroy(other);
		ScreenShake(global.killShakeConstant, 15);
	}
} else if (!isBusyAbility && !isDead) {
	ScreenShake(global.killShakeConstant,30);
	isDead = 1;
	oPauseManager.deadDuration = 60;
	scr_deathHandler();
}