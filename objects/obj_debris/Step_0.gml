/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 18C1DC37
/// @DnDArgument : "expr" "0.01"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "image_alpha"
image_alpha += 0.01;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2FA443CD
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "3"
if(image_alpha <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6E0FFFC2
	/// @DnDParent : 2FA443CD
	instance_destroy();
}