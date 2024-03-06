/// @description Insert description here
// You can write your code in this editor


//draw_sprite_ext(sprite_index,image_index,x,y,facing ,1,0,c_white,1);
//show_healthbar();

//draw the dash anim
var _size=array_length(dash_arr);
for (var i= _size -1; i>=0; i--) {
dash_arr[i].image_alpha-=0.05;
if dash_arr[i].image_alpha > 0{
	draw_sprite_ext(spr_dash,0,
	dash_arr[i].x,
	dash_arr[i].y,
	facing,1,0,c_white,dash_arr[i].image_alpha);
}else array_delete(dash_arr,i,1);
	
}


if (alarm[HURT] > 0 and flash--<flash_initial/2) or show_flash-->0{
	
	//draw white sprite
	gpu_set_fog(1,c_white,0,1);
	draw_sprite_ext(sprite_index,image_index,x,y,facing,1,1,c_white,1)
	gpu_set_fog(0,c_white,0,1);
	
	//reset flash
	if flash <=0 flash=flash_initial;
	
}else{
	
	draw_sprite_ext(sprite_index,image_index,x,y,facing,1,1,c_white,1)
	
}

show_healthbar();

