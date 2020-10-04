/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5B1A0DA0
/// @DnDArgument : "var" "room"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "rm_game"
if(!(room == rm_game))
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 31DFFE5A
	/// @DnDParent : 5B1A0DA0
	exit;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 79902BB4
/// @DnDArgument : "steps" "room_speed*1"
alarm_set(0, room_speed*1);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 4762BFFA
/// @DnDInput : 2
/// @DnDArgument : "function" "spawn_off_camera_func"
/// @DnDArgument : "arg" "obj_asteroid"
/// @DnDArgument : "arg_1" "1"
spawn_off_camera_func(obj_asteroid, 1);