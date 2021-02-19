/// @description Insert description here
// You can write your code in this editor

switch (room) {
	case rLevel7:
		myText[0] = "I'm feeling a bit claustrophobic. Are you sure these caves are safe?"
		myText[1] = "A brave warrior, scared of a cave. They'll tell stories about you for sure."
		mySpeaker[0] = oPlayer;
		mySpeaker[1] = oMuramasa;
		myType = 0;
		break;
	case rLevel6:
		myText[0] = "Don't look down, don't look down, don't look down..."
		myText[1] = "Just... don't drop me. Please."
		mySpeaker[0] = oPlayer;
		mySpeaker[1] = oMuramasa;
		myType = 0;
		break;
	case rLevel5:
		myText[0] = "I feel like there's more evil eyes here than usual."
		myText[1] = "Hmm... you're right. Either there's an infestation here, or we're getting close."
		myText[2] = "Close? To what?"
		myText[3] = "Keep pressing on. We can deal with it when we get there."
		mySpeaker[0] = oPlayer;
		mySpeaker[1] = oMuramasa;
		mySpeaker[2] = oPlayer;
		mySpeaker[3] = oMuramasa;
		myType = 0;
		break;
	case rLevel4:
		myText[0] = "I can't see a way across these gaps. Any tips?"
		myText[1] = "Try jumping off of the bouncing mushrooms for some extra height."
		myText[2] = "Also, if you don't press towards a wall, your lunge will stay active."
		mySpeaker[0] = oPlayer;
		mySpeaker[1] = oMuramasa;
		mySpeaker[2] = oMuramasa;
		myType = 0;
		break;
	case rLevel3:
		myText[0] = "I'm going to try the lower path. I'd like to get through this without alerting the enemy."
		myText[1] = "What makes you think anyone is watching? I can help much more with the upper path."
		myTextCol[1]	= [48, c_red, 52, c_white];
		myEffects[1] = [48,2, 52, 0];
		myText[2] = "I know you'd like to be covered in blood, but I'd start to smell. We should get moving."
		mySpeaker[0] = oPlayer;
		mySpeaker[1] = oMuramasa;
		mySpeaker[2] = oPlayer;
		break;
	case rLevel2:
		myText[0] = "This cave feels so empty."
		myText[1] = "Trust me, I'm more disappointed than you are."
		mySpeaker[0] = oPlayer;
		mySpeaker[1] = oMuramasa;
		break;
	case rLevel1:
		myText[0] = "So why can't you be drawn again unless you taste blood?"
		myText[1] = "Oh, I can. I need something to distinguish between a worthy and unworthy wielder."
		myText[2] = "So you're just forcing me through these caves like this for no reason?"
		myText[3] = "You keep me happy, and I keep you happy. Just keep moving."
		myText[4] = "This job comes with the worst coworkers..."
		mySpeaker[0] = oPlayer;
		mySpeaker[1] = oMuramasa;
		mySpeaker[2] = oPlayer;
		mySpeaker[3] = oMuramasa;
		mySpeaker[4] = oPlayer;
		break;
	case rLevel0:
		myText[0] = "So, do you remember how to fight?"
		myText[1] = "I... think so. Where are we?"
		myText[2] = "Don't worry about it for now. This is just a beta after all."
		myText[3] = "If you need help, just read the signs."
		myText[4] = "...okay."
		mySpeaker[0] = oMuramasa;
		mySpeaker[1] = oPlayer;
		mySpeaker[2] = oMuramasa;
		mySpeaker[3] = oMuramasa;
		mySpeaker[4] = oPlayer;
		myType = 0;
		break;
}
create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol);