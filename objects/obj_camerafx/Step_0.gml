/// @description Insert description here
// You can write your code in this editor


var target_x =global.camera_x;
var target_y = global.camera_y;

if (shaketime > 6)
shaketime=6;

if (shaketime > 0)
{
shaketime--;

r=shaketime/6

target_x += random_range(-shakeamount * r, shakeamount* r);
	
target_y += random_range(-shakeamount * r, shakeamount* r);
	
	
}

x=lerp(x,target_x,1);
y=lerp(y,target_y,1);



camera_set_view_pos(view_camera[0], x - view_width/2, y - view_height/2)

show_debug_message(x);
show_debug_message(y);
