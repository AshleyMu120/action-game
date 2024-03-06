/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2AA25AE9
/// @DnDArgument : "code" "// Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information$(13_10)$(13_10)function reset_variables(){$(13_10)	left=0;$(13_10)	right=0;$(13_10)	up=0;$(13_10)	down=0;$(13_10)	vmove=0;$(13_10)	hmove=0;$(13_10)	dash=false;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)function get_input(){$(13_10)	$(13_10)if keyboard_check(ord("A")) left=1;$(13_10)	if(x<(obj_camera.x+obj_camera.view_width)-(60+sprite_width)) obj_camera.x -=walk_spd;$(13_10)if $(13_10)keyboard_check(ord("D")) right=1;	$(13_10)   if (x>obj_camera.x+60) obj_camera.x +=walk_spd; $(13_10)$(13_10)if keyboard_check(ord("W")) up=1;	$(13_10)if(y<(obj_camera.y+obj_camera.view_width)-(60+sprite_width)) obj_camera.y -=walk_spd; $(13_10)$(13_10)if keyboard_check(ord("S")) down=1;	$(13_10)	 if (y>obj_camera.y+60) obj_camera.y +=walk_spd;$(13_10)	$(13_10)	if keyboard_check_pressed(vk_space)dash=true;$(13_10)}$(13_10)$(13_10)function calc_movement() {$(13_10)	$(13_10)hmove=right-left;  //negative to the left$(13_10)vmove=down-up;$(13_10)$(13_10)var _facing= (aim_dir < 90 or aim_dir > 270);$(13_10)if _facing ==0 _facing=-1;$(13_10)facing = _facing;$(13_10)$(13_10)if hmove !=0 or vmove !=0{$(13_10)//get direction we are moving$(13_10)var _dir= point_direction(0,0, hmove,vmove);$(13_10)$(13_10)$(13_10)hmove =lengthdir_x(walk_spd,_dir);$(13_10)vmove =lengthdir_y(walk_spd,_dir);$(13_10)$(13_10)//add movement to players movement$(13_10)x+=hmove;$(13_10)y+= vmove;$(13_10)$(13_10)}$(13_10)$(13_10)//apply knockback movement $(13_10)x+= hsp;$(13_10)y+=vsp;$(13_10)$(13_10)//apply drag to knockback$(13_10)switch(state){$(13_10)	default: var _drag=0.15; break;$(13_10)	case states.DEAD: var _drag =0.08;break;$(13_10)}$(13_10)hsp=lerp(hsp,0,0.15);$(13_10)vsp=lerp(vsp,0,0.15);$(13_10)}$(13_10)$(13_10)function aim_bow(){$(13_10)	$(13_10)	aim_dir=point_direction(x,y,mouse_x,mouse_y);$(13_10)	$(13_10)my_bow.image_angle =aim_dir;$(13_10)}$(13_10)$(13_10)function collision () {$(13_10)	// set target values$(13_10)	var _tx=x;$(13_10)	var _ty=y;$(13_10)	$(13_10)	// moveback to last step position $(13_10)	x=xprevious;$(13_10)	y=yprevious;$(13_10)	$(13_10)	//get distance we want to move$(13_10)	var _disx=abs(_ty-x);$(13_10)	var _disy=abs(_ty-y);$(13_10)	$(13_10)	//move as far as in x and y before hitting the solid$(13_10)	$(13_10)	repeat(_disx) {$(13_10)	 if !place_meeting(x+ sign(_tx-x),y,obj_solid) x+= sign(_tx -x);$(13_10)	$(13_10)	}$(13_10)	repeat(_disy) {$(13_10)	 if !place_meeting(x, y+ sign(_ty-y),obj_solid) y+= sign(_ty -y);$(13_10)}$(13_10)	$(13_10)	$(13_10)	$(13_10)}$(13_10)$(13_10)function anim() {$(13_10)	$(13_10)	switch(state){$(13_10)		default:$(13_10)	if hmove !=0 or vmove !=0{$(13_10)	sprite_index =spr_player_walk;	$(13_10)	}else {$(13_10)	sprite_index = spr_player_idle;	$(13_10)	}$(13_10)	break;$(13_10)	case states.DEAD:$(13_10)	sprite_index = spr_player_dead;$(13_10)	break;$(13_10)	}$(13_10)}$(13_10)$(13_10)function check_fire(){$(13_10)	if mouse_check_button(mb_left){$(13_10)	if can_attack{$(13_10)		can_attack =false;$(13_10)		alarm [0] =fire_rate;$(13_10)		$(13_10)		var _dir =point_direction (x,y,mouse_x, mouse_y);$(13_10)		$(13_10)	var _inst= instance_create_layer(x,y,"Arrow",obj_arrow);$(13_10)	with( _inst) {$(13_10)		speed =other.arrow_speed;$(13_10)		direction = _dir;$(13_10)		image_angle = _dir;$(13_10)		owner_id =other;$(13_10)	audio_play_sound(snd_arrow,0,false);$(13_10)	}$(13_10)		global.shake();$(13_10)	}$(13_10)	$(13_10)	$(13_10)}$(13_10)}$(13_10)$(13_10)$(13_10)function check_dash(){$(13_10)	if dash and can_dash{$(13_10)		state=states.DASH;$(13_10)		dash_timer =dash_timer_initial;$(13_10)		//GET THE DIRECTION AND DISTANCE WE ARE MOVING$(13_10)var _dir=point_direction(0,0,hmove,vmove);$(13_10)hsp=lengthdir_x(dash_spd, _dir);$(13_10)vsp=lengthdir_y(dash_spd, _dir);$(13_10)dash_arr=[];$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function reset_variables(){
	left=0;
	right=0;
	up=0;
	down=0;
	vmove=0;
	hmove=0;
	dash=false;
}



function get_input(){
	
if keyboard_check(ord("A")) left=1;
	if(x<(obj_camera.x+obj_camera.view_width)-(60+sprite_width)) obj_camera.x -=walk_spd;
if 
keyboard_check(ord("D")) right=1;	
   if (x>obj_camera.x+60) obj_camera.x +=walk_spd; 

if keyboard_check(ord("W")) up=1;	
if(y<(obj_camera.y+obj_camera.view_width)-(60+sprite_width)) obj_camera.y -=walk_spd; 

if keyboard_check(ord("S")) down=1;	
	 if (y>obj_camera.y+60) obj_camera.y +=walk_spd;
	
	if keyboard_check_pressed(vk_space)dash=true;
}

function calc_movement() {
	
hmove=right-left;  //negative to the left
vmove=down-up;

var _facing= (aim_dir < 90 or aim_dir > 270);
if _facing ==0 _facing=-1;
facing = _facing;

if hmove !=0 or vmove !=0{
//get direction we are moving
var _dir= point_direction(0,0, hmove,vmove);


hmove =lengthdir_x(walk_spd,_dir);
vmove =lengthdir_y(walk_spd,_dir);

//add movement to players movement
x+=hmove;
y+= vmove;

}

//apply knockback movement 
x+= hsp;
y+=vsp;

//apply drag to knockback
switch(state){
	default: var _drag=0.15; break;
	case states.DEAD: var _drag =0.08;break;
}
hsp=lerp(hsp,0,0.15);
vsp=lerp(vsp,0,0.15);
}

function aim_bow(){
	
	aim_dir=point_direction(x,y,mouse_x,mouse_y);
	
my_bow.image_angle =aim_dir;
}

function collision () {
	// set target values
	var _tx=x;
	var _ty=y;
	
	// moveback to last step position 
	x=xprevious;
	y=yprevious;
	
	//get distance we want to move
	var _disx=abs(_ty-x);
	var _disy=abs(_ty-y);
	
	//move as far as in x and y before hitting the solid
	
	repeat(_disx) {
	 if !place_meeting(x+ sign(_tx-x),y,obj_solid) x+= sign(_tx -x);
	
	}
	repeat(_disy) {
	 if !place_meeting(x, y+ sign(_ty-y),obj_solid) y+= sign(_ty -y);
}
	
	
	
}

function anim() {
	
	switch(state){
		default:
	if hmove !=0 or vmove !=0{
	sprite_index =spr_player_walk;	
	}else {
	sprite_index = spr_player_idle;	
	}
	break;
	case states.DEAD:
	sprite_index = spr_player_dead;
	break;
	}
}

function check_fire(){
	if mouse_check_button(mb_left){
	if can_attack{
		can_attack =false;
		alarm [0] =fire_rate;
		
		var _dir =point_direction (x,y,mouse_x, mouse_y);
		
	var _inst= instance_create_layer(x,y,"Arrow",obj_arrow);
	with( _inst) {
		speed =other.arrow_speed;
		direction = _dir;
		image_angle = _dir;
		owner_id =other;
	audio_play_sound(snd_arrow,0,false);
	}
		global.shake();
	}
	
	
}
}


function check_dash(){
	if dash and can_dash{
		state=states.DASH;
		dash_timer =dash_timer_initial;
		//GET THE DIRECTION AND DISTANCE WE ARE MOVING
var _dir=point_direction(0,0,hmove,vmove);
hsp=lengthdir_x(dash_spd, _dir);
vsp=lengthdir_y(dash_spd, _dir);
dash_arr=[];
	}
}