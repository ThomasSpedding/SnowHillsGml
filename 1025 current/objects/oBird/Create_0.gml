/// @description  Initialise variables and physics
image_speed = 0;
velocity = 50;
minVelocityX = 80;
minVelocityY = -90;
awake = false;
totalCoins = 0;
alphar = 1;
// Create player fixture
fix = physics_fixture_create(); 
physics_fixture_set_circle_shape(fix, sprite_get_height(sprite_index)/2);
physics_fixture_set_density(fix, 1);
physics_fixture_set_linear_damping(fix, 0.1);
physics_fixture_set_restitution(fix, 0);
physics_fixture_set_friction(fix, 0.0);
physics_fixture_set_awake(fix, false);
physics_fixture_bind(fix, id);

///particles

xx1= oBird.x-(oBird.sprite_height/2)-(oBird.sprite_width/2);
xx2 = oBird.x-(oBird.sprite_height/2)+(oBird.sprite_width/2);
yy1 = oBird.y +(oBird.sprite_height/2);
yy2 = oBird.y +(oBird.sprite_height/2);
//articles system things 

part1_sys = part_system_create();
part_system_depth(part1_sys,0);



//actual partcles 

part1 = part_type_create();
part_type_shape(part1,pt_shape_smoke);
part_type_scale(part1,1,1);
part_type_size(part1,0.15,0.2,-0.005,0);
part_type_color2(part1,c_white,c_aqua);
part_type_alpha2(part1,1,0.75);
part_type_speed(part1,0.2,0.5,0,0);
part_type_direction(part1,270,180,0,0);
part_type_gravity(part1,0.1,155);
part_type_orientation(part1,180,90,0,0,0);


//the emitter 


part1_em = part_emitter_create(part1_sys);




