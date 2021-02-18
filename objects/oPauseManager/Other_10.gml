/// @description Insert description here
// You can write your code in this editor

if(room = rLevel7) {
	myText[0] = "I... don't think there's a  way across this pit."
	myText[1] = "Your squishy mortal eyes fail you. I see a convinient ledge."
	myText[2] = "Can you guide me to it?"
	myText[3] = "AHAH! We may be working together, but I have no intention of making this journey pleasant."
	myText[4] = "I bet you can find a way to reveal it yourself. Perhaps with a... stain of some kind."
	mySpeaker[0] = oPlayer;
	mySpeaker[1] = oMuramasa;
	mySpeaker[2] = oPlayer;
	mySpeaker[3] = oMuramasa;
	mySpeaker[4] = oMuramasa;
	myType = 0;
	
} else if (room = rLevel0) {
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
} else {
	myText[0] = "I really need to stop talking to myself."
	myText[1] = "I don't appreciate you acting like I don't exist, mortal."
	mySpeaker[0] = oPlayer;
	mySpeaker[1] = oMuramasa;
	myType = 0;
}
	
create_dialogue(myText, mySpeaker);