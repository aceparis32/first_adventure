// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateDash(){
	// Movement
	hSpeed = lengthdir_x(speedDash, direction);
	vSpeed = lengthdir_y(speedDash, direction);
	
	moveDistanceRemaining = max(0, moveDistanceRemaining - speedDash);
	// Collision Check 
	var _collided = PlayerCollisionDestructible();
	
	// No dash animation
	
	// If dash distance was finished, change state to normal
	if (moveDistanceRemaining <= 0){
		state = PlayerStateFree;	
	}
	
	// If player collided, check the object variable "EnitityHitCount"
	// Decrease the value
	// If zero, destroy the object
	if (_collided) {
		var objectDashedList = ds_list_create();
		var dashed = instance_place_list(x, y, pEntity, objectDashedList, false);
		
		if(dashed > 0){
			for (var i = 0; i < dashed; i++) {
				var dashedID = objectDashedList[| i];
				with (dashedID){
					if(entityHitScript != -1 && entityHitType == "dash") {
						script_execute(entityHitScript);	
					}
				}
			}
		}
		ds_list_destroy(objectDashedList);
		state = PlayerStateFree;
		ScreenShake(4, 30);
	}
}