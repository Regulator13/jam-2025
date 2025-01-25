/// @description Apply forces to bubble

//Stop very slow bubbles
if phy_speed < 1{
	phy_speed_x *= .99
	phy_speed_y *= .99
}
if phy_speed < .3{
	phy_speed_x *= .90
	phy_speed_y *= .90
}

//Bubbles float up if not being pushed around
if abs(phy_speed_y) < float_force{
	phy_speed_y = -float_force
}

