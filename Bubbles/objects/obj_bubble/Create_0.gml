/// @description Set Stats


scale = 1			//The scale of the bubble
//The total of the forces acting on the bubble
total_force = {		
	x_mag : 0,		//The magnitude of the force vector in the x direction
	y_mag : 0,		//The magnitude of the force vector in the y direction
}
//The random force acting on the bubbles
rand_force = {
	x_mag : 0,		//The magnitude of the force vector in the x direction
	y_mag : 0,		//The magnitude of the force vector in the y direction
}



random_force_buff_max = global.stats.rand_delay	//How often to apply a random force on this bubble
random_force_buff = random_force_buff_max