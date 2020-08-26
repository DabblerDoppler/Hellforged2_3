


if(!isDead) {
	isDead = 1;
	ScreenShake(5,30);
	oPauseManager.deadDuration = 60;
	scr_deathHandler();
}