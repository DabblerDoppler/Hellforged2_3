if(room > 1) {
	if (global.pause && object_exists(oCamera)) {
		draw_set_color(c_black);
		draw_set_alpha (0.5);
		draw_rectangle(0, -10, room_width, room_height, 0);
		draw_set_halign(fa_center);
		draw_set_font(fManaSpace);
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_set_halign(fa_left);
		draw_set_valign(fa_middle);
		draw_set_font(fManaSpace);
		draw_set_color(c_white);
		var m;
		for (m = 0; m < array_length_1d(menu); m += 1) {
				if((string(menu[m]) == "Chat") && (oPlayer.onground == 0)) {
					draw_set_alpha(0.6);
					draw_set_color(c_ltgray);
				} else {
					draw_set_alpha(1);
					draw_set_color(c_white);
				}
				draw_text(x - 64, y - 128 + (m * space), string(menu[m]));
		}
		draw_sprite(sprite_index, image_index, x - 48 - space, y - 128 + mpos * space);
		draw_set_color(c_black);
	}
} 



