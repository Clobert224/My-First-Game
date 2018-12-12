/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 60FBE408
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "dfb04ed6-ac3a-4afd-8c61-5712fccec43d"
var l60FBE408_0 = false;
l60FBE408_0 = instance_exists(obj_player);
if(l60FBE408_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 35CE0C58
	/// @DnDParent : 60FBE408
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 50802DE6
	/// @DnDParent : 60FBE408
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 08F128FF
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 48915549
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C61DE6D
	/// @DnDApplyTo : 87f3edcc-0306-4503-8d59-7179febeca72
	/// @DnDParent : 48915549
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "thescore"
	with(object3) {
	thescore += 5;
	
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 1CE889FF
	/// @DnDParent : 48915549
	/// @DnDArgument : "sound" "sound_death"
	/// @DnDArgument : "pitch" "random_range(0.1,1.2)"
	/// @DnDSaveInfo : "sound" "2d098e5a-4389-4f7d-9ce6-30b3e7dba7e9"
	audio_sound_pitch(sound_death, random_range(0.1,1.2));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 7663C8F2
	/// @DnDParent : 48915549
	/// @DnDArgument : "soundid" "sound_death"
	/// @DnDSaveInfo : "soundid" "2d098e5a-4389-4f7d-9ce6-30b3e7dba7e9"
	audio_play_sound(sound_death, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0BBC3BA1
	/// @DnDParent : 48915549
	instance_destroy();
}

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 0A43209C
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 1F3BE839
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5D495739
/// @DnDArgument : "var" "cooldown"
/// @DnDArgument : "op" "3"
if(cooldown <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B9F93E3
	/// @DnDParent : 5D495739
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "var" "cooldown"
	cooldown = 4;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7B12ADFF
	/// @DnDParent : 5D495739
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "y"
	/// @DnDArgument : "objectid" "bullet"
	/// @DnDArgument : "layer" ""layer_bullet""
	/// @DnDSaveInfo : "objectid" "92722d79-cd31-48c9-9a71-4fc5a06beef0"
	instance_create_layer(x, y, "layer_bullet", bullet);
}