/// @description Setup the game

randomize()

#region Views
//Setup viewport
view_enabled = true
view_visible[0] = true
view_xport[0] = 0
view_yport[0] = 0
view_wport[0] = 1366
view_hport[0] = 768

//Create the player object
player = instance_create_layer(room_width div 2, room_height - 640, "lay_instances", obj_player)

//Create a camera
camera_width = 1366		//Current view width
camera_height = 768		//Current view height
var width = camera_width
var height = camera_height

view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, player, -1, -1, width div 2, height div 2)

var display_width = display_get_width()
var display_height = display_get_height()
var _x = (display_width div 2) - (width div 2)
var _y = (display_height div 2) - (height div 2)
window_set_rectangle(_x, _y, width, height)
surface_resize(application_surface, width, height)
#endregion