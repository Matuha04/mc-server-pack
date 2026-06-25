# Mark corner 2 at the caller's block position (block-aligned)
kill @e[type=marker,tag=gb_pos2]
execute at @s align xyz run summon marker ~ ~ ~ {Tags:["gb_pos2"]}
tellraw @s ["",{"text":"[border] ","color":"green"},{"text":"corner 2 set"}]
