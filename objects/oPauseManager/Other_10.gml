/// @description Insert description here
// You can write your code in this editor

if(room != rLevel7) {
	myText[0] = "I really need to stop talking to myself."
	myText[1] = "I don't appreciate you acting like I don't exist, mortal."
	mySpeaker[0] = oPlayer;
	mySpeaker[1] = oMuramasa;
	myType = 0;
} else {
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
}
	
create_dialogue(myText, mySpeaker);