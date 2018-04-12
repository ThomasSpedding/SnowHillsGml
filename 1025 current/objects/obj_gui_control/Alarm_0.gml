/// @description Insert description here
// You can write your code in this editor
if (playedd = true) and (market_store = false) and (death = false) and (!instance_exists(obj_play_button)){			
instance_create_layer(camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0]))/2, camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])/2),"GUI_layer", obj_play_button) ;
instance_create_layer(camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0]))/2, camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])/2)+80, "GUI_layer", obj_market_button );
instance_create_layer(camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0]))/5, camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])/2)+200, "GUI_layer", obj_settings);
} else if (playedd = false) and (!instance_exists(oControl))
{
	instance_create_layer(250, 250,"Play_layer", oControl);

}

if (death = true)
{
<<<<<<< HEAD
<<<<<<< HEAD
instance_create_layer(camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0])/2),
camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])/2), "GUI_market", obj_home_when_dead);
instance_destroy(oBird);
instance_destroy(oControl);
instance_deactivate_layer("Play_layer")
=======
	if (highScore < scoreee)
	{
		highScore = scoreee;
	}	
=======
>>>>>>> parent of b52e708... Merge branch 'tom-v2'
	scr_save();
	if (instance_exists(oBird))
	{
		part_system_destroy(oBird.part1);
		part_system_destroy(oBird.part1_sys);
	}
	instance_create_layer(camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0])/2),
	camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])/2), "GUI_market", obj_home_when_dead);
	instance_destroy(oBird);
	instance_destroy(oControl);
	instance_deactivate_layer("Play_layer")
<<<<<<< HEAD
>>>>>>> origin/Alex-v3
=======
>>>>>>> parent of b52e708... Merge branch 'tom-v2'
}

alarm[0] = 6;