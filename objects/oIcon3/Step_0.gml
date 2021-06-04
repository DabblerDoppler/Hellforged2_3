x = oCamera.x + 128 - oGame.ideal_width * 2.2/5;
y = oCamera.y + oGame.ideal_height * 2.2/5;

if(global.abil3_used) {
	image_alpha = 0.3;
} else {
	image_alpha = min(image_alpha + 0.035, 1);
}

sprite_index = sLungeIcon;
oPlayer.lungeBound = 3;
oPlayer.lunge_used = global.abil3_used;