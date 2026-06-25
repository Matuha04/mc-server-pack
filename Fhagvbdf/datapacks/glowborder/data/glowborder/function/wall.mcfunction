# /function glowborder:wall  -> adds proximity walls to the last shown region
# (run /function glowborder:show first; it stores the box this reads)
execute unless data storage glowborder:box lx run tellraw @s ["",{"text":"[border] ","color":"red"},{"text":"Run /function glowborder:show first."}]
execute unless data storage glowborder:box lx run return fail
function glowborder:drawwall with storage glowborder:box
tellraw @s ["",{"text":"[border] ","color":"green"},{"text":"walls added - walk within ~10 blocks of a face to see them"}]
