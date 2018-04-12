obj_gui_control.settings = true;
var cgh = camera_get_view_height(view_camera[0]);
var cgx = camera_get_view_x(view_camera[0]);
var cgw = camera_get_view_width(view_camera[0]);
var cgy = camera_get_view_y(view_camera[0]);

instance_create_layer(cgx+(cgw)/1.12,cgy +cgh/100, "GUI_market", obj_home_button);

//instance_create_layer(cgx+(cgw)/1.12,cgy +cgh/100, "GUI_market", obj_home_button);

instance_create_layer(cgx+(cgw)*.43,cgy +cgh/2.7, "GUI_market", obj_music_control);


instance_create_layer(cgx+(cgw)*.57,obj_music_control.y, "GUI_market", obj_music_control1);

	
instance_create_layer(cgx+(cgw)*.43,cgy +cgh/1.45, "GUI_market", obj_fx_control);


instance_create_layer(cgx+(cgw)*.57,obj_fx_control.y, "GUI_market", obj_fx_control1);




obj_gui_control.market_store = true;
instance_destroy (obj_play_button);
instance_destroy (obj_settings);
instance_destroy (self);