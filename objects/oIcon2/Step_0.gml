x = oCamera.x + 64 - oGame.ideal_width * 2.2/5;
y = oCamera.y + oGame.ideal_height * 2.2/5;

if(oPlayer.abil2_used) {
	image_alpha = 0.3;
} else {
	image_alpha = min(image_alpha + 0.035, 1);
}

if(icon == 1) {
	sprite_index = sUppercutIcon;
	oPlayer.uppercutBound = 2;
	oPlayer.uppercut_used = oPlayer.abil2_used;
} else if (icon == 2) {
	sprite_index = sDashIcon;
	oPlayer.dashBound = 2;
	oPlayer.dash_used = oPlayer.abil2_used;
} else if (icon == 3) {
	sprite_index = sLungeIcon;
	oPlayer.lungeBound = 2;
	oPlayer.lunge_used = oPlayer.abil2_used;
} else if (icon == 4) {
	sprite_index = sKamaIcon;
	oPlayer.kamaBound = 2;
	oPlayer.kama_used = oPlayer.abil2_used;
} else if (icon == 5) {
	sprite_index = sSpearIcon;
	oPlayer.spearBound = 2;
} else if (icon == 6) {
	sprite_index = sHammerIcon;
	oPlayer.hammerBound = 2;
} else if (icon == 7) {
	sprite_index = sFireworkIcon;
	oPlayer.fireworkBound = 2;
} 