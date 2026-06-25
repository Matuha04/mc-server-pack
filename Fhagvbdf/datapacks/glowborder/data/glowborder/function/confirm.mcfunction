# Finalise the preview: assign an id, retag, clear the markers.
execute unless entity @e[type=block_display,tag=gb_preview] run return fail
scoreboard players add #nextid gb 1
execute store result storage glowborder:tmp id int 1 run scoreboard players get #nextid gb
function glowborder:tag_region with storage glowborder:tmp
kill @e[type=marker,tag=gb_pos1]
kill @e[type=marker,tag=gb_pos2]
tellraw @s ["",{"text":"[border] ","color":"green"},{"text":"confirmed as region "},{"score":{"name":"#nextid","objective":"gb"},"color":"yellow"},{"text":"  -  clear it with /function glowborder:clear {id:"},{"score":{"name":"#nextid","objective":"gb"}},{"text":"}"}]
