// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_for_player(){
//check if the player is close enough 

if obj_player.state ==states.DEAD exit;

var _dis =distance_to_object(obj_player);

//can we start chasing? or we are alredy alert and out of attack
if(( _dis <= alert_dis) or alert )and _dis > attack_dis{
	
// enemy is now alert
alert= true;

//should we calc our path?
if calc_path_timer --<=0{
//reset timer
calc_path_timer =calc_path_delay;

// make a path to the player

if x==xp and y==yp var _type =0 else var _type =1;
var _found_player =mp_grid_path( global.mp_grid,path,x,y,obj_player.x, obj_player.y,_type);


// start path if we can reach the player
if _found_player {
path_start(path,move_spd, path_action_stop,false);	
}

}
}else {
	//are we close enough to attack?
	if _dis <= attack_dis{
	path_end();	
	state=states.ATTACK;
	}
}
}

function calc_entity_movement(){
	
	//apply movement 
	x+=hsp;
	y+=vsp;
	
	//slowdown 
	hsp *=global.drag;
	vsp *=global.drag;
	
	check_if_stopped();
	
}
function calc_knockback_event(){
	
//apply movement 
x+= hsp;
y+=vsp;

//slow down 
hsp *=0.91;
vsp *=0.91;

	
check_if_stopped();

//exit state
if knockback_time <=0 state =states.IDLE;

	
}

function check_facing(){
	//check which ay we are moving 
	if knockback_time <=0{
	var _facing=sign(x-xp);
	if _facing !=0 facing= _facing;
	}
}

function enemy_anim(){
switch(state){
case states.IDLE:	
sprite_index=spr_idle;
show_hurt();
break;

case states.MOVE:	
sprite_index=spr_walk;
show_hurt();
break;

case states.KNOCKBACK:	
show_hurt();
break;

case states.ATTACK:	
sprite_index=spr_attack;
break;

case states.DEAD:	
sprite_index=spr_dead;
break;
	
}
//set depth
depth=-bbox_bottom;
// update previous position
xp=x;
yp=y;


}

function perform_attack(){
	if image_index >= attack_frame and can_attack{
		can_attack=false;
		alarm[0] =attack_cooldown;
		
		var _dir =point_direction(x,y,obj_player.x,obj_player.y);
		
		var _xx = x+ lengthdir_x(attack_dis, _dir);
			var _yy = y+ lengthdir_y(attack_dis, _dir);
		
		var _inst = instance_create_layer(_xx,_yy,"Instances",obj_enemy_hitbox);
		_inst.owner_id =id;
		_inst.damage =damage;
		_inst.knockback_time =knockback_time;
		
		
		
		
	}
}

//attacks player when we are at the correct facing direction 
function show_hurt(){
	
	
	if knockback_time -- > 0 sprite_index=spr_hurt;
	
	
	
	
}















