global.pause = 0;

image_alpha = 0;

global.PauseManagerID = id;

menu[0] = "Resume"
menu[1] = "Chat";
menu[2] = "Main Menu";
menu[3] = "Quit";

menuDelay = 0;
menuDelayMax = 10;
space = 64;
mpos = 0;


//--------Dialogue Stuff
reset_dialogue_defaults();
myPortrait			= spr_portrait_player;
myVoice				= snd_voice2;
myFont				= fnt_dialogue;
myName				= "You";

myPortraitTalk		= spr_portrait_examplechar_mouth;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= spr_portrait_examplechar_idle;