# draw line points[0]->points[1], drop points[0], recurse while a pair remains
data modify storage glowborder:seg ax set from storage glowborder:poly points[0].x
data modify storage glowborder:seg ay set from storage glowborder:poly points[0].y
data modify storage glowborder:seg az set from storage glowborder:poly points[0].z
data modify storage glowborder:seg bx set from storage glowborder:poly points[1].x
data modify storage glowborder:seg by set from storage glowborder:poly points[1].y
data modify storage glowborder:seg bz set from storage glowborder:poly points[1].z
function glowborder:line_draw
data remove storage glowborder:poly points[0]
execute if data storage glowborder:poly points[1] run function glowborder:mp_pair
