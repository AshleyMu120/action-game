/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5B327825
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)$(13_10)event_inherited();$(13_10)walk_spd=1.5;$(13_10)hp_max=13;$(13_10)hp=hp_max;$(13_10)$(13_10)//bow$(13_10)aim_dir=0;$(13_10)bow_dis=11;$(13_10)fire_rate=30;$(13_10)can_attack = true;$(13_10)arrow_speed =8;$(13_10)$(13_10)my_bow =instance_create_layer (x,y,"Instances",obj_bow);$(13_10)$(13_10)cursor_sprite=spr_cursor;$(13_10)window_set_cursor(cr_none);$(13_10)ready_to_restart=false;$(13_10)$(13_10)hit_pause_duration = 30; // Adjust the duration of pause as needed$(13_10)hit_pause_timer = 0;$(13_10)hit_pause_active = false;$(13_10)$(13_10)global.player_x = x;$(13_10)global.player_y = y;$(13_10)$(13_10)//dash$(13_10)dash_spd=4$(13_10)dash_arr=[];$(13_10)can_dash=true;$(13_10)dash_cooldown=120;$(13_10)dash_timer_initial=15;$(13_10)dash_timer=dash_timer_initial;"
/// @description Insert description here
// You can write your code in this editor

event_inherited();
walk_spd=1.5;
hp_max=13;
hp=hp_max;

//bow
aim_dir=0;
bow_dis=11;
fire_rate=30;
can_attack = true;
arrow_speed =8;

my_bow =instance_create_layer (x,y,"Instances",obj_bow);

cursor_sprite=spr_cursor;
window_set_cursor(cr_none);
ready_to_restart=false;

hit_pause_duration = 30; // Adjust the duration of pause as needed
hit_pause_timer = 0;
hit_pause_active = false;

global.player_x = x;
global.player_y = y;

//dash
dash_spd=4
dash_arr=[];
can_dash=true;
dash_cooldown=120;
dash_timer_initial=15;
dash_timer=dash_timer_initial;