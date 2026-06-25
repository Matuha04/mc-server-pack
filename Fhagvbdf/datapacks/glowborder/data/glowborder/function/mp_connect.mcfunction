# keep the first point, connect each consecutive pair, then close the loop back to the first
data modify storage glowborder:poly first set from storage glowborder:poly points[0]
function glowborder:mp_pair
# closing segment: last remaining point -> first point
data modify storage glowborder:seg ax set from storage glowborder:poly points[0].x
data modify storage glowborder:seg ay set from storage glowborder:poly points[0].y
data modify storage glowborder:seg az set from storage glowborder:poly points[0].z
data modify storage glowborder:seg bx set from storage glowborder:poly first.x
data modify storage glowborder:seg by set from storage glowborder:poly first.y
data modify storage glowborder:seg bz set from storage glowborder:poly first.z
function glowborder:line_draw
data remove storage glowborder:poly first
