/// @description Insert description here
// You can write your code in this editor

switch (room) {
	case rLevel8:
		myText[0] = "This cave feels tougher to navigate then the rest. Maybe we're getting close to something important?"
		myText[1] = "Unfortunately, this is the last level. If you make it through, great job!"
		myText[2] = "Hopefully, there will be more to play soon."
		mySpeaker[0] = oPlayer;
		mySpeaker[1] = oMuramasa;
		mySpeaker[2] = oMuramasa;
		myType = 0;
		break;
	case rLevel7:
		myText[0] = "I'm feeling a bit claustrophobic. Are you sure I'll be able to fit through all these 'secret tunnels'?"
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
		myText[4] = "this is what I get for working with demons..."
		mySpeaker[0] = oPlayer;
		mySpeaker[1] = oMuramasa;
		mySpeaker[2] = oPlayer;
		mySpeaker[3] = oMuramasa;
		mySpeaker[4] = oPlayer;
		break;
	
	case rTutorial3:
		myText[0] = "You seem to be recollecting your combat prowess, at least."
		myText[1] = "I still wish I knew why I was fighting these things."
		myText[2] = "Something about a demon lord invading your world... you'll have to wait for the full game."
		myText[3] = "Huh?"
		myText[4] = "Nevermind. Hopefully we'll get to fight him eventually."
		mySpeaker[0] = oMuramasa;
		mySpeaker[1] = oPlayer;
		mySpeaker[2] = oMuramasa;
		mySpeaker[3] = oPlayer;
		mySpeaker[4] = oMuramasa;
		myType = 0;
		break;
		
	case rTutorial2: 
		myText[0] = "Was it you that corrupted all my weapons like this?"
		myText[1] = "My shortsword is acting like a picky child when I try to draw it."
		myText[2] = "If I was the one corrupting your weapons, ape, then how would I have awoken in the first place?"
		myText[3] = "Just keep moving. If you're worthy, maybe your other blades will begin to speak to you as well."
		myText[4] = "If you're any indication on what I'll deal with, I'm going to try to be as unworthy as possible."
		mySpeaker[0] = oPlayer;
		mySpeaker[1] = oMuramasa;
		mySpeaker[2] = oPlayer;
		mySpeaker[3] = oMuramasa;
		mySpeaker[4] = oPlayer;
		myType = 0;
		break;
	case rTutorial1:
		myText[0] = "Ah, altars of blood. If you'd be so kind to just gently dip me in..."
		myText[1] = "I feel like I shouldn't listen to the demon on my shoulder."
		myText[2] = "I'm not going to leave you with a choice. Place me in the altar or don't draw me again."
		myText[3] = "Fine. I guess we'll be working together."
		mySpeaker[0] = oMuramasa;
		mySpeaker[1] = oPlayer;
		mySpeaker[2] = oMuramasa;
		mySpeaker[3] = oPlayer;
		myType = 0;
		break;
	case rTutorial0:
		myText[0] = "Ugh... My head..."
		myText[1] = "Where is this? I think my sword is stuck in its sheath..."
		myText[2] = "I'm not 'stuck'. I just don't feel like helping yet. "
		myText[3] = "!!!"
		myText[4] = "Just press forward. I'll explain later."
		mySpeaker[0] = oPlayer;
		mySpeaker[1] = oPlayer;
		mySpeaker[2] = oMuramasa;
		mySpeaker[3] = oPlayer;
		mySpeaker[4] = oMuramasa;
		myType = 0;
		break;
	default: 
		myText[0] = "I should really stop talking to myself..."
		mySpeaker[0] =oPlayer;
		myType = 0;
		break;
}
create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol);