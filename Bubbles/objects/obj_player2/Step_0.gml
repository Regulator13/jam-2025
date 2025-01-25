//Move left and right
if keyboard_check(vk_left){
	phy_speed_x -= move_speed
}
if keyboard_check(vk_right){
	phy_speed_x += move_speed
}



//Jump
if keyboard_check_pressed(vk_up){
	//Check that there is ground beneath the player's feet, depending of their rotation
	if place_meeting(x, y + 1, par_static) or
	place_meeting(x, y + 1, par_dynamic){
		//If lying sideways, right himself
		if (phy_rotation > 180 - 5 and phy_rotation < 180 + 5) or (phy_rotation > 360 - 5 and phy_rotation < 360 + 5){
			phy_rotation = 270
		}
		else{
			phy_speed_x += lengthdir_x(-jump_power, phy_rotation)
			phy_speed_y += lengthdir_y(jump_power, phy_rotation)
		}
	}
}

event_inherited()