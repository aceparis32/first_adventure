// GET PLAYER INPUT
// if u want to use alphabet keys / symbol, u can create variable like this
// keyOther = keyboard_check(ord("A"));
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
keyActivate = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);
keyItemInventory = keyboard_check_pressed(ord("E"));
keyDash = keyboard_check_pressed(ord("V"));
// This is the example to use mouse click button
// keyHighAttack = mouse_check_button_pressed(mb_left);

inputDirection = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

if (!global.gamePaused) {
	script_execute(state);	
}

if(keyDash && dashCooldown <= 0){
	dashCooldown = 3 * 60;
}

if(dashCooldown > 0){
	dashCooldown--;	
}

depth = -bbox_bottom;