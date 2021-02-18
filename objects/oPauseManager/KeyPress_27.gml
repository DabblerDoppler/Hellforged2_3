
if((room != rMainMenu && room != rCreditMenu && room != rLevelSelect)  && !instance_exists(obj_textbox)) {
		menuSelect = 0;
		menu = menuBase;
		mpos = 0;
		global.pause = !global.pause;
}