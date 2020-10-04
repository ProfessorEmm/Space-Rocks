/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 24C39234
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 77EA60FE
	/// @DnDDisabled : 1
	/// @DnDParent : 24C39234
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDSaveInfo : "soundid" "msc_song"
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 218D2710
	/// @DnDDisabled : 1
	/// @DnDParent : 77EA60FE
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDSaveInfo : "soundid" "msc_song"

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 3767D25A
	/// @DnDDisabled : 1
	/// @DnDParent : 24C39234
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "msc_song"


	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 39A0126E
	/// @DnDParent : 24C39234
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7EDA012E
	/// @DnDInput : 2
	/// @DnDParent : 24C39234
	/// @DnDArgument : "function" "spawn_off_camera_func"
	/// @DnDArgument : "arg" "obj_asteroid"
	/// @DnDArgument : "arg_1" "40"
	spawn_off_camera_func(obj_asteroid, 40);
}