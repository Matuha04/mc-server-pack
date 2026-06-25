kill @e[type=marker,tag=gb_lA]
execute at @s align xyz run summon marker ~ ~ ~ {Tags:["gb_lA"]}
tellraw @s ["",{"text":"[line] ","color":"aqua"},{"text":"start set"}]
