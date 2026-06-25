# flip the walls flag, then refresh the menu label
execute store result score #w gb run data get storage glowborder:in walls
execute if score #w gb matches 1 run data modify storage glowborder:in walls set value 0b
execute unless score #w gb matches 1 run data modify storage glowborder:in walls set value 1b
function glowborder:menu
