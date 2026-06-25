# Runs ~0.2s after the strike: remove the fire it created, then drop the markers
execute as @e[type=marker,tag=gb_smite] at @s run fill ~-4 ~-1 ~-4 ~4 ~6 ~4 air replace fire
kill @e[type=marker,tag=gb_smite]
