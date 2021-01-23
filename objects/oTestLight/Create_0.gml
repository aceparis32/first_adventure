/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
//light[| eLight.LutIntensity] = 0.3;
light[| eLight.ShadowLength] = 1000;
var _lightComponent = light[| eLight.ShadowLength]
show_debug_message("Light : " + string(_lightComponent));