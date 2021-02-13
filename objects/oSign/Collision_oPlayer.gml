/// @description Insert description here
// You can write your code in this editor

if(oPlayer.onground && !instance_exists(oTextBubble)) {
	with(instance_create_layer(x, y-32, "UI", oTextBubble)) {
		other.boxID = id;
		text = other.text;
		length = string_length(text);
	}
}