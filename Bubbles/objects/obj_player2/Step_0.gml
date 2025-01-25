//Move left and right
if keyboard_check(vk_left){
	phy_speed_x -= move_speed
}
if keyboard_check(vk_right){
	phy_speed_x += move_speed
}



//Jump
if keyboard_check_pressed(vk_up){
	//Check that there is ground beneath the player
	if place_meeting(x, y+1, par_static) or place_meeting(x, y+1, par_dynamic){
		phy_speed_y += -jump_power
	}
}

event_inherited()