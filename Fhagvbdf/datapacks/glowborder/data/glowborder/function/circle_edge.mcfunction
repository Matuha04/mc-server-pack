execute unless entity @e[type=marker,tag=gb_cc] run tellraw @s ["",{"text":"[circle] ","color":"red"},{"text":"set the center first (right-click)"}]
execute unless entity @e[type=marker,tag=gb_cc] run return fail
scoreboard players set #neg gb -1
execute store result score #ccx gb run data get entity @e[type=marker,tag=gb_cc,limit=1] Pos[0] 1
execute store result score #ccy gb run data get entity @e[type=marker,tag=gb_cc,limit=1] Pos[1] 1
execute store result score #ccz gb run data get entity @e[type=marker,tag=gb_cc,limit=1] Pos[2] 1
execute at @s align xyz run summon marker ~ ~ ~ {Tags:["gb_cetmp"]}
execute store result score #ex gb run data get entity @e[type=marker,tag=gb_cetmp,limit=1] Pos[0] 1
execute store result score #ez gb run data get entity @e[type=marker,tag=gb_cetmp,limit=1] Pos[2] 1
kill @e[type=marker,tag=gb_cetmp]
scoreboard players operation #r1 gb = #ex gb
scoreboard players operation #r1 gb -= #ccx gb
scoreboard players operation #t gb = #r1 gb
scoreboard players operation #t gb *= #neg gb
scoreboard players operation #r1 gb > #t gb
scoreboard players operation #r2 gb = #ez gb
scoreboard players operation #r2 gb -= #ccz gb
scoreboard players operation #t gb = #r2 gb
scoreboard players operation #t gb *= #neg gb
scoreboard players operation #r2 gb > #t gb
scoreboard players operation #cr2 gb = #r1 gb
scoreboard players operation #cr2 gb > #r2 gb
execute store result storage glowborder:circ cx int 1 run scoreboard players get #ccx gb
execute store result storage glowborder:circ cy int 1 run scoreboard players get #ccy gb
execute store result storage glowborder:circ cz int 1 run scoreboard players get #ccz gb
execute store result storage glowborder:circ r int 1 run scoreboard players get #cr2 gb
function glowborder:circle_draw
function glowborder:shape_finalize
kill @e[type=marker,tag=gb_cc]
