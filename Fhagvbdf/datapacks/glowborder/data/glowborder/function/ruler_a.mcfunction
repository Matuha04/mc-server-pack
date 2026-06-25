# Ruler point A at the player's block
kill @e[type=marker,tag=gb_rA]
execute at @s align xyz run summon marker ~ ~ ~ {Tags:["gb_rA"]}
tellraw @s ["",{"text":"[ruler] ","color":"light_purple"},{"text":"point A set"}]
