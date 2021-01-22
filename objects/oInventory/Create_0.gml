// to make in front of oGame object so the inventory is in front of another object
depth = -1;
// this is the viewport size divided by camera size
scale = 4;
// to show inventory
showInventory = false;

// to get viewport width
guiWidth = 1280;
// to get viewport height
guiHeight = 720;

// get the cell size of the sprite
cellSize = 16;

// to take x position when crop a sprite
invUIWidth = 160;
// to take y position when crop a sprite
invUIHeight = 95;

// inventory sprite
sprInvUI = sInventoryUI;

// To create x position when drawing object
invUIx = (guiWidth * 0.25 * 0.25);
// To create y position when drawing object
invUIy = (guiHeight * 0.25 * 0.25);

infoX = invUIx + 32;
infoY = invUIy + 3;
show_debug_message("Info X: " + string(infoX));
show_debug_message("Info Y: " + string(infoY));
// Player Info
// 0 = Gold
// 1 = Silver
// 2 = Bronze
// 3 = Name
dsPlayerInfo = ds_grid_create(2, 4);
dsPlayerInfo[# 0, 0] = "Gold";
dsPlayerInfo[# 0, 1] = "Silver";
dsPlayerInfo[# 0, 2] = "Bronze";
dsPlayerInfo[# 0, 3] = "Name";

dsPlayerInfo[# 1, 0] = irandom_range(0, 99);
dsPlayerInfo[# 1, 1] = irandom_range(0, 99);
dsPlayerInfo[# 1, 2] = irandom_range(0, 99);
dsPlayerInfo[# 1, 3] = "Acep";