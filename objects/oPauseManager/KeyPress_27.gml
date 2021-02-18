
if((room != rMainMenu && room != rCreditMenu && room != rLevelSelect)  && !instance_exists(obj_textbox)) {
		global.pause = !global.pause;
}