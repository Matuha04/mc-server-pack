execute unless entity @e[type=marker,tag=gb_sc] run tellraw @s ["",{"text":"[sphere] ","color":"red"},{"text":"set the center first (right-click)"}]
execute unless entity @e[type=marker,tag=gb_sc] run return fail
scoreboard players set #neg gb -1
scoreboard players set #six gb 6
execute store result score #scx gb run data get entity @e[type=marker,tag=gb_sc,limit=1] Pos[0] 1
execute store result score #scy gb run data get entity @e[type=marker,tag=gb_sc,limit=1] Pos[1] 1
execute store result score #scz gb run data get entity @e[type=marker,tag=gb_sc,limit=1] Pos[2] 1
execute at @s align xyz run summon marker ~ ~ ~ {Tags:["gb_setmp"]}
execute store result score #ex gb run data get entity @e[type=marker,tag=gb_setmp,limit=1] Pos[0] 1
execute store result score #ez gb run data get entity @e[type=marker,tag=gb_setmp,limit=1] Pos[2] 1
kill @e[type=marker,tag=gb_setmp]
scoreboard players operation #r1 gb = #ex gb
scoreboard players operation #r1 gb -= #scx gb
scoreboard players operation #t gb = #r1 gb
scoreboard players operation #t gb *= #neg gb
scoreboard players operation #r1 gb > #t gb
scoreboard players operation #r2 gb = #ez gb
scoreboard players operation #r2 gb -= #scz gb
scoreboard players operation #t gb = #r2 gb
scoreboard players operation #t gb *= #neg gb
scoreboard players operation #r2 gb > #t gb
scoreboard players operation #sr gb = #r1 gb
scoreboard players operation #sr gb > #r2 gb
scoreboard players operation #sstep gb = #sr gb
scoreboard players operation #sstep gb /= #six gb
execute if score #sstep gb matches ..0 run scoreboard players set #sstep gb 1
scoreboard players operation #sh gb = #sr gb
scoreboard players operation #sh gb *= #neg gb
function glowborder:sphere_ring
function glowborder:shape_finalize
kill @e[type=marker,tag=gb_sc]
