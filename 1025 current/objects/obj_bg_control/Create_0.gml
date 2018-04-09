/// @description Insert description here
// You can write your code in this editor
 layer_id0 = layer_get_id("main_background");
 //layer_id1 = layer_get_id("Backgrounds_1");




//var layer_id4 = layer_get_id("Backgrounds_4");
//var layer_id3 = layer_get_id("Backgrounds_3");
//var layer_id2 = layer_get_id("Backgrounds_2");
//var layer_id1 = layer_get_id("Backgrounds_1");

var whatever =  sprite_get_height(spr_bg_1)-camera_get_view_height(view_camera[0]);
layer_y(layer_id0,camera_get_view_y(view_camera[0]) - (whatever-100));  

//var whatever1 =  sprite_get_height(spr_bg_1)-camera_get_view_height(view_camera[0]);
//layer_y(layer_id1,camera_get_view_y(view_camera[0]) - (whatever1));  