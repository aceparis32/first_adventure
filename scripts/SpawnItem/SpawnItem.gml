// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnItem(_x, _y, _item){
	// spawn
	var inst = instance_create_layer(_x, _y, "Instances", oItem);
	inst.itemType = _item;
	
	// sprite
	inst.sprite_index = oGame.itemSprite[_item];
}

function ItemPos(_item){
	for (var i=0; i < ds_list_size(global.inv); i++){
		var arr = global.inv[| i];
		
		if (arr[0] == _item){
			return i;	
		}
	}
	
	return -1;
}