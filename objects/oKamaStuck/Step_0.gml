delay = delay - 1;

if(delay < 1) {
	oPlayer.kamaWallDelay = false;
	oPlayer.kamaWallDelay_Jump = 0;
	instance_destroy(self);	
}

oPlayer.vsp = 0;
oPlayer.vsp_frac = 0;