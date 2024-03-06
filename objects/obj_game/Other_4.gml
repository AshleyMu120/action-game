/// @description Insert description here
// You can write your code in this editor

//set grid / tile size

#macro TS     16


//GET TILES IN ROOM 
var _w =ceil(room_width / TS);
var _h =ceil(room_height /TS);

// create motion planning grid
global.mp_grid =mp_grid_create(0,0,_w,_h,TS,TS);

// add solid instances yo grid
mp_grid_add_instances(global.mp_grid, obj_solid,false);

