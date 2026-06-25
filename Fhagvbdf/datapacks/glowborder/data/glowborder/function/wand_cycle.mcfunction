# Runs as a dropped wand item: cycle the mode, hand the new wand to the dropper, remove the drop.
scoreboard players set #m gb 0
execute store result score #m gb run data get entity @s Item.components."minecraft:custom_data".mode 1
scoreboard players add #m gb 1
execute if score #m gb matches 2.. run scoreboard players set #m gb 0
execute if score #m gb matches 0 run function glowborder:give_mode0
execute if score #m gb matches 1 run function glowborder:give_mode1
kill @s
