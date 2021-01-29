// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ItemClasses(){

}

// main constructor
function Item() constructor {
	name = "";
	price = 0;
	attackPower = 1;
}

// constructor who inheriting from Item class
// can add more variable
function Potion() : Item() constructor {
	attackPower = -1;
	
	hpAdd = 0;
	staminaAdd = 0;
}