/// @description Insert description here
playedd = true;
market_store = false;
death = false;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> parent of 8ef1e51... stuff my friend
settings = false;
=======
scoreee = 0;
highScore = 0;
>>>>>>> origin/Alex-v3
<<<<<<< HEAD
=======

>>>>>>> parent of b52e708... Merge branch 'tom-v2'
=======
settings = false;
>>>>>>> parent of 05a3646... Merge remote-tracking branch 'origin/Alex-v3' into tom-v2
=======
>>>>>>> parent of 8ef1e51... stuff my friend

if (playedd = true) and (market_store = false) and (death = false){			
instance_create_layer(camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0]))/2, camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])/3),"GUI_layer", obj_play_button) ;
instance_create_layer(camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0]))/2, camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])/1.5), "GUI_layer", obj_market_button );
instance_create_layer(camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0]))/1.1, camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])/100), "GUI_layer", obj_settings);
} else if (playedd = false) and (!instance_exists(oControl))
{
	instance_create_layer(250, 250,"Play_layer", oControl);

}

if (death = true)
{
part_emitter_destroy_all(part1_sys);
instance_create_layer(camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0])/2),
camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])/2), "GUI_market", obj_home_when_dead);
instance_destroy(oBird);
instance_destroy(oControl);
instance_deactivate_layer("Play_layer")
}
alarm[0] = 6;

window_set_fullscreen(true);

