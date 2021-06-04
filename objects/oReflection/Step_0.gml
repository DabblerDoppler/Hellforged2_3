/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oPlayer)) {
	if(oPlayer.isDead){
		instance_destroy();
	} else {
		image_alpha = 1;
		
	}
	
	if(!oPlayer.reflection_active) {
		image_alpha = 0;
		exit;
	}
	
	if(isDead) {
		oPlayer.isDead = true;	
	}
	
}


event_inherited();