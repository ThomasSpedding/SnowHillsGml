xx1= obj_player.x;
xx2 = obj_player.x;
yy1 = obj_player.y + 64;
yy2 = obj_player.y + 64;

part_emitter_region(part1_sys,part1_em,xx1,xx2,yy1,yy2,ps_shape_line,ps_distr_gaussian);
part_emitter_stream(part1_sys,part1_em,part1,1);

