# Reward function from the wand advancement. Re-arm, cooldown, then dispatch by mode.
advancement revoke @s only glowborder:wand
execute if score @s gbCd matches 1.. run return fail
scoreboard players set @s gbCd 5
scoreboard players set #m gb 0
execute store result score #m gb run data get entity @s SelectedItem.components."minecraft:custom_data".mode 1
# mode 0 = Marker
execute if score #m gb matches 0 if predicate glowborder:sneaking run function glowborder:mark_clear
execute if score #m gb matches 0 unless predicate glowborder:sneaking run function glowborder:mark_place
# mode 1 = Border
execute if score #m gb matches 1 if predicate glowborder:sneaking run function glowborder:pos2
execute if score #m gb matches 1 unless predicate glowborder:sneaking run function glowborder:pos1
