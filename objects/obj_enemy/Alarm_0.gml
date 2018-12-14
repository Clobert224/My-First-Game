/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3262E397
/// @DnDArgument : "var" "boom"
boom = 0;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2BE76DF3
/// @DnDArgument : "xpos" "x"
/// @DnDArgument : "ypos" "y"
/// @DnDArgument : "objectid" "obj_bullet"
/// @DnDArgument : "layer" ""layer_bullet""
/// @DnDSaveInfo : "objectid" "92722d79-cd31-48c9-9a71-4fc5a06beef0"
instance_create_layer(x, y, "layer_bullet", obj_bullet);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 27853B19
/// @DnDArgument : "x" "obj_player.x"
/// @DnDArgument : "y" "obj_player.y"
direction = point_direction(x, y, obj_player.x, obj_player.y);