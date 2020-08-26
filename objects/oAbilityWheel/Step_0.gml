x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2);
y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);

if(abil_unlocked >= 4) {
	if(instance_exists(oPlayer)) {
		if((oPlayer.key_abil1_select || oPlayer.key_abil2_select || oPlayer.key_abil3_select) && !oPlayer.isBusyAbility) {
		global.freeze = 1;
		image_alpha = 0.7;
		} else {
		image_alpha = 0;	
		}
	}
} else {
	image_alpha = 0;
}

if(instance_exists(oPlayer)) {
	if(oPlayer.key_abil1_select_r || oPlayer.key_abil2_select_r || oPlayer.key_abil3_select_r) {
		global.freeze = 0;	
	}
}