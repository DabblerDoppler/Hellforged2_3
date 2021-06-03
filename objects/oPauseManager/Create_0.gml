global.pause = 0;

image_alpha = 0;

global.PauseManagerID = id;




menuBase[0] = "Resume"
menuBase[1] = "Chat";
menuBase[2] = "Main Menu";
menuBase[3] = "Options";
menuBase[4] = "Quit";

menuOpt[0] = "Back"
menuOpt[1] = "Controller Vibration";
menuOpt[2] = "<- Music ->";
menuOpt[3] = "Easy Mode";
menuOpt[4] = "<- Sound ->";

menu = menuBase;

menuSelect = 0;

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