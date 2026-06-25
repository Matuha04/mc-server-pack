kill @e[type=marker,tag=gb_sc]
execute at @s align xyz run summon marker ~ ~ ~ {Tags:["gb_sc"]}
tellraw @s ["",{"text":"[sphere] ","color":"aqua"},{"text":"center set - sneak+right on the edge to set radius"}]
