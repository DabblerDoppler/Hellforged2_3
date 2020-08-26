
//follow player
if (instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
}

//update object position
x += (xTo - x) / 15;
y += (yTo - y) / 15;

//keep camera centered
x = clamp(x, view_w_half + buff, room_width - view_w_half - buff);
y = clamp(y, view_h_half + buff, room_height - view_h_half);

//screenshake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain-((1/shake_length) * shake_magnitude));


//update view
camera_set_view_pos(cam, x-view_w_half, y-view_h_half);

if(layer_exists("Bg_1")) {
	layer_x("Bg_1", x * 0.1);	
}

if(layer_exists("Bg_2")) {
		layer_x("Bg_2", x/2);
}

if(layer_exists("Bg_3")) {
	layer_x("Bg_3", x * 0.94);
}

if(layer_exists("Bg_4")) {
	layer_x("Bg_3", x * 0.875);
	layer_x("Bg_4", x * 0.96);
}

if(layer_exists("Bg_Clouds")) {
	clouds_movement += 1;
	layer_x("Bg_Clouds", x * 0.98 + (clouds_movement / 4));
}