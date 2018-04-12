/// @description Insert description here
// You can write your code in this editor



// lerp the layer coordinates to your camera view //Daytime

//layer_x(layer_id4, lerp(0,camera_get_view_x(view_camera[0]),.35));
//layer_x(layer_id3, lerp(0,camera_get_view_x(view_camera[0]),.75));
//layer_x(layer_id2, lerp(0,camera_get_view_x(view_camera[0]),.88));
//layer_x(layer_id1, lerp(0,camera_get_view_x(view_camera[0]),.9));

//layer_x(layer_id0, camera_get_view_x(view_camera[0]));

//layer_y(layer_id0, lerp(0,camera_get_view_y(view_camera[0]),0));
if (instance_exists(oBird))
{
layer_hspeed("backgrounds_1", -oBird.phy_speed_x *.1);
layer_hspeed("backgrounds_5", -oBird.phy_speed_x*0.4);
layer_hspeed("backgrounds_2", -oBird.phy_speed_x *0.6);
layer_hspeed("backgrounds_4", -oBird.phy_speed_x *0.8);
} else 
{
layer_hspeed("backgrounds_1", -.1);
layer_hspeed("backgrounds_5", -0.4);
layer_hspeed("backgrounds_2", -0.6);
layer_hspeed("backgrounds_4", -0.8);
}
