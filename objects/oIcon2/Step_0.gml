x = oCamera.x + 64 - oGame.ideal_width * 2.2/5;
y = oCamera.y + oGame.ideal_height * 2.2/5;

if(global.abil2_used) {
	image_alpha = 0.3;
} else {
	image_alpha = min(image_alpha + 0.035, 1);
}

sprite_index = sDashIcon;
oPlayer.dashBound = 2;
oPlayer.dash_used = global.abil2_used;