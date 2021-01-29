if (place_meeting(x, y, oPlayer) && oPlayer.keyItemInventory){
	if(ds_list_size(oPlayer.inventory) == 0){
		ds_list_add(oPlayer.inventory, other.item);
		show_debug_message(string(other.item));
		instance_destroy(other);	
	}
}