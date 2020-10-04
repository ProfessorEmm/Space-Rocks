/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 13DDBD3D
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDInput : 2
/// @DnDArgument : "funcName" "spawn_off_camera_func"
/// @DnDArgument : "arg" "object"
/// @DnDArgument : "arg_1" "real"
function spawn_off_camera_func(object, real) 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 791B2B00
	/// @DnDInput : 5
	/// @DnDParent : 13DDBD3D
	/// @DnDArgument : "var" "obj"
	/// @DnDArgument : "value" "argument[0]"
	/// @DnDArgument : "var_1" "number"
	/// @DnDArgument : "value_1" "argument[1]"
	/// @DnDArgument : "var_2" "pad"
	/// @DnDArgument : "value_2" "64"
	/// @DnDArgument : "var_3" "xx"
	/// @DnDArgument : "var_4" "yy"
	var obj = argument[0];
	var number = argument[1];
	var pad = 64;
	var xx;
	var yy;

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 749EE331
	/// @DnDParent : 13DDBD3D
	/// @DnDArgument : "times" "number"
	repeat(number)
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5B7704D9
		/// @DnDParent : 749EE331
		/// @DnDArgument : "var" "boundCheck"
		/// @DnDArgument : "value" "true"
		var boundCheck = true;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 40B65F26
		/// @DnDParent : 749EE331
		/// @DnDArgument : "var" "boundCheck"
		/// @DnDArgument : "value" "true"
		while ((boundCheck == true)) {
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 4DCD0281
			/// @DnDParent : 40B65F26
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "max" "room_width"
			xx = (random_range(0, room_width));
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 2D824651
			/// @DnDParent : 40B65F26
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "max" "room_height"
			yy = (random_range(0, room_height));
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 04827B6D
			/// @DnDInput : 6
			/// @DnDApplyTo : {obj_camera}
			/// @DnDParent : 40B65F26
			/// @DnDArgument : "var" "boundCheck"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "function" "point_in_rectangle"
			/// @DnDArgument : "arg" "xx"
			/// @DnDArgument : "arg_1" "yy"
			/// @DnDArgument : "arg_2" "cameraX - pad"
			/// @DnDArgument : "arg_3" "cameraY - pad"
			/// @DnDArgument : "arg_4" "cameraX + cameraWidth + pad"
			/// @DnDArgument : "arg_5" "cameraY + cameraHeight + pad"
			with(obj_camera) {
				var boundCheck = point_in_rectangle(xx, yy, cameraX - pad, cameraY - pad, cameraX + cameraWidth + pad, cameraY + cameraHeight + pad);
			}
		}
	}

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7BA7F245
	/// @DnDParent : 13DDBD3D
	/// @DnDArgument : "xpos" "xx"
	/// @DnDArgument : "ypos" "yy"
	/// @DnDArgument : "objectid" "obj"
	instance_create_layer(xx, yy, "Instances", obj);
}