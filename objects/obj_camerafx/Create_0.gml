/// @description Insert description here
// You can write your code in this editor
does_sleep = false
global.does_sleep = does_sleep;
global.shaker=self;
shaketime =0;
shakeamount=6;

function sleep()
{
	
game_set_speed(12,gamespeed_fps)
alarm_set(0,1)
}
view_width=camera_get_view_width(view_camera[0]);
view_height=camera_get_view_height(view_camera[0]);

global.shake = function (){
	shaketime = shakeamount;
}