// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @desc NineSliceBoxStrecthed(sprite, x1, y1, x2, y2)
/// @arg sprite
/// @arg x1 left
/// @arg y1 top
/// @arg x2 right
/// @arg y2 bottom
/// @arg index image index
function NineSliceBoxStrecthed(_sprite, _x1, _y1, _x2, _y2, _index){
	var _size = sprite_get_width(_sprite) / 3;
	var _w = _x2 - _x1;
	var _h = _y2 - _y1;
	
	// Middle
	draw_sprite_part_ext(_sprite, _index, _size, _size, 1, 1, _x1 + _size, _y1 + _size, _w - (_size * 2), _h - (_size * 2), c_white, 1);
	
	// Corners
	// top left
	draw_sprite_part(_sprite, _index, 0, 0, _size, _size, _x1, _y1);
	// top right
	draw_sprite_part(_sprite, _index, _size * 2, 0, _size, _size, _x1 + _w - _size, _y1);
	// bottom left
	draw_sprite_part(_sprite, _index, 0, _size * 2, _size, _size, _x1, _y1 + _h - _size);
	// bottom right
	draw_sprite_part(_sprite, _index, _size * 2, _size * 2, _size, _size, _x1 + _w - _size, _y1 + _h - _size);
	
	// Edges
	// left edge
	draw_sprite_part_ext(_sprite, _index, 0, _size, _size, 1, _x1, _y1 + _size, 1, _h-(_size * 2), c_white, 1);
	// right edge
	draw_sprite_part_ext(_sprite, _index, _size * 2, _size, _size, 1, _x1 + _w - _size, _y1 + _size, 1, _h - (_size * 2), c_white, 1);
	// top edge
	draw_sprite_part_ext(_sprite, _index, _size, 0, 1, _size, _x1 + _size, _y1, _w - (_size * 2), 1, c_white, 1);
	// bottom edge
	draw_sprite_part_ext(_sprite, _index, _size, _size * 2, 1, _size, _x1 + _size, _y1 + _h - (_size), _w - (_size * 2), 1, c_white, 1);
}