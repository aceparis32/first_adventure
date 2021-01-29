// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerCollision(){
	var _collision = false;
	// create entity data structure
	var _entityList = ds_list_create();
	// Horizontal Tiles
	if (tilemap_get_at_pixel(collisionMap, x + hSpeed, y)){
		// 16 is the pixel size of the tilemap
		x -= x mod 16;
		
		//if (sign(hSpeed) == 1){
		//	x += TILE_SIZE - 1;
		//	hSpeed = 0;
		//	_collision = true;
		//}
		
		if (sign(hSpeed) == 1){
			x += TILE_SIZE - 1;	
		}
		
		hSpeed = 0;
		_collision = true;
		
		//if(sign(hSpeed) == -1){
		//	hSpeed = 0;
		//	_collision = true;
		//}
	}
	
	// Horizontal entities
	var _entityCount = instance_position_list(x + hSpeed, y, pEntity, _entityList, false);
	// Boundary
	var _snapX;
	while (_entityCount > 0){
		// code below same as ds_list_find_value(_entityList, 0)
		var _entityCheck = _entityList[| 0];
		if (_entityCheck.entityCollision == true) {
			// Move as close as we can
			// if we move to left
			if (sign(hSpeed) == -1) _snapX = _entityCheck.bbox_right + 1;	
			else _snapX = _entityCheck.bbox_left - 1;
			x = _snapX;
			// hSpeed = 0 to stop player when colliding
			hSpeed = 0;
			// and change collision status to true
			_collision = true;
			_entityCount = 0;
		}
		
		ds_list_delete(_entityList, 0);
		_entityCount--;
	}
	
	x += hSpeed;
	
	// Clear list between axis
	ds_list_clear(_entityList);
	
	// Vertical Tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + vSpeed)) {
		// 16 is the pixel size of the tilemap
		y -= y mod 16;
		
		if (sign(vSpeed) == 1){
			y += TILE_SIZE - 1;
		}
		vSpeed = 0;
		_collision = true;
		
		//if (sign(vSpeed) == -1) {
		//	vSpeed = 0;
		//	_collision = true;
		//}
	}
	
	// Vertical entities
	var _entityCount = instance_position_list(x, y + vSpeed, pEntity, _entityList, false);
	// Boundary
	var _snapY;
	while (_entityCount > 0){
		// code below same as ds_list_find_value(_entityList, 0)
		var _entityCheck = _entityList[| 0];
		if (_entityCheck.entityCollision == true) {
			// Move as close as we can
			// if we move to left
			if (sign(vSpeed) == -1) _snapY = _entityCheck.bbox_bottom + 1;	
			else _snapY = _entityCheck.bbox_top - 1;
			y = _snapY;
			vSpeed = 0;
			_collision = true;
			_entityCount = 0;
		}
		
		ds_list_delete(_entityList, 0);
		_entityCount--;
	}
	
	y += vSpeed;
	
	//if (hSpeed != 0){
	//	show_debug_message(sign(hSpeed));
	//}
	
	//if (vSpeed != 0){
	//	show_debug_message(vSpeed);
	//}
	
	// destroy entity data structure
	ds_list_destroy(_entityList);
	
	return _collision;
}

function PlayerCollisionDestructible(){
	var _collision = false;
	// create entity data structure
	var _entityList = ds_list_create();
	// Horizontal Tiles
	if (tilemap_get_at_pixel(collisionMap, x + hSpeed, y)){
		// 16 is the pixel size of the tilemap
		x -= x mod 16;
		
		if (sign(hSpeed) == 1){
			x += TILE_SIZE - 1;	
		}
		
		hSpeed = 0;
		_collision = true;
	}
	
	// Horizontal entities
	var _entityCount = instance_position_list(x + hSpeed, y, pEntity, _entityList, false);
	// Boundary
	var _snapX;
	while (_entityCount > 0){
		// code below same as ds_list_find_value(_entityList, 0)
		var _entityCheck = _entityList[| 0];
		if (_entityCheck.entityCollision == true) {
			// Move as close as we can
			// if we move to left
			if (sign(hSpeed) == -1) _snapX = _entityCheck.bbox_right + 1;	
			else _snapX = _entityCheck.bbox_left - 1;
			x = _snapX;
			// hSpeed = 0 to stop player when colliding
			hSpeed = 0;
			// and change collision status to true
			_collision = true;
			_entityCount = 0;
		}
		
		ds_list_delete(_entityList, 0);
		_entityCount--;
	}
	
	x += hSpeed;
	
	// Clear list between axis
	ds_list_clear(_entityList);
	
	// Vertical Tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + vSpeed)) {
		// 16 is the pixel size of the tilemap
		y -= y mod 16;
		
		if (sign(vSpeed) == 1){
			y += TILE_SIZE - 1;
		}
		vSpeed = 0;
		_collision = true;
	}
	
	// Vertical entities
	var _entityCount = instance_position_list(x, y + vSpeed, pEntity, _entityList, false);
	// Boundary
	var _snapY;
	while (_entityCount > 0){
		// code below same as ds_list_find_value(_entityList, 0)
		var _entityCheck = _entityList[| 0];
		if (_entityCheck.entityCollision == true) {
			// Move as close as we can
			// if we move to left
			if (sign(vSpeed) == -1) _snapY = _entityCheck.bbox_bottom + 1;	
			else _snapY = _entityCheck.bbox_top - 1;
			y = _snapY;
			vSpeed = 0;
			_collision = true;
			_entityCount = 0;
		}
		
		ds_list_delete(_entityList, 0);
		_entityCount--;
	}
	
	y += vSpeed;
	
	// destroy entity data structure
	ds_list_destroy(_entityList);
	
	return _collision;
}