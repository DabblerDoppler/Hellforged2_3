/// @description Insert description here
// You can write your code in this editor
x = oCamera.x + 128 - oGame.ideal_width * 2.2/5;
y = oCamera.y + oGame.ideal_height * 2.2/5;


exists = max(exists - 0.03, 0);

if(exists != 0) {
	image_alpha = 1;	
} else { 
	image_alpha = 0;
}