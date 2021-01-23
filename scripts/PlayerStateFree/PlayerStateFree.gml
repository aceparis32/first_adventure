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
	
	// Change state to attack
	if (keyAttack){
		// change state to attack
		state = PlayerStateAttack;
		// with slash animation
		stateAttack = AttackSlash;
	}

	// Change state to roll
	if (keyActivate) {
		// 1. Check for an entity to activate
		// 2. If there's nothing, or there is something, but it has no script : Roll
		// 3. Otherwise, there is something and it has script : Activate
		// 4. If the thing we activate is NPC, make it toward us.
		var _activateX = lengthdir_x(10, direction);
		var _activateY = lengthdir_y(10, direction);
		activate = instance_position(x + _activateX, y + _activateY, pEntity);
		
		if (activate == noone || activate.entitiyActivateScript == -1){
			state = PlayerStateRoll;
			moveDistanceRemaining = distanceRoll;
		}else{
			// Activate the entity
			ScriptExecuteArray(activate.entitiyActivateScript, activate.entitiyActivateArgs);
			
			if(activate.entityNPC){
				with(activate){
					direction = point_direction(x, y, other.x, other.y);
					image_index = CARDINAL_DIR;
				}
			}
		}
	}
}