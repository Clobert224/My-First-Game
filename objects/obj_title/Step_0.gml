/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F1FD02D
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(image_alpha < 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 1B02E95D
	/// @DnDParent : 0F1FD02D
	/// @DnDArgument : "alpha" "0.02"
	/// @DnDArgument : "alpha_relative" "1"
	image_alpha += 0.02;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 2E31C6CC
	/// @DnDParent : 0F1FD02D
	/// @DnDArgument : "soundid" "anotherone"
	/// @DnDSaveInfo : "soundid" "a780688f-14ea-421d-8b37-b307ce5d5b1e"
	audio_play_sound(anotherone, 0, 0);
}