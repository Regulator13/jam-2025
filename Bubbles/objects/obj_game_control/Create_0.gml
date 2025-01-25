/// @description Setup the game

random_set_seed(0)

bubble_buff_max = 90			//Delay in between bubble generation
bubble_buff = bubble_buff_max
bubbles = [obj_bubble2, obj_bubble2, obj_bubble2, obj_bubble2, obj_bubble3, obj_bubble3, obj_bubble1, obj_bubble1, obj_bubble1]	//The bubbles that can be generated

#region Views
//Setup viewport
view_enabled = true
view_visible[0] = true
view_xport[0] = 0
view_yport[0] = 0
view_wport[0] = 683
view_hport[0] = 768

view_visible[1] = true
view_xport[1] = room_width div 2
view_yport[1] = 0
view_wport[1] = 683
view_hport[1] = 768

//Create the player object
player1 = instance_create_layer(room_width div 2, room_height - 640, "lay_instances", obj_player1)
player2 = instance_create_layer(room_width div 2, room_height - 580, "lay_instances", obj_player2)

//Create a camera
camera_width = 1366		//Current view width
camera_height = 768		//Current view height
var width = camera_width
var height = camera_height

view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, player1, -1, -1, width div 2, height div 2)
view_camera[1] = camera_create_view(0, 0, view_wport[1], view_hport[1], 0, player2, -1, -1, width div 2, height div 2)

var display_width = display_get_width()
var display_height = display_get_height()
var _x = 32
var _y = 32
window_set_rectangle(_x, _y, display_width, display_height)
surface_resize(application_surface, width, height)
#endregion