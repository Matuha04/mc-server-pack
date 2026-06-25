# Runs as a dropped wand item. Sneaking dropper (Shift+Q) = real drop; plain Q = cycle mode.
scoreboard players set #sn gb 0
execute as @p[distance=..5] if predicate glowborder:sneaking run scoreboard players set #sn gb 1
# real drop: strip the wand data so it becomes an inert stick and stops being tracked
execute if score #sn gb matches 1 run data remove entity @s Item.components."minecraft:custom_data"
execute if score #sn gb matches 1 run tellraw @p[distance=..5] ["",{"text":"[wand] ","color":"gray"},{"text":"dropped"}]
# plain drop: cycle the mode and hand it back
execute if score #sn gb matches 0 run function glowborder:wand_cycle
