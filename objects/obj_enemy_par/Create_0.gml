/// @description Insert description here
// You can write your code in this editor

hp_max =15;
hp=hp_max;
event_inherited();
// when we chase the player
alert= false;
//distance we can chase the player
alert_dis =160;
//set distance we stop from the player
attack_dis =12;

//frame that perform attack
attack_frame=1;
//can we attack?
can_attack=true;
//attack_delay
attack_cooldown=75;
//how much damage we deal
damage=2;
//how long we knockback player for
knockback_time=10;

//create path resources 
path=path_add();
//speed we chase player
move_spd =1;
// set delay for calculating path
calc_path_delay =30;
//timer
calc_path_timer = irandom(60);


