/// @description Insert description here
// You can write your code in this editor
/*
if (x<0) x=0; //stop and won't go any futher left side
if(x+camera_get_view_width(view_camera[0])>room_width) 
{
	x=room_width -camera_get_view_width(view_camera[0]); 

}



*/

x= global.player_x+(mouse_x - global.player_x) * 0.25;
y=global.player_y + (mouse_y-global.player_y) * 0.25;
global.camera_x = x;
global.camera_y= y;

