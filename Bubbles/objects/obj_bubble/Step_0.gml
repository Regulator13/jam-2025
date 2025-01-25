/// @description Apply forces to bubble

//Apply random forces at set intervals
if random_force_buff <= 0{
	var rand_x = random_range(-global.stats.rand_force_delta_max, global.stats.rand_force_delta_max)
	var rand_y = random_range(-global.stats.rand_force_delta_max, global.stats.rand_force_delta_max)
	//Add an additional force to the random force
	rand_force.x_mag += rand_x
	rand_force.y_mag += rand_y
	//Ensure the force is within max speed
	if abs(rand_force.x_mag) > global.stats.rand_force_max{
		rand_force.x_mag -= rand_x
	}
	if abs(rand_force.y_mag) > global.stats.rand_force_max{
		rand_force.y_mag -= rand_y
	}
	//Reset the buffer
	random_force_buff = random_force_buff_max
}

//Use 0 + to avoid pointing to variable
total_force.x_mag = 0 + rand_force.x_mag
total_force.y_mag = 0 + rand_force.y_mag

var delta_x = 0		//The distance in the y direction the object would have to move to collide with the next object
var delta_y = 0		//The distance in the y direction the object would have to move to collide with the next object

//If movement would move into an object it would bounce off of, move to contact and reverse direction
if place_meeting(x + total_force.x_mag, y, par_bounce){
	//Move to contact
	for (var i=0; i<speed + 1; i+=.1){
		if not place_meeting(x + delta_x, y, par_bounce){
			delta_x += .1*sign(total_force.x_mag)
		}
		else{
			break
		}
	}
	//Reverse the direction
	total_force.x_mag *= -1
	rand_force.x_mag *= -1
}

if place_meeting(x, y + total_force.y_mag, par_bounce){
	//Move to contact
	for (var i=0; i<speed + 1; i+=.1){
		if not place_meeting(x, y + delta_y, par_bounce){
			delta_y += .1*sign(total_force.y_mag)
		}
		else{
			break
		}
	}
	//Reverse the direction
	total_force.y_mag *= -1
	rand_force.y_mag *= -1
}

//Apply delta changes
x += delta_x
y += delta_y

//Apply the sum of the forces to the bubble
speed = sqrt(power(total_force.x_mag, 2) + power(total_force.y_mag, 2))
direction = darctan2(total_force.y_mag, total_force.x_mag)

//If inside an object after moving, move outside of it
var inst = instance_place(x, y, par_bounce)
if instance_exists(inst){
	var dir_escape = point_direction(inst.x, inst.y, x, y)
	move_outside_all(dir_escape, 10)
}

//Decrement counters
random_force_buff--
