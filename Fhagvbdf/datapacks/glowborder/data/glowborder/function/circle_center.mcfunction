kill @e[type=marker,tag=gb_cc]
execute at @s align xyz run summon marker ~ ~ ~ {Tags:["gb_cc"]}
tellraw @s ["",{"text":"[circle] ","color":"aqua"},{"text":"center set - sneak+right on the edge to set radius"}]
