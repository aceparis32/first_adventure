// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateAttack(){
	script_execute(stateAttack);
}

function AttackSlash(){
	// Attack start
	if(sprite_index != sPlayerAttackSlash){
		// Set up correct animation
		sprite_index = sPlayerAttackSlash;
		localFrame = 0;
		image_index = 0;
		
		// Clear hit list
		if(!ds_exists(hitByAttack, ds_type_list)){
			hitByAttack = ds_list_create();
		}
		ds_list_clear(hitByAttack);
	}
	
	CalcAttack(sPlayerAttackSlashHB)
	
	// Update sprite
	PlayerAnimateSprite();
	
	// When animation end, change state to free again
	if (animationEnd){
		state = PlayerStateFree;
		animationEnd = false;
	}
}

function AttackSpin(){
	
}

function CalcAttack(_playerHB){
	mask_index = _playerHB;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,pEntity,hitByAttackNow,false);
	
	if(hits > 0){
		for (var i=0;i < hits;i++){
			// if this instance has not yet been hit by this attack, hit it
			var hitID = hitByAttackNow[| i];
			if (ds_list_find_index(hitByAttack, hitID) == -1){
				ds_list_add(hitByAttack, hitID);
				with(hitID){
					image_blend = c_red;	
				}
			}
		}
	}
	ds_list_destroy(hitByAttackNow);
	mask_index = sPlayer;
}