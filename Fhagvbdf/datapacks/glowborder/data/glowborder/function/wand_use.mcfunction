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
# mode 2 = Ruler
execute if score #m gb matches 2 if predicate glowborder:sneaking run function glowborder:ruler_b
execute if score #m gb matches 2 unless predicate glowborder:sneaking run function glowborder:ruler_a
# mode 3 = Eraser (sneak = clear everything)
execute if score #m gb matches 3 if predicate glowborder:sneaking run function glowborder:clear_all
execute if score #m gb matches 3 unless predicate glowborder:sneaking run function glowborder:erase
# mode 4 = Multi-pos
execute if score #m gb matches 4 if predicate glowborder:sneaking run function glowborder:mp_finish
execute if score #m gb matches 4 unless predicate glowborder:sneaking run function glowborder:mp_add
# mode 5 = Line
execute if score #m gb matches 5 if predicate glowborder:sneaking run function glowborder:line_b
execute if score #m gb matches 5 unless predicate glowborder:sneaking run function glowborder:line_a
# mode 6 = Circle
execute if score #m gb matches 6 if predicate glowborder:sneaking run function glowborder:circle_edge
execute if score #m gb matches 6 unless predicate glowborder:sneaking run function glowborder:circle_center
# mode 7 = Sphere
execute if score #m gb matches 7 if predicate glowborder:sneaking run function glowborder:sphere_edge
execute if score #m gb matches 7 unless predicate glowborder:sneaking run function glowborder:sphere_center
