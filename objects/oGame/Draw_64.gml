//this should be done with shaders instead probably
//i could also make a sprite around the edges of the screen



if(instance_exists(oPlayer)) {
	if(oPlayer.isDead) {
		draw_set_color(c_red);
		draw_set_alpha (0.05);
		draw_rectangle(0,0, room_width, room_height, 0);
		draw_set_halign(fa_center);
		draw_set_alpha(1);	
		draw_set_color(c_black);
	}
}

draw_set_color(c_green);
draw_set_alpha(0.1*(1-global.timeSlow));
draw_rectangle(0,0, room_width, room_height, 0);
draw_set_halign(fa_center);
draw_set_alpha(1);
draw_set_color(c_black);