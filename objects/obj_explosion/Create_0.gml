/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2F05547D
/// @DnDArgument : "code" "global.P_System=part_system_create_layer(layer, true);$(13_10)global.Particle1 = part_type_create();$(13_10)part_type_shape(global.Particle1, pt_shape_snow);$(13_10)part_type_size(global.Particle1, 0.01, 0.05, 0, 0.5);$(13_10)part_type_color3(global.Particle1, c_aqua, c_yellow, c_red);$(13_10)part_type_alpha3(global.Particle1, 0.5, 1, 0);$(13_10)part_type_speed(global.Particle1, 0.4, 1, -0.10, 0);$(13_10)part_type_direction(global.Particle1, 0, 359, 0, 20);$(13_10)part_type_blend(global.Particle1, true);$(13_10)part_type_life(global.Particle1, 30, 60);$(13_10)part_particles_create(global.P_System, mouse_x, mouse_y, global.Particle1, 50);$(13_10)repeat(50)$(13_10)$(13_10){$(13_10)$(13_10)var _mx = mouse_x - 50 + irandom(100);$(13_10)$(13_10)var _my = mouse_y - 50 + irandom(100);$(13_10)$(13_10)part_particles_create(global.P_System, _mx, _my, global.Particle1, 5);$(13_10)$(13_10)}$(13_10)global.Emitter1 = part_emitter_create(global.P_System);$(13_10)$(13_10)global.Emitter2 = part_emitter_create(global.P_System);$(13_10)$(13_10)part_emitter_region(global.P_System, global.Emitter1, 0, room_width, 0, room_height, ps_shape_rectangle, ps_distr_invgaussian);$(13_10)$(13_10)part_emitter_region(global.P_System, global.Emitter2, mouse_x - 50, mouse_x + 50, mouse_y - 25, mouse_y + 25, ps_shape_ellipse, ps_distr_gaussian);$(13_10)$(13_10)part_emitter_stream(global.P_System, global.Emitter1, global.Particle1, 10);$(13_10)$(13_10)alarm[0] = room_speed;$(13_10)"
global.P_System=part_system_create_layer(layer, true);
global.Particle1 = part_type_create();
part_type_shape(global.Particle1, pt_shape_snow);
part_type_size(global.Particle1, 0.01, 0.05, 0, 0.5);
part_type_color3(global.Particle1, c_aqua, c_yellow, c_red);
part_type_alpha3(global.Particle1, 0.5, 1, 0);
part_type_speed(global.Particle1, 0.4, 1, -0.10, 0);
part_type_direction(global.Particle1, 0, 359, 0, 20);
part_type_blend(global.Particle1, true);
part_type_life(global.Particle1, 30, 60);
part_particles_create(global.P_System, mouse_x, mouse_y, global.Particle1, 50);
repeat(50)

{

var _mx = mouse_x - 50 + irandom(100);

var _my = mouse_y - 50 + irandom(100);

part_particles_create(global.P_System, _mx, _my, global.Particle1, 5);

}
global.Emitter1 = part_emitter_create(global.P_System);

global.Emitter2 = part_emitter_create(global.P_System);

part_emitter_region(global.P_System, global.Emitter1, 0, room_width, 0, room_height, ps_shape_rectangle, ps_distr_invgaussian);

part_emitter_region(global.P_System, global.Emitter2, mouse_x - 50, mouse_x + 50, mouse_y - 25, mouse_y + 25, ps_shape_ellipse, ps_distr_gaussian);

part_emitter_stream(global.P_System, global.Emitter1, global.Particle1, 10);

alarm[0] = room_speed;