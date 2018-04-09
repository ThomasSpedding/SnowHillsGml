instance_create_layer(camera_get_view_width(view_camera[0])/2,
camera_get_view_height(view_camera[0])/3, "GUI_market", obj_home_button);

instance_create_layer(camera_get_view_width(view_camera[0])/2,
camera_get_view_height(view_camera[0])/3, "GUI_market", obj_mouseSlow);

instance_create_layer(camera_get_view_width(view_camera[0])/2,
camera_get_view_height(view_camera[0])/3, "GUI_market", obj_mouseFast);

instance_create_layer(camera_get_view_width(view_camera[0])/2,
camera_get_view_height(view_camera[0]) *.7, "GUI_market", obj_frame);



obj_gui_control.market_store = true;
instance_destroy (obj_play_button);
instance_destroy (obj_settings);
//instance_destroy (obj_frame);
//instance_destroy (obj_mouseSlow);
//instance_destroy (obj_mouseFast);
instance_destroy (self);