# Fire wand_use for any player whose stick-use count went up since last tick
execute as @a[scores={gbWand=1..}] if score @s gbWand > @s gbWandPrev run function glowborder:wand_use
scoreboard players operation @a gbWandPrev = @a gbWand
