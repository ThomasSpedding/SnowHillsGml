if(oControl.scoreee >5) or (oControl.scoreee = 5){
	oControl.rangeDX -= .7;
}
if(oControl.rangeDX <= -25){
oControl.rangeDX = -25
}
if(oControl.rangeDX <= -25){
oBird.phy_linear_velocity_x += oBird.phy_linear_velocity_x/100;
}

alarm[4] = 4;