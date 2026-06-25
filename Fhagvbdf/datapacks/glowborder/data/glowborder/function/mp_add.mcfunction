execute at @s align xyz run summon marker ~ ~ ~ {Tags:["gb_mp","gb_mpnew"]}
execute store result storage glowborder:tp x int 1 run data get entity @e[type=marker,tag=gb_mpnew,limit=1] Pos[0] 1
execute store result storage glowborder:tp y int 1 run data get entity @e[type=marker,tag=gb_mpnew,limit=1] Pos[1] 1
execute store result storage glowborder:tp z int 1 run data get entity @e[type=marker,tag=gb_mpnew,limit=1] Pos[2] 1
tag @e[type=marker,tag=gb_mpnew] remove gb_mpnew
data modify storage glowborder:poly points append from storage glowborder:tp
tellraw @s ["",{"text":"[multi] ","color":"green"},{"text":"point added (sneak+right to finish)"}]
