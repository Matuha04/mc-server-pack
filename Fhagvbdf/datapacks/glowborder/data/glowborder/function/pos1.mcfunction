# Mark corner 1 at the caller's block position (block-aligned)
kill @e[type=marker,tag=gb_pos1]
execute at @s align xyz run summon marker ~ ~ ~ {Tags:["gb_pos1"]}
tellraw @s ["",{"text":"[border] ","color":"green"},{"text":"corner 1 set"}]
