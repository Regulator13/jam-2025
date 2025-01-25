if (not place_meeting(x, y + 1, par_static)) or (not place_meeting(x, y + 1, par_dynamic)){
	phy_speed_y += grav_force
}

//Do not allow rotation
phy_angular_velocity = 0
image_angle = 0
