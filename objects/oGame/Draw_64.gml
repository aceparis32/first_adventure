/// @description Insert description here
// You can write your code in this editor
// Draw inventory contents
for (var i = 0; i < ds_list_size(global.inv); i++){
	var arr = global.inv[| i];
	
	var item = arr[0];
	var count = arr[1];
	
	draw_sprite(itemSprite[item], 0, 16, 64 + 20*i);
	draw_set_font(fTextSmall);
	draw_text(32, 64 + 10 * i, count);
}

draw_set_font(fText);
draw_text(32, RESOLUTION_H - 10, string("Dash Cooldown : " + string(oPlayer.dashCooldown / 60) + " seconds"));
