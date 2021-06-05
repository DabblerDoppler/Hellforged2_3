/// @description Insert description here
// You can write your code in this editor

draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_set_color(c_white);


draw_set_font(fManaSpace_Large);

draw_text(x , y - 272 , "Level Select")


draw_set_font(fManaSpace);

var m;
for (m = 0; m < array_length_1d(menu); m += 1) {
	if(m < 10) {
		draw_text(x - (3 * space), y - 224 + (m * space), string(menu[m]));
	} else {
		draw_text(x , y - 224 + ((m-10) * space), string(menu[m]));
	}
}



if(mpos < 10) {
	draw_sprite(sprite_index, image_index, x - (space * 4), y - 224 + mpos * space)
} else {
	draw_sprite(sprite_index, image_index, x - space , y - 224 + (mpos-10) * space)
}