/// @description Insert description here
// You can write your code in this editor

x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2) - 74;
y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2) + 74;

if(oAbilityWheel.abil_unlocked >= 4) {
	if(instance_exists(oPlayer)) {
		if(oPlayer.key_abil1_select || oPlayer.key_abil2_select || oPlayer.key_abil3_select) {
		image_alpha = 0.5;
		if(oPlayer.leftright < 0 && oPlayer.updown < 0) {
			image_alpha = 1;
		}
		} else {
		image_alpha = 0;	
		}
	}
}