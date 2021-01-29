/// @description Insert description here
// You can write your code in this editor
// collect
if (place_meeting(x, y, oPlayer)){
	instance_destroy();
	
	// Increase count
	var itemPos = ItemPos(itemType);
	if (itemPos == -1) {
		ds_list_add(global.inv, [itemType, 1]);	
	}else{
		var arr = global.inv[| itemPos];
		arr[@ 1]++;
	}
}