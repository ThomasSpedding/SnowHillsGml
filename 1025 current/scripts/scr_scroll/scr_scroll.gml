///scr_scroll()
if (mouse_x > obj_frame.x - (sprite_get_width(spr_frame) /2) and
	mouse_x < obj_frame.x + (sprite_get_width(spr_frame) /2) and
	mouse_y > obj_frame.y - (sprite_get_height(spr_frame) /2) and
	mouse_y < obj_frame.y + (sprite_get_height(spr_frame) /2))
{

	if (mouse_check_button_pressed(mb_left))
	{
		drag_speed = 0;
	}

	if (mouse_check_button(mb_left))
	{
		drag_speed = (obj_mouseSlow.y - obj_mouseFast.y) * speed_modifier; 
		y += drag_speed;
	}
}
if (abs(drag_speed) > 0)
{	
	y += drag_speed;
	drag_speed += (-drag_speed * smooth);
}

if (ystart < y)
{
	y = ystart;	
}
else if (ystart > y + (70 * 7))
{
	y = ystart - (70 * 7) ;	
}