
//Move left and right
if keyboard_check(ord("A")){
	phy_speed_x -= move_speed
}
if keyboard_check(ord("D")){
	phy_speed_x += move_speed
}



//Jump
if keyboard_check_pressed(ord("W")){
	//Check that there is ground beneath the player
	if place_meeting(x, y+1, par_static) or place_meeting(x, y+1, par_dynamic){
		phy_speed_y += -jump_power
	}
}

if (not place_meeting(x, y + 1, par_static)) or (not place_meeting(x, y + 1, par_dynamic)){
	phy_speed_y += grav_force
}

//Do not allow rotation
phy_angular_velocity = 0
image_angle = 0
