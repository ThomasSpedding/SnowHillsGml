/// @description Update player
// Here we calculate the rotation by getting the inverse tangent based on the players velocity
angle = arctan2(phy_linear_velocity_y, phy_linear_velocity_x)

// If the player has started, apply the rotation (using the phy_rotation variable)
if (awake)
{  
    // Multiplying by 0.5 makes the player face the way we want
    phy_rotation = .8 * radtodeg(angle);   
}

// When the player is waiting to start, don't move or animate.
// Since we start on a slight hill, we can't rely on deactivating the physics as 
// the player would still roll down the first hill.
if !awake
{
    phy_linear_velocity_x = 0;
    phy_linear_velocity_y = 0;
    image_speed = 0;
    if (device_mouse_check_button(0,mb_left) or keyboard_check(vk_down))
    {
        awake = true;
        image_speed = 0.1;
        physics_fixture_set_awake(fix, true);
        physics_fixture_delete(fix);
    }
}
else
{
    // Apply the downward force for a dive
    if (keyboard_check(vk_down) or device_mouse_check_button(0,mb_left))
    {
        physics_apply_force(x, y, 250, 4500);
    }
    
    // Apply general downward force for gameplay balance
    physics_apply_force(x, y, 50, 600);
    
    velX = phy_linear_velocity_x;
    // Keep the player moving at least slightly
    if (velX < minVelocityX) {
        phy_linear_velocity_x = minVelocityX;
    }
   
}
//particles

xx1= oBird.x-10;
xx2 = oBird.x-10;
yy1 = oBird.y + 25;
yy2 = oBird.y + 25;

part_emitter_region(part1_sys,part1_em,xx1,xx2,yy1,yy2,ps_shape_line,ps_distr_gaussian);
part_emitter_stream(part1_sys,part1_em,part1,1);

if(oBird.phy_linear_velocity_y < 400) and ( phy_linear_velocity_y > -400)
{
	if (alphar > 0)
	{
		alphar -= .025;
		if (alphar <= 0)
		{
			part_type_scale(part1,0,0);
		}
	}
}

else if(oBird.phy_linear_velocity_y >400)
{
	if (alphar < 1)
	{
		alphar += .025;
		if (alphar > 0)
		{
			part_type_scale(part1,1,1);
		}
	}
}
else if(oBird.phy_linear_velocity_y <-400)
{
	
	if (alphar < 1)
	{
		alphar += .025;
		if (alphar > 0)
		{
			part_type_scale(part1,1,1);	
		}
	}
}
part_type_alpha1(part1, alphar);

alarm[0] = 30
