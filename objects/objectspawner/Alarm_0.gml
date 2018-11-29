/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 731C6BC9
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "enemyspawn"
/// @DnDArgument : "layer" ""layer_enemy""
/// @DnDSaveInfo : "objectid" "7d1d7e35-ee48-40c1-98f3-3422ec66134f"
instance_create_layer(random(room_width), random(room_height), "layer_enemy", enemyspawn);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4DDE6E43
/// @DnDArgument : "steps" "spawnrate"
alarm_set(0, spawnrate);