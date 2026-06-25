kill @e[type=marker,tag=gb_lB]
execute at @s align xyz run summon marker ~ ~ ~ {Tags:["gb_lB"]}
execute unless entity @e[type=marker,tag=gb_lA] run tellraw @s ["",{"text":"[line] ","color":"aqua"},{"text":"set the start first (right-click)"}]
execute if entity @e[type=marker,tag=gb_lA] run function glowborder:line_finish
