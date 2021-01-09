// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @function ScreenShake(_magnitudeShake, _frameShake)
/// @param {real} _magnitudeShake
/// @param {real} _frameShake

function ScreenShake(_magnitudeShake, _frameShake){
	with (global.iCamera){
		show_debug_message("Shake Remain : " + string(shakeRemain));
		if(_magnitudeShake > shakeRemain){
			shakeMagnitude = _magnitudeShake;
			shakeRemain = shakeMagnitude;
			shakeLength = _frameShake;
		}
	}
}