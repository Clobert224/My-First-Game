/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 62E0C29A
/// @DnDArgument : "expr" "30"
/// @DnDArgument : "var" "spawnrate"
spawnrate = 30;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 77F14A26
/// @DnDArgument : "steps" "spawnrate"
alarm_set(0, spawnrate);