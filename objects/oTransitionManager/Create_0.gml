w = display_get_gui_width();
h = display_get_gui_height();

global.freeze = false;
global.TransitionManagerID = id;

h_half = h * 0.5;

enum TRANS_MODE {
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
mode = TRANS_MODE.INTRO;
percent = 0;
target = room;