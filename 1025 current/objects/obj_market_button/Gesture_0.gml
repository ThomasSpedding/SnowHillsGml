instance_create_layer(camera_get_view_width(view_camera[0])/2,
camera_get_view_height(view_camera[0])/2, "GUI_market", obj_home_button);


obj_gui_control.market_store = true;
instance_destroy (obj_play_button);
instance_destroy (obj_settings);
instance_destroy (self);