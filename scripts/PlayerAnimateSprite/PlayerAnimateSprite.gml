// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerAnimateSprite(){
	// This is for 4 directions
	// the value will be around 0 to 3
	//var _cardinalDirection = round(direction/90);
	// To do 8 directions, do this
	// the value will be around 0 to 7
	// var _cardinalDirection = round(direction/45);

	// spriteRun have 36 frames, and each directions have 8 frames
	// so we need to get totalFrames from each directions and the value is 8
	// do this to dynamically get the value of total frames per direction
	var _totalFrames = sprite_get_number(sprite_index) / 4;

	// this code will select frame based on the number that the player move
	//
	image_index = localFrame + (CARDINAL_DIR * _totalFrames);
	localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;

	// If animation would loop on next game step
	if (localFrame >= _totalFrames) {
		animationEnd = true;
		localFrame -= _totalFrames;
	}else {
		animationEnd = false;	
	}	
}