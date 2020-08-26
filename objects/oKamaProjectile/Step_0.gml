leaveChain = max(leaveChain - 1, 0);

if (oPlayer.kamaDelay < 1) {
	instance_destroy(self);	
}

if(leaveChain == 0) {
	leaveChain = leaveChain_max;
	instance_create_layer(x, y, "Instances", oKamaChain);
}

x += 25 * throwDir;