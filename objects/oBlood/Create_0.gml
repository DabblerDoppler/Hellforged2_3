gravity = 0.25;

image_xscale = irandom_range(1,2);
image_yscale = irandom_range(1,2);

slowDown = random_range(1.25, 4.25);

image_blend = make_color_hsv(random_range(240, 255), random_range(100, 200), random_range(100, 200));

image_alpha = 1;

visible = true;

alarm_set(0, 240);