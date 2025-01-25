//Move left and right
if keyboard_check(ord("A")){
	phy_speed_x -= move_speed
}
if keyboard_check(ord("D")){
	phy_speed_x += move_speed
}



//Jump
if keyboard_check_pressed(ord("W")){
	//Check that there is ground beneath the player's feet, depending of their rotation
	if place_meeting(x + lengthdir_x(1, phy_rotation), y + lengthdir_y(1, phy_rotation), par_static) or
	place_meeting(x + lengthdir_x(1, phy_rotation), y + lengthdir_y(1, phy_rotation), par_dynamic){
		phy_speed_x += lengthdir_x(-jump_power, phy_rotation)
		phy_speed_y += lengthdir_y(jump_power, phy_rotation)
	}
	//If there isn't ground beneath their feet, check if the player is on it's side
	else if place_meeting(x + lengthdir_x(1, phy_rotation - 90), y + lengthdir_y(1, phy_rotation - 90), par_static) or
	place_meeting(x + lengthdir_x(1, phy_rotation - 90), y + lengthdir_y(1, phy_rotation - 90), par_dynamic){
		phy_rotation = 270
	}
	else if place_meeting(x + lengthdir_x(1, phy_rotation - 270), y + lengthdir_y(1, phy_rotation - 270), par_static) or
	place_meeting(x + lengthdir_x(1, phy_rotation - 270), y + lengthdir_y(1, phy_rotation - 270), par_dynamic){
		phy_rotation = 270
	}
}

event_inherited()
