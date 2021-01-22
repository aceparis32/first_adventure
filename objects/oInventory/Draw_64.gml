if(!showInventory){
	exit;	
}

// Inventory Back
// Scale by 1 because the sprite is too big for this game
draw_sprite_part_ext(sprInvUI, 0, cellSize, 0, invUIWidth, 
invUIHeight, invUIx, invUIy, 1, 1, c_white, 1);

// Player Info
var infoGrid = dsPlayerInfo;
draw_set_font(fNameText);
var c = c_black;
draw_text_color(infoX, infoY, infoGrid[# 0, 3] + ":" + infoGrid[# 1, 3], c,c,c,c,1);

draw_set_font(fTextSmall);
var yy = 0;
repeat(3){
	draw_text_color(infoX + 70 + ((16) * yy),
	infoY,
	string(infoGrid[# 1, yy]),
	c,c,c,c,1);
	
	yy++;
}