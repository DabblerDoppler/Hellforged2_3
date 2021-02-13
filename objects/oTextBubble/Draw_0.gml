/// @description Insert description here
// You can write your code in this editor
var halfw = w * 0.5;

draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x - halfw - border, y - h - (border * 2), x + halfw + border, y, 
												rect_radius , rect_radius ,false);
draw_sprite(sMarker, 0, x, y);

draw_set_alpha(1);

draw_set_colour(c_white);
draw_set_font(fManaSpace_talk);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(x,y-h-border, text_current);