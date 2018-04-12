
//var stuff = layer_get_id("main_background");

var lay_id = layer_get_id("main_background");
var back_id = layer_background_get_id(lay_id);

var lay_id1 = layer_get_id("Backgrounds_3");
var back_id1 = layer_background_get_id(lay_id1);

var lay_id2 = layer_get_id("Backgrounds_1");
var back_id2 = layer_background_get_id(lay_id2);

var lay_id3 = layer_get_id("Backgrounds_5");
var back_id3 = layer_background_get_id(lay_id3);

//var lay_id4 = layer_get_id("Backgrounds_4");
//var back_id4 = layer_background_get_id(lay_id4);

var lay_id5 = layer_get_id("Backgrounds_2");
var back_id5 = layer_background_get_id(lay_id5);

layer_background_sprite(back_id, spr_bg_9);


layer_background_sprite(back_id1, spr_bg_7);


layer_background_sprite(back_id2, spr_bg_2);


layer_background_sprite(back_id3, spr_bg_7);


//layer_background_sprite(back_id4, spr_bg_17);


layer_background_sprite(back_id5, spr_bg_8);

var whatever =  sprite_get_height(spr_bg_9)-camera_get_view_height(view_camera[0]);
layer_y(lay_id,camera_get_view_y(view_camera[0]) - (whatever-100));  