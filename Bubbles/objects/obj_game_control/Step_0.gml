/// @description Generate bubbles

if bubble_buff <= 0{
	//Decide which bubble to generate at random
	var bubble_array = array_shuffle(bubbles)
	var bubble = bubble_array[0]
	//Generate bubble within the bounds of the roomm
	var rand_x = irandom_range(bubble.sprite_width div 2, room_width - (bubble.sprite_width div 2))
	instance_create_layer(rand_x, room_height - 64 - bubble.sprite_height div 2, "lay_instances", bubble)
	//Reset the counter
	bubble_buff = bubble_buff_max
}

//Decrement counters
bubble_buff--
