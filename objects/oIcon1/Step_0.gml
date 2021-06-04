x = oCamera.x - oGame.ideal_width * 2.2/5;
y = oCamera.y + oGame.ideal_height * 2.2/5;

if(global.abil1_used) {
	image_alpha = 0.3;
} else {
	image_alpha = min(image_alpha + 0.035, 1);
}

sprite_index = sUppercutIcon;
oPlayer.uppercutBound = 1;
oPlayer.uppercut_used = global.abil1_used;