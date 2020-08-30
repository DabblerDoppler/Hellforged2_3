var n;
scr_generate_blood(150);
var t = choose(0,1,2);
audio_play_sound(oPlayer.killSound[t], 5, false);
audio_sound_pitch(oPlayer.killSound[t], choose(0.9, 1.0, 1.1));
audio_play_sound(oPlayer.pitchArray[oPlayer.killPitch], 2, false);
oPlayer.killPitch++;

instance_destroy(other);
ScreenShake(global.killShakeConstant, 15);



if(oPlayer.uppercutBound == 1) {
	oPlayer.abil1_used = 0;	
	oIcon1Blood.exists = 1;
	oIcon1Blood.image_index = 0;
} else if (oPlayer.uppercutBound == 2) {
	oPlayer.abil2_used = 0;	
	oIcon2Blood.exists = 1;
	oIcon2Blood.image_index = 0;
} else if (oPlayer.uppercutBound == 3) {
	oPlayer.abil3_used = 0;
	oIcon3Blood.exists = 1;
	oIcon3Blood.image_index = 0;
}