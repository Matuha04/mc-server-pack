# Promote freshly-drawn cubes (gb_new) into a numbered region
scoreboard players add #nextid gb 1
execute store result storage glowborder:tmp id int 1 run scoreboard players get #nextid gb
tag @e[type=block_display,tag=gb_new] add gb_edge
function glowborder:shape_tag with storage glowborder:tmp
tellraw @s ["",{"text":"[shape] ","color":"green"},{"text":"drawn as region "},{"score":{"name":"#nextid","objective":"gb"},"color":"yellow"},{"text":"  (clear: /function glowborder:clear {id:"},{"score":{"name":"#nextid","objective":"gb"}},{"text":"})"}]
