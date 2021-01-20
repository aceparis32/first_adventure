/// @desc move light within player object
light[| eLight.X] = oPlayer.x;
light[| eLight.Y] = oPlayer.y;

var _lightShadowLength = light[| eLight.ShadowLength];

if(keyboard_check_pressed(vk_f1)){
	//show_debug_message("Default light shadow length : " + _lightShadowLength);
	//show_debug_message("Default light color : " + light[| eLight.Color]);
	//show_debug_message("Default light range : " + light[| eLight.Range]);
	//show_debug_message("Default light intensity : " + light[| eLight.Intensity]);
}