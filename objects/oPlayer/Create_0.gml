

enum states {
	normal,
	dash, 
	uppercut, 
	lunge, 
	swinging,
	dead,
	bouncing
}

state = states.normal;

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


//lighting stuff
polygon = polygon_from_instance(id);
shadow_length = 15;

//swinging stuff
grappleX = mouse_x;
grappleY = mouse_y;
ropeX = x;
ropeY = y;
ropeAngleVelocity = 0;
ropeAngle = 0;
ropeLength = 0;

gib_number = 40;

global.killShakeConstant = 7;

reflection_active = false;
mirror_waiting = false;

platformContact = -1;
hsp = 0;
vsp = 0;
hsp_frac = 0;
vsp_frac = 0;
hsp_max = 8;
vsp_max = 12;
vsp_max_wall = 4;

dust = 0;

controller = 0;

isDead = 0;

landing_frames = 0;
landing_frames_max = 10;

hsp_acc = 1;
hsp_fric_ground = 0.5;
hsp_fric_air = 0.15

onground = false;
onwall = 0;
lastwall = 0;
walljumpdelay = 0;
walljumpdelay_max = 18;
lungedelay = false;
dashdelay = 0;
dashdelay_max = 10;
dashafterdelay = 0;
dashafterdelay_max = 3;

hammer_buffer = 0;
kama_buffer = 0;
hammerdelay = 0;
hammerdelay_max = 20;
hammerswingdelay = 0;
hammerswingdelay_max = 12;

onground = 1;

stylekillwaitdelay = 0;
stylekillwaitdelay_max = 4;
stylekilldelay = 0;
stylekilldelay_max = 25;
stylekilljumpdelay = 0;
stylekilljumpdelay_max = 15;
stylekilltarget = oPlayer;
isBusy = 0;
isBusyAbility = 0;

uppercutdelay = 0;
uppercutdelay_max = 20;

kamaJumpDelay = 0;
kamaJumpDelay_max = 8;
kamaWallDelay_Jump = 0;
kamaWallDelay_Jump_Max = 15;
kamaDelay = 0;
kamaThrowDirection = 0;
kamaDelay_max = 35;
alreadyKilling = false;
kamaWallDelay = false;

vsp_jump = -7;

v_dash_dir = 0;
h_dash_dir = 0;

grv = 0.3;
grv_wall = 0.1;
hsp_walk = 5.5;

hsp_wjump = 4.6;
vsp_wjump = -6.3;


kR_abil1 = ord("Z");
kR_abil2 = ord("X");
kR_abil3 = ord("C");
kR_abil1_select = ord("A");
kR_abil2_select = ord("S");
kR_abil3_select = ord("D");
key_abil1_select = 0;
key_abil2_select = 0;
key_abil3_select = 0;

killPitch = 0;

updown = 0;
leftright = 0;

kR_temp = ord("V");

global.abil1_used = false;
global.abil2_used = false;
global.abil3_used = false;

abil1_used = false;
abil2_used = false;
abil3_used = false;

uppercut_used = false;
dash_used = false;
lunge_used = false;
kama_used = false;
hammer_used = false;

last_move = 1;


//gamefeel stuff

v_corner_correction = 4;
h_corner_correction = 18;

v_corner_correction_default = 4;
h_corner_corection_default = 18;

//these 2 currently not working
v_corner_correction_dash = 27;
h_corner_correction_dash = 27;

corner_delay = 0;
corner_delay_max = 8;

jumpBuffer = 0;
jumpBuffer_max = 9;

coyoteTime = 0;
coyoteTime_Max = 6;

coyoteTime_Wall = 0;
coyoteTime_Wall_Max = 6;

uppercutBound = 1;
dashBound = 2; 
lungeBound = 3;
kamaBound = 0;
spearBound = 0;
hammerBound = 0;
fireworkBound = 0;


lunge_buffer = 0;
dash_buffer = 0;
uppercut_buffer = 0;
kama_buffer = 0;

ability_buffer_max = 9;

abil_sel = 0;
abil_toSel = 0;

springJump = 0;
springDelay = 0;
springDelay_max = 6;
springAfterDelay = 0;
springAfterDelay_max = 12;
bounceDirection = "None";


key_abil1_select_r = 0;
key_abil2_select_r = 0;
key_abil3_select_r = 0;

killSound[0] = enemydeath;
killSound[1] = enemydeath2;
killSound[2] = enemydeath3;

killPitch = 1;
pitchArray[0] = sE;
pitchArray[1] = sF;
pitchArray[2] = sFsharp;
pitchArray[3] = sG;
pitchArray[4] = sGsharp;
pitchArray[5] = sA;
pitchArray[6] = sAsharp;
pitchArray[7] = sB;
pitchArray[8] = sC;
pitchArray[9] = sCsharp;
pitchArray[10] = sD;
pitchArray[11] = sDsharp;
pitchArray[12] = sEhigh;

