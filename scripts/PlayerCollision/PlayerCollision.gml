// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerCollision(){
	var _collision = false;
	
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
	
	x += hSpeed;
	
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
	
	y += vSpeed;
	
	//if (hSpeed != 0){
	//	show_debug_message(sign(hSpeed));
	//}
	
	//if (vSpeed != 0){
	//	show_debug_message(vSpeed);
	//}
	
	return _collision;
}