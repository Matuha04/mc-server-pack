# /function glowborder:wall  -> adds proximity walls to the last shown region
# (run /function glowborder:show first; it stores the box this reads)
execute unless data storage glowborder:box lx run return fail
function glowborder:drawwall with storage glowborder:box
tellraw @a ["",{"text":"[border] ","color":"green"},{"text":"proximity walls added (show within ~8 blocks)"}]
