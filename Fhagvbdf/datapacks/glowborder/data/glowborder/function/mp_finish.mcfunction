execute unless data storage glowborder:poly points[1] run tellraw @s ["",{"text":"[multi] ","color":"red"},{"text":"need at least 2 points"}]
execute unless data storage glowborder:poly points[1] run return fail
function glowborder:mp_connect
function glowborder:shape_finalize
kill @e[type=marker,tag=gb_mp]
data remove storage glowborder:poly points
