if(oPlayer.uppercutdelay == 0) {
	countdown = max(countdown - 1, 0);
	if (countdown ==  0) {
		instance_destroy(self);	
	}
}

if(oPlayer.dashdelay > 0 || oPlayer.lungedelay) {
	instance_destroy(self);	
}


x = oPlayer.x;
y = oPlayer.y;