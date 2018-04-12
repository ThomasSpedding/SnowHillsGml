if(obj_gui_control.scoreee >5) or (obj_gui_control.scoreee = 5){
	oControl.rangeDX -= .055;
}
if(oControl.rangeDX <= 30){
oControl.rangeDX = 30
}
if(oControl.rangeDX <= 30){
oBird.phy_linear_velocity_x += oBird.phy_linear_velocity_x/100;
}

alarm[4] = 4;
