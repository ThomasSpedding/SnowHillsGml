/// @description Insert description here
// You can write your code in this editor
if (instance_exists(oBird))
{
	if (oBird.phy_linear_velocity_y > oBird.phy_linear_velocity_y* 2)
	{
		scoreee = scoreee - oBird.phy_linear_velocity_y/10000;
	}
}

if (highScore < scoreee)
{
	highScore = scoreee;
	scr_save1();
}	
