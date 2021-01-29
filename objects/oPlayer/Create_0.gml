/// @description Insert description here
// You can write your code in this editor

state = PlayerStateFree;
lastState = state;
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
speedDash = 3.0;
distanceRoll = 52;
distanceDash = 50;

// Cooldown
dashCooldown = 0.0;

// Store sprite into variables
spriteRun = sPlayerRun;
spriteIdle = sPlayer;
spriteRoll = sPlayerRoll;
localFrame = 0;

// player inventory
inventory = ds_list_create();
// add player inventory item
//ds_list_add(inventory, new Star());
//ds_list_add(inventory, new Branch());
//ds_list_add(inventory, new Mushroom());