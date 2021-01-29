 /// @desc Initialise & Globals
randomize();
global.gamePaused = false;
global.textSpeed = .75;
global.iCamera = instance_create_layer(0, 0, layer, oCamera);
// This var resize the surface
// so when we draw something, it will use args resolution (width = RESOLUTION_W, height = RESOLUTION_H)
surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);
room_goto(ROOM_START);

// Inventory
global.inv = ds_list_create();

// Items
enum item {
	coin	
}

itemSprite[item.coin] = sCoins;