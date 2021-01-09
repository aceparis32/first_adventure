// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree(){
	// MOVEMENT

	hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

	//x += hSpeed;
	//y += vSpeed;
	// Change to script
	PlayerCollision();

	// This is the example to check if mouse is clicked or not
	//if (keyHighAttack){
	//	show_debug_message("Doryaahhh !!");
	//}

	// UPDATE SPRITE INDEX
	var _oldSprite = sprite_index;
	if (inputMagnitude != 0){
		direction = inputDirection;
		sprite_index = spriteRun;
	} else {
		sprite_index = spriteIdle;
	}

	if(_oldSprite != sprite_index){
		localFrame = 0;
	}

	// Update image index
	PlayerAnimateSprite();
	
	// Change state
	if (keyActivate) {
		state = PlayerStateRoll;
		moveDistanceRemaining = distanceRoll;
	}
}