instance_create_layer(camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0]))/1.12,
camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])/100), "GUI_market", obj_home_when_dead);
instance_destroy(oBird);
instance_destroy(oControl);
instance_deactivate_layer("Play_layer");
instance_create_layer(camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0]))/2,
camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])/2), "GUI_market", obj_restart_button);
