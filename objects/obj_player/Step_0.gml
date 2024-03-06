/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C5CB485
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)switch(state) {$(13_10)	default:$(13_10)$(13_10)reset_variables();$(13_10)$(13_10)$(13_10)get_input();$(13_10)$(13_10)calc_movement();$(13_10)$(13_10)aim_bow();$(13_10)$(13_10)check_dash();$(13_10)$(13_10)check_fire();$(13_10)$(13_10)anim();$(13_10)$(13_10)break;$(13_10)$(13_10)case states.DASH:$(13_10)reset_variables();$(13_10)array_push(dash_arr,{x:x,y:y,image_alpha:0.75});$(13_10)x+=hsp;$(13_10)y+=vsp;$(13_10)if dash_timer --<=0{$(13_10)	state =states.MOVE;$(13_10)	hsp=0;$(13_10)	vsp=0;$(13_10)	can_dash =false;$(13_10)	alarm[CAN_DASH]=dash_cooldown;$(13_10)	image_index=0;$(13_10)}$(13_10)aim_bow();$(13_10)anim();$(13_10)break;$(13_10)$(13_10)$(13_10)case states.KNOCKBACK:$(13_10)reset_variables();$(13_10)calc_movement();$(13_10)aim_bow();$(13_10)if knockback_time-- <=0 state =states.IDLE;$(13_10)audio_play_sound(snd_break,0,false);$(13_10)anim();$(13_10)break;$(13_10)$(13_10)$(13_10)case states.DEAD:$(13_10)reset_variables();$(13_10)$(13_10)calc_movement();$(13_10)$(13_10)if ready_to_restart and mouse_check_button_pressed(mb_left) game_restart()$(13_10)$(13_10)anim();$(13_10)break;$(13_10)}$(13_10)$(13_10)$(13_10)global.player_x = x;$(13_10)global.player_y = y;"
/// @description Insert description here
// You can write your code in this editor
switch(state) {
	default:

reset_variables();


get_input();

calc_movement();

aim_bow();

check_dash();

check_fire();

anim();

break;

case states.DASH:
reset_variables();
array_push(dash_arr,{x:x,y:y,image_alpha:0.75});
x+=hsp;
y+=vsp;
if dash_timer --<=0{
	state =states.MOVE;
	hsp=0;
	vsp=0;
	can_dash =false;
	alarm[CAN_DASH]=dash_cooldown;
	image_index=0;
}
aim_bow();
anim();
break;


case states.KNOCKBACK:
reset_variables();
calc_movement();
aim_bow();
if knockback_time-- <=0 state =states.IDLE;
audio_play_sound(snd_break,0,false);
anim();
break;


case states.DEAD:
reset_variables();

calc_movement();

if ready_to_restart and mouse_check_button_pressed(mb_left) game_restart()

anim();
break;
}


global.player_x = x;
global.player_y = y;