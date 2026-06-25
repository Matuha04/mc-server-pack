# tick down the wand cooldown
scoreboard players remove @a[scores={gbCd=1..}] gbCd 1
# wand dropped -> Shift+Q drops for real, plain Q cycles mode
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{gbwand:1b}}}}] at @s run function glowborder:wand_dropped
# proximity walls: drive each region's persistent panels (show/hide/follow)
execute as @e[type=marker,tag=gb_wallregion] run function glowborder:wallregion with entity @s data
