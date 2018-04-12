/// @description Insert description here
playedd = true;
market_store = false;
death = false;
settings = false;

music = true;
sfx = true;
scoreee = 0;

scr_highScore();


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
instance_create_layer(camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0])/2),
camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])/2), "GUI_market", obj_home_when_dead);
instance_destroy(oBird);
instance_destroy(oControl);
instance_deactivate_layer("Play_layer");
}
alarm[0] = 6;

if (music = true)
{
	audio_play_sound(sound0,100,true);
}

window_set_fullscreen(true);