// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EntityHitDestroy(){
	instance_destroy();
	// spawn item when destroyed
	SpawnItem(x, bbox_bottom, item.coin);
}

function EntityHitSolid(){
	// to make flash effect the object when hitted
	flash = 0.5;
}

function EntityHitByDash(){
	// decrease the value of entityHitCount
	entityHitCount--;
	show_debug_message("Entity hit remaining: " + string(entityHitCount));
	// if the entityHitCount value equals or less than 0, destroy the instance
	if(entityHitCount <= 0){
		instance_destroy();	
	}
}