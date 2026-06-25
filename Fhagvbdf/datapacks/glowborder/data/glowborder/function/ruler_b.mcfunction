# Ruler point B -> measure the box between A and B, print it, clear the points
kill @e[type=marker,tag=gb_rB]
execute at @s align xyz run summon marker ~ ~ ~ {Tags:["gb_rB"]}
execute unless entity @e[type=marker,tag=gb_rA] run tellraw @s ["",{"text":"[ruler] ","color":"light_purple"},{"text":"set point A first (right-click)"}]
execute if entity @e[type=marker,tag=gb_rA] run function glowborder:ruler_calc
