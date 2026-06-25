execute unless entity @e[type=marker,tag=gb_cc] run tellraw @s ["",{"text":"[circle] ","color":"red"},{"text":"set the center first (right-click)"}]
execute unless entity @e[type=marker,tag=gb_cc] run return fail
scoreboard players set #neg gb -1
execute store result score #ccx gb run data get entity @e[type=marker,tag=gb_cc,limit=1] Pos[0] 1
execute store result score #ccy gb run data get entity @e[type=marker,tag=gb_cc,limit=1] Pos[1] 1
execute store result score #ccz gb run data get entity @e[type=marker,tag=gb_cc,limit=1] Pos[2] 1
execute at @s align xyz run summon marker ~ ~ ~ {Tags:["gb_cetmp"]}
execute store result score #ex gb run data get entity @e[type=marker,tag=gb_cetmp,limit=1] Pos[0] 1
execute store result score #ey gb run data get entity @e[type=marker,tag=gb_cetmp,limit=1] Pos[1] 1
execute store result score #ez gb run data get entity @e[type=marker,tag=gb_cetmp,limit=1] Pos[2] 1
kill @e[type=marker,tag=gb_cetmp]
scoreboard players operation #adx gb = #ex gb
scoreboard players operation #adx gb -= #ccx gb
scoreboard players operation #t gb = #adx gb
scoreboard players operation #t gb *= #neg gb
scoreboard players operation #adx gb > #t gb
scoreboard players operation #ady gb = #ey gb
scoreboard players operation #ady gb -= #ccy gb
scoreboard players operation #t gb = #ady gb
scoreboard players operation #t gb *= #neg gb
scoreboard players operation #ady gb > #t gb
scoreboard players operation #adz gb = #ez gb
scoreboard players operation #adz gb -= #ccz gb
scoreboard players operation #t gb = #adz gb
scoreboard players operation #t gb *= #neg gb
scoreboard players operation #adz gb > #t gb
# default: horizontal (XZ), radius = max(adx,adz)
scoreboard players set #plane gb 0
scoreboard players operation #cr2 gb = #adx gb
scoreboard players operation #cr2 gb > #adz gb
# if the vertical move dominates, make it a vertical circle
execute if score #ady gb > #adx gb if score #ady gb > #adz gb run function glowborder:circle_vplane
execute store result storage glowborder:circ cx int 1 run scoreboard players get #ccx gb
execute store result storage glowborder:circ cy int 1 run scoreboard players get #ccy gb
execute store result storage glowborder:circ cz int 1 run scoreboard players get #ccz gb
execute store result storage glowborder:circ r int 1 run scoreboard players get #cr2 gb
execute store result storage glowborder:circ plane int 1 run scoreboard players get #plane gb
function glowborder:circle_draw
function glowborder:shape_finalize
kill @e[type=marker,tag=gb_cc]
