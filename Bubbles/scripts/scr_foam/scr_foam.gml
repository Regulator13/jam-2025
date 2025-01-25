/// @function setup_particles
/// @description This function creates a particle system and a number of different particles to be used

function setup_particles(){
	global.particle_system = part_system_create()		//Create the particle system
	global.emit_burst = part_emitter_create(global.particle_system) //Create particle emitter
	
	//bubble particle
	global.p_bubble = part_type_create()				//Create the first particle
	part_type_shape(global.p_bubble, pt_shape_disk)	//Make the particle a square
	part_type_scale(global.p_bubble, 1, 1)			//Set the scale of the particle
	part_type_size(global.p_bubble, .05, .5, 0, 0)	//Set the size of the particle
	part_type_color2(global.p_bubble, c_white, c_white)//Set the changing color of particle
	part_type_alpha2(global.p_bubble, 1, 1)			//Set the changing alpha of particle
	part_type_speed(global.p_bubble, 1, 2, 0, 0)	//Set the random speed of particle
	part_type_direction(global.p_bubble, 90, 90, 0, 5) //Set the direction of the particle
	part_type_life(global.p_bubble, 20, 40)			//How long the particle will last	
}