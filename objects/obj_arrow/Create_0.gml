/// @description Insert description here
// You can write your code in this editor

damage=5;
range=160;
owner_id =noone;
knockback_time=1;


function arrow_die() {
	//when the arrow is destroyed
	
	speed=0;
	instance_change(obj_arrow_explode, false);
	audio_play_sound(snd_bullet_hit,0,false);
}



