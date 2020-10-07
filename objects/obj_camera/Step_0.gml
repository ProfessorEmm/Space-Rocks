/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 52373906
/// @DnDArgument : "obj" "target"
var l52373906_0 = false;
l52373906_0 = instance_exists(target);
if(l52373906_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 07DB8F88
	/// @DnDInput : 2
	/// @DnDParent : 52373906
	/// @DnDArgument : "expr" "clamp(target.x - (cameraWidth/2), 0,room_width - cameraWidth)"
	/// @DnDArgument : "expr_1" "clamp(target.y - (cameraHeight/2), 0, room_height - cameraHeight)"
	/// @DnDArgument : "var" "cameraX"
	/// @DnDArgument : "var_1" "cameraY"
	cameraX = clamp(target.x - (cameraWidth/2), 0,room_width - cameraWidth);
	cameraY = clamp(target.y - (cameraHeight/2), 0, room_height - cameraHeight);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 135E391F
	/// @DnDInput : 3
	/// @DnDParent : 52373906
	/// @DnDArgument : "function" "camera_set_view_pos"
	/// @DnDArgument : "arg" "view_camera[0]"
	/// @DnDArgument : "arg_1" "cameraX"
	/// @DnDArgument : "arg_2" "cameraY"
	camera_set_view_pos(view_camera[0], cameraX, cameraY);
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 4CD1539A
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_x"
/// @DnDArgument : "arg" ""Parallax_0""
/// @DnDArgument : "arg_1" "cameraX * 0.98"
layer_x("Parallax_0", cameraX * 0.98);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 6AA40F27
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_y"
/// @DnDArgument : "arg" ""Parallax_0""
/// @DnDArgument : "arg_1" "cameraY * 0.98"
layer_y("Parallax_0", cameraY * 0.98);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 122746AB
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_x"
/// @DnDArgument : "arg" ""Parallax_1""
/// @DnDArgument : "arg_1" "cameraX * 0.9"
layer_x("Parallax_1", cameraX * 0.9);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 3E1C25E5
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_y"
/// @DnDArgument : "arg" ""Parallax_1""
/// @DnDArgument : "arg_1" "cameraY * 0.9"
layer_y("Parallax_1", cameraY * 0.9);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 42EDB833
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_x"
/// @DnDArgument : "arg" ""Parallax_2""
/// @DnDArgument : "arg_1" "cameraX * 0.85"
layer_x("Parallax_2", cameraX * 0.85);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0CE17902
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_y"
/// @DnDArgument : "arg" ""Parallax_2""
/// @DnDArgument : "arg_1" "cameraY * 0.85"
layer_y("Parallax_2", cameraY * 0.85);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2EF007D9
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_x"
/// @DnDArgument : "arg" ""Parallax_3""
/// @DnDArgument : "arg_1" "cameraX * 0.8"
layer_x("Parallax_3", cameraX * 0.8);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 4078EB4C
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_y"
/// @DnDArgument : "arg" ""Parallax_3""
/// @DnDArgument : "arg_1" "cameraY * 0.8"
layer_y("Parallax_3", cameraY * 0.8);