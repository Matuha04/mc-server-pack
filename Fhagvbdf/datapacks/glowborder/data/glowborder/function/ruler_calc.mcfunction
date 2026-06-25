# Compute inclusive span on each axis + total volume, print, clear markers
execute store result score #ax gb run data get entity @e[type=marker,tag=gb_rA,limit=1] Pos[0] 1
execute store result score #ay gb run data get entity @e[type=marker,tag=gb_rA,limit=1] Pos[1] 1
execute store result score #az gb run data get entity @e[type=marker,tag=gb_rA,limit=1] Pos[2] 1
execute store result score #bx gb run data get entity @e[type=marker,tag=gb_rB,limit=1] Pos[0] 1
execute store result score #by gb run data get entity @e[type=marker,tag=gb_rB,limit=1] Pos[1] 1
execute store result score #bz gb run data get entity @e[type=marker,tag=gb_rB,limit=1] Pos[2] 1
# dx = (max-min)+1
scoreboard players operation #dx gb = #ax gb
scoreboard players operation #dx gb > #bx gb
scoreboard players operation #t gb = #ax gb
scoreboard players operation #t gb < #bx gb
scoreboard players operation #dx gb -= #t gb
scoreboard players add #dx gb 1
scoreboard players operation #dy gb = #ay gb
scoreboard players operation #dy gb > #by gb
scoreboard players operation #t gb = #ay gb
scoreboard players operation #t gb < #by gb
scoreboard players operation #dy gb -= #t gb
scoreboard players add #dy gb 1
scoreboard players operation #dz gb = #az gb
scoreboard players operation #dz gb > #bz gb
scoreboard players operation #t gb = #az gb
scoreboard players operation #t gb < #bz gb
scoreboard players operation #dz gb -= #t gb
scoreboard players add #dz gb 1
scoreboard players operation #vol gb = #dx gb
scoreboard players operation #vol gb *= #dy gb
scoreboard players operation #vol gb *= #dz gb
tellraw @s ["",{"text":"[ruler] ","color":"light_purple"},{"text":"X "},{"score":{"name":"#dx","objective":"gb"},"color":"white"},{"text":" x Y "},{"score":{"name":"#dy","objective":"gb"},"color":"white"},{"text":" x Z "},{"score":{"name":"#dz","objective":"gb"},"color":"white"},{"text":"  =  "},{"score":{"name":"#vol","objective":"gb"},"color":"yellow"},{"text":" blocks"}]
kill @e[type=marker,tag=gb_rA]
kill @e[type=marker,tag=gb_rB]
