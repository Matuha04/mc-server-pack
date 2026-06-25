execute store result storage glowborder:seg ax int 1 run data get entity @e[type=marker,tag=gb_lA,limit=1] Pos[0] 1
execute store result storage glowborder:seg ay int 1 run data get entity @e[type=marker,tag=gb_lA,limit=1] Pos[1] 1
execute store result storage glowborder:seg az int 1 run data get entity @e[type=marker,tag=gb_lA,limit=1] Pos[2] 1
execute store result storage glowborder:seg bx int 1 run data get entity @e[type=marker,tag=gb_lB,limit=1] Pos[0] 1
execute store result storage glowborder:seg by int 1 run data get entity @e[type=marker,tag=gb_lB,limit=1] Pos[1] 1
execute store result storage glowborder:seg bz int 1 run data get entity @e[type=marker,tag=gb_lB,limit=1] Pos[2] 1
function glowborder:line_draw
function glowborder:shape_finalize
kill @e[type=marker,tag=gb_lA]
kill @e[type=marker,tag=gb_lB]
