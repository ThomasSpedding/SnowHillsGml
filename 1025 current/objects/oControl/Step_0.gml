/// @description Update hill points and view

// Check all hillpoints
with (oHillPoint)
{
    var count = 0;
    // If this one is out of view
    if (x < __view_get( e__VW.XView, 0 ) - 200)
    {
        oControl.newHillPoint = true;
        // Delete it from the list and destroy the instance
        ds_list_delete(oControl.hillPoints, count);
        oControl.totalHills -= 1;
        // delete the hill point
        instance_destroy();
    }
    count += 1;
}

// If another hill point has been requested
if (newHillPoint)
{
    //This even creates another one
    event_user(0);
}

// keep the view on the player
__view_set( e__VW.XView, 0, oBird.phy_position_x-150 );
//__view_set( e__VW.YView, 0, oBird.phy_position_y-350);

// If the player gets too high
if (oBird.phy_position_y < __view_get( e__VW.HView, 0 )*0.5)
{
    // Adjust the scale and position of the view
    __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) - ((oBird.phy_linear_velocity_y*0.02)) );
    __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) - ((oBird.phy_linear_velocity_y*0.02)) );
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + ((oBird.phy_linear_velocity_y*0.02)) );
} else if ((oBird.phy_position_y > __view_get( e__VW.HView, 0 )*0.5) and __view_get( e__VW.WView, 0 )>960 and __view_get( e__VW.HView, 0 )>600 and __view_get( e__VW.YView, 0 )<120 and oBird.phy_linear_velocity_y<5){
   __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) + ((oBird.phy_linear_velocity_y*0.1)) );
    __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) + ((oBird.phy_linear_velocity_y*0.1)) );
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - ((oBird.phy_linear_velocity_y*0.1)) );
}
if ((oBird.phy_position_y > __view_get( e__VW.HView, 0 )*0.5) and __view_get( e__VW.WView, 0 )>960 and __view_get( e__VW.HView, 0 )>600 and __view_get( e__VW.YView, 0 )<120){
    __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) + ((zoomFactor * zoomAmplifier )) );
    __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) + ((zoomFactor * zoomAmplifier )) );
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - ((zoomFactor * zoomAmplifier )) );

}


/// to die mo fo
if (oBird.phy_linear_velocity_x < oBird.phy_linear_velocity_x* 0.1)
{
obj_gui_control.playedd = true;
obj_gui_control.market_store = false;
obj_gui_control.death = true;
}

///scoring system


if (oBird.phy_linear_velocity_y > oBird.phy_linear_velocity_y* 2)
{
scoreee = scoreee - oBird.phy_linear_velocity_y/10000;

}

//if (oBird.phy_linear_velocity_y > oBird.phy_linear_velocity_y* 2)
//{
////scoreee = scoreee - oBird.phy_linear_velocity_y/10000;
//scoreee -= oBird.phy_linear_velocity_y/10000;
//}
