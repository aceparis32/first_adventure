// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateRoll(){
	// Movement
	hSpeed = lengthdir_x(speedRoll, direction);
	vSpeed = lengthdir_y(speedRoll, direction);
	
	moveDistanceRemaining = max(0, moveDistanceRemaining - speedRoll);
	// Collision Check
	var _collided = PlayerCollision();
	
	// Animation
	sprite_index = spriteRoll;
	var _totalFrames = sprite_get_number(sprite_index) / 4;
	// EXAMPLE Top Animation
	// (1 * 6) + min(((1 - (52 / 52)) * 6), 5)
	// 6 + min(0, 5)
	// 6, 7, 8, 9, 10
	image_index = (CARDINAL_DIR * _totalFrames) + min(((1 - (moveDistanceRemaining / distanceRoll)) * (_totalFrames)), _totalFrames - 1);
	
	// If the animation complete, change state
	if (moveDistanceRemaining <= 0) {
		state = PlayerStateFree;
	}
	
	// If player collision with other object
	// Do screenshake
	if(_collided) {
		state = PlayerStateFree;
		// First arg, magnitude of the shake
		// Second arg, how long the shake will occur
		ScreenShake(4, 30);
	}
}