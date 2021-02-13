/// @description Insert description here
// You can write your code in this editor
if(instance_exists(boxID) && !point_in_circle(oPlayer.x, oPlayer.y, x, y, 64)) {
	instance_destroy(boxID);
}