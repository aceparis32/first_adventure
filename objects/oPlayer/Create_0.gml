/// @description Insert description here
// You can write your code in this editor

state = PlayerStateFree;
stateAttack = AttackSlash;
hitByAttack = -1;
//  Get the box collider tilemap
collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_speed = 0;
// Horizontal Speed
hSpeed = 0;
// Vertical Speed
vSpeed = 0;
// Player speed walk
speedWalk = 2.0;
speedRoll = 3.0;
distanceRoll = 52;

// Store sprite into variables
spriteRun = sPlayerRun;
spriteIdle = sPlayer;
spriteRoll = sPlayerRoll;
localFrame = 0;